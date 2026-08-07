package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.AttributeAddress
import com.mobilegamestudio.core.model.AttributeValue
import com.mobilegamestudio.core.model.EventPayload
import com.mobilegamestudio.core.model.InteractionCandidate
import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.Vector3
import com.mobilegamestudio.core.model.VisualConnection
import com.mobilegamestudio.core.model.VisualGraphDocument
import com.mobilegamestudio.core.model.VisualNode
import com.mobilegamestudio.core.model.VisualNodeType
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class NoCodeInteractionContextTest {
    @Test
    fun `resolved target becomes exact target object of later button graph`() {
        val session = NoCodeRuntimeSession()
        val player = ObjectRef("player")
        val doorA = ObjectRef("door-a")
        val doorB = ObjectRef("door-b")
        val graph = VisualGraphDocument(
            graphId = "interact",
            name = "Interact",
            nodes = listOf(
                VisualNode("event", VisualNodeType.ON_BUTTON_PRESSED, textValue = "use"),
                VisualNode(
                    id = "set",
                    type = VisualNodeType.CATALOG,
                    definitionId = "attribute.set_bool",
                    values = mapOf("name" to "used", "value" to "true"),
                ),
            ),
            connections = listOf(
                VisualConnection("event", "set", "flow", "flowIn"),
            ),
        )
        val executor = session.graphExecutor(
            host = InteractionHost(),
            sceneId = "world",
            sourceObject = player,
        )

        session.resolveInteraction(
            player,
            listOf(InteractionCandidate(doorA, distance = 1f, aimAlignment = 1f)),
            sceneId = "world",
        )
        assertTrue(executor.emitButton(graph, "use") is LogicExecutionResult.Success)

        assertEquals(
            AttributeValue.Bool(true),
            session.attributes.get(AttributeAddress.objectValue("used", doorA)),
        )
        assertNull(session.attributes.get(AttributeAddress.objectValue("used", doorB)))
        assertNull(session.attributes.get(AttributeAddress.objectValue("used", player)))

        session.resolveInteraction(
            player,
            listOf(InteractionCandidate(doorB, distance = 1f, aimAlignment = 1f)),
            sceneId = "world",
        )
        assertTrue(executor.emitButton(graph, "use") is LogicExecutionResult.Success)

        assertEquals(
            AttributeValue.Bool(true),
            session.attributes.get(AttributeAddress.objectValue("used", doorB)),
        )
    }

    @Test
    fun `target acquired and lost events are scoped to exact objects`() {
        val session = NoCodeRuntimeSession()
        val player = ObjectRef("player")
        val doorA = ObjectRef("door-a")
        val doorB = ObjectRef("door-b")
        val hits = mutableListOf<String>()

        session.eventBus.subscribeObject(
            EventOwner("a-acquired"),
            doorA,
            NoCodeRuntimeSession.EVENT_TARGET_ACQUIRED,
        ) { event, _ ->
            hits += "a+${(event.payload as EventPayload.ObjectValue).value.objectId}"
        }
        session.eventBus.subscribeObject(
            EventOwner("a-lost"),
            doorA,
            NoCodeRuntimeSession.EVENT_TARGET_LOST,
        ) { _, _ -> hits += "a-" }
        session.eventBus.subscribeObject(
            EventOwner("b-acquired"),
            doorB,
            NoCodeRuntimeSession.EVENT_TARGET_ACQUIRED,
        ) { _, _ -> hits += "b+" }

        session.resolveInteraction(
            player,
            listOf(InteractionCandidate(doorA, distance = 1f, aimAlignment = 1f)),
        )
        session.resolveInteraction(
            player,
            listOf(InteractionCandidate(doorB, distance = 1f, aimAlignment = 1f)),
        )

        assertEquals(listOf("a+player", "a-", "b+"), hits)
    }

    @Test
    fun `execution context helper exposes current interaction target for script bridges`() {
        val session = NoCodeRuntimeSession()
        val player = ObjectRef("player")
        val target = ObjectRef("engine-part")
        session.resolveInteraction(
            player,
            listOf(InteractionCandidate(target, distance = 0.8f, aimAlignment = 0.98f)),
        )

        val context = session.executionContextFor(
            interactor = player,
            graphId = "repair-graph",
            sceneId = "garage",
        )

        assertEquals(player, context.sourceObject)
        assertEquals(target, context.targetObject)
        assertEquals("repair-graph", context.graphId)
        assertEquals("garage", context.sceneId)
    }

    private class InteractionHost : LogicSceneHost {
        override fun findObjectIdByName(name: String): String? = null
        override fun rotation(objectId: String): Vector3? = null
        override fun scale(objectId: String): Vector3? = null
        override fun setRotation(objectId: String, rotation: Vector3): Boolean = false
        override fun setScale(objectId: String, scale: Vector3): Boolean = false
        override fun log(level: LogicLogLevel, message: String) = Unit
    }
}
