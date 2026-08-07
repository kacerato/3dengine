package com.mobilegamestudio.core.model

import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test

class NoCodePortCompatibilityTest {
    @Test
    fun `number cannot connect to object`() {
        val source = VisualNode("number", VisualNodeType.CATALOG, definitionId = "math.number.add")
        val target = VisualNode("send", VisualNodeType.CATALOG, definitionId = "object.send_event")

        val check = NoCodePortCompatibility.check(source, "result", target, "object")

        assertFalse(check.valid)
        assertTrue(check.message!!.contains("incompatíveis"))
    }

    @Test
    fun `flow cannot connect to data`() {
        val source = VisualNode("event", VisualNodeType.ON_BUTTON_PRESSED, textValue = "go")
        val target = VisualNode("math", VisualNodeType.CATALOG, definitionId = "math.number.add")

        val check = NoCodePortCompatibility.check(source, "flow", target, "a")

        assertFalse(check.valid)
    }

    @Test
    fun `any is compatible with typed data but never with flow`() {
        val source = VisualNode(
            "receiver",
            VisualNodeType.CATALOG,
            definitionId = "event.custom.received",
            values = mapOf("event" to "value"),
        )
        val typedTarget = VisualNode(
            "send",
            VisualNodeType.CATALOG,
            definitionId = "event.send_text",
            values = mapOf("event" to "next"),
        )
        val flowTarget = VisualNode("once", VisualNodeType.CATALOG, definitionId = "flow.once")

        assertTrue(NoCodePortCompatibility.check(source, "value", typedTarget, "value").valid)
        assertFalse(NoCodePortCompatibility.check(source, "value", flowTarget, "flowIn").valid)
    }

    @Test
    fun `legacy sequence output and input aliases are resolved explicitly`() {
        val event = VisualNode("event", VisualNodeType.ON_BUTTON_PRESSED, textValue = "go")
        val sequence = VisualNode("sequence", VisualNodeType.CATALOG, definitionId = "flow.sequence.3")
        val log = VisualNode("log", VisualNodeType.PRINT_LOG, textValue = "ok")

        val intoSequence = NoCodePortCompatibility.check(event, "flow", sequence, "flow")
        val outOfSequence = NoCodePortCompatibility.check(sequence, "flow", log, "flow")

        assertTrue(intoSequence.valid)
        assertTrue(intoSequence.to!!.legacyAlias)
        assertTrue(outOfSequence.valid)
        assertTrue(outOfSequence.from!!.legacyAlias)
    }

    @Test
    fun `unknown port is rejected instead of guessed`() {
        val source = VisualNode("math", VisualNodeType.CATALOG, definitionId = "math.number.add")
        val target = VisualNode("send", VisualNodeType.CATALOG, definitionId = "event.send_number")

        val check = NoCodePortCompatibility.check(source, "missing", target, "value")

        assertFalse(check.valid)
        assertNotNull(check.message)
    }
}
