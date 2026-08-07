package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.VisualConnection
import com.mobilegamestudio.core.model.VisualGraphDocument
import com.mobilegamestudio.core.model.VisualNode
import com.mobilegamestudio.core.model.VisualNodeType
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class NoCodeEventGraphIntegrationTest {
    @Test
    fun `send event local graph reaches receiver in same runtime instance`() {
        val host = Host()
        val runtime = NoCodePlayRuntime(host)
        val graph = VisualGraphDocument(
            graphId = "local-events",
            name = "Local Events",
            nodes = listOf(
                VisualNode("button", VisualNodeType.ON_BUTTON_PRESSED, textValue = "go"),
                VisualNode(
                    id = "send",
                    type = VisualNodeType.CATALOG,
                    definitionId = "event.send_text",
                    values = mapOf(
                        "event" to "ping",
                        "scope" to "local_graph",
                        "value" to "hello",
                    ),
                ),
                VisualNode(
                    id = "receive",
                    type = VisualNodeType.CATALOG,
                    definitionId = "event.custom.received_text",
                    values = mapOf("event" to "ping"),
                ),
                VisualNode("log", VisualNodeType.PRINT_LOG, textValue = "received"),
            ),
            connections = listOf(
                VisualConnection("button", "send", "flow", "flowIn"),
                VisualConnection("receive", "log", "flow", "flow"),
            ),
        )
        assertTrue(
            runtime.start(
                listOf(NoCodeGraphRuntimeSpec("player:local-events", graph, ObjectRef("player"))),
            ).started,
        )

        val report = runtime.emitButton("go")

        assertTrue(report.succeeded)
        assertEquals(listOf("received"), host.logs)
    }

    @Test
    fun `targeted object event crosses graph instances but reaches only chosen object`() {
        val host = Host()
        val runtime = NoCodePlayRuntime(host)
        val senderGraph = VisualGraphDocument(
            graphId = "sender",
            name = "Sender",
            nodes = listOf(
                VisualNode("button", VisualNodeType.ON_BUTTON_PRESSED, textValue = "use"),
                VisualNode(
                    id = "send",
                    type = VisualNodeType.CATALOG,
                    definitionId = "object.send_event_text",
                    values = mapOf(
                        "object" to "door-b",
                        "event" to "door.open",
                        "value" to "request",
                    ),
                ),
            ),
            connections = listOf(VisualConnection("button", "send", "flow", "flowIn")),
        )
        val receiverGraph = VisualGraphDocument(
            graphId = "receiver",
            name = "Receiver",
            nodes = listOf(
                VisualNode(
                    id = "receive",
                    type = VisualNodeType.CATALOG,
                    definitionId = "event.custom.received_text",
                    values = mapOf("event" to "door.open", "scope" to "object"),
                ),
                VisualNode("log", VisualNodeType.PRINT_LOG, textValue = "door opened"),
            ),
            connections = listOf(VisualConnection("receive", "log", "flow", "flow")),
        )
        val start = runtime.start(
            listOf(
                NoCodeGraphRuntimeSpec("player:sender", senderGraph, ObjectRef("player")),
                NoCodeGraphRuntimeSpec("door-a:receiver", receiverGraph, ObjectRef("door-a")),
                NoCodeGraphRuntimeSpec("door-b:receiver", receiverGraph, ObjectRef("door-b")),
            ),
        )
        assertTrue(start.started)

        val report = runtime.emitButton("use")

        assertTrue(report.succeeded)
        assertEquals(listOf("door opened"), host.logs)
    }

    @Test
    fun `typed receiver does not run when send payload type differs`() {
        val host = Host()
        val runtime = NoCodePlayRuntime(host)
        val graph = VisualGraphDocument(
            graphId = "typed",
            name = "Typed",
            nodes = listOf(
                VisualNode("button", VisualNodeType.ON_BUTTON_PRESSED, textValue = "go"),
                VisualNode(
                    id = "send",
                    type = VisualNodeType.CATALOG,
                    definitionId = "event.send_text",
                    values = mapOf("event" to "changed", "value" to "not-a-number"),
                ),
                VisualNode(
                    id = "number-receiver",
                    type = VisualNodeType.CATALOG,
                    definitionId = "event.custom.received_number",
                    values = mapOf("event" to "changed"),
                ),
                VisualNode("log", VisualNodeType.PRINT_LOG, textValue = "wrong"),
            ),
            connections = listOf(
                VisualConnection("button", "send", "flow", "flowIn"),
                VisualConnection("number-receiver", "log", "flow", "flow"),
            ),
        )
        assertTrue(runtime.start(listOf(NoCodeGraphRuntimeSpec("typed-instance", graph))).started)

        val report = runtime.emitButton("go")

        assertTrue(report.succeeded)
        assertTrue(host.logs.isEmpty())
    }

    private class Host : LogicSceneHost {
        val logs = mutableListOf<String>()

        override fun findObjectIdByName(name: String): String? = null
        override fun rotation(objectId: String) = null
        override fun scale(objectId: String) = null
        override fun setRotation(objectId: String, rotation: com.mobilegamestudio.core.model.Vector3) = false
        override fun setScale(objectId: String, scale: com.mobilegamestudio.core.model.Vector3) = false
        override fun log(level: LogicLogLevel, message: String) {
            logs += message
        }
    }
}
