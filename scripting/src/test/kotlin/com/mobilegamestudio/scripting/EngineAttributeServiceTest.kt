package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.AttributeAddress
import com.mobilegamestudio.core.model.AttributeValue
import com.mobilegamestudio.core.model.EngineEvent
import com.mobilegamestudio.core.model.EventPayload
import com.mobilegamestudio.core.model.ObjectRef
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Test

class EngineAttributeServiceTest {
    @Test
    fun `object attribute change reaches only exact object listener`() {
        val bus = EngineEventBus()
        val service = EngineAttributeService(eventBus = bus)
        val doorA = ObjectRef("door-a")
        val doorB = ObjectRef("door-b")
        val addressA = AttributeAddress.objectValue("locked", doorA)
        val addressB = AttributeAddress.objectValue("locked", doorB)
        val hits = mutableListOf<String>()

        bus.subscribeObject(EventOwner("a"), doorA, service.eventName(addressA)) { event, _ ->
            hits += "a:${(event.payload as EventPayload.Bool).value}"
        }
        bus.subscribeObject(EventOwner("b"), doorB, service.eventName(addressB)) { _, _ ->
            hits += "b"
        }

        val result = service.set(addressA, AttributeValue.Bool(true), sender = ObjectRef("player"))

        assertTrue(result.changed)
        assertTrue(result.notificationSucceeded)
        assertEquals(listOf("a:true"), hits)
    }

    @Test
    fun `same value is a no-op and does not dispatch twice`() {
        val bus = EngineEventBus()
        val service = EngineAttributeService(eventBus = bus)
        val address = AttributeAddress.global("difficulty")
        var deliveries = 0
        bus.subscribeGlobal(EventOwner("ui"), service.eventName(address)) { _, _ -> deliveries += 1 }

        val first = service.set(address, AttributeValue.Text("hard"))
        val second = service.set(address, AttributeValue.Text("hard"))

        assertTrue(first.changed)
        assertFalse(second.changed)
        assertEquals(1, deliveries)
    }

    @Test
    fun `session and global attributes with same name do not collide`() {
        val bus = EngineEventBus()
        val service = EngineAttributeService(eventBus = bus)
        val session = AttributeAddress.session("paused")
        val global = AttributeAddress.global("paused")
        val hits = mutableListOf<String>()

        bus.subscribeGlobal(EventOwner("session"), service.eventName(session)) { _, _ -> hits += "session" }
        bus.subscribeGlobal(EventOwner("global"), service.eventName(global)) { _, _ -> hits += "global" }

        service.set(session, AttributeValue.Bool(true))

        assertEquals(listOf("session"), hits)
    }

    @Test
    fun `object cleanup emits removal for each owned attribute`() {
        val bus = EngineEventBus()
        val service = EngineAttributeService(eventBus = bus)
        val objectRef = ObjectRef("pickup")
        val enabled = AttributeAddress.objectValue("enabled", objectRef)
        val amount = AttributeAddress.objectValue("amount", objectRef)
        val removed = mutableListOf<String>()

        service.set(enabled, AttributeValue.Bool(true))
        service.set(amount, AttributeValue.Number(2.0))
        bus.subscribeObject(EventOwner("enabled-watch"), objectRef, service.eventName(enabled)) { event, _ ->
            if (event.payload == EventPayload.None) removed += "enabled"
        }
        bus.subscribeObject(EventOwner("amount-watch"), objectRef, service.eventName(amount)) { event, _ ->
            if (event.payload == EventPayload.None) removed += "amount"
        }

        val results = service.clearObject(objectRef)

        assertEquals(2, results.size)
        assertEquals(setOf("enabled", "amount"), removed.toSet())
        assertEquals(0, service.store.size())
    }

    @Test
    fun `listener failure is reported without rolling back valid state`() {
        val bus = EngineEventBus()
        val service = EngineAttributeService(eventBus = bus)
        val address = AttributeAddress.global("weather")
        bus.subscribeGlobal(EventOwner("broken-ui"), service.eventName(address)) { _, _ ->
            error("render failed")
        }

        val result = service.set(address, AttributeValue.Text("rain"))

        assertTrue(result.changed)
        assertFalse(result.notificationSucceeded)
        assertEquals(AttributeValue.Text("rain"), service.get(address))
    }

    @Test
    fun `maximum attribute name always generates a valid engine event name`() {
        val service = EngineAttributeService(eventBus = EngineEventBus())
        val address = AttributeAddress.saveGame("x".repeat(AttributeAddress.MAX_ATTRIBUTE_NAME_LENGTH))

        val generated = service.eventName(address)

        assertTrue(generated.length <= EngineEvent.MAX_EVENT_NAME_LENGTH)
        service.set(address, AttributeValue.Bool(true))
        assertThrows(IllegalArgumentException::class.java) {
            AttributeAddress.global("x".repeat(AttributeAddress.MAX_ATTRIBUTE_NAME_LENGTH + 1))
        }
    }
}
