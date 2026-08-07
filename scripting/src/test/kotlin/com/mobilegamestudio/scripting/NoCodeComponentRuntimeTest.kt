package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.ColliderComponent
import com.mobilegamestudio.core.model.ComponentRef
import com.mobilegamestudio.core.model.ExecutionContext
import com.mobilegamestudio.core.model.GameObject
import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.SceneDocument
import com.mobilegamestudio.core.model.TransformComponent
import com.mobilegamestudio.core.model.Vector3
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class NoCodeComponentRuntimeTest {
    @Test
    fun `implicit component lookup uses interaction target instead of source object`() {
        val player = ObjectRef("player")
        val door = ObjectRef("door")
        val scene = SceneDocument(
            sceneId = "world",
            name = "World",
            rootObjects = listOf(player.objectId, door.objectId),
            objects = listOf(
                GameObject(
                    id = player.objectId,
                    name = "Player",
                    components = listOf(TransformComponent(componentId = "player-transform")),
                ),
                GameObject(
                    id = door.objectId,
                    name = "Door",
                    components = listOf(
                        TransformComponent(componentId = "door-transform", position = Vector3(2f, 0f, 4f)),
                        ColliderComponent(componentId = "door-collider"),
                    ),
                ),
            ),
        )
        val runtime = NoCodeComponentRuntime(
            ComponentResolver(SceneDocumentComponentQueryHost { scene }),
        )
        val context = ExecutionContext(
            executionId = 10,
            sceneId = "world",
            sourceObject = player,
            targetObject = door,
        )

        val result = runtime.evaluate(
            NoCodeComponentRuntime.PICK_COMPONENT,
            mapOf("componentType" to "collider"),
            context,
        )

        assertEquals(ComponentRef(door, "door-collider"), result.outputs["component"])
        assertEquals(true, result.outputs["found"])
    }

    @Test
    fun `explicit object overrides context target intentionally`() {
        val a = ObjectRef("a")
        val b = ObjectRef("b")
        val scene = SceneDocument(
            sceneId = "world",
            name = "World",
            rootObjects = listOf(a.objectId, b.objectId),
            objects = listOf(
                GameObject(a.objectId, "A", components = listOf(ColliderComponent(componentId = "collider-a"))),
                GameObject(b.objectId, "B", components = listOf(ColliderComponent(componentId = "collider-b"))),
            ),
        )
        val runtime = NoCodeComponentRuntime(ComponentResolver(SceneDocumentComponentQueryHost { scene }))

        val result = runtime.evaluate(
            NoCodeComponentRuntime.GET_COMPONENT,
            mapOf("object" to b, "componentType" to "collider"),
            ExecutionContext(executionId = 1, targetObject = a),
        )

        assertEquals(ComponentRef(b, "collider-b"), result.outputs["component"])
    }

    @Test
    fun `component method operates on the same resolved component ref`() {
        val door = ObjectRef("door")
        val scene = SceneDocument(
            sceneId = "world",
            name = "World",
            rootObjects = listOf(door.objectId),
            objects = listOf(
                GameObject(
                    door.objectId,
                    "Door",
                    components = listOf(
                        TransformComponent(componentId = "transform", position = Vector3(3f, 1f, 5f)),
                    ),
                ),
            ),
        )
        val runtime = NoCodeComponentRuntime(ComponentResolver(SceneDocumentComponentQueryHost { scene }))

        val execution = runtime.executeMethod(
            mapOf(
                "component" to ComponentRef(door, "transform"),
                "method" to "transform.get_position",
            ),
        )

        assertEquals(listOf("flow"), execution.decision.outputPortIds)
        assertEquals(Vector3(3f, 1f, 5f), execution.outputs["result"])
    }

    @Test
    fun `component method rejects reflection style arbitrary method names`() {
        val door = ObjectRef("door")
        val scene = SceneDocument(
            sceneId = "world",
            name = "World",
            rootObjects = listOf(door.objectId),
            objects = listOf(
                GameObject(door.objectId, "Door", components = listOf(TransformComponent(componentId = "transform"))),
            ),
        )
        val runtime = NoCodeComponentRuntime(ComponentResolver(SceneDocumentComponentQueryHost { scene }))

        val error = runCatching {
            runtime.executeMethod(
                mapOf(
                    "component" to ComponentRef(door, "transform"),
                    "method" to "java.lang.Runtime.exec",
                ),
            )
        }.exceptionOrNull()

        assertTrue(error is IllegalArgumentException)
        assertTrue(error?.message?.contains("UNKNOWN_METHOD") == true)
    }
}
