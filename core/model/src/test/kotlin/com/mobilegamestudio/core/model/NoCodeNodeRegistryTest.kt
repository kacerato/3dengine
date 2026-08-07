package com.mobilegamestudio.core.model

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test

class NoCodeNodeRegistryTest {
    @Test
    fun `registry contains no duplicate ids`() {
        assertEquals(
            NoCodeNodeRegistry.definitions.size,
            NoCodeNodeRegistry.definitions.map(VisualNodeDefinition::id).distinct().size,
        )
    }

    @Test
    fun `branch overrides generic contract with condition and two explicit outputs`() {
        val branch = requireNotNull(NoCodeNodeRegistry.definition("flow.branch"))

        assertTrue(branch.inputs.any { it.id == "condition" && it.type == VisualPortType.BOOLEAN && it.required })
        assertEquals(listOf("true", "false"), branch.outputs.filter { it.type == VisualPortType.FLOW }.map { it.id })
    }

    @Test
    fun `gate exposes separate flow control inputs`() {
        val gate = requireNotNull(NoCodeNodeRegistry.definition("flow.gate"))

        assertEquals(
            listOf("flowIn", "open", "close", "toggle"),
            gate.inputs.filter { it.type == VisualPortType.FLOW }.map { it.id },
        )
        assertTrue(gate.inputs.any { it.id == "startOpen" && it.type == VisualPortType.BOOLEAN })
    }

    @Test
    fun `do n exposes reset and numeric count`() {
        val doN = requireNotNull(NoCodeNodeRegistry.definition("flow.do_n"))

        assertTrue(doN.inputs.any { it.id == "reset" && it.type == VisualPortType.FLOW })
        assertTrue(doN.inputs.any { it.id == "n" && it.type == VisualPortType.NUMBER && it.required })
    }

    @Test
    fun `parallel variants expose independent branch ports`() {
        val parallel = requireNotNull(NoCodeNodeRegistry.definition("flow.parallel.6"))

        assertEquals(
            (1..6).map { "branch$it" },
            parallel.outputs.filter { it.type == VisualPortType.FLOW }.map { it.id },
        )
    }

    @Test
    fun `multi gate variants are first class registry definitions`() {
        val multiGate = requireNotNull(NoCodeNodeRegistry.definition("flow.multi_gate.8"))

        assertNotNull(multiGate)
        assertTrue(multiGate.inputs.any { it.id == "mode" && it.type == VisualPortType.TEXT })
        assertTrue(multiGate.inputs.any { it.id == "loop" && it.type == VisualPortType.BOOLEAN })
        assertTrue(multiGate.inputs.any { it.id == "startIndex" && it.type == VisualPortType.NUMBER })
        assertEquals(8, multiGate.outputs.count { it.type == VisualPortType.FLOW })
    }

    @Test
    fun `legacy visual node types still resolve through canonical registry`() {
        val legacySequence = VisualNode(
            id = "legacy",
            type = VisualNodeType.SEQUENCE,
        )

        assertEquals("flow.sequence.2", NoCodeNodeRegistry.definitionFor(legacySequence)?.id)
    }
}
