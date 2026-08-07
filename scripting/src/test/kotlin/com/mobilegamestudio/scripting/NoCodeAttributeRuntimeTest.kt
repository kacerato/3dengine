package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.AttributeAddress
import com.mobilegamestudio.core.model.AttributeValue
import com.mobilegamestudio.core.model.ExecutionContext
import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.Vector3
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class NoCodeAttributeRuntimeTest {
    @Test
    fun `object attribute follows immutable target context and never leaks to nearby object`() {
        val bus = EngineEventBus()
        val service = EngineAttributeService(eventBus = bus)
        val runtime = NoCodeAttributeRuntime(service)
        val player = ObjectRef("player")
        val doorA = ObjectRef("door-a")
        val doorB = ObjectRef("door-b")
        val contextA = ExecutionContext(
            executionId = 1,
            sceneId = "world",
            sourceObject = player,
            targetObject = doorA,
        )
        val contextB = contextA.copy(executionId = 2, targetObject = doorB)

        runtime.setNode(
            definitionId = "attribute.set_bool",
            inputs = mapOf("name" to "locked", "value" to true),
            context = contextA,
        )

        val readA = runtime.readNode("attribute.get_bool", mapOf("name" to "locked"), contextA)
        val readB = runtime.readNode("attribute.get_bool", mapOf("name" to "locked"), contextB)

        assertEquals(AttributeValue.Bool(true), readA.value)
        assertTrue(readA.exists)
        assertNull(readB.value)
        assertFalse(readB.exists)
    }

    @Test
    fun `scene global and save game scopes with same name remain independent`() {
        val service = EngineAttributeService(eventBus = EngineEventBus())
        val runtime = NoCodeAttributeRuntime(service)
        val context = ExecutionContext(executionId = 1, sceneId = "garage")

        runtime.setNode(
            "attribute.set_text",
            mapOf("name" to "weather", "scope" to "scene", "value" to "rain"),
            context,
        )
        runtime.setNode(
            "attribute.set_text",
            mapOf("name" to "weather", "scope" to "global", "value" to "clear"),
            context,
        )
        runtime.setNode(
            "attribute.set_text",
            mapOf("name" to "weather", "scope" to "save_game", "value" to "storm"),
            context,
        )

        assertEquals(
            AttributeValue.Text("rain"),
            runtime.readNode(
                "attribute.get_text",
                mapOf("name" to "weather", "scope" to "scene"),
                context,
            ).value,
        )
        assertEquals(
            AttributeValue.Text("clear"),
            runtime.readNode(
                "attribute.get_text",
                mapOf("name" to "weather", "scope" to "global"),
                context,
            ).value,
        )
        assertEquals(
            AttributeValue.Text("storm"),
            runtime.readNode(
                "attribute.get_text",
                mapOf("name" to "weather", "scope" to "save_game"),
                context,
            ).value,
        )
    }

    @Test
    fun `typed attribute refuses silent coercion`() {
        val runtime = NoCodeAttributeRuntime(EngineAttributeService(eventBus = EngineEventBus()))
        val context = ExecutionContext(executionId = 1, sceneId = "world")
        var failed = false

        try {
            runtime.setNode(
                "attribute.set_text",
                mapOf("name" to "score", "scope" to "scene", "value" to 10),
                context,
            )
        } catch (_: IllegalArgumentException) {
            failed = true
        }

        assertTrue(failed)
    }

    @Test
    fun `attribute mutation emits only one changed event for semantic change`() {
        val bus = EngineEventBus()
        val service = EngineAttributeService(eventBus = bus)
        val runtime = NoCodeAttributeRuntime(service)
        val door = ObjectRef("door")
        val context = ExecutionContext(
            executionId = 1,
            sceneId = "world",
            targetObject = door,
            sourceObject = ObjectRef("player"),
        )
        val address = AttributeAddress.objectValue("locked", door)
        var deliveries = 0
        bus.subscribeObject(
            owner = EventOwner("watcher"),
            objectRef = door,
            eventName = runtime.eventName(address),
        ) { _, _ -> deliveries += 1 }

        val first = runtime.setNode(
            "attribute.set_bool",
            mapOf("name" to "locked", "value" to true),
            context,
        )
        val second = runtime.setNode(
            "attribute.set_bool",
            mapOf("name" to "locked", "value" to true),
            context.copy(executionId = 2),
        )

        assertTrue(first.dispatch.changed)
        assertFalse(second.dispatch.changed)
        assertEquals(1, deliveries)
    }

    @Test
    fun `vector and object values keep their real runtime types`() {
        val runtime = NoCodeAttributeRuntime(EngineAttributeService(eventBus = EngineEventBus()))
        val player = ObjectRef("player")
        val context = ExecutionContext(executionId = 1, sceneId = "world", sourceObject = player)
        val spawn = Vector3(1f, 2f, 3f)

        runtime.setNode(
            "attribute.set_vector3",
            mapOf("name" to "spawn", "value" to spawn),
            context,
        )
        runtime.setNode(
            "attribute.set_object",
            mapOf("name" to "owner", "value" to player),
            context,
        )

        assertEquals(
            spawn,
            runtime.runtimeValue(runtime.readNode("attribute.get_vector3", mapOf("name" to "spawn"), context).value),
        )
        assertEquals(
            player,
            runtime.runtimeValue(runtime.readNode("attribute.get_object", mapOf("name" to "owner"), context).value),
        )
    }
}
