package com.mobilegamestudio.core.model

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

/**
 * Stable runtime reference to a scene object.
 *
 * Runtime systems must pass references instead of relying on names or a global
 * "last selected object". This is the base contract used by NoCode, scripting,
 * interactions and the event system.
 */
@Serializable
data class ObjectRef(
    val objectId: String,
) {
    init {
        require(objectId.isNotBlank()) { "ObjectRef requires a non-blank objectId." }
    }
}

/** Stable reference to a component that always carries its owning object. */
@Serializable
data class ComponentRef(
    val objectRef: ObjectRef,
    val componentId: String,
) {
    init {
        require(componentId.isNotBlank()) { "ComponentRef requires a non-blank componentId." }
    }
}

@Serializable
enum class EventScope {
    LOCAL_GRAPH,
    OBJECT,
    SCENE,
    GLOBAL,
}

/**
 * Typed payload shared by NoCode and script runtimes.
 *
 * Unsupported values fail explicitly. Silent toString()/numeric coercion here
 * would make Java, Lua, Python and NoCode observe different contracts.
 */
@Serializable
sealed interface EventPayload {
    @Serializable
    @SerialName("none")
    data object None : EventPayload

    @Serializable
    @SerialName("bool")
    data class Bool(val value: Boolean) : EventPayload

    @Serializable
    @SerialName("number")
    data class Number(val value: Double) : EventPayload {
        init {
            require(value.isFinite()) { "Event numeric payload must be finite." }
        }
    }

    @Serializable
    @SerialName("text")
    data class Text(val value: String) : EventPayload

    @Serializable
    @SerialName("vector3")
    data class Vector3Value(val value: Vector3) : EventPayload {
        init {
            require(value.isFinite()) { "Event Vector3 payload must be finite." }
        }
    }

    @Serializable
    @SerialName("object")
    data class ObjectValue(val value: ObjectRef) : EventPayload

    @Serializable
    @SerialName("component")
    data class ComponentValue(val value: ComponentRef) : EventPayload

    @Serializable
    @SerialName("list")
    data class ListValue(val values: List<EventPayload>) : EventPayload

    companion object {
        fun fromRuntimeValue(value: Any?): EventPayload = when (value) {
            null -> None
            is EventPayload -> value
            is Boolean -> Bool(value)
            is Byte -> Number(value.toDouble())
            is Short -> Number(value.toDouble())
            is Int -> Number(value.toDouble())
            is Long -> Number(value.toDouble())
            is Float -> Number(value.toDouble())
            is Double -> Number(value)
            is String -> Text(value)
            is Vector3 -> Vector3Value(value)
            is ObjectRef -> ObjectValue(value)
            is ComponentRef -> ComponentValue(value)
            is List<*> -> ListValue(value.map(::fromRuntimeValue))
            else -> throw IllegalArgumentException(
                "Unsupported event payload type: ${value::class.qualifiedName ?: value::class.java.name}",
            )
        }
    }
}

/**
 * Destination of an event. The constructor enforces a single unambiguous
 * addressing mode, similar to explicit object/scene targets in major engines.
 */
@Serializable
data class EventAddress(
    val scope: EventScope,
    val graphId: String? = null,
    val objectRef: ObjectRef? = null,
    val sceneId: String? = null,
) {
    init {
        when (scope) {
            EventScope.LOCAL_GRAPH -> {
                require(!graphId.isNullOrBlank()) { "LOCAL_GRAPH events require graphId." }
                require(objectRef == null && sceneId == null) { "LOCAL_GRAPH accepts only graphId." }
            }
            EventScope.OBJECT -> {
                require(objectRef != null) { "OBJECT events require objectRef." }
                require(graphId == null && sceneId == null) { "OBJECT accepts only objectRef." }
            }
            EventScope.SCENE -> {
                require(!sceneId.isNullOrBlank()) { "SCENE events require sceneId." }
                require(graphId == null && objectRef == null) { "SCENE accepts only sceneId." }
            }
            EventScope.GLOBAL -> {
                require(graphId == null && objectRef == null && sceneId == null) {
                    "GLOBAL events cannot have a target address."
                }
            }
        }
    }

    companion object {
        fun localGraph(graphId: String) = EventAddress(EventScope.LOCAL_GRAPH, graphId = graphId)
        fun objectTarget(objectRef: ObjectRef) = EventAddress(EventScope.OBJECT, objectRef = objectRef)
        fun scene(sceneId: String) = EventAddress(EventScope.SCENE, sceneId = sceneId)
        fun global() = EventAddress(EventScope.GLOBAL)
    }
}

@Serializable
data class EngineEvent(
    val name: String,
    val address: EventAddress,
    val payload: EventPayload = EventPayload.None,
    val sender: ObjectRef? = null,
) {
    init {
        require(name.isNotBlank()) { "Event name cannot be blank." }
        require(name.length <= MAX_EVENT_NAME_LENGTH) {
            "Event name cannot exceed $MAX_EVENT_NAME_LENGTH characters."
        }
    }

    companion object {
        const val MAX_EVENT_NAME_LENGTH = 128

        fun local(
            name: String,
            graphId: String,
            payload: EventPayload = EventPayload.None,
            sender: ObjectRef? = null,
        ) = EngineEvent(name, EventAddress.localGraph(graphId), payload, sender)

        fun objectTarget(
            name: String,
            target: ObjectRef,
            payload: EventPayload = EventPayload.None,
            sender: ObjectRef? = null,
        ) = EngineEvent(name, EventAddress.objectTarget(target), payload, sender)

        fun scene(
            name: String,
            sceneId: String,
            payload: EventPayload = EventPayload.None,
            sender: ObjectRef? = null,
        ) = EngineEvent(name, EventAddress.scene(sceneId), payload, sender)

        fun global(
            name: String,
            payload: EventPayload = EventPayload.None,
            sender: ObjectRef? = null,
        ) = EngineEvent(name, EventAddress.global(), payload, sender)
    }
}

/**
 * Per-execution context. It is intentionally immutable so nested events cannot
 * accidentally overwrite the target of an execution that is already running.
 */
data class ExecutionContext(
    val executionId: Long,
    val graphId: String? = null,
    val sceneId: String? = null,
    val sourceObject: ObjectRef? = null,
    val targetObject: ObjectRef? = null,
    val senderObject: ObjectRef? = null,
    val frameIndex: Long? = null,
    val event: EngineEvent? = null,
) {
    init {
        require(executionId >= 0L) { "executionId cannot be negative." }
        require(frameIndex == null || frameIndex >= 0L) { "frameIndex cannot be negative." }
    }

    fun withEvent(value: EngineEvent): ExecutionContext = copy(
        graphId = value.address.graphId ?: graphId,
        sceneId = value.address.sceneId ?: sceneId,
        targetObject = value.address.objectRef ?: targetObject,
        senderObject = value.sender ?: senderObject,
        event = value,
    )
}
