package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.EngineEvent
import com.mobilegamestudio.core.model.EventAddress
import com.mobilegamestudio.core.model.ExecutionContext
import com.mobilegamestudio.core.model.ObjectRef
import java.util.concurrent.atomic.AtomicLong

/** Identifies who owns a subscription so all listeners can be removed together. */
data class EventOwner(
    val value: String,
) {
    init {
        require(value.isNotBlank()) { "EventOwner cannot be blank." }
    }
}

data class EventSubscriptionToken internal constructor(
    val id: Long,
)

data class EventDispatchFailure(
    val subscriptionId: Long?,
    val message: String,
    val exceptionType: String? = null,
)

data class EventDispatchResult(
    val deliveredCount: Int,
    val failures: List<EventDispatchFailure> = emptyList(),
) {
    val succeeded: Boolean get() = failures.isEmpty()
}

fun interface EngineEventListener {
    fun onEvent(event: EngineEvent, context: ExecutionContext)
}

private data class EventSubscription(
    val token: EventSubscriptionToken,
    val owner: EventOwner,
    val eventName: String,
    val address: EventAddress,
    val once: Boolean,
    val listener: EngineEventListener,
)

/**
 * Runtime event router shared by visual scripting and text scripting.
 *
 * Design invariants:
 * - delivery order is registration order and therefore deterministic;
 * - an event has exactly one scope/address;
 * - listeners are removable by owner when a graph/object/runtime is destroyed;
 * - listener exceptions are isolated and reported instead of closing the app;
 * - nested event storms are capped, avoiding accidental infinite recursion.
 */
class EngineEventBus(
    private val maxDispatchDepth: Int = DEFAULT_MAX_DISPATCH_DEPTH,
) {
    private val lock = Any()
    private val nextSubscriptionId = AtomicLong(1L)
    private val nextExecutionId = AtomicLong(1L)
    private val subscriptions = mutableListOf<EventSubscription>()
    private val dispatchDepth = ThreadLocal.withInitial { 0 }

    init {
        require(maxDispatchDepth > 0) { "maxDispatchDepth must be positive." }
    }

    fun subscribeLocalGraph(
        owner: EventOwner,
        graphId: String,
        eventName: String,
        once: Boolean = false,
        listener: EngineEventListener,
    ): EventSubscriptionToken = subscribe(
        owner = owner,
        eventName = eventName,
        address = EventAddress.localGraph(graphId),
        once = once,
        listener = listener,
    )

    fun subscribeObject(
        owner: EventOwner,
        objectRef: ObjectRef,
        eventName: String,
        once: Boolean = false,
        listener: EngineEventListener,
    ): EventSubscriptionToken = subscribe(
        owner = owner,
        eventName = eventName,
        address = EventAddress.objectTarget(objectRef),
        once = once,
        listener = listener,
    )

    fun subscribeScene(
        owner: EventOwner,
        sceneId: String,
        eventName: String,
        once: Boolean = false,
        listener: EngineEventListener,
    ): EventSubscriptionToken = subscribe(
        owner = owner,
        eventName = eventName,
        address = EventAddress.scene(sceneId),
        once = once,
        listener = listener,
    )

    fun subscribeGlobal(
        owner: EventOwner,
        eventName: String,
        once: Boolean = false,
        listener: EngineEventListener,
    ): EventSubscriptionToken = subscribe(
        owner = owner,
        eventName = eventName,
        address = EventAddress.global(),
        once = once,
        listener = listener,
    )

    fun unsubscribe(token: EventSubscriptionToken): Boolean = synchronized(lock) {
        subscriptions.removeAll { it.token == token }
    }

    fun unsubscribeOwner(owner: EventOwner): Int = synchronized(lock) {
        val before = subscriptions.size
        subscriptions.removeAll { it.owner == owner }
        before - subscriptions.size
    }

    fun clear() = synchronized(lock) {
        subscriptions.clear()
    }

    fun subscriptionCount(): Int = synchronized(lock) { subscriptions.size }

    fun dispatch(
        event: EngineEvent,
        baseContext: ExecutionContext? = null,
    ): EventDispatchResult {
        val currentDepth = dispatchDepth.get()
        if (currentDepth >= maxDispatchDepth) {
            return EventDispatchResult(
                deliveredCount = 0,
                failures = listOf(
                    EventDispatchFailure(
                        subscriptionId = null,
                        message = "Limite de eventos encadeados excedido ($maxDispatchDepth).",
                    ),
                ),
            )
        }

        dispatchDepth.set(currentDepth + 1)
        try {
            val matching = synchronized(lock) {
                subscriptions.filter { subscription ->
                    subscription.eventName == event.name && subscription.address == event.address
                }
            }
            if (matching.isEmpty()) return EventDispatchResult(deliveredCount = 0)

            val executionId = baseContext?.executionId ?: nextExecutionId.getAndIncrement()
            val context = (baseContext ?: ExecutionContext(executionId = executionId)).withEvent(event)
            val failures = mutableListOf<EventDispatchFailure>()
            var delivered = 0

            matching.forEach { subscription ->
                try {
                    subscription.listener.onEvent(event, context)
                    delivered += 1
                } catch (exception: Exception) {
                    failures += EventDispatchFailure(
                        subscriptionId = subscription.token.id,
                        message = exception.message ?: "Listener de evento falhou sem mensagem.",
                        exceptionType = exception::class.java.name,
                    )
                } finally {
                    if (subscription.once) unsubscribe(subscription.token)
                }
            }
            return EventDispatchResult(deliveredCount = delivered, failures = failures)
        } finally {
            dispatchDepth.set(currentDepth)
        }
    }

    private fun subscribe(
        owner: EventOwner,
        eventName: String,
        address: EventAddress,
        once: Boolean,
        listener: EngineEventListener,
    ): EventSubscriptionToken {
        require(eventName.isNotBlank()) { "Event subscription name cannot be blank." }
        require(eventName.length <= EngineEvent.MAX_EVENT_NAME_LENGTH) {
            "Event subscription name cannot exceed ${EngineEvent.MAX_EVENT_NAME_LENGTH} characters."
        }
        val token = EventSubscriptionToken(nextSubscriptionId.getAndIncrement())
        synchronized(lock) {
            subscriptions += EventSubscription(token, owner, eventName, address, once, listener)
        }
        return token
    }

    companion object {
        const val DEFAULT_MAX_DISPATCH_DEPTH = 32
    }
}
