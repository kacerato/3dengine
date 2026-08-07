package com.mobilegamestudio.core.model

import org.junit.Assert.assertEquals
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Test

class RuntimeReferencesTest {
    @Test
    fun `object and component refs reject ambiguous blank ids`() {
        assertThrows(IllegalArgumentException::class.java) { ObjectRef(" ") }
        assertThrows(IllegalArgumentException::class.java) {
            ComponentRef(ObjectRef("door"), "")
        }
    }

    @Test
    fun `event address requires exactly the target implied by its scope`() {
        assertThrows(IllegalArgumentException::class.java) {
            EventAddress(EventScope.OBJECT)
        }
        assertThrows(IllegalArgumentException::class.java) {
            EventAddress(EventScope.GLOBAL, sceneId = "scene")
        }

        assertEquals(
            ObjectRef("door-a"),
            EventAddress.objectTarget(ObjectRef("door-a")).objectRef,
        )
    }

    @Test
    fun `runtime payload conversion preserves supported types`() {
        val objectRef = ObjectRef("pickup-1")
        val componentRef = ComponentRef(objectRef, "pickup-component")

        assertEquals(EventPayload.Bool(true), EventPayload.fromRuntimeValue(true))
        assertEquals(EventPayload.Number(5.0), EventPayload.fromRuntimeValue(5))
        assertEquals(EventPayload.Text("hello"), EventPayload.fromRuntimeValue("hello"))
        assertEquals(EventPayload.ObjectValue(objectRef), EventPayload.fromRuntimeValue(objectRef))
        assertEquals(
            EventPayload.ComponentValue(componentRef),
            EventPayload.fromRuntimeValue(componentRef),
        )
    }

    @Test
    fun `unsupported payload types fail instead of silently becoming text`() {
        val failure = assertThrows(IllegalArgumentException::class.java) {
            EventPayload.fromRuntimeValue(mapOf("health" to 100))
        }

        assertTrue(failure.message.orEmpty().contains("Unsupported event payload type"))
    }

    @Test
    fun `event context carries sender and exact object target without shared mutable state`() {
        val sender = ObjectRef("player")
        val target = ObjectRef("door-b")
        val event = EngineEvent.objectTarget(
            name = "interact",
            target = target,
            payload = EventPayload.Text("open"),
            sender = sender,
        )
        val base = ExecutionContext(
            executionId = 99,
            sceneId = "garage",
            sourceObject = sender,
        )

        val resolved = base.withEvent(event)

        assertEquals(99L, resolved.executionId)
        assertEquals("garage", resolved.sceneId)
        assertEquals(sender, resolved.sourceObject)
        assertEquals(sender, resolved.senderObject)
        assertEquals(target, resolved.targetObject)
        assertEquals(event, resolved.event)
        assertEquals(null, base.targetObject)
    }

    @Test
    fun `non finite numbers and vectors are rejected at the event boundary`() {
        assertThrows(IllegalArgumentException::class.java) {
            EventPayload.Number(Double.NaN)
        }
        assertThrows(IllegalArgumentException::class.java) {
            EventPayload.Vector3Value(Vector3(Float.POSITIVE_INFINITY, 0f, 0f))
        }
    }
}
