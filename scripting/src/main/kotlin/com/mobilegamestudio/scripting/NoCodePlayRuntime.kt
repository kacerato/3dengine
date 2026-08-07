package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.EventAddress
import com.mobilegamestudio.core.model.EventPayload
import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.VisualGraphDocument

/**
 * One concrete graph instance in Play mode.
 *
 * runtimeGraphId is an instance id, not the graph asset/document id. A useful
 * editor value is `scene:<scene>/object:<object>/component:<component-or-path>`.
 */
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

private data class ActiveGraphInstance(
    val spec: NoCodeGraphRuntimeSpec,
    val executor: VisualGraphExecutor,
    val eventBinding: NoCodeGraphBindingResult,
    val attributeBinding: NoCodeAttributeBindingResult,
)

/**
 * Play-mode owner for visual graph instances.
 *
 * Lifecycle is explicit and transactional:
 * - every instance has a stable runtime id;
 * - graph validation happens before publication;
 * - Custom Event and Attribute bindings are rolled back if startup has any issue;
 * - stateful flow and listeners live in the shared NoCodeRuntimeSession;
 * - closing Play removes all listeners/state in one operation.
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
            provisional += ActiveGraphInstance(
                spec = spec,
                executor = executor,
                eventBinding = eventBinding,
                attributeBinding = attributeBinding,
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

    /** Transitional bridge while Lua moves to the shared EngineEventBus. */
    fun emitLegacyCustom(eventName: String, value: Any? = null): NoCodePlayExecutionReport =
        dispatchEach { instance ->
            instance.executor.emitCustom(instance.spec.graph, eventName, value)
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
        return NoCodePlayExecutionReport(
            attemptedInstances = snapshot.size,
            failures = failures,
        )
    }

    private fun unbindInstance(instance: ActiveGraphInstance) {
        session.graphEvents.unbind(instance.eventBinding)
        session.graphAttributes.unbind(instance.attributeBinding)
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
