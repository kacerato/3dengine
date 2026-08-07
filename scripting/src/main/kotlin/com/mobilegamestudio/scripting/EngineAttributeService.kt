package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.AttributeAddress
import com.mobilegamestudio.core.model.AttributeChange
import com.mobilegamestudio.core.model.AttributeScope
import com.mobilegamestudio.core.model.AttributeValue
import com.mobilegamestudio.core.model.EngineEvent
import com.mobilegamestudio.core.model.EventPayload
import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.RuntimeAttributeStore

/** Result of one state mutation and its optional runtime notification. */
data class AttributeDispatchResult(
    val change: AttributeChange,
    val eventResult: EventDispatchResult? = null,
) {
    val changed: Boolean get() = change.changed
    val notificationSucceeded: Boolean get() = eventResult?.succeeded ?: true
}

/**
 * Shared runtime state gateway used by NoCode and text scripting.
 *
 * Mutations are committed to RuntimeAttributeStore first and only semantic
 * changes emit an event. Listener failures are reported but never roll back a
 * valid state write, avoiding half-applied state across different runtimes.
 */
class EngineAttributeService(
    val store: RuntimeAttributeStore = RuntimeAttributeStore(),
    private val eventBus: EngineEventBus,
) {
    fun get(address: AttributeAddress): AttributeValue? = store.get(address)

    fun set(
        address: AttributeAddress,
        value: AttributeValue,
        sender: ObjectRef? = null,
    ): AttributeDispatchResult {
        val change = store.set(address, value)
        return dispatchIfChanged(change, sender)
    }

    fun setRuntime(
        address: AttributeAddress,
        value: Any,
        sender: ObjectRef? = null,
    ): AttributeDispatchResult = set(address, AttributeValue.fromRuntimeValue(value), sender)

    fun remove(
        address: AttributeAddress,
        sender: ObjectRef? = null,
    ): AttributeDispatchResult {
        val change = store.remove(address)
        return dispatchIfChanged(change, sender)
    }

    fun clearObject(
        objectRef: ObjectRef,
        sender: ObjectRef? = null,
    ): List<AttributeDispatchResult> = store.clearObject(objectRef).map { change ->
        dispatchIfChanged(change, sender)
    }

    fun clearScene(
        sceneId: String,
        sender: ObjectRef? = null,
    ): List<AttributeDispatchResult> = store.clearScene(sceneId).map { change ->
        dispatchIfChanged(change, sender)
    }

    fun clearSession(sender: ObjectRef? = null): List<AttributeDispatchResult> =
        store.clearSession().map { change -> dispatchIfChanged(change, sender) }

    fun eventName(address: AttributeAddress): String =
        "attribute.changed.${address.scope.name.lowercase()}.${address.name}"

    private fun dispatchIfChanged(
        change: AttributeChange,
        sender: ObjectRef?,
    ): AttributeDispatchResult {
        if (!change.changed) return AttributeDispatchResult(change)

        val payload = change.newValue?.toEventPayload() ?: EventPayload.None
        val name = eventName(change.address)
        val event = when (change.address.scope) {
            AttributeScope.OBJECT -> EngineEvent.objectTarget(
                name = name,
                target = requireNotNull(change.address.objectRef),
                payload = payload,
                sender = sender,
            )
            AttributeScope.SCENE -> EngineEvent.scene(
                name = name,
                sceneId = requireNotNull(change.address.sceneId),
                payload = payload,
                sender = sender,
            )
            AttributeScope.SESSION,
            AttributeScope.GLOBAL,
            AttributeScope.SAVE_GAME,
            -> EngineEvent.global(
                name = name,
                payload = payload,
                sender = sender,
            )
        }
        return AttributeDispatchResult(change, eventBus.dispatch(event))
    }
}
