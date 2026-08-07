package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.AttributeAddress
import com.mobilegamestudio.core.model.AttributeValue
import com.mobilegamestudio.core.model.ColliderComponent
import com.mobilegamestudio.core.model.ColliderShape
import com.mobilegamestudio.core.model.GameObject
import com.mobilegamestudio.core.model.SceneDocument
import com.mobilegamestudio.core.model.TransformComponent
import com.mobilegamestudio.core.model.Vector3
import com.mobilegamestudio.core.model.VisualConnection
import com.mobilegamestudio.core.model.VisualGraphDocument
import com.mobilegamestudio.core.model.VisualNode
import com.mobilegamestudio.core.model.VisualNodeType
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class NoCodeTraceRayGraphIntegrationTest {
    @Test
    fun `button trace ray follows hit branch and publishes structured object output`() {
        val scene = sceneWithBox(z = 4f)
        val session = NoCodeRuntimeSession(
            physicsQueryHost = SceneDocumentPhysicsQueryHost { scene },
        )
        session.attributes.set(
            AttributeAddress.global("rayOrigin"),
            AttributeValue.Vector3Value(Vector3.ZERO),
        )
        session.attributes.set(
            AttributeAddress.global("rayDirection"),
            AttributeValue.Vector3Value(Vector3(0f, 0f, 1f)),
        )
        val host = Host()
        val graph = traceGraph()
        val runtime = NoCodePlayRuntime(host = host, session = session)
        assertTrue(runtime.start(listOf(NoCodeGraphRuntimeSpec("player:trace", graph))).started)

        val report = runtime.emitButton("trace")

        assertTrue(report.succeeded)
        assertEquals(listOf("HIT"), host.logs)
    }

    @Test
    fun `same graph follows miss branch when scene has no collider in ray path`() {
        val scene = sceneWithBox(z = 4f, x = 8f)
        val session = NoCodeRuntimeSession(
            physicsQueryHost = SceneDocumentPhysicsQueryHost { scene },
        )
        session.attributes.set(
            AttributeAddress.global("rayOrigin"),
            AttributeValue.Vector3Value(Vector3.ZERO),
        )
        session.attributes.set(
            AttributeAddress.global("rayDirection"),
            AttributeValue.Vector3Value(Vector3(0f, 0f, 1f)),
        )
        val host = Host()
        val runtime = NoCodePlayRuntime(host = host, session = session)
        assertTrue(runtime.start(listOf(NoCodeGraphRuntimeSpec("player:trace", traceGraph()))).started)

        val report = runtime.emitButton("trace")

        assertTrue(report.succeeded)
        assertEquals(listOf("MISS"), host.logs)
    }

    @Test
    fun `trace ray without physics host fails explicitly instead of pretending to miss`() {
        val session = NoCodeRuntimeSession()
        session.attributes.set(
            AttributeAddress.global("rayOrigin"),
            AttributeValue.Vector3Value(Vector3.ZERO),
        )
        session.attributes.set(
            AttributeAddress.global("rayDirection"),
            AttributeValue.Vector3Value(Vector3(0f, 0f, 1f)),
        )
        val runtime = NoCodePlayRuntime(host = Host(), session = session)
        assertTrue(runtime.start(listOf(NoCodeGraphRuntimeSpec("player:trace", traceGraph()))).started)

        val report = runtime.emitButton("trace")

        assertFalse(report.succeeded)
        assertEquals(1, report.failures.size)
        assertTrue(report.failures.single().diagnostic.message.contains("PhysicsQueryHost"))
    }

    private fun traceGraph() = VisualGraphDocument(
        graphId = "trace-ray-graph",
        name = "Trace Ray Graph",
        nodes = listOf(
            VisualNode("button", VisualNodeType.ON_BUTTON_PRESSED, textValue = "trace"),
            VisualNode(
                id = "origin",
                type = VisualNodeType.CATALOG,
                definitionId = "attribute.get_vector3",
                values = mapOf("name" to "rayOrigin", "scope" to "global"),
            ),
            VisualNode(
                id = "direction",
                type = VisualNodeType.CATALOG,
                definitionId = "attribute.get_vector3",
                values = mapOf("name" to "rayDirection", "scope" to "global"),
            ),
            VisualNode(
                id = "trace",
                type = VisualNodeType.CATALOG,
                definitionId = "physics.trace_ray",
                values = mapOf("maxDistance" to "20"),
            ),
            VisualNode("hit-log", VisualNodeType.PRINT_LOG, textValue = "HIT"),
            VisualNode("miss-log", VisualNodeType.PRINT_LOG, textValue = "MISS"),
        ),
        connections = listOf(
            VisualConnection("button", "trace", "flow", "flowIn"),
            VisualConnection("origin", "trace", "value", "origin"),
            VisualConnection("direction", "trace", "value", "direction"),
            VisualConnection("trace", "hit-log", "hit", "flow"),
            VisualConnection("trace", "miss-log", "miss", "flow"),
        ),
    )

    private fun sceneWithBox(z: Float, x: Float = 0f) = SceneDocument(
        sceneId = "world",
        name = "World",
        rootObjects = listOf("box"),
        objects = listOf(
            GameObject(
                id = "box",
                name = "Box",
                components = listOf(
                    TransformComponent(position = Vector3(x, 0f, z)),
                    ColliderComponent(
                        componentId = "box-collider",
                        shape = ColliderShape.BOX,
                        size = Vector3(2f, 2f, 2f),
                    ),
                ),
            ),
        ),
    )

    private class Host : LogicSceneHost {
        val logs = mutableListOf<String>()

        override fun findObjectIdByName(name: String): String? = null
        override fun rotation(objectId: String) = null
        override fun scale(objectId: String) = null
        override fun setRotation(objectId: String, rotation: Vector3) = false
        override fun setScale(objectId: String, scale: Vector3) = false
        override fun log(level: LogicLogLevel, message: String) {
            logs += message
        }
    }
}
