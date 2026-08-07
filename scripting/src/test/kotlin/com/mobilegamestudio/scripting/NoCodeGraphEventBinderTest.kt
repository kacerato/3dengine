package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.EventAddress
import com.mobilegamestudio.core.model.EventPayload
import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.VisualConnection
import com.mobilegamestudio.core.model.VisualGraphDocument
import com.mobilegamestudio.core.model.VisualNode
import com.mobilegamestudio.core.model.VisualNodeType
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class NoCodeGraphEventBinderTest {
    @Test
    fun `duplicate receivers with same name and address share one bus subscription`() {
        val session = NoCodeRuntimeSession()
        val host = BinderHost()
        val graph = graphWithReceivers(
            receiver("receiver-a", "event.custom.received", "door.open"),
            receiver("receiver-b", "event.custom.received", "door.open"),
        )
        val executor = session.graphExecutor(host)
        val binder = NoCodeGraphEventBinder(session.eventBus, session.events)

        val result = binder.bind(graph, executor)

        assertTrue(result.succeeded)
        assertEquals(1, result.subscriptionCount)
        assertEquals(1, session.eventBus.subscriptionCount())
    }

    @Test
    fun `rebinding same graph instance replaces listeners instead of duplicating them`() {
        val session = NoCodeRuntimeSession()
        val host = BinderHost()
        val graph = graphWithReceivers(receiver("receiver", "event.custom.received", "refresh"))
        val executor = session.graphExecutor(host)
        val binder = NoCodeGraphEventBinder(session.eventBus, session.events)

        binder.bind(graph, executor, instanceKey = "instance")
        binder.bind(graph, executor, instanceKey = "instance")

        assertEquals(1, session.eventBus.subscriptionCount())
        val dispatch = session.dispatchEvent("refresh", EventAddress.localGraph(graph.graphId))
        assertTrue(dispatch.succeeded)
        assertEquals(listOf("handled"), host.logs)
    }

    @Test
    fun `blank receiver name is reported and never becomes wildcard listener`() {
        val session = NoCodeRuntimeSession()
        val graph = graphWithReceivers(
            VisualNode(
                id = "receiver",
                type = VisualNodeType.CATALOG,
                definitionId = "event.custom.received",
                values = emptyMap(),
            ),
        )
        val binder = NoCodeGraphEventBinder(session.eventBus, session.events)

        val result = binder.bind(graph, session.graphExecutor(BinderHost()))

        assertFalse(result.succeeded)
        assertEquals(1, result.issues.size)
        assertEquals(0, result.subscriptionCount)
        assertEquals(0, session.eventBus.subscriptionCount())
    }

    @Test
    fun `object scoped receiver is isolated to its exact owner object`() {
        val session = NoCodeRuntimeSession()
        val host = BinderHost()
        val owner = ObjectRef("door-a")
        val other = ObjectRef("door-b")
        val graph = graphWithReceivers(
            receiver(
                id = "receiver",
                definitionId = "event.custom.received_text",
                eventName = "interact",
                scope = "object",
            ),
        )
        val binder = NoCodeGraphEventBinder(session.eventBus, session.events)
        val result = binder.bind(
            graph = graph,
            executor = session.graphExecutor(host, sourceObject = owner),
            ownerObject = owner,
        )
        assertTrue(result.succeeded)

        session.dispatchEvent(
            name = "interact",
            address = EventAddress.objectTarget(other),
            payload = EventPayload.Text("wrong"),
        )
        assertTrue(host.logs.isEmpty())

        session.dispatchEvent(
            name = "interact",
            address = EventAddress.objectTarget(owner),
            payload = EventPayload.Text("right"),
        )
        assertEquals(listOf("handled"), host.logs)
    }

    @Test
    fun `typed receiver ignores incompatible payload`() {
        val session = NoCodeRuntimeSession()
        val host = BinderHost()
        val graph = graphWithReceivers(
            receiver("receiver", "event.custom.received_bool", "enabled"),
        )
        val binder = NoCodeGraphEventBinder(session.eventBus, session.events)
        binder.bind(graph, session.graphExecutor(host))

        val incompatible = session.dispatchEvent(
            "enabled",
            EventAddress.localGraph(graph.graphId),
            EventPayload.Text("true"),
        )
        val compatible = session.dispatchEvent(
            "enabled",
            EventAddress.localGraph(graph.graphId),
            EventPayload.Bool(true),
        )

        assertTrue(incompatible.succeeded)
        assertTrue(compatible.succeeded)
        assertEquals(listOf("handled"), host.logs)
    }

    @Test
    fun `graph execution failure becomes dispatch failure instead of escaping listener`() {
        val session = NoCodeRuntimeSession()
        val graph = VisualGraphDocument(
            graphId = "failure-graph",
            name = "Failure graph",
            nodes = listOf(
                receiver("receiver", "event.custom.received", "run"),
                VisualNode(
                    id = "unsupported",
                    type = VisualNodeType.CATALOG,
                    definitionId = "flow.delay",
                ),
            ),
            connections = listOf(
                VisualConnection("receiver", "unsupported", "flow", "flowIn"),
            ),
        )
        val binder = NoCodeGraphEventBinder(session.eventBus, session.events)
        val binding = binder.bind(graph, session.graphExecutor(BinderHost()))
        assertTrue(binding.succeeded)

        val dispatch = session.dispatchEvent("run", EventAddress.localGraph(graph.graphId))

        assertFalse(dispatch.succeeded)
        assertEquals(1, dispatch.failures.size)
        assertTrue(dispatch.failures.first().message.contains("runtime", ignoreCase = true))
    }

    @Test
    fun `unbind removes every listener owned by graph instance`() {
        val session = NoCodeRuntimeSession()
        val graph = graphWithReceivers(
            receiver("a", "event.custom.received", "a"),
            receiver("b", "event.custom.received", "b"),
        )
        val binder = NoCodeGraphEventBinder(session.eventBus, session.events)
        val result = binder.bind(graph, session.graphExecutor(BinderHost()))
        assertEquals(2, session.eventBus.subscriptionCount())

        val removed = binder.unbind(result)

        assertEquals(2, removed)
        assertEquals(0, session.eventBus.subscriptionCount())
    }

    private fun graphWithReceivers(vararg receivers: VisualNode): VisualGraphDocument {
        val logs = receivers.mapIndexed { index, receiver ->
            VisualNode(
                id = "log-$index",
                type = VisualNodeType.PRINT_LOG,
                textValue = "handled",
            )
        }
        return VisualGraphDocument(
            graphId = "graph",
            name = "Graph",
            nodes = receivers.toList() + logs,
            connections = receivers.mapIndexed { index, receiver ->
                VisualConnection(receiver.id, "log-$index", "flow", "flow")
            },
        )
    }

    private fun receiver(
        id: String,
        definitionId: String,
        eventName: String,
        scope: String? = null,
    ) = VisualNode(
        id = id,
        type = VisualNodeType.CATALOG,
        definitionId = definitionId,
        values = buildMap {
            put("event", eventName)
            if (scope != null) put("scope", scope)
        },
    )

    private class BinderHost : LogicSceneHost {
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
