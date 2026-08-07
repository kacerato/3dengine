package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.EngineEvent
import com.mobilegamestudio.core.model.EventAddress
import com.mobilegamestudio.core.model.EventPayload
import com.mobilegamestudio.core.model.ExecutionContext
import com.mobilegamestudio.core.model.ObjectRef
import org.junit.Assert.assertEquals
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Test

class NoCodeEventRuntimeTest {
    @Test
    fun `object send event reaches only explicit target`() {
        val bus = EngineEventBus()
        val runtime = NoCodeEventRuntime(bus)
        val doorA = ObjectRef("door-a")
        val doorB = ObjectRef("door-b")
        val hits = mutableListOf<String>()
        bus.subscribeObject(EventOwner("a"), doorA, "interact") { _, _ -> hits += "a" }
        bus.subscribeObject(EventOwner("b"), doorB, "interact") { _, _ -> hits += "b" }

        val dispatch = runtime.dispatchNode(
            definitionId = "object.send_event_text",
            inputs = mapOf(
                "object" to doorA,
                "event" to "interact",
                "value" to "open",
            ),
            context = ExecutionContext(
                executionId = 10,
                graphId = "player-graph",
                sourceObject = ObjectRef("player"),
            ),
        )

        assertEquals(listOf("a"), hits)
        assertEquals(EventAddress.objectTarget(doorA), dispatch.event.address)
        assertEquals(EventPayload.Text("open"), dispatch.event.payload)
        assertEquals(ObjectRef("player"), dispatch.event.sender)
    }

    @Test
    fun `general send defaults to local graph instead of global broadcast`() {
        val bus = EngineEventBus()
        val runtime = NoCodeEventRuntime(bus)
        val hits = mutableListOf<String>()
        bus.subscribeLocalGraph(EventOwner("local"), "graph-a", "refresh") { _, _ -> hits += "local" }
        bus.subscribeGlobal(EventOwner("global"), "refresh") { _, _ -> hits += "global" }

        runtime.dispatchNode(
            definitionId = "event.send",
            inputs = mapOf("event" to "refresh"),
            context = ExecutionContext(executionId = 1, graphId = "graph-a"),
        )

        assertEquals(listOf("local"), hits)
    }

    @Test
    fun `scene and global scopes require and use exact addresses`() {
        val bus = EngineEventBus()
        val runtime = NoCodeEventRuntime(bus)
        val hits = mutableListOf<String>()
        bus.subscribeScene(EventOwner("scene-a"), "garage", "alarm") { _, _ -> hits += "garage" }
        bus.subscribeScene(EventOwner("scene-b"), "house", "alarm") { _, _ -> hits += "house" }
        bus.subscribeGlobal(EventOwner("global"), "weather") { _, _ -> hits += "global" }

        runtime.dispatchNode(
            "event.send_bool",
            mapOf("event" to "alarm", "scope" to "scene", "value" to true),
            ExecutionContext(executionId = 2, sceneId = "garage"),
        )
        runtime.dispatchNode(
            "event.send_text",
            mapOf("event" to "weather", "scope" to "global", "value" to "rain"),
            ExecutionContext(executionId = 3),
        )

        assertEquals(listOf("garage", "global"), hits)
    }

    @Test
    fun `typed send nodes reject silent coercion`() {
        val runtime = NoCodeEventRuntime(EngineEventBus())
        val context = ExecutionContext(executionId = 1, graphId = "graph")

        assertThrows(IllegalArgumentException::class.java) {
            runtime.dispatchNode(
                "event.send_bool",
                mapOf("event" to "x", "value" to "true"),
                context,
            )
        }
        assertThrows(IllegalArgumentException::class.java) {
            runtime.dispatchNode(
                "event.send_number",
                mapOf("event" to "x", "value" to "1.5"),
                context,
            )
        }
        assertThrows(IllegalArgumentException::class.java) {
            runtime.dispatchNode(
                "event.send_text",
                mapOf("event" to "x", "value" to 12),
                context,
            )
        }
    }

    @Test
    fun `object scope never falls back to selected or arbitrary object`() {
        val runtime = NoCodeEventRuntime(EngineEventBus())

        assertThrows(IllegalArgumentException::class.java) {
            runtime.dispatchNode(
                "event.send",
                mapOf("event" to "interact", "scope" to "object"),
                ExecutionContext(executionId = 1, graphId = "graph"),
            )
        }
    }

    @Test
    fun `object scope may reuse immutable target from current execution context`() {
        val bus = EngineEventBus()
        val runtime = NoCodeEventRuntime(bus)
        val target = ObjectRef("focused-door")
        var delivered = false
        bus.subscribeObject(EventOwner("door"), target, "use") { _, _ -> delivered = true }

        runtime.dispatchNode(
            "event.send",
            mapOf("event" to "use", "scope" to "object"),
            ExecutionContext(executionId = 1, graphId = "graph", targetObject = target),
        )

        assertTrue(delivered)
    }

    @Test
    fun `receiver address uses local graph by default and can be explicitly scoped`() {
        val runtime = NoCodeEventRuntime(EngineEventBus())

        assertEquals(
            EventAddress.localGraph("graph"),
            runtime.addressForReceiver(
                definitionId = "event.custom.received_text",
                values = emptyMap(),
                graphId = "graph",
            ),
        )
        assertEquals(
            EventAddress.objectTarget(ObjectRef("door")),
            runtime.addressForReceiver(
                definitionId = "event.custom.received",
                values = mapOf("scope" to "object"),
                graphId = "graph",
                ownerObject = ObjectRef("door"),
            ),
        )
    }

    @Test
    fun `receiver payload type contract is exact`() {
        val runtime = NoCodeEventRuntime(EngineEventBus())

        assertTrue(runtime.acceptsPayload("event.custom.received", EventPayload.ObjectValue(ObjectRef("x"))))
        assertTrue(runtime.acceptsPayload("event.custom.received_bool", EventPayload.Bool(true)))
        assertTrue(runtime.acceptsPayload("event.custom.received_number", EventPayload.Number(4.0)))
        assertTrue(runtime.acceptsPayload("event.custom.received_text", EventPayload.Text("ok")))
        assertEquals(false, runtime.acceptsPayload("event.custom.received_bool", EventPayload.Text("true")))
    }

    @Test
    fun `event name length follows engine event limit`() {
        val runtime = NoCodeEventRuntime(EngineEventBus())
        val name = "e".repeat(EngineEvent.MAX_EVENT_NAME_LENGTH)

        runtime.dispatchNode(
            "event.send",
            mapOf("event" to name),
            ExecutionContext(executionId = 1, graphId = "graph"),
        )

        assertThrows(IllegalArgumentException::class.java) {
            runtime.dispatchNode(
                "event.send",
                mapOf("event" to "$name!"),
                ExecutionContext(executionId = 2, graphId = "graph"),
            )
        }
    }
}
