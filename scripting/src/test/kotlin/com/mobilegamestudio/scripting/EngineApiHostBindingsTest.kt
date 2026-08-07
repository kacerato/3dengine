package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.AttributeAddress
import com.mobilegamestudio.core.model.AttributeValue
import com.mobilegamestudio.core.model.ColliderComponent
import com.mobilegamestudio.core.model.ComponentRef
import com.mobilegamestudio.core.model.EngineApiSurface
import com.mobilegamestudio.core.model.ExecutionContext
import com.mobilegamestudio.core.model.GameObject
import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.SceneDocument
import com.mobilegamestudio.core.model.TransformComponent
import com.mobilegamestudio.core.model.Vector3
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class EngineApiHostBindingsTest {
    @Test
    fun `scene lookup returns stable object ref through shared api`() {
        val host = ApiHost()
        val dispatcher = EngineApiHostBindings.createDispatcher(host, NoCodeRuntimeSession())

        val result = dispatcher.invoke(
            idOrAlias = "Scene.GetObject",
            arguments = mapOf("name" to "Door"),
            context = ExecutionContext(executionId = 1, sceneId = "world"),
            surface = EngineApiSurface.LUA,
        )

        assertEquals(EngineApiCallResult.Success(ObjectRef("door")), result)
    }

    @Test
    fun `attribute api keeps object targets isolated across language surfaces`() {
        val host = ApiHost()
        val session = NoCodeRuntimeSession()
        val dispatcher = EngineApiHostBindings.createDispatcher(host, session)
        val doorA = ObjectRef("door-a")
        val doorB = ObjectRef("door-b")
        val contextA = ExecutionContext(
            executionId = 1,
            sceneId = "world",
            sourceObject = ObjectRef("player"),
            targetObject = doorA,
        )
        val contextB = contextA.copy(executionId = 2, targetObject = doorB)

        val write = dispatcher.invoke(
            "attribute.set",
            mapOf("name" to "locked", "value" to true, "object" to doorA),
            contextA,
            EngineApiSurface.JAVA,
        )
        val readA = dispatcher.invoke(
            "attribute.get",
            mapOf("name" to "locked", "object" to doorA),
            contextA,
            EngineApiSurface.LUA,
        )
        val readB = dispatcher.invoke(
            "attribute.get",
            mapOf("name" to "locked", "object" to doorB),
            contextB,
            EngineApiSurface.NOCODE,
        )

        assertEquals(EngineApiCallResult.Success(null), write)
        assertEquals(EngineApiCallResult.Success(true), readA)
        assertEquals(EngineApiCallResult.Success(null), readB)
        assertEquals(
            AttributeValue.Bool(true),
            session.attributes.get(AttributeAddress.objectValue("locked", doorA)),
        )
    }

    @Test
    fun `spatial api is identical for java lua and future python surfaces`() {
        val a = ObjectRef("a")
        val b = ObjectRef("b")
        val positions = mapOf(a to Vector3.ZERO, b to Vector3(3f, 4f, 0f))
        val session = NoCodeRuntimeSession(
            spatialQueryHost = ObjectSpatialQueryHost(positions::get),
        )
        val dispatcher = EngineApiHostBindings.createDispatcher(ApiHost(), session)
        val context = ExecutionContext(executionId = 1, sourceObject = a, targetObject = b)

        val javaResult = dispatcher.invoke("object.distance", emptyMap(), context, EngineApiSurface.JAVA)
        val luaResult = dispatcher.invoke("object.distance", emptyMap(), context, EngineApiSurface.LUA)
        val pythonResult = dispatcher.invoke("object.distance", emptyMap(), context, EngineApiSurface.PYTHON)

        assertEquals(EngineApiCallResult.Success(5.0), javaResult)
        assertEquals(javaResult, luaResult)
        assertEquals(javaResult, pythonResult)
        assertEquals(
            EngineApiCallResult.Success(Vector3.ZERO),
            dispatcher.invoke(
                "transform.get_position",
                mapOf("object" to a),
                context,
                EngineApiSurface.PYTHON,
            ),
        )
    }

    @Test
    fun `component api returns stable component ref and only calls registered methods`() {
        val door = ObjectRef("door")
        val scene = SceneDocument(
            sceneId = "world",
            name = "World",
            rootObjects = listOf(door.objectId),
            objects = listOf(
                GameObject(
                    id = door.objectId,
                    name = "Door",
                    components = listOf(
                        TransformComponent(componentId = "transform"),
                        ColliderComponent(componentId = "collider", isTrigger = true),
                    ),
                ),
            ),
        )
        val session = NoCodeRuntimeSession(
            componentQueryHost = SceneDocumentComponentQueryHost { scene },
        )
        val dispatcher = EngineApiHostBindings.createDispatcher(ApiHost(), session)
        val context = ExecutionContext(executionId = 1, targetObject = door)

        val component = dispatcher.invoke(
            "component.get",
            mapOf("componentType" to "collider"),
            context,
            EngineApiSurface.PYTHON,
        )
        assertEquals(EngineApiCallResult.Success(ComponentRef(door, "collider")), component)

        val call = dispatcher.invoke(
            "component.call",
            mapOf(
                "component" to ComponentRef(door, "collider"),
                "method" to "collider.is_trigger",
            ),
            context,
            EngineApiSurface.LUA,
        )
        assertEquals(EngineApiCallResult.Success(true), call)
    }

    @Test
    fun `event api dispatches through same scene bus`() {
        val host = ApiHost()
        val session = NoCodeRuntimeSession()
        val dispatcher = EngineApiHostBindings.createDispatcher(host, session)
        val hits = mutableListOf<String>()
        session.eventBus.subscribeScene(EventOwner("listener"), "world", "mission.started") { event, _ ->
            hits += (event.payload as com.mobilegamestudio.core.model.EventPayload.Text).value
        }

        val result = dispatcher.invoke(
            "event.send",
            mapOf("event" to "mission.started", "value" to "garage"),
            ExecutionContext(executionId = 1, sceneId = "world", sourceObject = ObjectRef("player")),
            EngineApiSurface.PYTHON,
        )

        assertEquals(EngineApiCallResult.Success(null), result)
        assertEquals(listOf("garage"), hits)
    }

    @Test
    fun `debug api reaches structured host logger`() {
        val host = ApiHost()
        val dispatcher = EngineApiHostBindings.createDispatcher(host, NoCodeRuntimeSession())

        val result = dispatcher.invoke(
            "Log.info",
            mapOf("message" to "hello"),
            ExecutionContext(executionId = 1),
            EngineApiSurface.LUA,
        )

        assertEquals(EngineApiCallResult.Success(null), result)
        assertEquals(listOf("INFO:hello"), host.logs)
    }

    @Test
    fun `optional runtime api reports missing handler when backend is absent`() {
        val dispatcher = EngineApiHostBindings.createDispatcher(ApiHost(), NoCodeRuntimeSession())

        val result = dispatcher.invoke(
            "transform.get_position",
            mapOf("object" to ObjectRef("door")),
            ExecutionContext(executionId = 1),
            EngineApiSurface.JAVA,
        )

        assertTrue(result is EngineApiCallResult.Failure)
        assertEquals(
            EngineApiFailureCode.HANDLER_MISSING,
            (result as EngineApiCallResult.Failure).code,
        )
    }

    private class ApiHost : LogicSceneHost {
        val logs = mutableListOf<String>()

        override fun findObjectIdByName(name: String): String? = when (name) {
            "Door" -> "door"
            else -> null
        }

        override fun rotation(objectId: String): Vector3? = null
        override fun scale(objectId: String): Vector3? = null
        override fun setRotation(objectId: String, rotation: Vector3): Boolean = false
        override fun setScale(objectId: String, scale: Vector3): Boolean = false
        override fun log(level: LogicLogLevel, message: String) {
            logs += "${level.name}:$message"
        }
    }
}
