package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.VisualConnection
import com.mobilegamestudio.core.model.VisualGraphDocument
import com.mobilegamestudio.core.model.VisualNode
import com.mobilegamestudio.core.model.VisualNodeType
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class VisualGraphFlowIntegrationTest {
    @Test
    fun `multi gate advances one branch per event and loops without global state`() {
        val session = NoCodeRuntimeSession()
        val host = FlowHost()
        val graph = VisualGraphDocument(
            graphId = "multi-gate",
            name = "Multi Gate",
            nodes = listOf(
                event("event", "go"),
                VisualNode(
                    id = "multi",
                    type = VisualNodeType.CATALOG,
                    definitionId = "flow.multi_gate.3",
                    values = mapOf("mode" to "sequential", "loop" to "true"),
                ),
                log("a", "A"),
                log("b", "B"),
                log("c", "C"),
            ),
            connections = listOf(
                flow("event", "flow", "multi", "flowIn"),
                flow("multi", "out0", "a", "flow"),
                flow("multi", "out1", "b", "flow"),
                flow("multi", "out2", "c", "flow"),
            ),
        )

        repeat(4) {
            assertTrue(session.graphExecutor(host).emitButton(graph, "go") is LogicExecutionResult.Success)
        }

        assertEquals(listOf("A", "B", "C", "A"), host.logs)
    }

    @Test
    fun `gate control ports persist open close state across separate input events`() {
        val session = NoCodeRuntimeSession()
        val host = FlowHost()
        val graph = VisualGraphDocument(
            graphId = "gate",
            name = "Gate",
            nodes = listOf(
                event("close-event", "close"),
                event("open-event", "open"),
                event("use-event", "use"),
                VisualNode("gate", VisualNodeType.CATALOG, definitionId = "flow.gate"),
                log("action", "USED"),
            ),
            connections = listOf(
                flow("close-event", "flow", "gate", "close"),
                flow("open-event", "flow", "gate", "open"),
                flow("use-event", "flow", "gate", "flowIn"),
                flow("gate", "flow", "action", "flow"),
            ),
        )

        assertTrue(session.graphExecutor(host).emitButton(graph, "close") is LogicExecutionResult.Success)
        assertTrue(session.graphExecutor(host).emitButton(graph, "use") is LogicExecutionResult.Success)
        assertTrue(host.logs.isEmpty())

        assertTrue(session.graphExecutor(host).emitButton(graph, "open") is LogicExecutionResult.Success)
        assertTrue(session.graphExecutor(host).emitButton(graph, "use") is LogicExecutionResult.Success)
        assertEquals(listOf("USED"), host.logs)
    }

    @Test
    fun `parallel fan out executes all independent branches on engine thread`() {
        val session = NoCodeRuntimeSession()
        val host = FlowHost()
        val graph = VisualGraphDocument(
            graphId = "fan-out",
            name = "Fan Out",
            nodes = listOf(
                event("event", "go"),
                VisualNode("parallel", VisualNodeType.CATALOG, definitionId = "flow.parallel.3"),
                log("a", "A"),
                log("b", "B"),
                log("c", "C"),
            ),
            connections = listOf(
                flow("event", "flow", "parallel", "flowIn"),
                flow("parallel", "branch1", "a", "flow"),
                flow("parallel", "branch2", "b", "flow"),
                flow("parallel", "branch3", "c", "flow"),
            ),
        )

        val result = session.graphExecutor(host).emitButton(graph, "go")

        assertTrue(result is LogicExecutionResult.Success)
        assertEquals(listOf("A", "B", "C"), host.logs)
        assertEquals(1, host.threads.distinct().size)
        assertEquals(Thread.currentThread().id, host.threads.single())
    }

    @Test
    fun `explicit branch ports execute exactly one side`() {
        val session = NoCodeRuntimeSession()
        val host = FlowHost()
        val graph = VisualGraphDocument(
            graphId = "branch",
            name = "Branch",
            nodes = listOf(
                event("event", "go"),
                VisualNode(
                    id = "branch",
                    type = VisualNodeType.CATALOG,
                    definitionId = "flow.branch",
                    values = mapOf("condition" to "false"),
                ),
                log("true-action", "TRUE"),
                log("false-action", "FALSE"),
            ),
            connections = listOf(
                flow("event", "flow", "branch", "flowIn"),
                flow("branch", "true", "true-action", "flow"),
                flow("branch", "false", "false-action", "flow"),
            ),
        )

        val result = session.graphExecutor(host).emitButton(graph, "go")

        assertTrue(result is LogicExecutionResult.Success)
        assertEquals(listOf("FALSE"), host.logs)
    }

    private fun event(id: String, name: String) = VisualNode(
        id = id,
        type = VisualNodeType.ON_BUTTON_PRESSED,
        textValue = name,
    )

    private fun log(id: String, message: String) = VisualNode(
        id = id,
        type = VisualNodeType.PRINT_LOG,
        textValue = message,
    )

    private fun flow(from: String, fromPort: String, to: String, toPort: String) = VisualConnection(
        fromNodeId = from,
        toNodeId = to,
        fromPortId = fromPort,
        toPortId = toPort,
    )

    private class FlowHost : LogicSceneHost {
        val logs = mutableListOf<String>()
        val threads = mutableListOf<Long>()

        override fun findObjectIdByName(name: String): String? = null
        override fun rotation(objectId: String) = null
        override fun scale(objectId: String) = null
        override fun setRotation(objectId: String, rotation: com.mobilegamestudio.core.model.Vector3) = false
        override fun setScale(objectId: String, scale: com.mobilegamestudio.core.model.Vector3) = false

        override fun log(level: LogicLogLevel, message: String) {
            logs += message
            threads += Thread.currentThread().id
        }
    }
}
