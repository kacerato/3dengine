package com.mobilegamestudio.core.model

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class SceneDocumentTest {
    @Test
    fun `open world starter is a valid complete scene`() {
        val scene = MountainDemoScene.create(10)

        val errors = SceneValidator.validate(scene)
        assertTrue(errors.toString(), errors.isEmpty())
        assertEquals(11, scene.objects.size)
        assertTrue(scene.objects.any { it.component<LuaScriptComponent>() != null })
        assertTrue(scene.objects.any { it.component<VisualGraphComponent>() != null })
        assertTrue(scene.objects.any { it.component<TouchButtonComponent>() != null })
        assertTrue(scene.objects.any { "vehicle-door" in it.tags })
        assertTrue(scene.objects.any {
            it.component<TouchButtonComponent>()?.eventName == "interact.vehicle"
        })
    }

    @Test
    fun `validator rejects duplicate ids and cyclic hierarchy`() {
        val parent = GameObject(id = "parent", name = "Parent", parentId = "child", children = listOf("child"))
        val child = GameObject(id = "child", name = "Child", parentId = "parent", children = listOf("parent"))
        val scene = SceneDocument(
            sceneId = "cycle",
            name = "Cycle",
            rootObjects = emptyList(),
            objects = listOf(parent, child, child),
            metadata = SceneMetadata(revision = 1),
        )

        val errors = SceneValidator.validate(scene)

        assertTrue(errors.any { it is SceneValidationError.DuplicateId })
        assertTrue(errors.any { it is SceneValidationError.Cycle })
    }

    @Test
    fun `commands update transform and undo without full scene snapshot`() {
        val scene = MountainDemoScene.create(10)
        val history = SceneCommandHistory(scene)
        val before = scene.objects.first { it.id == "starter-car" }.component<TransformComponent>()!!
        val after = before.copy(position = Vector3(2f, 3f, -1f))

        assertTrue(history.execute(UpdateTransformCommand("starter-car", before, after)) is SceneEditResult.Success)
        assertEquals(after, history.document.objects.first { it.id == "starter-car" }.component())
        assertTrue(history.undo() is SceneEditResult.Success)
        assertEquals(before, history.document.objects.first { it.id == "starter-car" }.component())
        assertTrue(history.redo() is SceneEditResult.Success)
        assertEquals(after, history.document.objects.first { it.id == "starter-car" }.component())
    }

    @Test
    fun `stored metadata revision can advance without clearing undo`() {
        val scene = MountainDemoScene.create(10)
        val history = SceneCommandHistory(scene)
        val before = scene.objects.first { it.id == "starter-car" }.component<TransformComponent>()!!
        val after = before.copy(position = Vector3(3f, 0f, 0f))
        history.execute(UpdateTransformCommand("starter-car", before, after))
        val stored = history.document.copy(
            metadata = history.document.metadata.copy(revision = 2, updatedAtEpochMillis = 20),
        )

        assertTrue(history.updateMetadataFromStorage(stored))
        assertTrue(history.canUndo)
        assertTrue(history.undo() is SceneEditResult.Success)
        assertEquals(2L, history.document.metadata.revision)
        assertEquals(before, history.document.objects.first { it.id == "starter-car" }.component())
    }

    @Test
    fun `reparent rejects a hierarchy cycle`() {
        val parent = GameObject(id = "parent", name = "Parent", children = listOf("child"))
        val child = GameObject(id = "child", name = "Child", parentId = "parent")
        val scene = SceneDocument(
            sceneId = "hierarchy",
            name = "Hierarchy",
            rootObjects = listOf("parent"),
            objects = listOf(parent, child),
            metadata = SceneMetadata(revision = 1),
        )
        val history = SceneCommandHistory(scene)

        val result = history.execute(
            ReparentObjectCommand(
                objectId = "parent",
                oldParentId = null,
                newParentId = "child",
                oldIndex = 0,
            ),
        )

        assertTrue(result is SceneEditResult.Failure)
        assertEquals(scene, history.document)
    }
}
