package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.AttributeAddress
import com.mobilegamestudio.core.model.EventAddress
import com.mobilegamestudio.core.model.EventPayload
import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.VisualConnection
import com.mobilegamestudio.core.model.VisualGraphDocument
import com.mobilegamestudio.core.model.VisualNode
import com.mobilegamestudio.core.model.VisualNodeType
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class NoCodeAttributeGraphIntegrationTest {
    @Test
    fun `setting one nearby object attribute triggers only that object watcher`() {
        val host = Host()
        val runtime = NoCodePlayRuntime(host)
        val player = ObjectRef("player")
        val doorA = ObjectRef("door-a")
        val doorB = ObjectRef("door-b")
        val setter = setterGraph(target = doorA, name = "locked", value = true)
        val watcher = watcherGraph(name = "locked", message = "changed")

        val start = runtime.start(
            listOf(
                NoCodeGraphRuntimeSpec("player:setter", setter, ownerObject = player, sceneId = "world"),
                NoCodeGraphRuntimeSpec("door-a:watcher", watcher, ownerObject = doorA, sceneId = "world"),
                NoCodeGraphRuntimeSpec("door-b:watcher", watcher, ownerObject = doorB, sceneId = "world"),
            ),
        )
        assertTrue(start.started)

        val report = runtime.emitButton("use")

        assertTrue(report.succeeded)
        assertEquals(listOf("changed"), host.logs)
        assertEquals(
            com.mobilegamestudio.core.model.AttributeValue.Bool(true),
            runtime.session.attributeStore.get(AttributeAddress.objectValue("locked", doorA)),
        )
        assertEquals(
            null,
            runtime.session.attributeStore.get(AttributeAddress.objectValue("locked", doorB)),
        )
    }

    @Test
    fun `same semantic value does not trigger attribute watcher twice`() {
        val host = Host()
        val runtime = NoCodePlayRuntime(host)
        val door = ObjectRef("door")
        val setter = setterGraph(target = door, name = "locked", value = true)
        val watcher = watcherGraph(name = "locked", message = "changed")
        assertTrue(
            runtime.start(
                listOf(
                    NoCodeGraphRuntimeSpec("player:setter", setter, ObjectRef("player"), "world"),
                    NoCodeGraphRuntimeSpec("door:watcher", watcher, door, "world"),
                ),
            ).started,
        )

        runtime.emitButton("use")
        runtime.emitButton("use")

        assertEquals(listOf("changed"), host.logs)
    }

    @Test
    fun `attribute event preserves execution id but rebases source object to receiver`() {
        val host = Host()
        val runtime = NoCodePlayRuntime(host)
        val player = ObjectRef("player")
        val door = ObjectRef("door")
        val setter = setterGraph(target = door, name = "locked", value = true)
        val watcher = VisualGraphDocument(
            graphId = "watch-forward",
            name = "Watch and forward",
            nodes = listOf(
                VisualNode(
                    id = "changed",
                    type = VisualNodeType.CATALOG,
                    definitionId = "attribute.changed_bool",
                    values = mapOf("name" to "locked"),
                ),
                VisualNode(
                    id = "forward",
                    type = VisualNodeType.CATALOG,
                    definitionId = "event.send_text",
                    values = mapOf(
                        "event" to "watcher.forwarded",
                        "scope" to "global",
                        "value" to "ok",
                    ),
                ),
            ),
            connections = listOf(
                VisualConnection("changed", "forward", "flow", "flowIn"),
            ),
        )
        val internalName = runtime.session.attributes.eventName(AttributeAddress.objectValue("locked", door))
        var attributeExecutionId: Long? = null
        var forwardedExecutionId: Long? = null
        var forwardedSender: ObjectRef? = null
        runtime.session.eventBus.subscribeObject(
            owner = EventOwner("test-attribute-trace"),
            objectRef = door,
            eventName = internalName,
        ) { _, context ->
            attributeExecutionId = context.executionId
        }
        runtime.session.eventBus.subscribeGlobal(
            owner = EventOwner("test-forward-trace"),
            eventName = "watcher.forwarded",
        ) { event, context ->
            forwardedExecutionId = context.executionId
            forwardedSender = event.sender
        }
        assertTrue(
            runtime.start(
                listOf(
                    NoCodeGraphRuntimeSpec("player:setter", setter, player, "world"),
                    NoCodeGraphRuntimeSpec("door:watcher", watcher, door, "world"),
                ),
            ).started,
        )

        val report = runtime.emitButton("use")

        assertTrue(report.succeeded)
        assertTrue(attributeExecutionId != null)
        assertEquals(attributeExecutionId, forwardedExecutionId)
        assertEquals(door, forwardedSender)
    }

    @Test
    fun `typed watcher ignores incompatible attribute event payload`() {
        val host = Host()
        val runtime = NoCodePlayRuntime(host)
        val door = ObjectRef("door")
        val watcher = VisualGraphDocument(
            graphId = "number-watcher",
            name = "Number watcher",
            nodes = listOf(
                VisualNode(
                    id = "changed",
                    type = VisualNodeType.CATALOG,
                    definitionId = "attribute.changed_number",
                    values = mapOf("name" to "locked"),
                ),
                VisualNode("log", VisualNodeType.PRINT_LOG, textValue = "wrong"),
            ),
            connections = listOf(VisualConnection("changed", "log", "flow", "flow")),
        )
        assertTrue(runtime.start(listOf(NoCodeGraphRuntimeSpec("door:watcher", watcher, door, "world"))).started)

        val eventName = runtime.session.attributes.eventName(AttributeAddress.objectValue("locked", door))
        val dispatch = runtime.session.dispatchEvent(
            name = eventName,
            address = EventAddress.objectTarget(door),
            payload = EventPayload.Bool(true),
        )

        assertTrue(dispatch.succeeded)
        assertTrue(host.logs.isEmpty())
    }

    @Test
    fun `removing an attribute emits one removal event and clears state`() {
        val host = Host()
        val session = NoCodeRuntimeSession()
        val runtime = NoCodePlayRuntime(host, session = session)
        val door = ObjectRef("door")
        session.attributeRuntime.setNode(
            definitionId = "attribute.set_bool",
            inputs = mapOf("name" to "locked", "object" to door, "value" to true),
            context = com.mobilegamestudio.core.model.ExecutionContext(
                executionId = 1,
                sceneId = "world",
                sourceObject = ObjectRef("player"),
            ),
        )
        val remover = VisualGraphDocument(
            graphId = "remove",
            name = "Remove",
            nodes = listOf(
                VisualNode("button", VisualNodeType.ON_BUTTON_PRESSED, textValue = "remove"),
                VisualNode(
                    id = "remove-attribute",
                    type = VisualNodeType.CATALOG,
                    definitionId = "attribute.remove",
                    values = mapOf("name" to "locked", "object" to door.objectId),
                ),
            ),
            connections = listOf(VisualConnection("button", "remove-attribute", "flow", "flowIn")),
        )
        val watcher = watcherGraph("locked", "removed")
        assertTrue(
            runtime.start(
                listOf(
                    NoCodeGraphRuntimeSpec("player:remove", remover, ObjectRef("player"), "world"),
                    NoCodeGraphRuntimeSpec("door:watcher", watcher, door, "world"),
                ),
            ).started,
        )

        val report = runtime.emitButton("remove")

        assertTrue(report.succeeded)
        assertEquals(listOf("removed"), host.logs)
        assertFalse(session.attributeStore.contains(AttributeAddress.objectValue("locked", door)))
    }

    private fun setterGraph(
        target: ObjectRef,
        name: String,
        value: Boolean,
    ) = VisualGraphDocument(
        graphId = "setter-$name",
        name = "Setter $name",
        nodes = listOf(
            VisualNode("button", VisualNodeType.ON_BUTTON_PRESSED, textValue = "use"),
            VisualNode(
                id = "set",
                type = VisualNodeType.CATALOG,
                definitionId = "attribute.set_bool",
                values = mapOf(
                    "name" to name,
                    "scope" to "object",
                    "object" to target.objectId,
                    "value" to value.toString(),
                ),
            ),
        ),
        connections = listOf(VisualConnection("button", "set", "flow", "flowIn")),
    )

    private fun watcherGraph(
        name: String,
        message: String,
    ) = VisualGraphDocument(
        graphId = "watcher-$name",
        name = "Watcher $name",
        nodes = listOf(
            VisualNode(
                id = "changed",
                type = VisualNodeType.CATALOG,
                definitionId = "attribute.changed_bool",
                values = mapOf("name" to name),
            ),
            VisualNode("log", VisualNodeType.PRINT_LOG, textValue = message),
        ),
        connections = listOf(VisualConnection("changed", "log", "flow", "flow")),
    )

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
