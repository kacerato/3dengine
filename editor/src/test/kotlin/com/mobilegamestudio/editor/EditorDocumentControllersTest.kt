package com.mobilegamestudio.editor

import com.mobilegamestudio.core.model.VisualGraphDocument
import com.mobilegamestudio.core.model.VisualNode
import com.mobilegamestudio.core.model.VisualNodeType
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class EditorDocumentControllersTest {
    @Test
    fun `node drag with many intermediate positions is one undo step`() {
        val initial = graphWithNode(0f)
        val controller = NoCodeDocumentController(initial)
        controller.beginNodeDrag(listOf("node"))
        controller.updateNodeDrag(graphWithNode(10f))
        controller.updateNodeDrag(graphWithNode(20f))
        controller.updateNodeDrag(graphWithNode(30f))
        assertTrue(controller.endNodeDrag())

        assertEquals(30f, controller.document.nodes.single().positionX)
        assertEquals("Mover node", controller.status().undoLabel)

        val undone = requireNotNull(controller.undo())
        assertEquals(0f, undone.nodes.single().positionX)
        assertFalse(controller.status().canUndo)

        val redone = requireNotNull(controller.redo())
        assertEquals(30f, redone.nodes.single().positionX)
    }

    @Test
    fun `cancelled drag restores graph without publishing history`() {
        val initial = graphWithNode(0f)
        val controller = NoCodeDocumentController(initial)
        controller.beginNodeDrag(listOf("node"))
        controller.updateNodeDrag(graphWithNode(40f))

        val restored = controller.cancelNodeDrag()

        assertEquals(initial, restored)
        assertFalse(controller.status().canUndo)
        assertFalse(controller.status().isDirty)
    }

    @Test
    fun `typing burst merges but pause creates a new undo boundary`() {
        var time = 1_000L
        val controller = TextDocumentController(initial = "", nowMillis = { time })

        controller.edit("a", TextEditKind.TYPING)
        time += 100
        controller.edit("ab", TextEditKind.TYPING)
        time += 100
        controller.edit("abc", TextEditKind.TYPING)
        time += 1_000
        controller.edit("abcd", TextEditKind.TYPING)

        assertEquals("abc", controller.undo())
        assertEquals("", controller.undo())
        assertFalse(controller.status().canUndo)
    }

    @Test
    fun `paste is its own undo action and does not merge into typing`() {
        var time = 1_000L
        val controller = TextDocumentController(initial = "", nowMillis = { time })
        controller.edit("hello", TextEditKind.TYPING)
        time += 100
        controller.edit("hello world", TextEditKind.PASTE)

        assertEquals("hello", controller.undo())
        assertEquals("", controller.undo())
    }

    @Test
    fun `saved checkpoint follows undo redo instead of a sticky dirty flag`() {
        val controller = TextDocumentController(initial = "a", nowMillis = { 1_000L })
        controller.edit("ab", TextEditKind.REPLACE)
        assertTrue(controller.status().isDirty)
        controller.markSaved()
        assertFalse(controller.status().isDirty)

        controller.edit("abc", TextEditKind.REPLACE)
        assertTrue(controller.status().isDirty)
        controller.undo()
        assertFalse(controller.status().isDirty)
        controller.redo()
        assertTrue(controller.status().isDirty)
    }

    @Test
    fun `cursor or selection boundary prevents unrelated typing from merging`() {
        var time = 1_000L
        val controller = TextDocumentController(initial = "", nowMillis = { time })
        controller.edit("a", TextEditKind.TYPING)
        time += 10
        controller.breakMergeGroup()
        controller.edit("ab", TextEditKind.TYPING)

        assertEquals("a", controller.undo())
        assertEquals("", controller.undo())
    }

    private fun graphWithNode(x: Float) = VisualGraphDocument(
        graphId = "graph",
        name = "Graph",
        nodes = listOf(
            VisualNode(
                id = "node",
                type = VisualNodeType.PRINT_LOG,
                textValue = "log",
                positionX = x,
                positionY = 0f,
            ),
        ),
        connections = emptyList(),
    )
}
