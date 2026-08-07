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
                )
            },
            graphInstanceId = graphInstanceId,
        )
    }

    /**
     * Resolves one stable interaction target per interactor/player.
     * Two players (or two editor preview cursors) never overwrite each other.
     */
    fun resolveInteraction(
        interactor: ObjectRef,
        candidates: List<InteractionCandidate>,
    ): InteractionResolution = synchronized(lock) {
        checkOpenLocked()
        val previous = interactionTargets[interactor]?.objectRef
        val resolution = targetResolver.resolve(candidates, previous)
        if (resolution.target == null) {
            interactionTargets.remove(interactor)
        } else {
            interactionTargets[interactor] = resolution.target
        }
        resolution
    }

    fun interactionTarget(interactor: ObjectRef): InteractionTarget? = synchronized(lock) {
        checkOpenLocked()
        interactionTargets[interactor]
    }

    fun clearInteractionTarget(interactor: ObjectRef): InteractionTarget? = synchronized(lock) {
        checkOpenLocked()
        interactionTargets.remove(interactor)
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

    private fun checkOpen() = synchronized(lock) { checkOpenLocked() }

    private fun checkOpenLocked() {
        check(!closed) { "NoCodeRuntimeSession is already closed." }
    }
}
