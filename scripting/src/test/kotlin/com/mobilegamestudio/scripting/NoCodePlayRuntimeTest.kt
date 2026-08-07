package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.EventPayload
import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.VisualConnection
import com.mobilegamestudio.core.model.VisualGraphDocument
import com.mobilegamestudio.core.model.VisualNode
import com.mobilegamestudio.core.model.VisualNodeType
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Test

class NoCodePlayRuntimeTest {
    @Test
    fun `startup is transactional when one graph binding is invalid`() {
        val runtime = NoCodePlayRuntime(Host("host"))
        val valid = receiverGraph("valid", "refresh")
        val invalid = receiverGraph("invalid", "")

        val result = runtime.start(
            listOf(
                NoCodeGraphRuntimeSpec("instance-a", valid),
                NoCodeGraphRuntimeSpec("instance-b", invalid),
            ),
        )

        assertFalse(result.started)
        assertEquals(0, result.instanceCount)
        assertTrue(result.issues.isNotEmpty())
        assertEquals(0, runtime.session.eventBus.subscriptionCount())
        assertFalse(runtime.isStarted())
    }

    @Test
    fun `duplicate runtime graph ids are rejected before any binding`() {
        val runtime = NoCodePlayRuntime(Host("host"))
        val graph = doOnceGraph()

        val result = runtime.start(
            listOf(
                NoCodeGraphRuntimeSpec("same", graph, ObjectRef("a")),
                NoCodeGraphRuntimeSpec("same", graph, ObjectRef("b")),
            ),
        )

        assertFalse(result.started)
        assertTrue(result.issues.any { "duplicado" in it.message })
        assertEquals(0, runtime.session.eventBus.subscriptionCount())
    }

    @Test
    fun `same graph asset on two objects keeps independent flow state`() {
        val host = Host("shared")
        val runtime = NoCodePlayRuntime(host)
        val graph = doOnceGraph()
        val start = runtime.start(
            listOf(
                NoCodeGraphRuntimeSpec("door-a", graph, ObjectRef("door-a")),
                NoCodeGraphRuntimeSpec("door-b", graph, ObjectRef("door-b")),
            ),
        )
        assertTrue(start.started)

        runtime.emitButton("use")
        runtime.emitButton("use")

        // First button reaches both independent graph instances; second is
        // consumed by each instance's own Do Once state.
        assertEquals(listOf("shared:used", "shared:used"), host.logs)
    }

    @Test
    fun `local dispatch targets one runtime graph instance only`() {
        val host = Host("shared")
        val runtime = NoCodePlayRuntime(host)
        val graph = receiverGraph("receiver", "refresh")
        val start = runtime.start(
            listOf(
                NoCodeGraphRuntimeSpec("door-a", graph, ObjectRef("door-a")),
                NoCodeGraphRuntimeSpec("door-b", graph, ObjectRef("door-b")),
            ),
        )
        assertTrue(start.started)

        val dispatch = runtime.dispatchLocal("door-b", "refresh")

        assertTrue(dispatch.succeeded)
        assertEquals(1, dispatch.deliveredCount)
        assertEquals(listOf("shared:handled"), host.logs)
    }

    @Test
    fun `object event can target one owner among many instances`() {
        val host = Host("shared")
        val runtime = NoCodePlayRuntime(host)
        val graph = receiverGraph("receiver", "interact", scope = "object")
        runtime.start(
            listOf(
                NoCodeGraphRuntimeSpec("a", graph, ObjectRef("door-a")),
                NoCodeGraphRuntimeSpec("b", graph, ObjectRef("door-b")),
            ),
        )

        val dispatch = runtime.dispatchObject(
            target = ObjectRef("door-a"),
            eventName = "interact",
            payload = EventPayload.Text("open"),
            sender = ObjectRef("player"),
        )

        assertTrue(dispatch.succeeded)
        assertEquals(1, dispatch.deliveredCount)
        assertEquals(listOf("shared:handled"), host.logs)
    }

    @Test
    fun `graph failure is reported without preventing other instances from running`() {
        val host = Host("shared")
        val runtime = NoCodePlayRuntime(host)
        val broken = VisualGraphDocument(
            graphId = "broken",
            name = "Broken",
            nodes = listOf(
                VisualNode("event", VisualNodeType.ON_BUTTON_PRESSED, textValue = "go"),
                VisualNode("delay", VisualNodeType.CATALOG, definitionId = "flow.delay"),
            ),
            connections = listOf(VisualConnection("event", "delay", "flow", "flowIn")),
        )
        val healthy = VisualGraphDocument(
            graphId = "healthy",
            name = "Healthy",
            nodes = listOf(
                VisualNode("event", VisualNodeType.ON_BUTTON_PRESSED, textValue = "go"),
                VisualNode("log", VisualNodeType.PRINT_LOG, textValue = "healthy"),
            ),
            connections = listOf(VisualConnection("event", "log")),
        )
        assertTrue(
            runtime.start(
                listOf(
                    NoCodeGraphRuntimeSpec("broken", broken),
                    NoCodeGraphRuntimeSpec("healthy", healthy),
                ),
            ).started,
        )

        val report = runtime.emitButton("go")

        assertFalse(report.succeeded)
        assertEquals(1, report.failures.size)
        assertEquals("broken", report.failures.single().runtimeGraphId)
        assertEquals(listOf("shared:healthy"), host.logs)
    }

    @Test
    fun `shutdown removes bindings and rejects future work`() {
        val runtime = NoCodePlayRuntime(Host("host"))
        val graph = receiverGraph("receiver", "refresh")
        runtime.start(listOf(NoCodeGraphRuntimeSpec("instance", graph)))
        assertTrue(runtime.session.eventBus.subscriptionCount() > 0)

        val report = runtime.shutdown()

        assertTrue(runtime.isClosed())
        assertTrue(report.removedSubscriptions >= 0)
        assertEquals(0, runtime.session.eventBus.subscriptionCount())
        assertThrows(IllegalStateException::class.java) {
            runtime.emitButton("go")
        }
    }

    private fun doOnceGraph() = VisualGraphDocument(
        graphId = "shared-once",
        name = "Shared Once",
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

    private fun receiverGraph(
        id: String,
        eventName: String,
        scope: String? = null,
    ) = VisualGraphDocument(
        graphId = "shared-receiver",
        name = "Shared Receiver",
        nodes = listOf(
            VisualNode(
                id = id,
                type = VisualNodeType.CATALOG,
                definitionId = "event.custom.received",
                values = buildMap {
                    put("event", eventName)
                    if (scope != null) put("scope", scope)
                },
            ),
            VisualNode("log", VisualNodeType.PRINT_LOG, textValue = "handled"),
        ),
        connections = listOf(VisualConnection(id, "log", "flow", "flow")),
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
