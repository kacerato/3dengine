package com.mobilegamestudio.core.model

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

/**
 * Storage scope for shared runtime attributes.
 *
 * The scope is part of the address, so a value called `locked` on one object
 * can never collide with a scene/session/global value with the same name.
 */
@Serializable
enum class AttributeScope {
    OBJECT,
    SCENE,
    SESSION,
    GLOBAL,
    SAVE_GAME,
}

/** Stable address of one shared attribute. */
@Serializable
data class AttributeAddress(
    val name: String,
    val scope: AttributeScope,
    val objectRef: ObjectRef? = null,
    val sceneId: String? = null,
) {
    init {
        require(name.isNotBlank()) { "Attribute name cannot be blank." }
        require(name.length <= MAX_ATTRIBUTE_NAME_LENGTH) {
            "Attribute name cannot exceed $MAX_ATTRIBUTE_NAME_LENGTH characters."
        }
        when (scope) {
            AttributeScope.OBJECT -> {
                require(objectRef != null) { "OBJECT attributes require objectRef." }
                require(sceneId == null) { "OBJECT attributes cannot carry sceneId." }
            }
            AttributeScope.SCENE -> {
                require(!sceneId.isNullOrBlank()) { "SCENE attributes require sceneId." }
                require(objectRef == null) { "SCENE attributes cannot carry objectRef." }
            }
            AttributeScope.SESSION,
            AttributeScope.GLOBAL,
            AttributeScope.SAVE_GAME,
            -> require(objectRef == null && sceneId == null) {
                "$scope attributes cannot carry an object or scene target."
            }
        }
    }

    companion object {
        const val MAX_ATTRIBUTE_NAME_LENGTH = 128

        fun objectValue(name: String, objectRef: ObjectRef) =
            AttributeAddress(name, AttributeScope.OBJECT, objectRef = objectRef)

        fun sceneValue(name: String, sceneId: String) =
            AttributeAddress(name, AttributeScope.SCENE, sceneId = sceneId)

        fun session(name: String) = AttributeAddress(name, AttributeScope.SESSION)
        fun global(name: String) = AttributeAddress(name, AttributeScope.GLOBAL)
        fun saveGame(name: String) = AttributeAddress(name, AttributeScope.SAVE_GAME)
    }
}

/**
 * Explicit value model shared by NoCode and all text scripting runtimes.
 *
 * There is deliberately no generic Any/String fallback. Unsupported values
 * fail at the boundary instead of being interpreted differently by Java, Lua,
 * Python or the visual runtime.
 */
@Serializable
sealed interface AttributeValue {
    @Serializable
    @SerialName("bool")
    data class Bool(val value: Boolean) : AttributeValue

    @Serializable
    @SerialName("number")
    data class Number(val value: Double) : AttributeValue {
        init {
            require(value.isFinite()) { "Attribute numeric value must be finite." }
        }
    }

    @Serializable
    @SerialName("text")
    data class Text(val value: String) : AttributeValue

    @Serializable
    @SerialName("vector3")
    data class Vector3Value(val value: Vector3) : AttributeValue {
        init {
            require(value.isFinite()) { "Attribute Vector3 value must be finite." }
        }
    }

    @Serializable
    @SerialName("object")
    data class ObjectValue(val value: ObjectRef) : AttributeValue

    @Serializable
    @SerialName("component")
    data class ComponentValue(val value: ComponentRef) : AttributeValue

    @Serializable
    @SerialName("list")
    data class ListValue(val values: List<AttributeValue>) : AttributeValue

    fun toEventPayload(): EventPayload = when (this) {
        is Bool -> EventPayload.Bool(value)
        is Number -> EventPayload.Number(value)
        is Text -> EventPayload.Text(value)
        is Vector3Value -> EventPayload.Vector3Value(value)
        is ObjectValue -> EventPayload.ObjectValue(value)
        is ComponentValue -> EventPayload.ComponentValue(value)
        is ListValue -> EventPayload.ListValue(values.map(AttributeValue::toEventPayload))
    }

    companion object {
        fun fromRuntimeValue(value: Any): AttributeValue = when (value) {
            is AttributeValue -> value
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
            is List<*> -> ListValue(
                value.map { item ->
                    requireNotNull(item) { "Attribute lists cannot contain null values." }
                    fromRuntimeValue(item)
                },
            )
            else -> throw IllegalArgumentException(
                "Unsupported attribute value type: ${value::class.qualifiedName ?: value::class.java.name}",
            )
        }
    }
}

/** One immutable mutation result, useful for events, undo and persistence. */
data class AttributeChange(
    val address: AttributeAddress,
    val previousValue: AttributeValue?,
    val newValue: AttributeValue?,
) {
    val changed: Boolean get() = previousValue != newValue
    val wasCreated: Boolean get() = previousValue == null && newValue != null
    val wasRemoved: Boolean get() = previousValue != null && newValue == null
}

/** Serializable snapshot used by save/recovery layers. */
@Serializable
data class AttributeSnapshot(
    val entries: Map<AttributeAddress, AttributeValue>,
)

/**
 * Thread-safe shared state store for Object/Scene/Session/Global/SaveGame data.
 *
 * Invariants:
 * - addresses are explicit and typed;
 * - writes are atomic;
 * - callers receive the exact before/after values;
 * - object/scene cleanup cannot accidentally remove another scope;
 * - restoring a snapshot replaces state atomically.
 */
class RuntimeAttributeStore(
    initial: AttributeSnapshot = AttributeSnapshot(emptyMap()),
) {
    private val lock = Any()
    private val values = LinkedHashMap<AttributeAddress, AttributeValue>(initial.entries)

    fun get(address: AttributeAddress): AttributeValue? = synchronized(lock) {
        values[address]
    }

    fun contains(address: AttributeAddress): Boolean = synchronized(lock) {
        values.containsKey(address)
    }

    fun set(address: AttributeAddress, value: AttributeValue): AttributeChange = synchronized(lock) {
        val previous = values[address]
        if (previous != value) values[address] = value
        AttributeChange(address, previous, value)
    }

    fun setRuntime(address: AttributeAddress, value: Any): AttributeChange =
        set(address, AttributeValue.fromRuntimeValue(value))

    fun remove(address: AttributeAddress): AttributeChange = synchronized(lock) {
        val previous = values.remove(address)
        AttributeChange(address, previous, null)
    }

    fun clearObject(objectRef: ObjectRef): List<AttributeChange> = clearMatching { address ->
        address.scope == AttributeScope.OBJECT && address.objectRef == objectRef
    }

    fun clearScene(sceneId: String): List<AttributeChange> {
        require(sceneId.isNotBlank()) { "sceneId cannot be blank." }
        return clearMatching { address ->
            address.scope == AttributeScope.SCENE && address.sceneId == sceneId
        }
    }

    fun clearSession(): List<AttributeChange> = clearMatching { address ->
        address.scope == AttributeScope.SESSION
    }

    /** Clears volatile scene/object/session state while keeping global/save data. */
    fun clearVolatile(): List<AttributeChange> = clearMatching { address ->
        address.scope == AttributeScope.OBJECT ||
            address.scope == AttributeScope.SCENE ||
            address.scope == AttributeScope.SESSION
    }

    fun snapshot(): AttributeSnapshot = synchronized(lock) {
        AttributeSnapshot(values.toMap())
    }

    fun snapshot(scope: AttributeScope): AttributeSnapshot = synchronized(lock) {
        AttributeSnapshot(values.filterKeys { it.scope == scope })
    }

    fun restore(snapshot: AttributeSnapshot) = synchronized(lock) {
        values.clear()
        values.putAll(snapshot.entries)
    }

    fun size(): Int = synchronized(lock) { values.size }

    private fun clearMatching(predicate: (AttributeAddress) -> Boolean): List<AttributeChange> =
        synchronized(lock) {
            val matching = values.entries.filter { (address, _) -> predicate(address) }
            matching.forEach { (address, _) -> values.remove(address) }
            matching.map { (address, value) -> AttributeChange(address, value, null) }
        }
}
