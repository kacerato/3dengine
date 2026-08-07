package com.mobilegamestudio.core.model

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class VisualGraphPortValidationTest {
    @Test
    fun `validator rejects nonexistent source and target ports`() {
        val graph = VisualGraphDocument(
            graphId = "invalid-ports",
            name = "Invalid Ports",
            nodes = listOf(
                VisualNode("math", VisualNodeType.CATALOG, definitionId = "math.number.add"),
                VisualNode(
                    "send",
                    VisualNodeType.CATALOG,
                    definitionId = "event.send_number",
                    values = mapOf("event" to "value"),
                ),
            ),
            connections = listOf(
                VisualConnection("math", "send", "missing", "value"),
                VisualConnection("math", "send", "result", "missing"),
            ),
        )

        val errors = VisualGraphValidator.validate(graph)

        assertTrue(errors.any { "Porta de saída inexistente" in it })
        assertTrue(errors.any { "Porta de entrada inexistente" in it })
    }

    @Test
    fun `validator rejects incompatible data types`() {
        val graph = VisualGraphDocument(
            graphId = "type-mismatch",
            name = "Type mismatch",
            nodes = listOf(
                VisualNode("math", VisualNodeType.CATALOG, definitionId = "math.number.add"),
                VisualNode(
                    "send",
                    VisualNodeType.CATALOG,
                    definitionId = "object.send_event",
                    values = mapOf("event" to "use"),
                ),
            ),
            connections = listOf(
                VisualConnection("math", "send", "result", "object"),
            ),
        )

        val errors = VisualGraphValidator.validate(graph)

        assertTrue(errors.any { "Tipos incompatíveis" in it })
    }

    @Test
    fun `validator rejects multiple sources into one data input`() {
        val graph = VisualGraphDocument(
            graphId = "multi-data-input",
            name = "Multi Data Input",
            nodes = listOf(
                VisualNode("a", VisualNodeType.CATALOG, definitionId = "math.number.add"),
                VisualNode("b", VisualNodeType.CATALOG, definitionId = "math.number.multiply"),
                VisualNode(
                    "send",
                    VisualNodeType.CATALOG,
                    definitionId = "event.send_number",
                    values = mapOf("event" to "value"),
                ),
            ),
            connections = listOf(
                VisualConnection("a", "send", "result", "value"),
                VisualConnection("b", "send", "result", "value"),
            ),
        )

        val errors = VisualGraphValidator.validate(graph)

        assertTrue(errors.any { "aceita apenas uma conexão" in it })
    }

    @Test
    fun `send event may receive event name through valid text connection`() {
        val graph = VisualGraphDocument(
            graphId = "connected-event-name",
            name = "Connected Event Name",
            nodes = listOf(
                VisualNode(
                    id = "text-receiver",
                    type = VisualNodeType.CATALOG,
                    definitionId = "event.custom.received_text",
                    values = mapOf("event" to "source"),
                ),
                VisualNode(
                    id = "send",
                    type = VisualNodeType.CATALOG,
                    definitionId = "event.send",
                ),
            ),
            connections = listOf(
                VisualConnection("text-receiver", "send", "value", "event"),
            ),
        )

        val errors = VisualGraphValidator.validate(graph)

        assertFalse(errors.any { "Send Event send precisa de um nome" in it })
    }

    @Test
    fun `custom event receiver requires explicit registered name`() {
        val graph = VisualGraphDocument(
            graphId = "unnamed-receiver",
            name = "Unnamed Receiver",
            nodes = listOf(
                VisualNode("receiver", VisualNodeType.CATALOG, definitionId = "event.custom.received"),
            ),
        )

        val errors = VisualGraphValidator.validate(graph)

        assertTrue(errors.any { "Custom Event receiver precisa de um nome" in it })
    }

    @Test
    fun `legacy generic flow ports remain valid for sequence migration`() {
        val graph = VisualGraphDocument(
            graphId = "legacy",
            name = "Legacy",
            nodes = listOf(
                VisualNode("event", VisualNodeType.ON_BUTTON_PRESSED, textValue = "go"),
                VisualNode("sequence", VisualNodeType.CATALOG, definitionId = "flow.sequence.2"),
                VisualNode("a", VisualNodeType.PRINT_LOG, textValue = "A"),
                VisualNode("b", VisualNodeType.PRINT_LOG, textValue = "B"),
            ),
            connections = listOf(
                VisualConnection("event", "sequence"),
                VisualConnection("sequence", "a"),
                VisualConnection("sequence", "b"),
            ),
        )

        val errors = VisualGraphValidator.validate(graph)

        assertFalse(errors.any { "Porta" in it || "Tipos incompatíveis" in it })
    }

    @Test
    fun `flow and value cycles receive distinct diagnostics`() {
        val flowCycle = VisualGraphDocument(
            graphId = "flow-cycle",
            name = "Flow Cycle",
            nodes = listOf(
                VisualNode("a", VisualNodeType.PRINT_LOG, textValue = "A"),
                VisualNode("b", VisualNodeType.PRINT_LOG, textValue = "B"),
            ),
            connections = listOf(
                VisualConnection("a", "b"),
                VisualConnection("b", "a"),
            ),
        )
        val valueCycle = VisualGraphDocument(
            graphId = "value-cycle",
            name = "Value Cycle",
            nodes = listOf(
                VisualNode("a", VisualNodeType.CATALOG, definitionId = "math.number.add"),
                VisualNode("b", VisualNodeType.CATALOG, definitionId = "math.number.add"),
            ),
            connections = listOf(
                VisualConnection("a", "b", "result", "a"),
                VisualConnection("b", "a", "result", "a"),
            ),
        )

        val flowErrors = VisualGraphValidator.validate(flowCycle)
        val valueErrors = VisualGraphValidator.validate(valueCycle)

        assertTrue(flowErrors.any { "ciclo de fluxo" in it })
        assertTrue(valueErrors.any { "ciclo de valores" in it })
    }
}
