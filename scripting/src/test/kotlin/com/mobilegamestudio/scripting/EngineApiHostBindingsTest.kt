package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.AttributeAddress
import com.mobilegamestudio.core.model.AttributeValue
import com.mobilegamestudio.core.model.EngineApiCallResult
import com.mobilegamestudio.core.model.EngineApiSurface
import com.mobilegamestudio.core.model.ExecutionContext
import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.Vector3
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class EngineApiHostBindingsTest {
    @Test
    fun `scene lookup returns stable object ref through shared api`() {
        val host = ApiHost()
        val session = NoCodeRuntimeSession()
        val dispatcher = EngineApiHostBindings.createDispatcher(host, session)

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
    fun `unwired transform contract is rejected before handler lookup`() {
        val dispatcher = EngineApiHostBindings.createDispatcher(ApiHost(), NoCodeRuntimeSession())

        val result = dispatcher.invoke(
            "transform.get_position",
            mapOf("object" to ObjectRef("door")),
            ExecutionContext(executionId = 1),
            EngineApiSurface.JAVA,
        )

        assertTrue(result is EngineApiCallResult.Failure)
        assertEquals(
            EngineApiFailureCode.CONTRACT_ONLY,
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
