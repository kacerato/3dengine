package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.ColliderComponent
import com.mobilegamestudio.core.model.GameObject
import com.mobilegamestudio.core.model.InteractionCandidate
import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.SceneDocument
import com.mobilegamestudio.core.model.TransformComponent
import com.mobilegamestudio.core.model.Vector3
import com.mobilegamestudio.core.model.VisualConnection
import com.mobilegamestudio.core.model.VisualGraphDocument
import com.mobilegamestudio.core.model.VisualNode
import com.mobilegamestudio.core.model.VisualNodeType
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class NoCodeInteractionComponentIntegrationTest {
    @Test
    fun `button keeps component lookup on target selected before graph execution`() {
        val player = ObjectRef("player")
        val doorA = ObjectRef("door-a")
        val doorB = ObjectRef("door-b")
        val scene = SceneDocument(
            sceneId = "world",
            name = "World",
            rootObjects = listOf(player.objectId, doorA.objectId, doorB.objectId),
            objects = listOf(
                GameObject(player.objectId, "Player", components = listOf(TransformComponent(componentId = "player-transform"))),
                GameObject(
                    doorA.objectId,
                    "Door A",
                    components = listOf(
                        TransformComponent(componentId = "door-a-transform"),
                        ColliderComponent(componentId = "door-a-collider"),
                    ),
                ),
                // Door B is nearby but intentionally has no Collider.
                GameObject(doorB.objectId, "Door B", components = listOf(TransformComponent(componentId = "door-b-transform"))),
            ),
        )
        val componentHost = SceneDocumentComponentQueryHost { scene }
        val session = NoCodeRuntimeSession(componentQueryHost = componentHost)
        session.resolveInteraction(
            interactor = player,
            candidates = listOf(
                InteractionCandidate(doorA, distance = 1.30f, aimAlignment = 0.99f),
                InteractionCandidate(doorB, distance = 1.10f, aimAlignment = 0.84f),
            ),
        )
        assertEquals(doorA, session.interactionTarget(player)?.objectRef)

        val graph = VisualGraphDocument(
            graphId = "interaction",
            name = "Interaction",
            nodes = listOf(
                VisualNode("button", VisualNodeType.ON_BUTTON_PRESSED, textValue = "interact"),
                VisualNode(
                    id = "has-collider",
                    type = VisualNodeType.CATALOG,
                    definitionId = "object.has_component",
                    values = mapOf("componentType" to "collider"),
                ),
                VisualNode("branch", VisualNodeType.CATALOG, definitionId = "flow.branch"),
                VisualNode("yes", VisualNodeType.PRINT_LOG, textValue = "target-has-collider"),
                VisualNode("no", VisualNodeType.PRINT_LOG, textValue = "wrong-target"),
            ),
            connections = listOf(
                VisualConnection("button", "branch", "flow", "flowIn"),
                VisualConnection("has-collider", "branch", "result", "condition"),
                VisualConnection("branch", "yes", "true", "flow"),
                VisualConnection("branch", "no", "false", "flow"),
            ),
        )
        val host = LogHost()
        val executor = session.graphExecutor(
            host = host,
            sceneId = "world",
            sourceObject = player,
            graphInstanceId = "player-interaction",
        )

        val result = executor.emitButton(graph, "interact")

        assertTrue(result is LogicExecutionResult.Success)
        assertEquals(listOf("target-has-collider"), host.logs)
    }

    private class LogHost : LogicSceneHost {
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
