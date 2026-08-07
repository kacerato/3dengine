package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.AttributeAddress
import com.mobilegamestudio.core.model.AttributeScope
import com.mobilegamestudio.core.model.AttributeValue
import com.mobilegamestudio.core.model.ComponentRef
import com.mobilegamestudio.core.model.EngineEvent
import com.mobilegamestudio.core.model.EventAddress
import com.mobilegamestudio.core.model.EventPayload
import com.mobilegamestudio.core.model.ExecutionContext
import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.Vector3

/** Public NoCode spelling for RuntimeAttributeStore scopes. */
enum class NoCodeAttributeScope {
    OBJECT,
    SCENE,
    SESSION,
    GLOBAL,
    SAVE_GAME;

    companion object {
        fun parse(value: Any?): NoCodeAttributeScope? {
            val normalized = value?.toString()?.trim()?.lowercase()?.replace('-', '_')?.replace(' ', '_')
                ?.takeIf(String::isNotEmpty)
                ?: return null
            return when (normalized) {
                "object", "target", "local" -> OBJECT
                "scene" -> SCENE
                "session", "play", "runtime" -> SESSION
                "global", "project" -> GLOBAL
                "save", "save_game", "savegame", "persistent" -> SAVE_GAME
                else -> throw IllegalArgumentException("Escopo de Attribute desconhecido: $value.")
            }
        }
    }
}

enum class NoCodeAttributeValueKind {
    ANY,
    BOOL,
    NUMBER,
    TEXT,
    VECTOR3,
    OBJECT,
    COMPONENT,
    LIST,
}

data class NoCodeAttributeRead(
    val address: AttributeAddress,
    val value: AttributeValue?,
) {
    val exists: Boolean get() = value != null
}

data class NoCodeAttributeMutation(
    val address: AttributeAddress,
    val dispatch: AttributeDispatchResult,
)

/**
 * Strict bridge between visual nodes and EngineAttributeService.
 *
 * Addresses come from explicit inputs plus immutable ExecutionContext. The
 * runtime never inspects editor selection and never keeps a global current
 * object, so two nearby interactive objects cannot overwrite each other's
 * state accidentally.
 */
class NoCodeAttributeRuntime(
    private val attributes: EngineAttributeService,
) {
    fun readNode(
        definitionId: String,
        inputs: Map<String, Any?>,
        context: ExecutionContext,
    ): NoCodeAttributeRead {
        require(isGetNode(definitionId) || definitionId == ATTRIBUTE_EXISTS) {
            "$definitionId não é um node de leitura de Attribute."
        }
        val address = resolveAddress(inputs, context)
        val value = attributes.get(address)
        if (isGetNode(definitionId) && value != null) {
            require(acceptsValue(definitionId, value)) {
                "${address.name} existe como ${valueKindName(value)}, mas $definitionId espera ${valueKind(definitionId)}."
            }
        }
        return NoCodeAttributeRead(address, value)
    }

    fun setNode(
        definitionId: String,
        inputs: Map<String, Any?>,
        context: ExecutionContext,
    ): NoCodeAttributeMutation {
        require(isSetNode(definitionId)) { "$definitionId não é um node Set Attribute." }
        val address = resolveAddress(inputs, context)
        val rawValue = inputs["value"]
            ?: throw IllegalArgumentException("Set Attribute exige Value.")
        val value = attributeValueFor(valueKind(definitionId), rawValue)
        return NoCodeAttributeMutation(
            address = address,
            dispatch = attributes.set(
                address = address,
                value = value,
                sender = context.sourceObject ?: context.senderObject,
            ),
        )
    }

    fun removeNode(
        inputs: Map<String, Any?>,
        context: ExecutionContext,
    ): NoCodeAttributeMutation {
        val address = resolveAddress(inputs, context)
        return NoCodeAttributeMutation(
            address = address,
            dispatch = attributes.remove(
                address = address,
                sender = context.sourceObject ?: context.senderObject,
            ),
        )
    }

    fun addressForWatcher(
        values: Map<String, String>,
        graphId: String,
        sceneId: String? = null,
        ownerObject: ObjectRef? = null,
    ): AttributeAddress = resolveAddress(
        inputs = values,
        context = ExecutionContext(
            executionId = 0,
            graphId = graphId,
            sceneId = sceneId,
            sourceObject = ownerObject,
            targetObject = ownerObject,
        ),
    )

    fun eventName(address: AttributeAddress): String = attributes.eventName(address)

    fun eventAddress(address: AttributeAddress): EventAddress = when (address.scope) {
        AttributeScope.OBJECT -> EventAddress.objectTarget(requireNotNull(address.objectRef))
        AttributeScope.SCENE -> EventAddress.scene(requireNotNull(address.sceneId))
        AttributeScope.SESSION,
        AttributeScope.GLOBAL,
        AttributeScope.SAVE_GAME,
        -> EventAddress.global()
    }

    fun matchesChangedEvent(
        definitionId: String,
        values: Map<String, String>,
        graphId: String,
        sceneId: String?,
        ownerObject: ObjectRef?,
        event: EngineEvent,
    ): Boolean {
        if (!isChangedNode(definitionId)) return false
        val address = try {
            addressForWatcher(
                values = values,
                graphId = graphId,
                sceneId = sceneId,
                ownerObject = ownerObject,
            )
        } catch (_: IllegalArgumentException) {
            return false
        }
        return event.name == eventName(address) &&
            event.address == eventAddress(address) &&
            acceptsPayload(definitionId, event.payload)
    }

    fun acceptsPayload(definitionId: String, payload: EventPayload): Boolean {
        if (payload == EventPayload.None) return true
        return when (valueKind(definitionId)) {
            NoCodeAttributeValueKind.ANY -> true
            NoCodeAttributeValueKind.BOOL -> payload is EventPayload.Bool
            NoCodeAttributeValueKind.NUMBER -> payload is EventPayload.Number
            NoCodeAttributeValueKind.TEXT -> payload is EventPayload.Text
            NoCodeAttributeValueKind.VECTOR3 -> payload is EventPayload.Vector3Value
            NoCodeAttributeValueKind.OBJECT -> payload is EventPayload.ObjectValue
            NoCodeAttributeValueKind.COMPONENT -> payload is EventPayload.ComponentValue
            NoCodeAttributeValueKind.LIST -> payload is EventPayload.ListValue
        }
    }

    fun runtimeValue(value: AttributeValue?): Any? = when (value) {
        null -> null
        is AttributeValue.Bool -> value.value
        is AttributeValue.Number -> value.value
        is AttributeValue.Text -> value.value
        is AttributeValue.Vector3Value -> value.value
        is AttributeValue.ObjectValue -> value.value
        is AttributeValue.ComponentValue -> value.value
        is AttributeValue.ListValue -> value.values.map(::runtimeValue)
    }

    fun runtimeValue(payload: EventPayload): Any? = when (payload) {
        EventPayload.None -> null
        is EventPayload.Bool -> payload.value
        is EventPayload.Number -> payload.value
        is EventPayload.Text -> payload.value
        is EventPayload.Vector3Value -> payload.value
        is EventPayload.ObjectValue -> payload.value
        is EventPayload.ComponentValue -> payload.value
        is EventPayload.ListValue -> payload.values.map(::runtimeValue)
    }

    fun acceptsValue(definitionId: String, value: AttributeValue): Boolean = when (valueKind(definitionId)) {
        NoCodeAttributeValueKind.ANY -> true
        NoCodeAttributeValueKind.BOOL -> value is AttributeValue.Bool
        NoCodeAttributeValueKind.NUMBER -> value is AttributeValue.Number
        NoCodeAttributeValueKind.TEXT -> value is AttributeValue.Text
        NoCodeAttributeValueKind.VECTOR3 -> value is AttributeValue.Vector3Value
        NoCodeAttributeValueKind.OBJECT -> value is AttributeValue.ObjectValue
        NoCodeAttributeValueKind.COMPONENT -> value is AttributeValue.ComponentValue
        NoCodeAttributeValueKind.LIST -> value is AttributeValue.ListValue
    }

    fun valueKind(definitionId: String): NoCodeAttributeValueKind = when {
        definitionId.endsWith("_bool") -> NoCodeAttributeValueKind.BOOL
        definitionId.endsWith("_number") -> NoCodeAttributeValueKind.NUMBER
        definitionId.endsWith("_text") -> NoCodeAttributeValueKind.TEXT
        definitionId.endsWith("_vector3") -> NoCodeAttributeValueKind.VECTOR3
        definitionId.endsWith("_object") -> NoCodeAttributeValueKind.OBJECT
        definitionId.endsWith("_component") -> NoCodeAttributeValueKind.COMPONENT
        definitionId.endsWith("_list") -> NoCodeAttributeValueKind.LIST
        else -> NoCodeAttributeValueKind.ANY
    }

    fun isGetNode(definitionId: String): Boolean =
        definitionId == "attribute.get" || definitionId.startsWith("attribute.get_")

    fun isSetNode(definitionId: String): Boolean =
        definitionId == "attribute.set" || definitionId.startsWith("attribute.set_")

    fun isChangedNode(definitionId: String): Boolean =
        definitionId == "attribute.changed" || definitionId.startsWith("attribute.changed_")

    fun resolveAddress(
        inputs: Map<String, Any?>,
        context: ExecutionContext,
    ): AttributeAddress {
        val name = inputs["name"]?.toString()?.trim().orEmpty()
        require(name.isNotBlank()) { "Attribute exige Name." }

        val explicitObject = objectRef(inputs["object"] ?: inputs["target"])
        val scope = NoCodeAttributeScope.parse(inputs["scope"])
            ?: if (explicitObject != null || context.targetObject != null || context.sourceObject != null) {
                NoCodeAttributeScope.OBJECT
            } else {
                NoCodeAttributeScope.SCENE
            }

        return when (scope) {
            NoCodeAttributeScope.OBJECT -> AttributeAddress.objectValue(
                name = name,
                objectRef = explicitObject
                    ?: context.targetObject
                    ?: context.sourceObject
                    ?: throw IllegalArgumentException(
                        "Attribute OBJECT exige Object/Target explícito ou objeto no ExecutionContext.",
                    ),
            )
            NoCodeAttributeScope.SCENE -> AttributeAddress.sceneValue(
                name = name,
                sceneId = inputs["scene"]?.toString()?.trim()?.takeIf(String::isNotEmpty)
                    ?: context.sceneId
                    ?: throw IllegalArgumentException(
                        "Attribute SCENE exige sceneId explícito ou scene no ExecutionContext.",
                    ),
            )
            NoCodeAttributeScope.SESSION -> AttributeAddress.session(name)
            NoCodeAttributeScope.GLOBAL -> AttributeAddress.global(name)
            NoCodeAttributeScope.SAVE_GAME -> AttributeAddress.saveGame(name)
        }
    }

    private fun attributeValueFor(
        kind: NoCodeAttributeValueKind,
        value: Any,
    ): AttributeValue = when (kind) {
        NoCodeAttributeValueKind.ANY -> AttributeValue.fromRuntimeValue(value)
        NoCodeAttributeValueKind.BOOL -> AttributeValue.Bool(
            value as? Boolean
                ?: throw IllegalArgumentException("Set Attribute Bool exige Boolean; recebido ${typeName(value)}."),
        )
        NoCodeAttributeValueKind.NUMBER -> {
            val number = value as? Number
                ?: throw IllegalArgumentException("Set Attribute Number exige Number; recebido ${typeName(value)}.")
            AttributeValue.Number(number.toDouble())
        }
        NoCodeAttributeValueKind.TEXT -> AttributeValue.Text(
            value as? String
                ?: throw IllegalArgumentException("Set Attribute Text exige String; recebido ${typeName(value)}."),
        )
        NoCodeAttributeValueKind.VECTOR3 -> AttributeValue.Vector3Value(
            value as? Vector3
                ?: throw IllegalArgumentException("Set Attribute Vector3 exige Vector3; recebido ${typeName(value)}."),
        )
        NoCodeAttributeValueKind.OBJECT -> AttributeValue.ObjectValue(
            value as? ObjectRef
                ?: throw IllegalArgumentException("Set Attribute Object exige ObjectRef; recebido ${typeName(value)}."),
        )
        NoCodeAttributeValueKind.COMPONENT -> AttributeValue.ComponentValue(
            value as? ComponentRef
                ?: throw IllegalArgumentException("Set Attribute Component exige ComponentRef; recebido ${typeName(value)}."),
        )
        NoCodeAttributeValueKind.LIST -> {
            require(value is List<*>) { "Set Attribute List exige List; recebido ${typeName(value)}." }
            AttributeValue.fromRuntimeValue(value)
        }
    }

    private fun objectRef(value: Any?): ObjectRef? = when (value) {
        null -> null
        is ObjectRef -> value
        is EventPayload.ObjectValue -> value.value
        is AttributeValue.ObjectValue -> value.value
        is String -> value.trim().takeIf(String::isNotEmpty)?.let(::ObjectRef)
        else -> throw IllegalArgumentException("Object de Attribute precisa ser ObjectRef; recebido ${typeName(value)}.")
    }

    private fun valueKindName(value: AttributeValue): String = when (value) {
        is AttributeValue.Bool -> "Bool"
        is AttributeValue.Number -> "Number"
        is AttributeValue.Text -> "Text"
        is AttributeValue.Vector3Value -> "Vector3"
        is AttributeValue.ObjectValue -> "Object"
        is AttributeValue.ComponentValue -> "Component"
        is AttributeValue.ListValue -> "List"
    }

    private fun typeName(value: Any?): String = value?.let { it::class.simpleName } ?: "null"

    companion object {
        const val ATTRIBUTE_EXISTS = "attribute.exists"
        const val ATTRIBUTE_REMOVE = "attribute.remove"
    }
}
