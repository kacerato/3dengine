package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.Vector3
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class SpatialRuntimeTest {
    private val a = ObjectRef("a")
    private val b = ObjectRef("b")

    @Test
    fun `object distance uses three dimensional world positions`() {
        val positions = mutableMapOf(
            a to Vector3(0f, 0f, 0f),
            b to Vector3(3f, 4f, 0f),
        )
        val runtime = ObjectDistanceRuntime(ObjectSpatialQueryHost(positions::get))

        assertEquals(5.0, runtime.distance(a, b)!!, 0.00001)
    }

    @Test
    fun `proximity hysteresis prevents enter exit chatter around threshold`() {
        val positions = mutableMapOf(
            a to Vector3.ZERO,
            b to Vector3(2.2f, 0f, 0f),
        )
        val runtime = ProximityWatcherRuntime(
            ObjectDistanceRuntime(ObjectSpatialQueryHost(positions::get)),
        )
        val key = ProximityWatcherKey("graph-a", "distance-node")
        runtime.register(
            ProximityWatcherSpec(
                key = key,
                objectA = a,
                objectB = b,
                enterDistance = 2.0,
                exitPadding = 0.25,
            ),
        )

        assertTransition(runtime.evaluate(key), ProximityTransition.NONE)

        positions[b] = Vector3(1.98f, 0f, 0f)
        assertTransition(runtime.evaluate(key), ProximityTransition.ENTER)

        // Crossing back above enterDistance does not exit yet. The target must
        // cross 2.25 m, otherwise small physics jitter would spam enter/exit.
        positions[b] = Vector3(2.03f, 0f, 0f)
        assertTransition(runtime.evaluate(key), ProximityTransition.NONE)
        assertEquals(ProximityState.INSIDE, runtime.state(key))

        positions[b] = Vector3(2.24f, 0f, 0f)
        assertTransition(runtime.evaluate(key), ProximityTransition.NONE)

        positions[b] = Vector3(2.26f, 0f, 0f)
        assertTransition(runtime.evaluate(key), ProximityTransition.EXIT)
        assertEquals(ProximityState.OUTSIDE, runtime.state(key))
    }

    @Test
    fun `stay is opt in instead of firing every frame by default`() {
        val positions = mutableMapOf(a to Vector3.ZERO, b to Vector3(1f, 0f, 0f))
        val silent = ProximityWatcherRuntime(ObjectDistanceRuntime(ObjectSpatialQueryHost(positions::get)))
        val noisy = ProximityWatcherRuntime(ObjectDistanceRuntime(ObjectSpatialQueryHost(positions::get)))
        val silentKey = ProximityWatcherKey("g", "silent")
        val stayKey = ProximityWatcherKey("g", "stay")
        silent.register(ProximityWatcherSpec(silentKey, a, b, 2.0, emitStay = false))
        noisy.register(ProximityWatcherSpec(stayKey, a, b, 2.0, emitStay = true))

        assertTransition(silent.evaluate(silentKey), ProximityTransition.ENTER)
        assertTransition(silent.evaluate(silentKey), ProximityTransition.NONE)

        assertTransition(noisy.evaluate(stayKey), ProximityTransition.ENTER)
        assertTransition(noisy.evaluate(stayKey), ProximityTransition.STAY)
    }

    @Test
    fun `watcher state is isolated by graph instance and node id`() {
        val positions = mutableMapOf(a to Vector3.ZERO, b to Vector3(1f, 0f, 0f))
        val runtime = ProximityWatcherRuntime(ObjectDistanceRuntime(ObjectSpatialQueryHost(positions::get)))
        val keyA = ProximityWatcherKey("door-a-instance", "range")
        val keyB = ProximityWatcherKey("door-b-instance", "range")
        runtime.register(ProximityWatcherSpec(keyA, a, b, 2.0))
        runtime.register(ProximityWatcherSpec(keyB, a, b, 2.0))

        assertTransition(runtime.evaluate(keyA), ProximityTransition.ENTER)
        assertEquals(ProximityState.INSIDE, runtime.state(keyA))
        assertEquals(ProximityState.OUTSIDE, runtime.state(keyB))
    }

    @Test
    fun `missing transform is explicit and does not change state`() {
        val positions = mutableMapOf<ObjectRef, Vector3>(a to Vector3.ZERO)
        val runtime = ProximityWatcherRuntime(ObjectDistanceRuntime(ObjectSpatialQueryHost(positions::get)))
        val key = ProximityWatcherKey("g", "range")
        runtime.register(ProximityWatcherSpec(key, a, b, 2.0))

        val result = runtime.evaluate(key)

        assertTrue(result is ProximityEvaluation.Unavailable)
        assertEquals(setOf(b), (result as ProximityEvaluation.Unavailable).missingObjects)
        assertEquals(ProximityState.OUTSIDE, runtime.state(key))
    }

    private fun assertTransition(result: ProximityEvaluation, expected: ProximityTransition) {
        assertTrue(result is ProximityEvaluation.Available)
        assertEquals(expected, (result as ProximityEvaluation.Available).update.transition)
    }
}
