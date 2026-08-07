package com.mobilegamestudio.core.model

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class EditorDocumentHistoryTest {
    @Test
    fun `typing with same merge key becomes one undo step`() {
        val history = EditorDocumentHistory("")

        history.commit("a", "Typing", mergeKey = "editor:typing")
        history.commit("ab", "Typing", mergeKey = "editor:typing")
        history.commit("abc", "Typing", mergeKey = "editor:typing")

        assertEquals(1, history.snapshot().undoDepth)
        assertEquals("", history.undo())
        assertEquals("abc", history.redo())
    }

    @Test
    fun `transaction groups many intermediate graph changes into one undo`() {
        val history = EditorDocumentHistory(listOf("A"))

        history.beginTransaction("Move selection")
        history.commit(listOf("A", "preview-1"), "drag")
        history.commit(listOf("A", "preview-2"), "drag")
        history.commit(listOf("A", "B"), "drag")
        assertTrue(history.endTransaction())

        assertEquals(1, history.snapshot().undoDepth)
        assertEquals(listOf("A"), history.undo())
        assertEquals(listOf("A", "B"), history.redo())
    }

    @Test
    fun `cancel transaction restores original document without history`() {
        val history = EditorDocumentHistory("original")

        history.beginTransaction("Temporary edit")
        history.commit("broken", "temp")
        assertEquals("original", history.cancelTransaction())

        assertEquals("original", history.document)
        assertFalse(history.snapshot().canUndo)
    }

    @Test
    fun `new edit after undo invalidates redo branch`() {
        val history = EditorDocumentHistory(0)
        history.commit(1, "one")
        history.commit(2, "two")

        assertEquals(1, history.undo())
        assertTrue(history.snapshot().canRedo)
        history.commit(3, "three")

        assertFalse(history.snapshot().canRedo)
        assertNull(history.redo())
        assertEquals(3, history.document)
    }

    @Test
    fun `capacity removes oldest entries without corrupting current state`() {
        val history = EditorDocumentHistory(0, maxEntries = 2)
        history.commit(1, "one")
        history.commit(2, "two")
        history.commit(3, "three")

        assertEquals(2, history.snapshot().undoDepth)
        assertEquals(2, history.undo())
        assertEquals(1, history.undo())
        assertNull(history.undo())
    }

    @Test
    fun `independent workspace histories never share state`() {
        val graphHistory = EditorDocumentHistory("graph-v1")
        val codeHistory = EditorDocumentHistory("code-v1")

        graphHistory.commit("graph-v2", "Connect nodes")
        codeHistory.commit("code-v2", "Typing", mergeKey = "code:typing")

        assertEquals("graph-v1", graphHistory.undo())
        assertEquals("code-v2", codeHistory.document)
        assertEquals("code-v1", codeHistory.undo())
    }
}
