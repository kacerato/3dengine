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

data class NoCodeRuntimeCloseReport(
    val removedSubscriptions: Int,
    val removedVolatileAttributes: Int,
    val removedInteractionTargets: Int,
    val removedProximityWatchers: Int = 0,
)

/**
 * Owns mutable scripting state for exactly one Play session.
 * Nothing here is process-global: Stop Play deterministically tears it down.
 */
class NoCodeRuntimeSession(
    val eventBus: EngineEventBus = EngineEventBus(),
    val flowRuntime: NoCodeFlowRuntime = NoCodeFlowRuntime(),
    val attributeStore: RuntimeAttributeStore = RuntimeAttributeStore(),
    interactionConfig: InteractionResolverConfig = InteractionResolverConfig(),
    physicsQueryHost: PhysicsQueryHost? = null,
    componentQueryHost: ComponentQueryHost? = null,
    spatialQueryHost: ObjectSpatialQueryHost? = null,
) : AutoCloseable {
    val events = NoCodeEventRuntime(eventBus)
    val graphEvents = NoCodeGraphEventBinder(eventBus, events)

    val attributes = EngineAttributeService(attributeStore, eventBus)
    val attributeRuntime = NoCodeAttributeRuntime(attributes)
    val graphAttributes = NoCodeGraphAttributeBinder(eventBus, attributeRuntime)

    val physicsRuntime: NoCodePhysicsRuntime? = physicsQueryHost?.let(::NoCodePhysicsRuntime)

    val componentResolver: ComponentResolver? = componentQueryHost?.let(::ComponentResolver)
    val componentRuntime: NoCodeComponentRuntime? = componentResolver?.let(::NoCodeComponentRuntime)

    val distanceRuntime: ObjectDistanceRuntime? = spatialQueryHost?.let(::ObjectDistanceRuntime)
    val spatialRuntime: NoCodeSpatialRuntime? = distanceRuntime?.let(::NoCodeSpatialRuntime)
    val graphSpatial: NoCodeGraphSpatialBinder? = spatialRuntime?.let(::NoCodeGraphSpatialBinder)

    private val lock = Any()
    private val nextExecutionId = AtomicLong(1L)
    private val targetResolver = InteractionTargetResolver(interactionConfig)
    private val interactionTargets = LinkedHashMap<ObjectRef, InteractionTarget>()
    private var closed = false
    private var closeReport: NoCodeRuntimeCloseReport? = null

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
            physicsRuntime = physicsRuntime,
            componentRuntime = componentRuntime,
            spatialRuntime = spatialRuntime,
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

    fun dispatchEvent(
        name: String,
        address: EventAddress,
        payload: EventPayload = EventPayload.None,
        sender: ObjectRef? = null,
        context: ExecutionContext? = null,
    ): EventDispatchResult {
        checkOpen()
        return eventBus.dispatch(
            EngineEvent(name = name, address = address, payload = payload, sender = sender),
            context,
        )
    }

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

    fun shutdown(): NoCodeRuntimeCloseReport = synchronized(lock) {
        closeReport?.let { return it }

        val subscriptions = eventBus.subscriptionCount()
        val targets = interactionTargets.size
        val volatileChanges = attributeStore.clearVolatile().size
        val proximityWatchers = spatialRuntime?.watchers?.clear() ?: 0
        interactionTargets.clear()
        flowRuntime.clear()
        eventBus.clear()
        closed = true

        NoCodeRuntimeCloseReport(
            removedSubscriptions = subscriptions,
            removedVolatileAttributes = volatileChanges,
            removedInteractionTargets = targets,
            removedProximityWatchers = proximityWatchers,
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
