package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.VisualConnection
import com.mobilegamestudio.core.model.VisualGraphDocument
import com.mobilegamestudio.core.model.VisualNode
import com.mobilegamestudio.core.model.VisualNodeType
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class LegacyVisualGraphCompatibilityTest {
    @Test
    fun `legacy catalog sequence with generic flow edges keeps ordered behavior`() {
        val host = Host()
        val graph = VisualGraphDocument(
            graphId = "legacy-sequence",
            name = "Legacy Sequence",
            nodes = listOf(
                event("event"),
                VisualNode("sequence", VisualNodeType.CATALOG, definitionId = "flow.sequence.3"),
                log("a", "A"),
                log("b", "B"),
                log("c", "C"),
            ),
            connections = listOf(
                VisualConnection("event", "sequence"),
                VisualConnection("sequence", "a"),
                VisualConnection("sequence", "b"),
                VisualConnection("sequence", "c"),
            ),
        )

        val result = NoCodeRuntimeSession().graphExecutor(host).emitButton(graph, "go")

        assertTrue(result is LogicExecutionResult.Success)
        assertEquals(listOf("A", "B", "C"), host.logs)
    }

    @Test
    fun `legacy branch generic flow behaves as true path only`() {
        val host = Host()
        val session = NoCodeRuntimeSession()
        val trueGraph = branchGraph("true")
        val falseGraph = branchGraph("false")

        assertTrue(session.graphExecutor(host).emitButton(trueGraph, "go") is LogicExecutionResult.Success)
        assertEquals(listOf("ACTION"), host.logs)

        host.logs.clear()
        assertTrue(session.graphExecutor(host).emitButton(falseGraph, "go") is LogicExecutionResult.Success)
        assertTrue(host.logs.isEmpty())
    }

    @Test
    fun `legacy multi gate generic edges advance one target per event`() {
        val host = Host()
        val session = NoCodeRuntimeSession()
        val graph = VisualGraphDocument(
            graphId = "legacy-multi",
            name = "Legacy Multi Gate",
            nodes = listOf(
                event("event"),
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
                VisualConnection("event", "multi"),
                VisualConnection("multi", "a"),
                VisualConnection("multi", "b"),
                VisualConnection("multi", "c"),
            ),
        )

        repeat(4) {
            assertTrue(session.graphExecutor(host).emitButton(graph, "go") is LogicExecutionResult.Success)
        }

        assertEquals(listOf("A", "B", "C", "A"), host.logs)
    }

    private fun branchGraph(condition: String) = VisualGraphDocument(
        graphId = "legacy-branch-$condition",
        name = "Legacy Branch $condition",
        nodes = listOf(
            event("event"),
            VisualNode(
                id = "branch",
                type = VisualNodeType.CATALOG,
                definitionId = "flow.branch",
                values = mapOf("condition" to condition),
            ),
            log("action", "ACTION"),
        ),
        connections = listOf(
            VisualConnection("event", "branch"),
            VisualConnection("branch", "action"),
        ),
    )

    private fun event(id: String) = VisualNode(
        id = id,
        type = VisualNodeType.ON_BUTTON_PRESSED,
        textValue = "go",
    )

    private fun log(id: String, message: String) = VisualNode(
        id = id,
        type = VisualNodeType.PRINT_LOG,
        textValue = message,
    )

    private class Host : LogicSceneHost {
        val logs = mutableListOf<String>()

        override fun findObjectIdByName(name: String): String? = null
        override fun rotation(objectId: String) = null
        override fun scale(objectId: String) = null
        override fun setRotation(objectId: String, rotation: com.mobilegamestudio.core.model.Vector3) = false
        override fun setScale(objectId: String, scale: com.mobilegamestudio.core.model.Vector3) = false
        override fun log(level: LogicLogLevel, message: String) {
            logs += message
        }
    }
}
