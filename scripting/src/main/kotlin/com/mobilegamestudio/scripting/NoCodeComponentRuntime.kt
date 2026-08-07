package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.AttributeValue
import com.mobilegamestudio.core.model.ComponentRef
import com.mobilegamestudio.core.model.EventPayload
import com.mobilegamestudio.core.model.ExecutionContext
import com.mobilegamestudio.core.model.ObjectRef

/** Value result produced by component lookup nodes. */
data class NoCodeComponentValueResult(
    val outputs: Map<String, Any?>,
)

data class NoCodeComponentMethodExecution(
    val decision: NoCodeFlowDecision,
    val outputs: Map<String, Any?>,
)

/**
 * NoCode bridge for Pick/Get/Has Component and Component Method.
 *
 * The implicit object is always ExecutionContext.targetObject first, then the
 * graph/source object. This keeps the complete interaction chain bound to the
 * target selected by the interaction resolver.
 */
class NoCodeComponentRuntime(
    private val resolver: ComponentResolver,
    private val methods: ComponentMethodDispatcher = BuiltInComponentMethods.createDispatcher(resolver),
) {
    fun supportsValueNode(definitionId: String): Boolean = definitionId in VALUE_NODE_IDS
    fun supportsActionNode(definitionId: String): Boolean = definitionId == COMPONENT_METHOD

    fun evaluate(
        definitionId: String,
        inputs: Map<String, Any?>,
        context: ExecutionContext,
    ): NoCodeComponentValueResult {
        require(supportsValueNode(definitionId)) { "$definitionId is not a supported component value node." }
        return when (definitionId) {
            PICK_COMPONENT, GET_COMPONENT, HAS_COMPONENT -> evaluateLookup(definitionId, inputs, context)
            COMPONENT_OWNER -> {
                val ref = componentRef(inputs["component"])
                    ?: throw IllegalArgumentException("Component Owner requires ComponentRef.")
                NoCodeComponentValueResult(mapOf("object" to ref.objectRef))
            }
            COMPONENT_VALID -> {
                val ref = componentRef(inputs["component"])
                    ?: throw IllegalArgumentException("Is Component Valid requires ComponentRef.")
                NoCodeComponentValueResult(mapOf("result" to resolver.isValid(ref)))
            }
            else -> error("Unsupported component node: $definitionId")
        }
    }

    fun executeMethod(
        inputs: Map<String, Any?>,
    ): NoCodeComponentMethodExecution {
        val ref = componentRef(inputs["component"])
            ?: throw IllegalArgumentException("Component Method requires ComponentRef.")
        val methodId = inputs["method"]?.toString()?.trim().orEmpty()
        require(methodId.isNotBlank()) { "Component Method requires Method." }
        val arguments = inputs["arguments"]?.let { raw ->
            require(raw is List<*>) { "Component Method Arguments must be a list." }
            raw
        }.orEmpty()

        return when (val result = methods.invoke(ref, methodId, arguments)) {
            is ComponentMethodResult.Success -> NoCodeComponentMethodExecution(
                decision = NoCodeFlowDecision(listOf("flow")),
                outputs = mapOf("result" to result.value),
            )
            is ComponentMethodResult.Failure -> throw IllegalArgumentException(
                "Component Method $methodId failed [${result.code}]: ${result.message}",
            )
        }
    }

    private fun evaluateLookup(
        definitionId: String,
        inputs: Map<String, Any?>,
        context: ExecutionContext,
    ): NoCodeComponentValueResult {
        val objectRef = objectRef(inputs["object"])
            ?: context.targetObject
            ?: context.sourceObject
            ?: throw IllegalArgumentException(
                "Component lookup requires Object or a target/source object in ExecutionContext.",
            )
        val type = inputs["componentType"]?.toString()?.trim()?.takeIf(String::isNotEmpty)
        val componentId = inputs["componentId"]?.toString()?.trim()?.takeIf(String::isNotEmpty)
        val selector = ComponentSelector(
            type = type,
            componentId = componentId,
            includeDisabled = inputs.boolean("includeDisabled") ?: false,
        )
        val resolution = resolver.resolve(objectRef, selector)
        return when (definitionId) {
            HAS_COMPONENT -> NoCodeComponentValueResult(mapOf("result" to resolution.found))
            GET_COMPONENT -> NoCodeComponentValueResult(mapOf("component" to resolution.componentRef))
            else -> NoCodeComponentValueResult(
                mapOf(
                    "component" to resolution.componentRef,
                    "found" to resolution.found,
                    "matchingCount" to resolution.matchingCount.toDouble(),
                ),
            )
        }
    }

    private fun objectRef(value: Any?): ObjectRef? = when (value) {
        null -> null
        is ObjectRef -> value
        is EventPayload.ObjectValue -> value.value
        is AttributeValue.ObjectValue -> value.value
        is String -> value.trim().takeIf(String::isNotEmpty)?.let(::ObjectRef)
        else -> throw IllegalArgumentException("Object must be ObjectRef; received ${value::class.simpleName}.")
    }

    private fun componentRef(value: Any?): ComponentRef? = when (value) {
        null -> null
        is ComponentRef -> value
        is EventPayload.ComponentValue -> value.value
        is AttributeValue.ComponentValue -> value.value
        else -> throw IllegalArgumentException("Component must be ComponentRef; received ${value::class.simpleName}.")
    }

    companion object {
        const val PICK_COMPONENT = "object.pick_component"
        const val GET_COMPONENT = "object.get_component"
        const val HAS_COMPONENT = "object.has_component"
        const val COMPONENT_OWNER = "component.owner"
        const val COMPONENT_VALID = "component.is_valid"
        const val COMPONENT_METHOD = "component.method"

        private val VALUE_NODE_IDS = setOf(
            PICK_COMPONENT,
            GET_COMPONENT,
            HAS_COMPONENT,
            COMPONENT_OWNER,
            COMPONENT_VALID,
        )
    }
}

private fun Map<String, Any?>.boolean(key: String): Boolean? = when (val value = this[key]) {
    is Boolean -> value
    is Number -> value.toInt() != 0
    is String -> value.toBooleanStrictOrNull()
    else -> null
}
