package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.EngineEvent
import com.mobilegamestudio.core.model.EventAddress
import com.mobilegamestudio.core.model.EventPayload
import com.mobilegamestudio.core.model.ExecutionContext
import com.mobilegamestudio.core.model.InteractionCandidate
import com.mobilegamestudio.core.model.InteractionResolution
import com.mobilegamestudio.core.model.InteractionResolverConfig
import com.mobilegamestudio.core.model.InteractionTarget
import com.mobilegamestudio.core.model.InteractionTargetResolver
import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.RuntimeAttributeStore
import java.util.concurrent.atomic.AtomicLong

/** Cleanup report used by tests, diagnostics and the future Play-session profiler. */
data class NoCodeRuntimeCloseReport(
    val removedSubscriptions: Int,
    val removedVolatileAttributes: Int,
    val removedInteractionTargets: Int,
)

/**
 * Owns runtime state for exactly one Play session.
 *
 * This is deliberately not a singleton. Stateful flow nodes, event listeners,
 * Attributes and interaction focus must die together when Play stops, otherwise
 * the editor eventually accumulates ghost listeners and stale targets.
 */
class NoCodeRuntimeSession(
    val eventBus: EngineEventBus = EngineEventBus(),
    val flowRuntime: NoCodeFlowRuntime = NoCodeFlowRuntime(),
    val attributeStore: RuntimeAttributeStore = RuntimeAttributeStore(),
    interactionConfig: InteractionResolverConfig = InteractionResolverConfig(),
) : AutoCloseable {
    val events: NoCodeEventRuntime = NoCodeEventRuntime(eventBus)
    val graphEvents: NoCodeGraphEventBinder = NoCodeGraphEventBinder(eventBus, events)

    val attributes: EngineAttributeService = EngineAttributeService(
        store = attributeStore,
        eventBus = eventBus,
    )
    val attributeRuntime: NoCodeAttributeRuntime = NoCodeAttributeRuntime(attributes)
    val graphAttributes: NoCodeGraphAttributeBinder = NoCodeGraphAttributeBinder(
        eventBus = eventBus,
        attributeRuntime = attributeRuntime,
    )

    private val lock = Any()
    private val nextExecutionId = AtomicLong(1L)
    private val targetResolver = InteractionTargetResolver(interactionConfig)
    private val interactionTargets = LinkedHashMap<ObjectRef, InteractionTarget>()
    private var closed = false
    private var closeReport: NoCodeRuntimeCloseReport? = null

    /**
     * Creates an executor facade that shares this Play session's flow state,
     * EventBus, Attributes and monotonically increasing execution IDs.
     *
     * When sourceObject is an interactor/player, every new execution also carries
     * that interactor's currently resolved target. A button press therefore uses
     * the exact same target chosen by the ray/interaction resolver instead of
     * performing another nearest-object search in the middle of the graph.
     */
    fun graphExecutor(
        host: LogicSceneHost,
        maxExecutedNodes: Int = 128,
        onLegacyEmitEvent: (String, Any?) -> LogicExecutionResult = { _, _ ->
            LogicExecutionResult.Success
        },
        sceneId: String? = null,
        sourceObject: ObjectRef? = null,
        graphInstanceId: String? = null,
    ): VisualGraphExecutor {
        checkOpen()
        require(graphInstanceId == null || graphInstanceId.isNotBlank()) {
            "graphInstanceId cannot be blank."
        }
        return VisualGraphExecutor(
            host = host,
            maxExecutedNodes = maxExecutedNodes,
            onEmitEvent = onLegacyEmitEvent,
            flowRuntime = flowRuntime,
            eventRuntime = events,
            attributeRuntime = attributeRuntime,
            executionContextFactory = { graph ->
                ExecutionContext(
                    executionId = nextExecutionId.getAndIncrement(),
                    graphId = graphInstanceId ?: graph.graphId,
                    sceneId = sceneId,
                    sourceObject = sourceObject,
                    targetObject = sourceObject?.let(::currentInteractionObject),
                )
            },
            graphInstanceId = graphInstanceId,
        )
    }

    /** Builds the same context used by script/Engine API bridges for one interactor. */
    fun executionContextFor(
        interactor: ObjectRef,
        graphId: String? = null,
        sceneId: String? = null,
    ): ExecutionContext {
        checkOpen()
        return ExecutionContext(
            executionId = nextExecutionId.getAndIncrement(),
            graphId = graphId,
            sceneId = sceneId,
            sourceObject = interactor,
            targetObject = currentInteractionObject(interactor),
        )
    }

    /**
     * Resolves one stable interaction target per interactor/player.
     * Two players (or two editor preview cursors) never overwrite each other.
     * Target acquired/lost notifications use object-scoped EngineEvents.
     */
    fun resolveInteraction(
        interactor: ObjectRef,
        candidates: List<InteractionCandidate>,
        sceneId: String? = null,
    ): InteractionResolution {
        val previous: ObjectRef?
        val resolution: InteractionResolution
        synchronized(lock) {
            checkOpenLocked()
            previous = interactionTargets[interactor]?.objectRef
            resolution = targetResolver.resolve(candidates, previous)
            if (resolution.target == null) {
                interactionTargets.remove(interactor)
            } else {
                interactionTargets[interactor] = resolution.target
            }
        }

        if (resolution.changed) {
            publishInteractionChange(
                interactor = interactor,
                previous = previous,
                current = resolution.target?.objectRef,
                sceneId = sceneId,
            )
        }
        return resolution
    }

    fun interactionTarget(interactor: ObjectRef): InteractionTarget? = synchronized(lock) {
        checkOpenLocked()
        interactionTargets[interactor]
    }

    fun clearInteractionTarget(
        interactor: ObjectRef,
        sceneId: String? = null,
    ): InteractionTarget? {
        val previous = interactionTarget(interactor)
        if (previous != null) resolveInteraction(interactor, emptyList(), sceneId)
        return previous
    }

    fun clearAllInteractionTargets(): Int = synchronized(lock) {
        checkOpenLocked()
        val count = interactionTargets.size
        interactionTargets.clear()
        count
    }

    /** Typed custom-event entry point shared by NoCode and future script bridges. */
    fun dispatchEvent(
        name: String,
        address: EventAddress,
        payload: EventPayload = EventPayload.None,
        sender: ObjectRef? = null,
        context: ExecutionContext? = null,
    ): EventDispatchResult {
        checkOpen()
        return eventBus.dispatch(
            EngineEvent(
                name = name,
                address = address,
                payload = payload,
                sender = sender,
            ),
            context,
        )
    }

    /** Strict convenience boundary for Java/Lua/Python values. */
    fun dispatchRuntimeEvent(
        name: String,
        address: EventAddress,
        value: Any? = null,
        sender: ObjectRef? = null,
        context: ExecutionContext? = null,
    ): EventDispatchResult = dispatchEvent(
        name = name,
        address = address,
        payload = EventPayload.fromRuntimeValue(value),
        sender = sender,
        context = context,
    )

    fun isClosed(): Boolean = synchronized(lock) { closed }

    /**
     * Idempotent explicit shutdown. The editor should call this on Stop Play.
     * Global/save-game Attributes survive normal scene changes, but a Play
     * session object itself does not outlive Stop, so all in-memory data is then
     * discarded with the session instance.
     */
    fun shutdown(): NoCodeRuntimeCloseReport = synchronized(lock) {
        closeReport?.let { return it }

        val subscriptions = eventBus.subscriptionCount()
        val targets = interactionTargets.size
        val volatileChanges = attributeStore.clearVolatile().size
        interactionTargets.clear()
        flowRuntime.clear()
        eventBus.clear()
        closed = true

        NoCodeRuntimeCloseReport(
            removedSubscriptions = subscriptions,
            removedVolatileAttributes = volatileChanges,
            removedInteractionTargets = targets,
        ).also { report -> closeReport = report }
    }

    override fun close() {
        shutdown()
    }

    private fun currentInteractionObject(interactor: ObjectRef): ObjectRef? = synchronized(lock) {
        checkOpenLocked()
        interactionTargets[interactor]?.objectRef
    }

    private fun publishInteractionChange(
        interactor: ObjectRef,
        previous: ObjectRef?,
        current: ObjectRef?,
        sceneId: String?,
    ) {
        previous?.let { objectRef ->
            dispatchEvent(
                name = EVENT_TARGET_LOST,
                address = EventAddress.objectTarget(objectRef),
                payload = EventPayload.ObjectValue(interactor),
                sender = interactor,
            )
        }
        current?.let { objectRef ->
            dispatchEvent(
                name = EVENT_TARGET_ACQUIRED,
                address = EventAddress.objectTarget(objectRef),
                payload = EventPayload.ObjectValue(interactor),
                sender = interactor,
            )
        }
        sceneId?.let { id ->
            dispatchEvent(
                name = EVENT_TARGET_CHANGED,
                address = EventAddress.scene(id),
                payload = current?.let(EventPayload::ObjectValue) ?: EventPayload.None,
                sender = interactor,
            )
        }
    }

    private fun checkOpen() = synchronized(lock) { checkOpenLocked() }

    private fun checkOpenLocked() {
        check(!closed) { "NoCodeRuntimeSession is already closed." }
    }

    companion object {
        const val EVENT_TARGET_ACQUIRED = "interaction.target.acquired"
        const val EVENT_TARGET_LOST = "interaction.target.lost"
        const val EVENT_TARGET_CHANGED = "interaction.target.changed"
    }
}
