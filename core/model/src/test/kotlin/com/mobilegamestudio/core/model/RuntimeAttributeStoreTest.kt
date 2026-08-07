package com.mobilegamestudio.core.model

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Test

class RuntimeAttributeStoreTest {
    @Test
    fun `same attribute name in different scopes never collides`() {
        val store = RuntimeAttributeStore()
        val door = ObjectRef("door-a")
        val objectAddress = AttributeAddress.objectValue("locked", door)
        val sceneAddress = AttributeAddress.sceneValue("locked", "garage")
        val globalAddress = AttributeAddress.global("locked")

        store.set(objectAddress, AttributeValue.Bool(true))
        store.set(sceneAddress, AttributeValue.Bool(false))
        store.set(globalAddress, AttributeValue.Text("not-a-door"))

        assertEquals(AttributeValue.Bool(true), store.get(objectAddress))
        assertEquals(AttributeValue.Bool(false), store.get(sceneAddress))
        assertEquals(AttributeValue.Text("not-a-door"), store.get(globalAddress))
        assertEquals(3, store.size())
    }

    @Test
    fun `setting the same value reports no semantic change`() {
        val store = RuntimeAttributeStore()
        val address = AttributeAddress.session("money")

        val first = store.set(address, AttributeValue.Number(100.0))
        val second = store.set(address, AttributeValue.Number(100.0))

        assertTrue(first.changed)
        assertTrue(first.wasCreated)
        assertFalse(second.changed)
        assertFalse(second.wasCreated)
        assertEquals(AttributeValue.Number(100.0), store.get(address))
    }

    @Test
    fun `clearing one object cannot erase another object state`() {
        val store = RuntimeAttributeStore()
        val doorA = ObjectRef("door-a")
        val doorB = ObjectRef("door-b")
        val a = AttributeAddress.objectValue("locked", doorA)
        val b = AttributeAddress.objectValue("locked", doorB)
        store.set(a, AttributeValue.Bool(true))
        store.set(b, AttributeValue.Bool(false))

        val removed = store.clearObject(doorA)

        assertEquals(1, removed.size)
        assertNull(store.get(a))
        assertEquals(AttributeValue.Bool(false), store.get(b))
    }

    @Test
    fun `volatile cleanup preserves global and save game state`() {
        val store = RuntimeAttributeStore()
        val objectAddress = AttributeAddress.objectValue("health", ObjectRef("player"))
        val sceneAddress = AttributeAddress.sceneValue("alarm", "garage")
        val sessionAddress = AttributeAddress.session("interaction-target")
        val globalAddress = AttributeAddress.global("difficulty")
        val saveAddress = AttributeAddress.saveGame("money")

        store.set(objectAddress, AttributeValue.Number(75.0))
        store.set(sceneAddress, AttributeValue.Bool(true))
        store.set(sessionAddress, AttributeValue.Text("door-a"))
        store.set(globalAddress, AttributeValue.Text("hard"))
        store.set(saveAddress, AttributeValue.Number(500.0))

        val changes = store.clearVolatile()

        assertEquals(3, changes.size)
        assertNull(store.get(objectAddress))
        assertNull(store.get(sceneAddress))
        assertNull(store.get(sessionAddress))
        assertEquals(AttributeValue.Text("hard"), store.get(globalAddress))
        assertEquals(AttributeValue.Number(500.0), store.get(saveAddress))
    }

    @Test
    fun `snapshot restore replaces state atomically`() {
        val store = RuntimeAttributeStore()
        val money = AttributeAddress.saveGame("money")
        val difficulty = AttributeAddress.global("difficulty")
        store.set(money, AttributeValue.Number(250.0))
        store.set(difficulty, AttributeValue.Text("normal"))
        val snapshot = store.snapshot()

        store.set(money, AttributeValue.Number(999.0))
        store.remove(difficulty)
        store.restore(snapshot)

        assertEquals(AttributeValue.Number(250.0), store.get(money))
        assertEquals(AttributeValue.Text("normal"), store.get(difficulty))
        assertEquals(2, store.size())
    }

    @Test
    fun `runtime conversion is strict and rejects ambiguous values`() {
        val store = RuntimeAttributeStore()
        val address = AttributeAddress.session("value")

        store.setRuntime(address, 42)
        assertEquals(AttributeValue.Number(42.0), store.get(address))

        assertThrows(IllegalArgumentException::class.java) {
            store.setRuntime(address, mapOf("health" to 100))
        }
        assertThrows(IllegalArgumentException::class.java) {
            AttributeValue.Number(Double.NaN)
        }
    }

    @Test
    fun `address constructor enforces exact scope target`() {
        assertThrows(IllegalArgumentException::class.java) {
            AttributeAddress("health", AttributeScope.OBJECT)
        }
        assertThrows(IllegalArgumentException::class.java) {
            AttributeAddress("weather", AttributeScope.GLOBAL, sceneId = "world")
        }
        assertThrows(IllegalArgumentException::class.java) {
            AttributeAddress(" ", AttributeScope.SESSION)
        }
    }
}
