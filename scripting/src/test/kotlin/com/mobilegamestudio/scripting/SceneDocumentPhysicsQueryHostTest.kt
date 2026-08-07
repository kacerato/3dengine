package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.ColliderComponent
import com.mobilegamestudio.core.model.ColliderShape
import com.mobilegamestudio.core.model.GameObject
import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.PhysicsQueryFilterComponent
import com.mobilegamestudio.core.model.Ray3
import com.mobilegamestudio.core.model.RayQuery
import com.mobilegamestudio.core.model.SceneDocument
import com.mobilegamestudio.core.model.TransformComponent
import com.mobilegamestudio.core.model.Vector3
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class SceneDocumentPhysicsQueryHostTest {
    @Test
    fun `axis aligned box returns exact surface distance and normal`() {
        val scene = scene(
            objectWithCollider(
                id = "box",
                collider = ColliderComponent(shape = ColliderShape.BOX, size = Vector3(2f, 2f, 2f)),
            ),
        )
        val result = SceneDocumentPhysicsQueryHost { scene }.traceRay(
            query(origin = Vector3(0f, 0f, -10f), direction = Vector3(0f, 0f, 1f)),
        )

        assertTrue(result.hit)
        assertEquals("box", result.firstHit!!.objectRef.objectId)
        assertEquals(9f, result.firstHit!!.distance, 0.0001f)
        assertEquals(Vector3(0f, 0f, -1f), result.firstHit!!.normal)
        assertEquals(Vector3(0f, 0f, -1f), result.firstHit!!.point)
    }

    @Test
    fun `rotated box uses oriented bounds rather than world aabb`() {
        val scene = scene(
            objectWithCollider(
                id = "rotated-box",
                transform = TransformComponent(rotationEulerDegrees = Vector3(0f, 90f, 0f)),
                collider = ColliderComponent(shape = ColliderShape.BOX, size = Vector3(4f, 2f, 1f)),
            ),
        )
        val result = SceneDocumentPhysicsQueryHost { scene }.traceRay(
            query(origin = Vector3(0f, 0f, -10f), direction = Vector3(0f, 0f, 1f)),
        )

        assertTrue(result.hit)
        assertEquals(8f, result.firstHit!!.distance, 0.0002f)
    }

    @Test
    fun `sphere respects transform scale and collider center`() {
        val scene = scene(
            objectWithCollider(
                id = "sphere",
                transform = TransformComponent(
                    position = Vector3(0f, 0f, 3f),
                    scale = Vector3(2f, 1f, 1f),
                ),
                collider = ColliderComponent(
                    shape = ColliderShape.SPHERE,
                    radius = 1f,
                    center = Vector3(0f, 0f, 1f),
                ),
            ),
        )
        val result = SceneDocumentPhysicsQueryHost { scene }.traceRay(
            query(origin = Vector3(0f, 0f, -10f), direction = Vector3(0f, 0f, 1f)),
        )

        // Center becomes z=4, radius becomes 2 from max scale -> near face z=2.
        assertEquals(12f, result.firstHit!!.distance, 0.0002f)
    }

    @Test
    fun `capsule intersects cylindrical body and returns finite normal`() {
        val scene = scene(
            objectWithCollider(
                id = "capsule",
                collider = ColliderComponent(
                    shape = ColliderShape.CAPSULE,
                    radius = 1f,
                    height = 4f,
                ),
            ),
        )
        val result = SceneDocumentPhysicsQueryHost { scene }.traceRay(
            query(origin = Vector3(0f, 0f, -5f), direction = Vector3(0f, 0f, 1f)),
        )

        assertTrue(result.hit)
        assertEquals(4f, result.firstHit!!.distance, 0.0002f)
        assertTrue(result.firstHit!!.normal.isFinite())
    }

    @Test
    fun `layer mask and trigger flag are both enforced`() {
        val trigger = objectWithCollider(
            id = "trigger",
            collider = ColliderComponent(shape = ColliderShape.BOX, size = Vector3(2f, 2f, 2f)),
            filter = PhysicsQueryFilterComponent(layer = 3, isTrigger = true),
        )
        val host = SceneDocumentPhysicsQueryHost { scene(trigger) }
        val base = query(
            origin = Vector3(0f, 0f, -5f),
            direction = Vector3(0f, 0f, 1f),
            layerMask = 1L shl 3,
        )

        assertFalse(host.traceRay(base).hit)
        assertTrue(host.traceRay(base.copy(includeTriggers = true)).hit)
        assertFalse(
            host.traceRay(
                base.copy(
                    layerMask = 1L shl 2,
                    includeTriggers = true,
                ),
            ).hit,
        )
    }

    @Test
    fun `objects without filter metadata default to layer zero non trigger`() {
        val box = objectWithCollider(
            id = "box",
            collider = ColliderComponent(shape = ColliderShape.BOX, size = Vector3(2f, 2f, 2f)),
        )
        val host = SceneDocumentPhysicsQueryHost { scene(box) }

        assertTrue(
            host.traceRay(
                query(
                    Vector3(0f, 0f, -5f),
                    Vector3(0f, 0f, 1f),
                    layerMask = 1L,
                ),
            ).hit,
        )
        assertFalse(
            host.traceRay(
                query(
                    Vector3(0f, 0f, -5f),
                    Vector3(0f, 0f, 1f),
                    layerMask = 1L shl 1,
                ),
            ).hit,
        )
    }

    @Test
    fun `ignore list removes exact object without affecting next hit`() {
        val near = objectWithCollider(
            id = "near",
            transform = TransformComponent(position = Vector3(0f, 0f, 0f)),
            collider = ColliderComponent(shape = ColliderShape.BOX, size = Vector3(2f, 2f, 2f)),
        )
        val far = objectWithCollider(
            id = "far",
            transform = TransformComponent(position = Vector3(0f, 0f, 5f)),
            collider = ColliderComponent(shape = ColliderShape.BOX, size = Vector3(2f, 2f, 2f)),
        )
        val host = SceneDocumentPhysicsQueryHost { scene(near, far) }

        val result = host.traceRay(
            query(
                origin = Vector3(0f, 0f, -5f),
                direction = Vector3(0f, 0f, 1f),
                ignored = setOf(ObjectRef("near")),
            ),
        )

        assertEquals("far", result.firstHit!!.objectRef.objectId)
        assertEquals(9f, result.firstHit!!.distance, 0.0002f)
    }

    @Test
    fun `multiple enabled colliders on one object return distinct component hits`() {
        val first = ColliderComponent(
            componentId = "first",
            shape = ColliderShape.SPHERE,
            center = Vector3(0f, 0f, 0f),
            radius = 1f,
        )
        val second = ColliderComponent(
            componentId = "second",
            shape = ColliderShape.SPHERE,
            center = Vector3(0f, 0f, 4f),
            radius = 1f,
        )
        val objectValue = GameObject(
            id = "compound",
            name = "Compound",
            components = listOf(TransformComponent(), first, second),
        )
        val host = SceneDocumentPhysicsQueryHost { scene(objectValue) }

        val result = host.traceRay(
            query(
                origin = Vector3(0f, 0f, -5f),
                direction = Vector3(0f, 0f, 1f),
                maxHits = 8,
            ),
        )

        assertEquals(listOf("first", "second"), result.hits.map { it.colliderRef!!.componentId })
    }

    @Test
    fun `ray beginning inside collider reports stable zero-distance hit`() {
        val sphere = objectWithCollider(
            id = "sphere",
            collider = ColliderComponent(shape = ColliderShape.SPHERE, radius = 2f),
        )
        val result = SceneDocumentPhysicsQueryHost { scene(sphere) }.traceRay(
            query(origin = Vector3.ZERO, direction = Vector3(1f, 0f, 0f)),
        )

        assertEquals(0f, result.firstHit!!.distance, 0f)
        assertEquals(Vector3(-1f, 0f, 0f), result.firstHit!!.normal)
    }

    private fun scene(vararg objects: GameObject) = SceneDocument(
        sceneId = "scene",
        name = "Scene",
        rootObjects = objects.map(GameObject::id),
        objects = objects.toList(),
    )

    private fun objectWithCollider(
        id: String,
        transform: TransformComponent = TransformComponent(),
        collider: ColliderComponent,
        filter: PhysicsQueryFilterComponent? = null,
    ) = GameObject(
        id = id,
        name = id,
        components = buildList {
            add(transform)
            add(collider)
            if (filter != null) add(filter)
        },
    )

    private fun query(
        origin: Vector3,
        direction: Vector3,
        layerMask: Long = RayQuery.ALL_LAYERS,
        ignored: Set<ObjectRef> = emptySet(),
        maxHits: Int = 1,
    ) = RayQuery(
        ray = Ray3(origin, direction),
        maxDistance = 100f,
        layerMask = layerMask,
        ignoredObjects = ignored,
        maxHits = maxHits,
    )
}
