package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.AttributeAddress
import com.mobilegamestudio.core.model.AttributeValue
import com.mobilegamestudio.core.model.EventAddress
import com.mobilegamestudio.core.model.EventPayload
import com.mobilegamestudio.core.model.InteractionCandidate
import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.VisualConnection
import com.mobilegamestudio.core.model.VisualGraphDocument
import com.mobilegamestudio.core.model.VisualNode
import com.mobilegamestudio.core.model.VisualNodeType
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Test

class NoCodeRuntimeSessionTest {
    @Test
    fun `separate executor facades share one do once state inside play session`() {
        val session = NoCodeRuntimeSession()
        val host = SessionHost()
        val graph = VisualGraphDocument(
            graphId = "interaction",
            name = "Interaction",
            nodes = listOf(
                VisualNode("event", VisualNodeType.ON_BUTTON_PRESSED, textValue = "use"),
                VisualNode("once", VisualNodeType.CATALOG, definitionId = "flow.once"),
                VisualNode("log", VisualNodeType.PRINT_LOG, textValue = "used"),
            ),
            connections = listOf(
                VisualConnection("event", "once", "flow", "flowIn"),
                VisualConnection("once", "log", "flow", "flow"),
            ),
        )

        assertTrue(session.graphExecutor(host).emitButton(graph, "use") is LogicExecutionResult.Success)
        assertTrue(session.graphExecutor(host).emitButton(graph, "use") is LogicExecutionResult.Success)

        assertEquals(listOf("used"), host.logs)
    }

    @Test
    fun `interaction focus is isolated per player`() {
        val session = NoCodeRuntimeSession()
        val playerA = ObjectRef("player-a")
        val playerB = ObjectRef("player-b")
        val door = InteractionCandidate(ObjectRef("door"), distance = 1f, aimAlignment = 0.99f)
        val bottle = InteractionCandidate(ObjectRef("bottle"), distance = 1f, aimAlignment = 0.99f)

        session.resolveInteraction(playerA, listOf(door))
        session.resolveInteraction(playerB, listOf(bottle))

        assertEquals(ObjectRef("door"), session.interactionTarget(playerA)?.objectRef)
        assertEquals(ObjectRef("bottle"), session.interactionTarget(playerB)?.objectRef)
    }

    @Test
    fun `typed object event reaches only exact target`() {
        val session = NoCodeRuntimeSession()
        val doorA = ObjectRef("door-a")
        val doorB = ObjectRef("door-b")
        val hits = mutableListOf<String>()
        session.eventBus.subscribeObject(EventOwner("a"), doorA, "interact") { event, _ ->
            hits += "a:${(event.payload as EventPayload.Text).value}"
        }
        session.eventBus.subscribeObject(EventOwner("b"), doorB, "interact") { _, _ ->
            hits += "b"
        }

        val result = session.dispatchRuntimeEvent(
            name = "interact",
            address = EventAddress.objectTarget(doorA),
            value = "open",
            sender = ObjectRef("player"),
        )

        assertTrue(result.succeeded)
        assertEquals(1, result.deliveredCount)
        assertEquals(listOf("a:open"), hits)
    }

    @Test
    fun `attributes and event bus belong to same session`() {
        val session = NoCodeRuntimeSession()
        val door = ObjectRef("door")
        val locked = AttributeAddress.objectValue("locked", door)
        val hits = mutableListOf<Boolean>()
        session.eventBus.subscribeObject(EventOwner("door-ui"), door, session.attributes.eventName(locked)) { event, _ ->
            hits += (event.payload as EventPayload.Bool).value
        }

        session.attributes.set(locked, AttributeValue.Bool(true), sender = ObjectRef("player"))

        assertEquals(listOf(true), hits)
        assertEquals(AttributeValue.Bool(true), session.attributes.get(locked))
    }

    @Test
    fun `shutdown clears volatile state listeners targets and flow state once`() {
        val session = NoCodeRuntimeSession()
        val player = ObjectRef("player")
        val target = ObjectRef("item")
        session.eventBus.subscribeGlobal(EventOwner("listener"), "test") { _, _ -> Unit }
        session.attributes.set(AttributeAddress.objectValue("held", target), AttributeValue.Bool(true))
        session.attributes.set(AttributeAddress.session("paused"), AttributeValue.Bool(false))
        session.attributes.set(AttributeAddress.global("difficulty"), AttributeValue.Text("hard"))
        session.resolveInteraction(
            player,
            listOf(InteractionCandidate(target, distance = 1f, aimAlignment = 1f)),
        )

        val first = session.shutdown()
        val second = session.shutdown()

        assertEquals(first, second)
        assertEquals(1, first.removedSubscriptions)
        assertEquals(2, first.removedVolatileAttributes)
        assertEquals(1, first.removedInteractionTargets)
        assertTrue(session.isClosed())
        assertEquals(0, session.eventBus.subscriptionCount())
        assertEquals(AttributeValue.Text("hard"), session.attributeStore.get(AttributeAddress.global("difficulty")))
    }

    @Test
    fun `closed session rejects new runtime work`() {
        val session = NoCodeRuntimeSession()
        session.close()

        assertThrows(IllegalStateException::class.java) {
            session.dispatchEvent("event", EventAddress.global())
        }
        assertThrows(IllegalStateException::class.java) {
            session.resolveInteraction(ObjectRef("player"), emptyList())
        }
    }

    @Test
    fun `runtime event conversion remains strict`() {
        val session = NoCodeRuntimeSession()

        assertThrows(IllegalArgumentException::class.java) {
            session.dispatchRuntimeEvent("bad", EventAddress.global(), mapOf("x" to 1))
        }
        assertFalse(session.isClosed())
        assertNull(session.interactionTarget(ObjectRef("player")))
    }

    private class SessionHost : LogicSceneHost {
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
