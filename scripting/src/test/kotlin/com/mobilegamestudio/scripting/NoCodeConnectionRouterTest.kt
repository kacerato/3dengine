package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.NoCodeNodeRegistry
import com.mobilegamestudio.core.model.VisualConnection
import com.mobilegamestudio.core.model.VisualNode
import com.mobilegamestudio.core.model.VisualNodeType
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class NoCodeConnectionRouterTest {
    @Test
    fun `legacy sequence flow edges are mapped by declaration order`() {
        val node = VisualNode("sequence", VisualNodeType.CATALOG, definitionId = "flow.sequence.3")
        val definition = requireNotNull(NoCodeNodeRegistry.definitionFor(node))
        val outgoing = listOf(
            VisualConnection("sequence", "a"),
            VisualConnection("sequence", "b"),
            VisualConnection("sequence", "c"),
        )

        assertEquals("a", NoCodeConnectionRouter.resolve(node, definition, "then1", outgoing).single().toNodeId)
        assertEquals("b", NoCodeConnectionRouter.resolve(node, definition, "then2", outgoing).single().toNodeId)
        assertEquals("c", NoCodeConnectionRouter.resolve(node, definition, "then3", outgoing).single().toNodeId)
    }

    @Test
    fun `explicit new port wins over legacy fallback`() {
        val node = VisualNode("sequence", VisualNodeType.CATALOG, definitionId = "flow.sequence.2")
        val definition = requireNotNull(NoCodeNodeRegistry.definitionFor(node))
        val outgoing = listOf(
            VisualConnection("sequence", "legacy", "flow", "flow"),
            VisualConnection("sequence", "new", "then1", "flowIn"),
        )

        val result = NoCodeConnectionRouter.resolve(node, definition, "then1", outgoing)

        assertEquals(listOf("new"), result.map { it.toNodeId })
    }

    @Test
    fun `legacy branch maps old flow only to true path`() {
        val node = VisualNode("branch", VisualNodeType.CATALOG, definitionId = "flow.branch")
        val definition = requireNotNull(NoCodeNodeRegistry.definitionFor(node))
        val outgoing = listOf(VisualConnection("branch", "action"))

        assertEquals(1, NoCodeConnectionRouter.resolve(node, definition, "true", outgoing).size)
        assertTrue(NoCodeConnectionRouter.resolve(node, definition, "false", outgoing).isEmpty())
    }

    @Test
    fun `legacy multi gate maps selected output to matching legacy edge`() {
        val node = VisualNode("multi", VisualNodeType.CATALOG, definitionId = "flow.multi_gate.3")
        val definition = requireNotNull(NoCodeNodeRegistry.definitionFor(node))
        val outgoing = listOf(
            VisualConnection("multi", "a"),
            VisualConnection("multi", "b"),
            VisualConnection("multi", "c"),
        )

        assertEquals("c", NoCodeConnectionRouter.resolve(node, definition, "out2", outgoing).single().toNodeId)
    }

    @Test
    fun `unrelated node never guesses a legacy mapping`() {
        val node = VisualNode("print", VisualNodeType.PRINT_LOG, textValue = "x")
        val definition = NoCodeNodeRegistry.definitionFor(node)
        val outgoing = listOf(VisualConnection("print", "next"))

        assertTrue(NoCodeConnectionRouter.resolve(node, definition, "unknown", outgoing).isEmpty())
    }
}
