package com.mobilegamestudio.core.model

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Test

class InteractionTargetResolverTest {
    private val resolver = InteractionTargetResolver()

    @Test
    fun `aimed object wins over slightly closer unfocused object`() {
        val bottle = candidate("bottle", distance = 1.5f, aim = 0.99f)
        val box = candidate("box", distance = 1.2f, aim = 0.83f)

        val result = resolver.resolve(listOf(box, bottle))

        assertEquals(ObjectRef("bottle"), result.target?.objectRef)
        assertEquals(InteractionResolutionReason.ACQUIRED, result.reason)
        assertTrue(result.changed)
    }

    @Test
    fun `sticky current target does not flap for tiny camera differences`() {
        val current = ObjectRef("door-a")
        val doorA = candidate("door-a", distance = 1.3f, aim = 0.90f)
        val doorB = candidate("door-b", distance = 1.25f, aim = 0.91f)

        val result = resolver.resolve(listOf(doorA, doorB), currentTarget = current)

        assertEquals(current, result.target?.objectRef)
        assertEquals(InteractionResolutionReason.RETAINED, result.reason)
        assertFalse(result.changed)
    }

    @Test
    fun `explicit priority can override sticky target`() {
        val current = ObjectRef("prop")
        val prop = candidate("prop", distance = 1f, aim = 1f, priority = 0)
        val critical = candidate("critical-switch", distance = 2.2f, aim = 0.84f, priority = 2)

        val result = resolver.resolve(listOf(prop, critical), currentTarget = current)

        assertEquals(ObjectRef("critical-switch"), result.target?.objectRef)
        assertEquals(InteractionResolutionReason.SWITCHED, result.reason)
        assertTrue(result.changed)
    }

    @Test
    fun `retention hysteresis keeps target slightly beyond acquisition threshold`() {
        val current = ObjectRef("door")
        val barelyOutside = candidate("door", distance = 3.2f, aim = 0.78f)

        val result = resolver.resolve(listOf(barelyOutside), currentTarget = current)

        assertEquals(current, result.target?.objectRef)
        assertEquals(InteractionResolutionReason.RETAINED, result.reason)
    }

    @Test
    fun `target is lost after leaving retention bounds`() {
        val current = ObjectRef("door")
        val tooFar = candidate("door", distance = 3.5f, aim = 0.90f)

        val result = resolver.resolve(listOf(tooFar), currentTarget = current)

        assertNull(result.target)
        assertEquals(InteractionResolutionReason.LOST, result.reason)
        assertTrue(result.changed)
    }

    @Test
    fun `exact ties resolve deterministically by stable object id`() {
        val z = candidate("z-object", distance = 1f, aim = 0.9f)
        val a = candidate("a-object", distance = 1f, aim = 0.9f)

        val first = resolver.resolve(listOf(z, a))
        val second = resolver.resolve(listOf(a, z))

        assertEquals(ObjectRef("a-object"), first.target?.objectRef)
        assertEquals(first.target?.objectRef, second.target?.objectRef)
    }

    @Test
    fun `disabled candidate never becomes target`() {
        val disabled = candidate("disabled", 0.5f, 1f).copy(enabled = false)

        val result = resolver.resolve(listOf(disabled))

        assertNull(result.target)
        assertEquals(InteractionResolutionReason.NONE, result.reason)
    }

    @Test
    fun `candidate and ray hit reject invalid cross object references`() {
        val objectRef = ObjectRef("door")
        val otherRef = ObjectRef("window")
        val foreignComponent = ComponentRef(otherRef, "collider")

        assertThrows(IllegalArgumentException::class.java) {
            InteractionCandidate(
                objectRef = objectRef,
                componentRef = foreignComponent,
                distance = 1f,
                aimAlignment = 1f,
            )
        }
        assertThrows(IllegalArgumentException::class.java) {
            RayHit(
                objectRef = objectRef,
                colliderRef = foreignComponent,
                point = Vector3(0f, 0f, 0f),
                normal = Vector3(0f, 1f, 0f),
                distance = 1f,
            )
        }
    }

    @Test
    fun `invalid numeric values are rejected at targeting boundary`() {
        assertThrows(IllegalArgumentException::class.java) {
            candidate("bad-distance", Float.NaN, 1f)
        }
        assertThrows(IllegalArgumentException::class.java) {
            candidate("bad-aim", 1f, 1.1f)
        }
    }

    private fun candidate(
        id: String,
        distance: Float,
        aim: Float,
        priority: Int = 0,
    ) = InteractionCandidate(
        objectRef = ObjectRef(id),
        distance = distance,
        aimAlignment = aim,
        priority = priority,
    )
}
