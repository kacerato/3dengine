package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.AttributeAddress
import com.mobilegamestudio.core.model.AttributeValue
import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.Vector3
import com.mobilegamestudio.core.model.VisualConnection
import com.mobilegamestudio.core.model.VisualGraphDocument
import com.mobilegamestudio.core.model.VisualNode
import com.mobilegamestudio.core.model.VisualNodeType
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class VisualGraphAttributeIntegrationTest {
    @Test
    fun `set attribute and lazy get value drive branch in same graph`() {
        val session = NoCodeRuntimeSession()
        val host = AttributeHost()
        val door = ObjectRef("door")
        val executor = session.graphExecutor(
            host = host,
            sceneId = "world",
            sourceObject = door,
        )
        val graph = VisualGraphDocument(
            graphId = "door-logic",
            name = "Door Logic",
            nodes = listOf(
                VisualNode("event", VisualNodeType.ON_BUTTON_PRESSED, textValue = "lock"),
                VisualNode(
                    id = "set",
                    type = VisualNodeType.CATALOG,
                    definitionId = "attribute.set_bool",
                    values = mapOf("name" to "locked", "value" to "true"),
                ),
                VisualNode(
                    id = "get",
                    type = VisualNodeType.CATALOG,
                    definitionId = "attribute.get_bool",
                    values = mapOf("name" to "locked"),
                ),
                VisualNode(
                    id = "branch",
                    type = VisualNodeType.CATALOG,
                    definitionId = "flow.branch",
                ),
                VisualNode("true-log", VisualNodeType.PRINT_LOG, textValue = "locked"),
                VisualNode("false-log", VisualNodeType.PRINT_LOG, textValue = "unlocked"),
            ),
            connections = listOf(
                VisualConnection("event", "set", "flow", "flowIn"),
                VisualConnection("set", "branch", "flow", "flowIn"),
                VisualConnection("get", "branch", "value", "condition"),
                VisualConnection("branch", "true-log", "true", "flow"),
                VisualConnection("branch", "false-log", "false", "flow"),
            ),
        )

        val result = executor.emitButton(graph, "lock")

        assertTrue(result is LogicExecutionResult.Success)
        assertEquals(listOf("locked"), host.logs)
        assertEquals(
            AttributeValue.Bool(true),
            session.attributes.get(AttributeAddress.objectValue("locked", door)),
        )
    }

    @Test
    fun `attribute changed graph for door a ignores same attribute on door b`() {
        val session = NoCodeRuntimeSession()
        val host = AttributeHost()
        val doorA = ObjectRef("door-a")
        val doorB = ObjectRef("door-b")
        val player = ObjectRef("player")
        val graph = VisualGraphDocument(
            graphId = "door-changed",
            name = "Door Changed",
            nodes = listOf(
                VisualNode(
                    id = "changed",
                    type = VisualNodeType.CATALOG,
                    definitionId = "attribute.changed_bool",
                    values = mapOf("name" to "locked", "scope" to "object"),
                ),
                VisualNode("log", VisualNodeType.PRINT_LOG, textValue = "door-a changed"),
            ),
            connections = listOf(
                VisualConnection("changed", "log", "flow", "flow"),
            ),
        )
        val executor = session.graphExecutor(
            host = host,
            sceneId = "world",
            sourceObject = doorA,
            graphInstanceId = "door-a:door-changed",
        )
        val binding = session.graphAttributes.bind(
            graph = graph,
            executor = executor,
            sceneId = "world",
            ownerObject = doorA,
            instanceKey = "door-a:door-changed",
        )

        assertTrue(binding.succeeded)
        assertEquals(1, binding.subscriptionCount)

        session.attributes.set(
            AttributeAddress.objectValue("locked", doorB),
            AttributeValue.Bool(true),
            sender = player,
        )
        assertTrue(host.logs.isEmpty())

        session.attributes.set(
            AttributeAddress.objectValue("locked", doorA),
            AttributeValue.Bool(true),
            sender = player,
        )
        assertEquals(listOf("door-a changed"), host.logs)
    }

    @Test
    fun `remove attribute exposes previous value and changed event remains scoped`() {
        val session = NoCodeRuntimeSession()
        val host = AttributeHost()
        val item = ObjectRef("item")
        session.attributes.set(
            AttributeAddress.objectValue("picked", item),
            AttributeValue.Bool(true),
        )
        val graph = VisualGraphDocument(
            graphId = "remove-state",
            name = "Remove State",
            nodes = listOf(
                VisualNode("event", VisualNodeType.ON_BUTTON_PRESSED, textValue = "clear"),
                VisualNode(
                    id = "remove",
                    type = VisualNodeType.CATALOG,
                    definitionId = "attribute.remove",
                    values = mapOf("name" to "picked"),
                ),
                VisualNode("log", VisualNodeType.PRINT_LOG, textValue = "cleared"),
            ),
            connections = listOf(
                VisualConnection("event", "remove", "flow", "flowIn"),
                VisualConnection("remove", "log", "flow", "flow"),
            ),
        )

        val result = session.graphExecutor(
            host = host,
            sceneId = "world",
            sourceObject = item,
        ).emitButton(graph, "clear")

        assertTrue(result is LogicExecutionResult.Success)
        assertEquals(listOf("cleared"), host.logs)
        assertEquals(null, session.attributes.get(AttributeAddress.objectValue("picked", item)))
    }

    private class AttributeHost : LogicSceneHost {
        val logs = mutableListOf<String>()

        override fun findObjectIdByName(name: String): String? = null
        override fun rotation(objectId: String): Vector3? = null
        override fun scale(objectId: String): Vector3? = null
        override fun setRotation(objectId: String, rotation: Vector3): Boolean = false
        override fun setScale(objectId: String, scale: Vector3): Boolean = false
        override fun log(level: LogicLogLevel, message: String) {
            logs += message
        }
    }
}
