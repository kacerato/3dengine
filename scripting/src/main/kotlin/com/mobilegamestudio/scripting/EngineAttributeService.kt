package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.AttributeAddress
import com.mobilegamestudio.core.model.AttributeChange
import com.mobilegamestudio.core.model.AttributeScope
import com.mobilegamestudio.core.model.AttributeValue
import com.mobilegamestudio.core.model.EngineEvent
import com.mobilegamestudio.core.model.EventAddress
import com.mobilegamestudio.core.model.EventPayload
import com.mobilegamestudio.core.model.ExecutionContext
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
        context: ExecutionContext? = null,
    ): AttributeDispatchResult {
        val change = store.set(address, value)
        return dispatchIfChanged(change, sender, context)
    }

    fun setRuntime(
        address: AttributeAddress,
        value: Any,
        sender: ObjectRef? = null,
        context: ExecutionContext? = null,
    ): AttributeDispatchResult = set(
        address = address,
        value = AttributeValue.fromRuntimeValue(value),
        sender = sender,
        context = context,
    )

    fun remove(
        address: AttributeAddress,
        sender: ObjectRef? = null,
        context: ExecutionContext? = null,
    ): AttributeDispatchResult {
        val change = store.remove(address)
        return dispatchIfChanged(change, sender, context)
    }

    fun clearObject(
        objectRef: ObjectRef,
        sender: ObjectRef? = null,
        context: ExecutionContext? = null,
    ): List<AttributeDispatchResult> = store.clearObject(objectRef).map { change ->
        dispatchIfChanged(change, sender, context)
    }

    fun clearScene(
        sceneId: String,
        sender: ObjectRef? = null,
        context: ExecutionContext? = null,
    ): List<AttributeDispatchResult> = store.clearScene(sceneId).map { change ->
        dispatchIfChanged(change, sender, context)
    }

    fun clearSession(
        sender: ObjectRef? = null,
        context: ExecutionContext? = null,
    ): List<AttributeDispatchResult> = store.clearSession().map { change ->
        dispatchIfChanged(change, sender, context)
    }

    fun eventName(address: AttributeAddress): String =
        "attribute.changed.${address.scope.name.lowercase()}.${address.name}"

    /** Canonical EventBus address for an Attribute change watcher. */
    fun eventAddress(address: AttributeAddress): EventAddress = when (address.scope) {
        AttributeScope.OBJECT -> EventAddress.objectTarget(requireNotNull(address.objectRef))
        AttributeScope.SCENE -> EventAddress.scene(requireNotNull(address.sceneId))
        AttributeScope.SESSION,
        AttributeScope.GLOBAL,
        AttributeScope.SAVE_GAME,
        -> EventAddress.global()
    }

    fun changeEvent(
        change: AttributeChange,
        sender: ObjectRef? = null,
    ): EngineEvent = EngineEvent(
        name = eventName(change.address),
        address = eventAddress(change.address),
        payload = change.newValue?.toEventPayload() ?: EventPayload.None,
        sender = sender,
    )

    private fun dispatchIfChanged(
        change: AttributeChange,
        sender: ObjectRef?,
        context: ExecutionContext?,
    ): AttributeDispatchResult {
        if (!change.changed) return AttributeDispatchResult(change)
        return AttributeDispatchResult(
            change = change,
            eventResult = eventBus.dispatch(changeEvent(change, sender), context),
        )
    }
}
