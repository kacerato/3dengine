package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.EventAddress
import com.mobilegamestudio.core.model.EventPayload
import com.mobilegamestudio.core.model.NoCodeNodeRegistry
import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.VisualGraphDocument

data class NoCodeGraphRuntimeSpec(
    val runtimeGraphId: String,
    val graph: VisualGraphDocument,
    val ownerObject: ObjectRef? = null,
    val sceneId: String? = null,
) {
    init {
        require(runtimeGraphId.isNotBlank()) { "runtimeGraphId cannot be blank." }
    }
}

data class NoCodePlayStartIssue(
    val runtimeGraphId: String,
    val message: String,
)

data class NoCodePlayStartResult(
    val started: Boolean,
    val instanceCount: Int,
    val issues: List<NoCodePlayStartIssue> = emptyList(),
)

data class NoCodePlayExecutionFailure(
    val runtimeGraphId: String,
    val diagnostic: ScriptDiagnostic,
)

data class NoCodePlayExecutionReport(
    val attemptedInstances: Int,
    val failures: List<NoCodePlayExecutionFailure> = emptyList(),
) {
    val succeeded: Boolean get() = failures.isEmpty()
}

data class NoCodeSpatialTickFailure(
    val runtimeGraphId: String,
    val nodeId: String,
    val message: String,
)

data class NoCodeSpatialTickReport(
    val evaluatedWatchers: Int,
    val emittedTransitions: Int,
    val executionFailures: List<NoCodePlayExecutionFailure> = emptyList(),
    val queryFailures: List<NoCodeSpatialTickFailure> = emptyList(),
) {
    val succeeded: Boolean get() = executionFailures.isEmpty() && queryFailures.isEmpty()
}

private data class ActiveGraphInstance(
    val spec: NoCodeGraphRuntimeSpec,
    val executor: VisualGraphExecutor,
    val eventBinding: NoCodeGraphBindingResult,
    val attributeBinding: NoCodeAttributeBindingResult,
    val spatialBinding: NoCodeSpatialBindingResult? = null,
)

/**
 * Play-mode owner for concrete graph instances.
 * Startup remains transactional: a bad binding prevents partial publication.
 */
class NoCodePlayRuntime(
    private val host: LogicSceneHost,
    val session: NoCodeRuntimeSession = NoCodeRuntimeSession(),
    private val maxExecutedNodes: Int = 128,
    private val onLegacyEmitEvent: (String, Any?) -> LogicExecutionResult = { _, _ ->
        LogicExecutionResult.Success
    },
) : AutoCloseable {
    private val lock = Any()
    private val instances = LinkedHashMap<String, ActiveGraphInstance>()
    private var started = false
    private var closed = false

    fun start(specs: List<NoCodeGraphRuntimeSpec>): NoCodePlayStartResult = synchronized(lock) {
        checkOpenLocked()
        check(!started) { "NoCodePlayRuntime.start() can only be called once." }

        val issues = mutableListOf<NoCodePlayStartIssue>()
        val duplicateIds = specs.groupingBy(NoCodeGraphRuntimeSpec::runtimeGraphId)
            .eachCount()
            .filterValues { it > 1 }
            .keys
        duplicateIds.forEach { id ->
            issues += NoCodePlayStartIssue(id, "runtimeGraphId duplicado na sessão de Play.")
        }

        specs.forEach { spec ->
            val errors = spec.graph.let(com.mobilegamestudio.core.model.VisualGraphValidator::validate)
            errors.forEach { message -> issues += NoCodePlayStartIssue(spec.runtimeGraphId, message) }
            if (graphRequiresSpatialRuntime(spec.graph) && session.graphSpatial == null) {
                issues += NoCodePlayStartIssue(
                    spec.runtimeGraphId,
                    "On Objects Distance exige ObjectSpatialQueryHost na sessão de Play.",
                )
            }
        }
        if (issues.isNotEmpty()) {
            return NoCodePlayStartResult(started = false, instanceCount = 0, issues = issues)
        }

        val provisional = mutableListOf<ActiveGraphInstance>()
        specs.forEach { spec ->
            val executor = session.graphExecutor(
                host = host,
                maxExecutedNodes = maxExecutedNodes,
                onLegacyEmitEvent = onLegacyEmitEvent,
                sceneId = spec.sceneId,
                sourceObject = spec.ownerObject,
                graphInstanceId = spec.runtimeGraphId,
            )
            val eventBinding = session.graphEvents.bind(
                graph = spec.graph,
                executor = executor,
                sceneId = spec.sceneId,
                ownerObject = spec.ownerObject,
                runtimeGraphId = spec.runtimeGraphId,
                instanceKey = spec.runtimeGraphId,
            )
            val attributeBinding = session.graphAttributes.bind(
                graph = spec.graph,
                executor = executor,
                sceneId = spec.sceneId,
                ownerObject = spec.ownerObject,
                runtimeGraphId = spec.runtimeGraphId,
                instanceKey = spec.runtimeGraphId,
            )
            val spatialBinding = session.graphSpatial?.bind(
                graph = spec.graph,
                graphInstanceId = spec.runtimeGraphId,
                sceneId = spec.sceneId,
                ownerObject = spec.ownerObject,
            )
            provisional += ActiveGraphInstance(
                spec = spec,
                executor = executor,
                eventBinding = eventBinding,
                attributeBinding = attributeBinding,
                spatialBinding = spatialBinding,
            )

            eventBinding.issues.forEach { issue ->
                issues += NoCodePlayStartIssue(
                    runtimeGraphId = spec.runtimeGraphId,
                    message = "${issue.nodeId}: ${issue.message}",
                )
            }
            attributeBinding.issues.forEach { issue ->
                issues += NoCodePlayStartIssue(
                    runtimeGraphId = spec.runtimeGraphId,
                    message = "${issue.nodeId}: ${issue.message}",
                )
            }
            spatialBinding?.issues?.forEach { issue ->
                issues += NoCodePlayStartIssue(
                    runtimeGraphId = spec.runtimeGraphId,
                    message = "${issue.nodeId}: ${issue.message}",
                )
            }
        }

        if (issues.isNotEmpty()) {
            provisional.forEach(::unbindInstance)
            return NoCodePlayStartResult(started = false, instanceCount = 0, issues = issues)
        }

        provisional.forEach { instance -> instances[instance.spec.runtimeGraphId] = instance }
        started = true
        NoCodePlayStartResult(started = true, instanceCount = instances.size)
    }

    fun emitButton(eventName: String): NoCodePlayExecutionReport = dispatchEach { instance ->
        instance.executor.emitButton(instance.spec.graph, eventName)
    }

    fun emitTouch(touchedObject: ObjectRef?): NoCodePlayExecutionReport = dispatchEach { instance ->
        instance.executor.emitTouch(instance.spec.graph, touchedObject?.objectId)
    }

    fun emitLegacyCustom(eventName: String, value: Any? = null): NoCodePlayExecutionReport =
        dispatchEach { instance -> instance.executor.emitCustom(instance.spec.graph, eventName, value) }

    /**
     * Called by the simulation update loop. It does not blindly execute graph
     * branches each frame: watcher hysteresis emits only ENTER/EXIT, plus STAY
     * when the author explicitly opts in.
     */
    fun tickSpatial(): NoCodeSpatialTickReport {
        val snapshot = synchronized(lock) {
            checkOpenLocked()
            check(started) { "NoCodePlayRuntime has not started." }
            instances.toMap()
        }
        val runtime = session.spatialRuntime
            ?: return NoCodeSpatialTickReport(evaluatedWatchers = 0, emittedTransitions = 0)
        val evaluations = runtime.watchers.evaluateAll()
        val executionFailures = mutableListOf<NoCodePlayExecutionFailure>()
        val queryFailures = mutableListOf<NoCodeSpatialTickFailure>()
        var emitted = 0

        evaluations.forEach { evaluation ->
            when (evaluation) {
                is ProximityEvaluation.Unavailable -> {
                    queryFailures += NoCodeSpatialTickFailure(
                        runtimeGraphId = evaluation.spec.key.graphInstanceId,
                        nodeId = evaluation.spec.key.nodeId,
                        message = "Posição indisponível para: " +
                            evaluation.missingObjects.joinToString { it.objectId },
                    )
                }
                is ProximityEvaluation.Available -> {
                    val update = evaluation.update
                    if (update.transition == ProximityTransition.NONE) return@forEach
                    val instance = snapshot[update.spec.key.graphInstanceId]
                    if (instance == null) {
                        queryFailures += NoCodeSpatialTickFailure(
                            runtimeGraphId = update.spec.key.graphInstanceId,
                            nodeId = update.spec.key.nodeId,
                            message = "Watcher aponta para uma instância de grafo que não está ativa.",
                        )
                        return@forEach
                    }
                    val event = NoCodeProximityEvent(
                        key = update.spec.key,
                        transition = update.transition,
                        distance = update.distance,
                        objectA = update.spec.objectA,
                        objectB = update.spec.objectB,
                    )
                    emitted += 1
                    when (val result = instance.executor.emitProximity(instance.spec.graph, event)) {
                        LogicExecutionResult.Success -> Unit
                        is LogicExecutionResult.Failure -> executionFailures += NoCodePlayExecutionFailure(
                            runtimeGraphId = instance.spec.runtimeGraphId,
                            diagnostic = result.diagnostic,
                        )
                    }
                }
            }
        }
        return NoCodeSpatialTickReport(
            evaluatedWatchers = evaluations.size,
            emittedTransitions = emitted,
            executionFailures = executionFailures,
            queryFailures = queryFailures,
        )
    }

    fun dispatchLocal(
        runtimeGraphId: String,
        eventName: String,
        payload: EventPayload = EventPayload.None,
        sender: ObjectRef? = null,
    ): EventDispatchResult {
        requireActive(runtimeGraphId)
        return session.dispatchEvent(
            name = eventName,
            address = EventAddress.localGraph(runtimeGraphId),
            payload = payload,
            sender = sender,
        )
    }

    fun dispatchObject(
        target: ObjectRef,
        eventName: String,
        payload: EventPayload = EventPayload.None,
        sender: ObjectRef? = null,
    ): EventDispatchResult = session.dispatchEvent(
        name = eventName,
        address = EventAddress.objectTarget(target),
        payload = payload,
        sender = sender,
    )

    fun dispatchScene(
        sceneId: String,
        eventName: String,
        payload: EventPayload = EventPayload.None,
        sender: ObjectRef? = null,
    ): EventDispatchResult = session.dispatchEvent(
        name = eventName,
        address = EventAddress.scene(sceneId),
        payload = payload,
        sender = sender,
    )

    fun dispatchGlobal(
        eventName: String,
        payload: EventPayload = EventPayload.None,
        sender: ObjectRef? = null,
    ): EventDispatchResult = session.dispatchEvent(
        name = eventName,
        address = EventAddress.global(),
        payload = payload,
        sender = sender,
    )

    fun instanceIds(): List<String> = synchronized(lock) { instances.keys.toList() }

    fun isStarted(): Boolean = synchronized(lock) { started }
    fun isClosed(): Boolean = synchronized(lock) { closed }

    fun shutdown(): NoCodeRuntimeCloseReport = synchronized(lock) {
        if (closed) return session.shutdown()
        instances.values.forEach(::unbindInstance)
        instances.clear()
        started = false
        closed = true
        session.shutdown()
    }

    override fun close() {
        shutdown()
    }

    private fun dispatchEach(
        operation: (ActiveGraphInstance) -> LogicExecutionResult,
    ): NoCodePlayExecutionReport {
        val snapshot = synchronized(lock) {
            checkOpenLocked()
            check(started) { "NoCodePlayRuntime has not started." }
            instances.values.toList()
        }
        val failures = mutableListOf<NoCodePlayExecutionFailure>()
        snapshot.forEach { instance ->
            when (val result = operation(instance)) {
                LogicExecutionResult.Success -> Unit
                is LogicExecutionResult.Failure -> failures += NoCodePlayExecutionFailure(
                    runtimeGraphId = instance.spec.runtimeGraphId,
                    diagnostic = result.diagnostic,
                )
            }
        }
        return NoCodePlayExecutionReport(snapshot.size, failures)
    }

    private fun unbindInstance(instance: ActiveGraphInstance) {
        session.graphEvents.unbind(instance.eventBinding)
        session.graphAttributes.unbind(instance.attributeBinding)
        instance.spatialBinding?.let { binding -> session.graphSpatial?.unbind(binding) }
    }

    private fun graphRequiresSpatialRuntime(graph: VisualGraphDocument): Boolean = graph.nodes.any { node ->
        NoCodeNodeRegistry.definitionFor(node)?.id == NoCodeSpatialRuntime.OBJECTS_DISTANCE_EVENT
    }

    private fun requireActive(runtimeGraphId: String): ActiveGraphInstance = synchronized(lock) {
        checkOpenLocked()
        check(started) { "NoCodePlayRuntime has not started." }
        instances[runtimeGraphId]
            ?: throw IllegalArgumentException("Instância NoCode não está ativa: $runtimeGraphId.")
    }

    private fun checkOpenLocked() {
        check(!closed) { "NoCodePlayRuntime is already closed." }
    }
}
