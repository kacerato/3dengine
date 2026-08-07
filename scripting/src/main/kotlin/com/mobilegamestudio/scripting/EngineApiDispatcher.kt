package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.ComponentRef
import com.mobilegamestudio.core.model.EngineApiAvailability
import com.mobilegamestudio.core.model.EngineApiCapability
import com.mobilegamestudio.core.model.EngineApiFunction
import com.mobilegamestudio.core.model.EngineApiRegistry
import com.mobilegamestudio.core.model.EngineApiSurface
import com.mobilegamestudio.core.model.EngineApiThread
import com.mobilegamestudio.core.model.EngineApiValueType
import com.mobilegamestudio.core.model.ExecutionContext
import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.Vector3

data class EngineApiInvocation(
    val function: EngineApiFunction,
    val arguments: Map<String, Any?>,
    val context: ExecutionContext,
    val surface: EngineApiSurface,
    val thread: EngineApiThread,
)

fun interface EngineApiHandler {
    fun invoke(call: EngineApiInvocation): Any?
}

sealed interface EngineApiCallResult {
    data class Success(val value: Any?) : EngineApiCallResult

    data class Failure(
        val code: EngineApiFailureCode,
        val message: String,
    ) : EngineApiCallResult
}

enum class EngineApiFailureCode {
    UNKNOWN_API,
    SURFACE_NOT_ALLOWED,
    CAPABILITY_DENIED,
    WRONG_THREAD,
    CONTRACT_ONLY,
    HANDLER_MISSING,
    INVALID_ARGUMENT,
    INVALID_RETURN_VALUE,
    HANDLER_FAILED,
}

/**
 * Permission/thread/type boundary shared by language bridges.
 *
 * Interpreters should not call engine internals directly. They call this
 * dispatcher, which resolves one canonical EngineApiFunction contract and
 * enforces the same rules for NoCode, Lua, Java and future Python.
 */
class EngineApiDispatcher(
    private val registry: EngineApiRegistry,
    private val grantedCapabilities: Set<EngineApiCapability>,
) {
    private val lock = Any()
    private val handlers = mutableMapOf<String, EngineApiHandler>()

    fun register(
        functionId: String,
        handler: EngineApiHandler,
    ) = synchronized(lock) {
        val definition = registry.resolve(functionId)
            ?: throw IllegalArgumentException("Engine API desconhecida: $functionId.")
        require(definition.availability == EngineApiAvailability.RUNTIME) {
            "${definition.id} não pode registrar handler com availability=${definition.availability}."
        }
        handlers[definition.id] = handler
    }

    fun unregister(functionId: String): Boolean = synchronized(lock) {
        val canonical = registry.resolve(functionId)?.id ?: functionId
        handlers.remove(canonical) != null
    }

    fun invoke(
        idOrAlias: String,
        arguments: Map<String, Any?>,
        context: ExecutionContext,
        surface: EngineApiSurface,
        thread: EngineApiThread = EngineApiThread.ENGINE,
    ): EngineApiCallResult {
        val function = registry.resolve(idOrAlias)
            ?: return failure(EngineApiFailureCode.UNKNOWN_API, "Engine API desconhecida: $idOrAlias.")

        if (surface !in function.surfaces) {
            return failure(
                EngineApiFailureCode.SURFACE_NOT_ALLOWED,
                "${function.id} não está exposta para $surface.",
            )
        }
        if (!grantedCapabilities.containsAll(function.capabilities)) {
            val missing = function.capabilities - grantedCapabilities
            return failure(
                EngineApiFailureCode.CAPABILITY_DENIED,
                "${function.id} exige capabilities ausentes: ${missing.joinToString()}.",
            )
        }
        if (function.availability == EngineApiAvailability.CONTRACT_ONLY) {
            return failure(
                EngineApiFailureCode.CONTRACT_ONLY,
                "${function.id} possui contrato publicado, mas o runtime ainda não está ligado.",
            )
        }
        if (function.thread != EngineApiThread.ANY && function.thread != thread) {
            return failure(
                EngineApiFailureCode.WRONG_THREAD,
                "${function.id} exige thread ${function.thread}; chamada veio de $thread.",
            )
        }

        val argumentError = validateArguments(function, arguments)
        if (argumentError != null) {
            return failure(EngineApiFailureCode.INVALID_ARGUMENT, argumentError)
        }

        val handler = synchronized(lock) { handlers[function.id] }
            ?: return failure(
                EngineApiFailureCode.HANDLER_MISSING,
                "${function.id} está marcada como runtime, mas não possui handler registrado.",
            )

        val result = try {
            handler.invoke(
                EngineApiInvocation(
                    function = function,
                    arguments = arguments,
                    context = context,
                    surface = surface,
                    thread = thread,
                ),
            )
        } catch (error: Exception) {
            return failure(
                EngineApiFailureCode.HANDLER_FAILED,
                "${function.id} falhou: ${error.message ?: error::class.java.simpleName}.",
            )
        }

        if (!accepts(function.returnType, result, allowNull = function.returnType != EngineApiValueType.VOID)) {
            return failure(
                EngineApiFailureCode.INVALID_RETURN_VALUE,
                "${function.id} retornou ${typeName(result)}, esperado ${function.returnType}.",
            )
        }
        return EngineApiCallResult.Success(result)
    }

    fun registeredHandlerCount(): Int = synchronized(lock) { handlers.size }

    private fun validateArguments(
        function: EngineApiFunction,
        arguments: Map<String, Any?>,
    ): String? {
        val known = function.parameters.mapTo(mutableSetOf()) { it.name }
        val unknown = arguments.keys - known
        if (unknown.isNotEmpty()) {
            return "${function.id} recebeu argumentos desconhecidos: ${unknown.joinToString()}."
        }

        function.parameters.forEach { parameter ->
            if (parameter.required && parameter.name !in arguments) {
                return "${function.id} exige o argumento ${parameter.name}."
            }
            if (parameter.name in arguments) {
                val value = arguments[parameter.name]
                if (!accepts(parameter.type, value, allowNull = !parameter.required)) {
                    return "${function.id}.${parameter.name} recebeu ${typeName(value)}, esperado ${parameter.type}."
                }
            }
        }
        return null
    }

    private fun accepts(
        type: EngineApiValueType,
        value: Any?,
        allowNull: Boolean,
    ): Boolean {
        if (value == null) return allowNull || type == EngineApiValueType.VOID
        return when (type) {
            EngineApiValueType.VOID -> false
            EngineApiValueType.BOOLEAN -> value is Boolean
            EngineApiValueType.NUMBER -> value is Number && value.toDouble().isFinite()
            EngineApiValueType.TEXT -> value is String
            EngineApiValueType.VECTOR3 -> value is Vector3 && value.isFinite()
            EngineApiValueType.OBJECT -> value is ObjectRef
            EngineApiValueType.COMPONENT -> value is ComponentRef
            EngineApiValueType.LIST -> value is List<*>
            EngineApiValueType.ANY -> true
        }
    }

    private fun failure(code: EngineApiFailureCode, message: String) =
        EngineApiCallResult.Failure(code, message)

    private fun typeName(value: Any?): String = value?.let { it::class.simpleName } ?: "null"
}
