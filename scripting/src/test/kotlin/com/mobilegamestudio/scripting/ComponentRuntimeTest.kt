package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.ColliderComponent
import com.mobilegamestudio.core.model.ComponentRef
import com.mobilegamestudio.core.model.GameObject
import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.SceneDocument
import com.mobilegamestudio.core.model.TransformComponent
import com.mobilegamestudio.core.model.Vector3
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class ComponentRuntimeTest {
    private val doorA = ObjectRef("door-a")
    private val doorB = ObjectRef("door-b")

    private fun scene() = SceneDocument(
        sceneId = "world",
        name = "World",
        rootObjects = listOf(doorA.objectId, doorB.objectId),
        objects = listOf(
            GameObject(
                id = doorA.objectId,
                name = "Door A",
                components = listOf(
                    TransformComponent(componentId = "transform-a", position = Vector3(1f, 2f, 3f)),
                    ColliderComponent(componentId = "shared-collider", isTrigger = true),
                    ColliderComponent(componentId = "disabled-collider", enabled = false),
                ),
            ),
            GameObject(
                id = doorB.objectId,
                name = "Door B",
                components = listOf(
                    TransformComponent(componentId = "transform-b", position = Vector3(9f, 8f, 7f)),
                    // Deliberately duplicated to prove ObjectRef ownership prevents cross-object lookup.
                    ColliderComponent(componentId = "shared-collider", isTrigger = false),
                ),
            ),
        ),
    )

    @Test
    fun `same component id on two objects never crosses object ownership`() {
        val resolver = ComponentResolver(SceneDocumentComponentQueryHost(::scene))

        val a = resolver.resolve(ComponentRef(doorA, "shared-collider"))
        val b = resolver.resolve(ComponentRef(doorB, "shared-collider"))

        assertEquals(doorA, a.componentRef?.objectRef)
        assertEquals(doorB, b.componentRef?.objectRef)
        assertTrue((a.component as ColliderComponent).isTrigger)
        assertFalse((b.component as ColliderComponent).isTrigger)
    }

    @Test
    fun `type aliases resolve deterministically and disabled components are excluded by default`() {
        val resolver = ComponentResolver(SceneDocumentComponentQueryHost(::scene))

        val collider = resolver.resolve(doorA, ComponentSelector(type = "Collider"))
        val disabled = resolver.resolve(doorA, ComponentSelector(componentId = "disabled-collider"))
        val disabledExplicit = resolver.resolve(
            doorA,
            ComponentSelector(componentId = "disabled-collider", includeDisabled = true),
        )

        assertEquals("shared-collider", collider.componentRef?.componentId)
        assertEquals(1, collider.matchingCount)
        assertNull(disabled.componentRef)
        assertEquals("disabled-collider", disabledExplicit.componentRef?.componentId)
    }

    @Test
    fun `component method registry reads real typed component data`() {
        val resolver = ComponentResolver(SceneDocumentComponentQueryHost(::scene))
        val methods = BuiltInComponentMethods.createDispatcher(resolver)

        val result = methods.invoke(ComponentRef(doorA, "transform-a"), "transform.get_position")

        assertEquals(ComponentMethodResult.Success(Vector3(1f, 2f, 3f)), result)
    }

    @Test
    fun `method type mismatch fails before handler cast`() {
        val resolver = ComponentResolver(SceneDocumentComponentQueryHost(::scene))
        val methods = BuiltInComponentMethods.createDispatcher(resolver)

        val result = methods.invoke(ComponentRef(doorA, "shared-collider"), "transform.get_position")

        assertTrue(result is ComponentMethodResult.Failure)
        assertEquals("TYPE_MISMATCH", (result as ComponentMethodResult.Failure).code)
    }

    @Test
    fun `contract only mutation cannot pretend to run`() {
        val resolver = ComponentResolver(SceneDocumentComponentQueryHost(::scene))
        val methods = BuiltInComponentMethods.createDispatcher(resolver)

        val result = methods.invoke(
            ComponentRef(doorA, "transform-a"),
            "transform.set_position",
            listOf(Vector3(4f, 5f, 6f)),
        )

        assertTrue(result is ComponentMethodResult.Failure)
        assertEquals("CONTRACT_ONLY", (result as ComponentMethodResult.Failure).code)
    }
}
