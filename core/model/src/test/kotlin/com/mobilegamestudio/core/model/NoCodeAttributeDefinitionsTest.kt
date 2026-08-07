package com.mobilegamestudio.core.model

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class NoCodeAttributeDefinitionsTest {
    @Test
    fun `typed attribute family is registered without duplicate ids`() {
        assertEquals(
            NoCodeAttributeDefinitions.definitions.size,
            NoCodeAttributeDefinitions.definitions.map(VisualNodeDefinition::id).distinct().size,
        )
        assertTrue(NoCodeNodeRegistry.contains("attribute.get_bool"))
        assertTrue(NoCodeNodeRegistry.contains("attribute.set_number"))
        assertTrue(NoCodeNodeRegistry.contains("attribute.changed_object"))
    }

    @Test
    fun `set attribute exposes explicit address value and previous state`() {
        val node = requireNotNull(NoCodeNodeRegistry.definition("attribute.set_number"))

        assertTrue(node.inputs.any { it.id == "flowIn" && it.type == VisualPortType.FLOW })
        assertTrue(node.inputs.any { it.id == "name" && it.type == VisualPortType.TEXT && it.required })
        assertTrue(node.inputs.any { it.id == "scope" && it.type == VisualPortType.TEXT })
        assertTrue(node.inputs.any { it.id == "object" && it.type == VisualPortType.OBJECT })
        assertTrue(node.inputs.any { it.id == "scene" && it.type == VisualPortType.TEXT })
        assertTrue(node.inputs.any { it.id == "value" && it.type == VisualPortType.NUMBER && it.required })
        assertTrue(node.outputs.any { it.id == "previous" && it.type == VisualPortType.NUMBER })
        assertTrue(node.outputs.any { it.id == "changed" && it.type == VisualPortType.BOOLEAN })
    }

    @Test
    fun `attribute changed is an event with typed value output`() {
        val node = requireNotNull(NoCodeNodeRegistry.definition("attribute.changed_vector3"))

        assertEquals(VisualNodeCategory.EVENTS, node.category)
        assertTrue(node.outputs.any { it.id == "flow" && it.type == VisualPortType.FLOW })
        assertTrue(node.outputs.any { it.id == "value" && it.type == VisualPortType.VECTOR3 })
        assertTrue(node.outputs.any { it.id == "sender" && it.type == VisualPortType.OBJECT })
    }
}
