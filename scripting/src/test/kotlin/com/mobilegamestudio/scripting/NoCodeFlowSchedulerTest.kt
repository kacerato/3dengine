package com.mobilegamestudio.scripting

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class NoCodeFlowSchedulerTest {
    @Test
    fun `ordered flow completes first subtree before second output`() {
        val scheduler = NoCodeFlowScheduler()
        val log = mutableListOf<String>()
        val decisions = mapOf(
            "sequence" to NoCodeFlowDecision(listOf("then1", "then2"), FlowDispatchMode.ORDERED),
            "a" to NoCodeFlowDecision(listOf("flow")),
            "a-child" to NoCodeFlowDecision(emptyList()),
            "b" to NoCodeFlowDecision(emptyList()),
        )
        val edges = mapOf(
            "sequence:then1" to listOf("a"),
            "sequence:then2" to listOf("b"),
            "a:flow" to listOf("a-child"),
        )

        val result = scheduler.execute(
            starts = listOf(NoCodeFlowEntry("sequence")),
            executeNode = { entry ->
                log += entry.nodeId
                NoCodeNodeExecution.Continue(decisions.getValue(entry.nodeId))
            },
            outgoing = { entry, port ->
                edges["${entry.nodeId}:$port"].orEmpty().map(::NoCodeFlowEntry)
            },
        )

        assertTrue(result is LogicExecutionResult.Success)
        assertEquals(listOf("sequence", "a", "a-child", "b"), log)
    }

    @Test
    fun `independent flow continues sibling after one branch fails`() {
        val scheduler = NoCodeFlowScheduler()
        val log = mutableListOf<String>()
        val expectedFailure = failure("branch a failed")

        val result = scheduler.execute(
            starts = listOf(NoCodeFlowEntry("parallel")),
            executeNode = { entry ->
                log += entry.nodeId
                when (entry.nodeId) {
                    "parallel" -> NoCodeNodeExecution.Continue(
                        NoCodeFlowDecision(listOf("a", "b"), FlowDispatchMode.INDEPENDENT),
                    )
                    "fail" -> NoCodeNodeExecution.Failed(expectedFailure)
                    else -> NoCodeNodeExecution.Continue(NoCodeFlowDecision(emptyList()))
                }
            },
            outgoing = { entry, port ->
                when (entry.nodeId to port) {
                    "parallel" to "a" -> listOf(NoCodeFlowEntry("fail"))
                    "parallel" to "b" -> listOf(NoCodeFlowEntry("success"))
                    else -> emptyList()
                }
            },
        )

        assertEquals(expectedFailure, result)
        assertEquals(listOf("parallel", "fail", "success"), log)
    }

    @Test
    fun `ordered flow stops remaining siblings after failure`() {
        val scheduler = NoCodeFlowScheduler()
        val log = mutableListOf<String>()

        val result = scheduler.execute(
            starts = listOf(NoCodeFlowEntry("sequence")),
            executeNode = { entry ->
                log += entry.nodeId
                when (entry.nodeId) {
                    "sequence" -> NoCodeNodeExecution.Continue(NoCodeFlowDecision(listOf("a", "b")))
                    "fail" -> NoCodeNodeExecution.Failed(failure("stop"))
                    else -> NoCodeNodeExecution.Continue(NoCodeFlowDecision(emptyList()))
                }
            },
            outgoing = { entry, port ->
                when (entry.nodeId to port) {
                    "sequence" to "a" -> listOf(NoCodeFlowEntry("fail"))
                    "sequence" to "b" -> listOf(NoCodeFlowEntry("must-not-run"))
                    else -> emptyList()
                }
            },
        )

        assertTrue(result is LogicExecutionResult.Failure)
        assertEquals(listOf("sequence", "fail"), log)
    }

    @Test
    fun `global budget applies across all sequence branches`() {
        val scheduler = NoCodeFlowScheduler(maxExecutedNodes = 3)
        val log = mutableListOf<String>()

        val result = scheduler.execute(
            starts = listOf(NoCodeFlowEntry("root")),
            executeNode = { entry ->
                log += entry.nodeId
                NoCodeNodeExecution.Continue(
                    if (entry.nodeId == "root") NoCodeFlowDecision(listOf("flow"))
                    else NoCodeFlowDecision(listOf("flow")),
                )
            },
            outgoing = { entry, port ->
                if (port != "flow") emptyList() else when (entry.nodeId) {
                    "root" -> listOf(NoCodeFlowEntry("a"))
                    "a" -> listOf(NoCodeFlowEntry("b"))
                    "b" -> listOf(NoCodeFlowEntry("c"))
                    else -> emptyList()
                }
            },
        )

        assertTrue(result is LogicExecutionResult.Failure)
        assertEquals(listOf("root", "a", "b"), log)
        assertTrue((result as LogicExecutionResult.Failure).diagnostic.message.contains("3"))
    }

    @Test
    fun `incoming control port is preserved for gate reset style nodes`() {
        val scheduler = NoCodeFlowScheduler()
        var receivedPort: String? = null

        val result = scheduler.execute(
            starts = listOf(NoCodeFlowEntry("gate", incomingFlowPortId = "close")),
            executeNode = { entry ->
                receivedPort = entry.incomingFlowPortId
                NoCodeNodeExecution.Continue(NoCodeFlowDecision(emptyList()))
            },
            outgoing = { _, _ -> emptyList() },
        )

        assertTrue(result is LogicExecutionResult.Success)
        assertEquals("close", receivedPort)
    }

    private fun failure(message: String) = LogicExecutionResult.Failure(
        ScriptDiagnostic(DiagnosticSeverity.ERROR, message, null, null),
    )
}
