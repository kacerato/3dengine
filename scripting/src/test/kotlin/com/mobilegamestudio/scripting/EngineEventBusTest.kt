package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.EngineEvent
import com.mobilegamestudio.core.model.EventPayload
import com.mobilegamestudio.core.model.ExecutionContext
import com.mobilegamestudio.core.model.ObjectRef
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class EngineEventBusTest {
    @Test
    fun `object scoped event reaches only the exact target`() {
        val bus = EngineEventBus()
        val doorA = ObjectRef("door-a")
        val doorB = ObjectRef("door-b")
        val received = mutableListOf<String>()

        bus.subscribeObject(EventOwner("graph-a"), doorA, "interact") { _, context ->
            received += context.targetObject!!.objectId
        }
        bus.subscribeObject(EventOwner("graph-b"), doorB, "interact") { _, context ->
            received += context.targetObject!!.objectId
        }

        val result = bus.dispatch(
            EngineEvent.objectTarget(
                name = "interact",
                target = doorA,
                payload = EventPayload.Text("open"),
            ),
        )

        assertTrue(result.succeeded)
        assertEquals(1, result.deliveredCount)
        assertEquals(listOf("door-a"), received)
    }

    @Test
    fun `local scene and global scopes do not leak into each other`() {
        val bus = EngineEventBus()
        val hits = mutableListOf<String>()

        bus.subscribeLocalGraph(EventOwner("local"), "graph-1", "tick") { _, _ -> hits += "local" }
        bus.subscribeScene(EventOwner("scene"), "scene-1", "tick") { _, _ -> hits += "scene" }
        bus.subscribeGlobal(EventOwner("global"), "tick") { _, _ -> hits += "global" }

        bus.dispatch(EngineEvent.local("tick", "graph-1"))
        bus.dispatch(EngineEvent.scene("tick", "scene-1"))
        bus.dispatch(EngineEvent.global("tick"))

        assertEquals(listOf("local", "scene", "global"), hits)
    }

    @Test
    fun `owner cleanup removes every listener owned by destroyed graph`() {
        val bus = EngineEventBus()
        val owner = EventOwner("graph:inventory")
        bus.subscribeGlobal(owner, "one") { _, _ -> }
        bus.subscribeGlobal(owner, "two") { _, _ -> }
        bus.subscribeGlobal(EventOwner("another"), "three") { _, _ -> }

        assertEquals(2, bus.unsubscribeOwner(owner))
        assertEquals(1, bus.subscriptionCount())
    }

    @Test
    fun `once subscription is removed even when listener fails`() {
        val bus = EngineEventBus()
        bus.subscribeGlobal(EventOwner("once"), "explode", once = true) { _, _ ->
            error("expected test failure")
        }

        val first = bus.dispatch(EngineEvent.global("explode"))
        val second = bus.dispatch(EngineEvent.global("explode"))

        assertFalse(first.succeeded)
        assertEquals(1, first.failures.size)
        assertEquals(0, second.deliveredCount)
        assertTrue(second.succeeded)
    }

    @Test
    fun `nested events keep execution id and cannot recurse forever`() {
        val bus = EngineEventBus(maxDispatchDepth = 4)
        val executionIds = mutableListOf<Long>()
        var terminalResult: EventDispatchResult? = null

        bus.subscribeGlobal(EventOwner("recursive"), "loop") { event, context ->
            executionIds += context.executionId
            terminalResult = bus.dispatch(event, context)
        }

        val result = bus.dispatch(
            EngineEvent.global("loop"),
            ExecutionContext(executionId = 42),
        )

        assertTrue(result.succeeded)
        assertEquals(listOf(42L, 42L, 42L, 42L), executionIds)
        assertFalse(requireNotNull(terminalResult).succeeded)
        assertTrue(requireNotNull(terminalResult).failures.first().message.contains("Limite"))
    }
}
