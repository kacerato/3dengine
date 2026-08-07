package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.AttributeAddress
import com.mobilegamestudio.core.model.ExecutionContext
import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.VisualGraphDocument
import com.mobilegamestudio.core.model.VisualNode
import com.mobilegamestudio.core.model.VisualNodeType
import org.junit.Assert.assertFalse
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Test

class NoCodeReservedEventNamespaceTest {
    @Test
    fun `attribute change channel uses reserved internal prefix`() {
        val session = NoCodeRuntimeSession()
        val name = session.attributes.eventName(
            AttributeAddress.objectValue("locked", ObjectRef("door")),
        )

        assertTrue(name.startsWith(NoCodeEventRuntime.INTERNAL_EVENT_PREFIX))
    }

    @Test
    fun `send event cannot spoof internal runtime channel`() {
        val runtime = NoCodeEventRuntime(EngineEventBus())

        assertThrows(IllegalArgumentException::class.java) {
            runtime.dispatchNode(
                definitionId = "event.send_bool",
                inputs = mapOf(
                    "event" to "__attr.object.locked",
                    "value" to true,
                ),
                context = ExecutionContext(executionId = 1, graphId = "graph"),
            )
        }
    }

    @Test
    fun `custom event binding rejects reserved name before subscribing`() {
        val session = NoCodeRuntimeSession()
        val graph = VisualGraphDocument(
            graphId = "reserved",
            name = "Reserved",
            nodes = listOf(
                VisualNode(
                    id = "receiver",
                    type = VisualNodeType.CATALOG,
                    definitionId = "event.custom.received",
                    values = mapOf("event" to "__attr.object.locked"),
                ),
            ),
        )
        val result = session.graphEvents.bind(
            graph = graph,
            executor = session.graphExecutor(EmptyHost()),
        )

        assertFalse(result.succeeded)
        assertTrue(result.issues.single().message.contains("reservados"))
        assertTrue(session.eventBus.subscriptionCount() == 0)
    }

    private class EmptyHost : LogicSceneHost {
        override fun findObjectIdByName(name: String): String? = null
        override fun rotation(objectId: String) = null
        override fun scale(objectId: String) = null
        override fun setRotation(objectId: String, rotation: com.mobilegamestudio.core.model.Vector3) = false
        override fun setScale(objectId: String, scale: com.mobilegamestudio.core.model.Vector3) = false
    }
}
