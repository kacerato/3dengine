package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.ComponentRef
import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.RayHit
import com.mobilegamestudio.core.model.RayQueryResult
import com.mobilegamestudio.core.model.Vector3
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Test

class NoCodePhysicsRuntimeTest {
    @Test
    fun `trace ray normalizes direction and returns nearest hit`() {
        val far = hit("far", 5f)
        val near = hit("near", 1.5f)
        var observedDirection: Vector3? = null
        val runtime = NoCodePhysicsRuntime(
            PhysicsQueryHost { query ->
                observedDirection = query.ray.normalizedDirection
                RayQueryResult(listOf(near, far))
            },
        )

        val result = runtime.execute(
            NoCodePhysicsRuntime.TRACE,
            mapOf(
                "origin" to Vector3.ZERO,
                "direction" to Vector3(0f, 0f, 10f),
                "maxDistance" to 10,
            ),
        )

        assertEquals(Vector3(0f, 0f, 1f), observedDirection)
        assertEquals(listOf("hit"), result.decision.outputPortIds)
        assertEquals(true, result.outputs["didHit"])
        assertEquals(ObjectRef("near"), result.outputs["object"])
        assertEquals(1.5, result.outputs["distance"])
    }

    @Test
    fun `trace ray miss follows miss flow and exposes null hit fields`() {
        val runtime = NoCodePhysicsRuntime(PhysicsQueryHost { RayQueryResult.MISS })

        val result = runtime.execute(
            NoCodePhysicsRuntime.RAYCAST_ALIAS,
            mapOf(
                "origin" to Vector3.ZERO,
                "direction" to Vector3(1f, 0f, 0f),
            ),
        )

        assertEquals(listOf("miss"), result.decision.outputPortIds)
        assertEquals(false, result.outputs["didHit"])
        assertNull(result.outputs["object"])
        assertNull(result.outputs["hitData"])
    }

    @Test
    fun `runtime defensively filters ignored and out of range backend hits`() {
        val ignored = ObjectRef("ignored")
        val runtime = NoCodePhysicsRuntime(
            PhysicsQueryHost {
                RayQueryResult(
                    listOf(
                        hit("ignored", 1f),
                        hit("kept", 2f),
                        hit("too-far", 20f),
                    ),
                )
            },
        )

        val result = runtime.execute(
            NoCodePhysicsRuntime.TRACE_ALL,
            mapOf(
                "origin" to Vector3.ZERO,
                "direction" to Vector3(0f, 0f, 1f),
                "maxDistance" to 5,
                "ignoreObject" to ignored,
                "maxHits" to 10,
            ),
        )

        val hits = result.outputs["hits"] as List<*>
        assertEquals(1, hits.size)
        assertEquals(ObjectRef("kept"), (hits.single() as RayHit).objectRef)
        assertEquals(1.0, result.outputs["count"])
    }

    @Test
    fun `trace all enforces max hits after deterministic sorting`() {
        val runtime = NoCodePhysicsRuntime(
            PhysicsQueryHost {
                RayQueryResult(
                    listOf(
                        hit("a", 1f),
                        hit("b", 2f),
                        hit("c", 3f),
                    ),
                )
            },
        )

        val result = runtime.execute(
            NoCodePhysicsRuntime.TRACE_ALL,
            mapOf(
                "origin" to Vector3.ZERO,
                "direction" to Vector3(0f, 0f, 1f),
                "maxHits" to 2,
            ),
        )

        assertEquals(2.0, result.outputs["count"])
        assertEquals(
            listOf("a", "b"),
            (result.outputs["hits"] as List<RayHit>).map { it.objectRef.objectId },
        )
    }

    @Test
    fun `query forwards layer mask trigger flag and ignore list to backend`() {
        var observedMask: Long? = null
        var observedTriggers: Boolean? = null
        var ignored: Set<ObjectRef>? = null
        val runtime = NoCodePhysicsRuntime(
            PhysicsQueryHost { query ->
                observedMask = query.layerMask
                observedTriggers = query.includeTriggers
                ignored = query.ignoredObjects
                RayQueryResult.MISS
            },
        )

        runtime.execute(
            NoCodePhysicsRuntime.TRACE,
            mapOf(
                "origin" to Vector3.ZERO,
                "direction" to Vector3(0f, -1f, 0f),
                "layerMask" to 12,
                "includeTriggers" to true,
                "ignoreObjects" to listOf(ObjectRef("player"), "weapon"),
            ),
        )

        assertEquals(12L, observedMask)
        assertEquals(true, observedTriggers)
        assertEquals(setOf(ObjectRef("player"), ObjectRef("weapon")), ignored)
    }

    @Test
    fun `invalid ray input fails at physics boundary`() {
        val runtime = NoCodePhysicsRuntime(PhysicsQueryHost { RayQueryResult.MISS })

        assertThrows(IllegalArgumentException::class.java) {
            runtime.execute(
                NoCodePhysicsRuntime.TRACE,
                mapOf(
                    "origin" to Vector3.ZERO,
                    "direction" to Vector3.ZERO,
                ),
            )
        }
        assertThrows(IllegalArgumentException::class.java) {
            runtime.execute(
                NoCodePhysicsRuntime.TRACE,
                mapOf("direction" to Vector3(1f, 0f, 0f)),
            )
        }
    }

    private fun hit(id: String, distance: Float) = RayHit(
        objectRef = ObjectRef(id),
        colliderRef = ComponentRef(ObjectRef(id), "collider-$id"),
        point = Vector3(0f, 0f, distance),
        normal = Vector3(0f, 0f, -1f),
        distance = distance,
    )
}
