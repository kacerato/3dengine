package com.mobilegamestudio.core.model

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class SceneCommandHistoryTest {
    @Test
    fun `transaction is one undo entry and reverts in reverse order`() {
        val original = sceneWithObject("box", "Box")
        val history = SceneCommandHistory(original)
        val transform = original.objects.single().component<TransformComponent>()!!
        val moved = transform.copy(position = Vector3(3f, 2f, 1f))

        val result = history.executeTransaction(
            label = "Preparar caixa",
            commands = listOf(
                RenameObjectCommand("box", "Box", "Crate"),
                UpdateTransformCommand("box", transform, moved),
            ),
        )

        assertTrue(result is SceneEditResult.Success)
        assertEquals(1, history.undoDepth)
        assertEquals("Preparar caixa", history.undoLabel)
        assertEquals("Crate", history.document.objects.single().name)
        assertEquals(moved, history.document.objects.single().component<TransformComponent>())

        assertTrue(history.undo() is SceneEditResult.Success)
        assertEquals(original, history.document)
        assertEquals("Preparar caixa", history.redoLabel)
        assertTrue(history.redo() is SceneEditResult.Success)
        assertEquals("Crate", history.document.objects.single().name)
        assertEquals(moved, history.document.objects.single().component<TransformComponent>())
    }

    @Test
    fun `failed transaction never exposes a partial document`() {
        val original = sceneWithObject("box", "Box")
        val history = SceneCommandHistory(original)

        val result = history.executeTransaction(
            label = "Operação inválida",
            commands = listOf(
                RenameObjectCommand("box", "Box", "Crate"),
                RenameObjectCommand("missing", "Missing", "Still missing"),
            ),
        )

        assertTrue(result is SceneEditResult.Failure)
        assertEquals(original, history.document)
        assertFalse(history.canUndo)
        assertFalse(history.canRedo)
    }

    @Test
    fun `new successful edit after undo clears redo branch`() {
        val original = sceneWithObject("box", "Box")
        val history = SceneCommandHistory(original)

        history.execute(RenameObjectCommand("box", "Box", "First"))
        history.undo()
        assertTrue(history.canRedo)

        history.execute(RenameObjectCommand("box", "Box", "Second"))

        assertFalse(history.canRedo)
        assertEquals("Second", history.document.objects.single().name)
    }

    @Test
    fun `history capacity evicts oldest operation only`() {
        val original = sceneWithObject("box", "Box")
        val history = SceneCommandHistory(original, maxEntries = 2)

        history.execute(RenameObjectCommand("box", "Box", "One"))
        history.execute(RenameObjectCommand("box", "One", "Two"))
        history.execute(RenameObjectCommand("box", "Two", "Three"))

        assertEquals(2, history.undoDepth)
        assertTrue(history.undo() is SceneEditResult.Success)
        assertTrue(history.undo() is SceneEditResult.Success)
        assertEquals("One", history.document.objects.single().name)
        assertTrue(history.undo() is SceneEditResult.Failure)
    }

    private fun sceneWithObject(id: String, name: String): SceneDocument {
        val objectValue = GameObject(id = id, name = name)
        return SceneDocument(
            sceneId = "test-scene",
            name = "Test",
            rootObjects = listOf(id),
            objects = listOf(objectValue),
            metadata = SceneMetadata(revision = 1),
        )
    }
}
