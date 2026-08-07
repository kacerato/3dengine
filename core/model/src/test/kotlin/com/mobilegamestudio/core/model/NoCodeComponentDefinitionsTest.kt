package com.mobilegamestudio.core.model

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test

class NoCodeComponentDefinitionsTest {
    @Test
    fun `pick component keeps object and component typing explicit`() {
        val pick = requireNotNull(NoCodeNodeRegistry.definition("object.pick_component"))

        assertTrue(pick.inputs.any { it.id == "object" && it.type == VisualPortType.OBJECT })
        assertTrue(pick.inputs.any { it.id == "componentType" && it.type == VisualPortType.TEXT })
        assertTrue(pick.outputs.any { it.id == "component" && it.type == VisualPortType.COMPONENT })
        assertTrue(pick.outputs.any { it.id == "found" && it.type == VisualPortType.BOOLEAN })
    }

    @Test
    fun `legacy get component id is overridden by typed specialized contract`() {
        val definition = requireNotNull(NoCodeNodeRegistry.definition("object.get_component"))

        assertEquals("component.pick", definition.operation)
        assertEquals(
            VisualPortType.COMPONENT,
            definition.outputs.single { it.id == "component" }.type,
        )
    }

    @Test
    fun `component method requires a typed component ref`() {
        val method = requireNotNull(NoCodeNodeRegistry.definition("component.method"))

        assertNotNull(method)
        assertTrue(method.inputs.any { it.id == "flowIn" && it.type == VisualPortType.FLOW && it.required })
        assertTrue(method.inputs.any { it.id == "component" && it.type == VisualPortType.COMPONENT && it.required })
        assertTrue(method.inputs.any { it.id == "method" && it.type == VisualPortType.TEXT && it.required })
        assertTrue(method.outputs.any { it.id == "result" && it.type == VisualPortType.ANY })
    }
}
