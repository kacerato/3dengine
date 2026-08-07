package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.EngineApiAvailability
import com.mobilegamestudio.core.model.EngineApiCapability
import com.mobilegamestudio.core.model.EngineApiFunction
import com.mobilegamestudio.core.model.EngineApiParameter
import com.mobilegamestudio.core.model.EngineApiRegistry
import com.mobilegamestudio.core.model.EngineApiSurface
import com.mobilegamestudio.core.model.EngineApiThread
import com.mobilegamestudio.core.model.EngineApiValueType
import com.mobilegamestudio.core.model.ExecutionContext
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class EngineApiDispatcherTest {
    private val context = ExecutionContext(executionId = 1, sceneId = "scene")

    @Test
    fun `missing capability denies call before handler`() {
        val function = function(
            id = "test.write",
            capabilities = setOf(EngineApiCapability.SCENE_WRITE),
        )
        val dispatcher = EngineApiDispatcher(EngineApiRegistry(listOf(function)), emptySet())
        var called = false
        dispatcher.register(function.id) { called = true }

        val result = dispatcher.invoke(function.id, emptyMap(), context, EngineApiSurface.NOCODE)

        assertFailure(result, EngineApiFailureCode.CAPABILITY_DENIED)
        assertTrue(!called)
    }

    @Test
    fun `dispatcher refuses silent string to number coercion`() {
        val function = function(
            id = "math.double",
            parameters = listOf(EngineApiParameter("value", EngineApiValueType.NUMBER)),
            returnType = EngineApiValueType.NUMBER,
        )
        val dispatcher = EngineApiDispatcher(EngineApiRegistry(listOf(function)), emptySet())
        dispatcher.register(function.id) { invocation ->
            (invocation.arguments.getValue("value") as Number).toDouble() * 2.0
        }

        val result = dispatcher.invoke(
            function.id,
            mapOf("value" to "12"),
            context,
            EngineApiSurface.LUA,
        )

        assertFailure(result, EngineApiFailureCode.INVALID_ARGUMENT)
    }

    @Test
    fun `wrong engine thread fails without invoking runtime`() {
        val function = function(
            id = "physics.cast",
            thread = EngineApiThread.PHYSICS,
        )
        val dispatcher = EngineApiDispatcher(EngineApiRegistry(listOf(function)), emptySet())
        var called = false
        dispatcher.register(function.id) { called = true }

        val result = dispatcher.invoke(
            function.id,
            emptyMap(),
            context,
            EngineApiSurface.JAVA,
            thread = EngineApiThread.ENGINE,
        )

        assertFailure(result, EngineApiFailureCode.WRONG_THREAD)
        assertTrue(!called)
    }

    @Test
    fun `contract only api cannot pretend to execute`() {
        val function = function(
            id = "future.feature",
            availability = EngineApiAvailability.CONTRACT_ONLY,
        )
        val dispatcher = EngineApiDispatcher(EngineApiRegistry(listOf(function)), emptySet())

        val result = dispatcher.invoke(function.id, emptyMap(), context, EngineApiSurface.PYTHON)

        assertFailure(result, EngineApiFailureCode.CONTRACT_ONLY)
    }

    @Test
    fun `handler exception is isolated as structured failure`() {
        val function = function(id = "test.crash")
        val dispatcher = EngineApiDispatcher(EngineApiRegistry(listOf(function)), emptySet())
        dispatcher.register(function.id) { error("boom") }

        val result = dispatcher.invoke(function.id, emptyMap(), context, EngineApiSurface.NOCODE)

        assertFailure(result, EngineApiFailureCode.HANDLER_FAILED)
    }

    @Test
    fun `invalid handler return type is rejected`() {
        val function = function(
            id = "test.number",
            returnType = EngineApiValueType.NUMBER,
        )
        val dispatcher = EngineApiDispatcher(EngineApiRegistry(listOf(function)), emptySet())
        dispatcher.register(function.id) { "not-a-number" }

        val result = dispatcher.invoke(function.id, emptyMap(), context, EngineApiSurface.LUA)

        assertFailure(result, EngineApiFailureCode.INVALID_RETURN_VALUE)
    }

    @Test
    fun `alias dispatches through canonical handler`() {
        val function = function(
            id = "debug.echo",
            parameters = listOf(EngineApiParameter("message", EngineApiValueType.TEXT)),
            returnType = EngineApiValueType.TEXT,
            aliases = setOf("Log.echo"),
        )
        val dispatcher = EngineApiDispatcher(EngineApiRegistry(listOf(function)), emptySet())
        dispatcher.register(function.id) { it.arguments.getValue("message") }

        val result = dispatcher.invoke(
            "Log.echo",
            mapOf("message" to "ok"),
            context,
            EngineApiSurface.LUA,
        )

        assertEquals(EngineApiCallResult.Success("ok"), result)
    }

    private fun function(
        id: String,
        parameters: List<EngineApiParameter> = emptyList(),
        returnType: EngineApiValueType = EngineApiValueType.VOID,
        capabilities: Set<EngineApiCapability> = emptySet(),
        thread: EngineApiThread = EngineApiThread.ENGINE,
        availability: EngineApiAvailability = EngineApiAvailability.RUNTIME,
        aliases: Set<String> = emptySet(),
    ) = EngineApiFunction(
        id = id,
        namespace = id.substringBefore('.'),
        name = id.substringAfter('.'),
        parameters = parameters,
        returnType = returnType,
        capabilities = capabilities,
        thread = thread,
        availability = availability,
        aliases = aliases,
    )

    private fun assertFailure(result: EngineApiCallResult, code: EngineApiFailureCode) {
        assertTrue(result is EngineApiCallResult.Failure)
        assertEquals(code, (result as EngineApiCallResult.Failure).code)
    }
}
