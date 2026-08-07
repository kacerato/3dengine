package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.EventAddress
import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.VisualConnection
import com.mobilegamestudio.core.model.VisualGraphDocument
import com.mobilegamestudio.core.model.VisualNode
import com.mobilegamestudio.core.model.VisualNodeType
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class NoCodeGraphInstanceIsolationTest {
    @Test
    fun `two objects using same graph document have independent do once state`() {
        val session = NoCodeRuntimeSession()
        val hostA = Host("A")
        val hostB = Host("B")
        val graph = doOnceGraph()
        val executorA = session.graphExecutor(
            host = hostA,
            sourceObject = ObjectRef("door-a"),
            graphInstanceId = "door-a:${graph.graphId}",
        )
        val executorB = session.graphExecutor(
            host = hostB,
            sourceObject = ObjectRef("door-b"),
            graphInstanceId = "door-b:${graph.graphId}",
        )

        repeat(2) { executorA.emitButton(graph, "use") }
        repeat(2) { executorB.emitButton(graph, "use") }

        assertEquals(listOf("A:used"), hostA.logs)
        assertEquals(listOf("B:used"), hostB.logs)
    }

    @Test
    fun `local graph event never crosses between two instances of same document`() {
        val session = NoCodeRuntimeSession()
        val graph = localReceiverGraph()
        val hostA = Host("A")
        val hostB = Host("B")
        val runtimeA = "door-a:${graph.graphId}"
        val runtimeB = "door-b:${graph.graphId}"
        val executorA = session.graphExecutor(
            host = hostA,
            sourceObject = ObjectRef("door-a"),
            graphInstanceId = runtimeA,
        )
        val executorB = session.graphExecutor(
            host = hostB,
            sourceObject = ObjectRef("door-b"),
            graphInstanceId = runtimeB,
        )
        session.graphEvents.bind(
            graph = graph,
            executor = executorA,
            ownerObject = ObjectRef("door-a"),
            runtimeGraphId = runtimeA,
        )
        session.graphEvents.bind(
            graph = graph,
            executor = executorB,
            ownerObject = ObjectRef("door-b"),
            runtimeGraphId = runtimeB,
        )

        val first = session.dispatchEvent("refresh", EventAddress.localGraph(runtimeA))
        assertTrue(first.succeeded)
        assertEquals(listOf("A:handled"), hostA.logs)
        assertTrue(hostB.logs.isEmpty())

        val second = session.dispatchEvent("refresh", EventAddress.localGraph(runtimeB))
        assertTrue(second.succeeded)
        assertEquals(listOf("B:handled"), hostB.logs)
    }

    private fun doOnceGraph() = VisualGraphDocument(
        graphId = "shared-door-behavior",
        name = "Shared door behavior",
        nodes = listOf(
            VisualNode("event", VisualNodeType.ON_BUTTON_PRESSED, textValue = "use"),
            VisualNode("once", VisualNodeType.CATALOG, definitionId = "flow.once"),
            VisualNode("log", VisualNodeType.PRINT_LOG, textValue = "used"),
        ),
        connections = listOf(
            VisualConnection("event", "once", "flow", "flowIn"),
            VisualConnection("once", "log", "flow", "flow"),
        ),
    )

    private fun localReceiverGraph() = VisualGraphDocument(
        graphId = "shared-receiver",
        name = "Shared receiver",
        nodes = listOf(
            VisualNode(
                id = "receiver",
                type = VisualNodeType.CATALOG,
                definitionId = "event.custom.received",
                values = mapOf("event" to "refresh"),
            ),
            VisualNode("log", VisualNodeType.PRINT_LOG, textValue = "handled"),
        ),
        connections = listOf(
            VisualConnection("receiver", "log", "flow", "flow"),
        ),
    )

    private class Host(private val label: String) : LogicSceneHost {
        val logs = mutableListOf<String>()

        override fun findObjectIdByName(name: String): String? = null
        override fun rotation(objectId: String) = null
        override fun scale(objectId: String) = null
        override fun setRotation(objectId: String, rotation: com.mobilegamestudio.core.model.Vector3) = false
        override fun setScale(objectId: String, scale: com.mobilegamestudio.core.model.Vector3) = false
        override fun log(level: LogicLogLevel, message: String) {
            logs += "$label:$message"
        }
    }
}
