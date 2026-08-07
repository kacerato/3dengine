package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.VisualNode
import com.mobilegamestudio.core.model.VisualNodeCategory
import com.mobilegamestudio.core.model.VisualNodeDefinition
import com.mobilegamestudio.core.model.VisualNodeType
import com.mobilegamestudio.core.model.VisualPortDefinition
import com.mobilegamestudio.core.model.VisualPortType
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class NoCodeFlowRuntimeTest {
    @Test
    fun `sequence exposes every branch in declared output order`() {
        val runtime = NoCodeFlowRuntime()
        val decision = runtime.route(
            graphId = "graph",
            node = node("sequence"),
            definition = definition("flow.sequence.3", "then1", "then2", "then3"),
        )

        assertEquals(listOf("then1", "then2", "then3"), decision.outputPortIds)
        assertEquals(FlowDispatchMode.ORDERED, decision.dispatchMode)
    }

    @Test
    fun `parallel marks branches independent without creating worker threads`() {
        val runtime = NoCodeFlowRuntime()
        val decision = runtime.route(
            graphId = "graph",
            node = node("parallel"),
            definition = definition("flow.parallel", "a", "b", "c"),
        )

        assertEquals(listOf("a", "b", "c"), decision.outputPortIds)
        assertEquals(FlowDispatchMode.INDEPENDENT, decision.dispatchMode)
    }

    @Test
    fun `gate control inputs change only the addressed graph node`() {
        val runtime = NoCodeFlowRuntime()
        val gate = node("gate")
        val def = definition("flow.gate", "flow")

        assertEquals(listOf("flow"), runtime.route("graph-a", gate, def).outputPortIds)
        assertTrue(runtime.route("graph-a", gate, def, incomingFlowPortId = "close").outputPortIds.isEmpty())
        assertTrue(runtime.route("graph-a", gate, def).outputPortIds.isEmpty())

        assertEquals(listOf("flow"), runtime.route("graph-b", gate, def).outputPortIds)
        assertTrue(runtime.route("graph-a", gate, def, incomingFlowPortId = "open").outputPortIds.isEmpty())
        assertEquals(listOf("flow"), runtime.route("graph-a", gate, def).outputPortIds)
    }

    @Test
    fun `do once consumes flow until explicit reset`() {
        val runtime = NoCodeFlowRuntime()
        val once = node("once")
        val def = definition("flow.once", "flow")

        assertEquals(listOf("flow"), runtime.route("graph", once, def).outputPortIds)
        assertTrue(runtime.route("graph", once, def).outputPortIds.isEmpty())
        assertTrue(runtime.state("graph", "once")!!.onceConsumed)

        runtime.route("graph", once, def, incomingFlowPortId = "reset")
        assertEquals(listOf("flow"), runtime.route("graph", once, def).outputPortIds)
    }

    @Test
    fun `do n has stable per node count and stops at configured limit`() {
        val runtime = NoCodeFlowRuntime()
        val doN = node("do-n")
        val def = definition("flow.do_n", "flow")
        val inputs = mapOf("n" to 2)

        assertEquals(listOf("flow"), runtime.route("graph", doN, def, inputs).outputPortIds)
        assertEquals(listOf("flow"), runtime.route("graph", doN, def, inputs).outputPortIds)
        assertTrue(runtime.route("graph", doN, def, inputs).outputPortIds.isEmpty())
        assertEquals(2, runtime.state("graph", "do-n")!!.doNExecutions)

        runtime.route("graph", doN, def, inputs, incomingFlowPortId = "reset")
        assertEquals(0, runtime.state("graph", "do-n")!!.doNExecutions)
    }

    @Test
    fun `multi gate sequential mode advances one output at a time and loops`() {
        val runtime = NoCodeFlowRuntime()
        val multiGate = node("multi")
        val def = definition("flow.multi_gate", "out0", "out1", "out2")
        val inputs = mapOf("mode" to "sequential", "loop" to true)

        assertEquals(listOf("out0"), runtime.route("graph", multiGate, def, inputs).outputPortIds)
        assertEquals(listOf("out1"), runtime.route("graph", multiGate, def, inputs).outputPortIds)
        assertEquals(listOf("out2"), runtime.route("graph", multiGate, def, inputs).outputPortIds)
        assertEquals(listOf("out0"), runtime.route("graph", multiGate, def, inputs).outputPortIds)
    }

    @Test
    fun `multi gate can stop after last output when loop is disabled`() {
        val runtime = NoCodeFlowRuntime()
        val multiGate = node("multi")
        val def = definition("flow.multi_gate", "out0", "out1")
        val inputs = mapOf("mode" to "sequential", "loop" to false)

        assertEquals(listOf("out0"), runtime.route("graph", multiGate, def, inputs).outputPortIds)
        assertEquals(listOf("out1"), runtime.route("graph", multiGate, def, inputs).outputPortIds)
        assertTrue(runtime.route("graph", multiGate, def, inputs).outputPortIds.isEmpty())
    }

    @Test
    fun `branch chooses one output and never executes both sides`() {
        val runtime = NoCodeFlowRuntime()
        val branch = node("branch")
        val def = definition("flow.branch", "true", "false")

        val trueDecision = runtime.route("graph", branch, def, mapOf("condition" to true))
        val falseDecision = runtime.route("graph", branch, def, mapOf("condition" to false))

        assertEquals(listOf("true"), trueDecision.outputPortIds)
        assertEquals(listOf("false"), falseDecision.outputPortIds)
    }

    @Test
    fun `reset graph removes only that graph flow state`() {
        val runtime = NoCodeFlowRuntime()
        val once = node("once")
        val def = definition("flow.once", "flow")
        runtime.route("graph-a", once, def)
        runtime.route("graph-b", once, def)

        assertEquals(1, runtime.resetGraph("graph-a"))
        assertNull(runtime.state("graph-a", "once"))
        assertTrue(runtime.state("graph-b", "once")!!.onceConsumed)
        assertFalse(runtime.resetNode("graph-a", "once"))
    }

    private fun node(id: String) = VisualNode(
        id = id,
        type = VisualNodeType.CATALOG,
    )

    private fun definition(id: String, vararg outputIds: String) = VisualNodeDefinition(
        id = id,
        title = id,
        category = VisualNodeCategory.FLOW,
        operation = id,
        inputs = listOf(VisualPortDefinition("flowIn", "Then", VisualPortType.FLOW)),
        outputs = outputIds.map { portId ->
            VisualPortDefinition(portId, portId, VisualPortType.FLOW)
        },
    )
}
