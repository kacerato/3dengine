package com.mobilegamestudio.core.model

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class NoCodeEventDefinitionsTest {
    @Test
    fun `custom event variants expose sender target and correctly typed payload`() {
        val expected = mapOf(
            "event.custom.received" to VisualPortType.ANY,
            "event.custom.received_bool" to VisualPortType.BOOLEAN,
            "event.custom.received_number" to VisualPortType.NUMBER,
            "event.custom.received_text" to VisualPortType.TEXT,
        )

        expected.forEach { (id, type) ->
            val definition = requireNotNull(NoCodeNodeRegistry.definition(id))
            assertTrue(definition.outputs.any { it.id == "sender" && it.type == VisualPortType.OBJECT })
            assertTrue(definition.outputs.any { it.id == "target" && it.type == VisualPortType.OBJECT })
            assertTrue(definition.outputs.any { it.id == "value" && it.type == type })
        }
    }

    @Test
    fun `general send event supports explicit addressing`() {
        val definition = requireNotNull(NoCodeNodeRegistry.definition("event.send"))

        assertTrue(definition.inputs.any { it.id == "event" && it.required })
        assertTrue(definition.inputs.any { it.id == "scope" && it.type == VisualPortType.TEXT })
        assertTrue(definition.inputs.any { it.id == "target" && it.type == VisualPortType.OBJECT })
        assertTrue(definition.inputs.any { it.id == "scene" && it.type == VisualPortType.TEXT })
        assertTrue(definition.inputs.any { it.id == "graph" && it.type == VisualPortType.TEXT })
    }

    @Test
    fun `existing object send ids are overridden instead of duplicated`() {
        val ids = listOf(
            "object.send_event",
            "object.send_event_bool",
            "object.send_event_number",
            "object.send_event_text",
        )

        ids.forEach { id ->
            assertEquals(1, NoCodeNodeRegistry.definitions.count { it.id == id })
            val definition = requireNotNull(NoCodeNodeRegistry.definition(id))
            assertTrue(definition.inputs.any { it.id == "object" && it.required })
            assertTrue(definition.inputs.any { it.id == "event" && it.required })
        }
    }
}
