package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.EngineEvent
import com.mobilegamestudio.core.model.EventPayload
import com.mobilegamestudio.core.model.ExecutionContext
import com.mobilegamestudio.core.model.NoCodeNodeRegistry
import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.Vector3
import com.mobilegamestudio.core.model.VisualConnection
import com.mobilegamestudio.core.model.VisualGraphDocument
import com.mobilegamestudio.core.model.VisualGraphValidator
import com.mobilegamestudio.core.model.VisualNode
import com.mobilegamestudio.core.model.VisualNodeCategory
import com.mobilegamestudio.core.model.VisualNodeDefinition
import com.mobilegamestudio.core.model.VisualNodeType
import com.mobilegamestudio.core.model.VisualPortType
import java.util.concurrent.atomic.AtomicLong

class VisualGraphExecutor(
    private val host: LogicSceneHost,
    private val maxExecutedNodes: Int = 128,
    private val onEmitEvent: (String, Any?) -> LogicExecutionResult = { _, _ ->
        LogicExecutionResult.Success
    },
    /**
     * Must be shared for the lifetime of a Play/graph session when stateful flow
     * nodes (Gate, Do Once, Do N, Multi Gate) need to survive multiple events.
     */
    private val flowRuntime: NoCodeFlowRuntime = NoCodeFlowRuntime(),
    private val eventRuntime: NoCodeEventRuntime? = null,
    private val executionContextFactory: ((VisualGraphDocument) -> ExecutionContext)? = null,
) {
    private val scheduler = NoCodeFlowScheduler(maxExecutedNodes)
    private val localExecutionIds = AtomicLong(1L)

    fun validate(graph: VisualGraphDocument): List<String> = VisualGraphValidator.validate(graph)

    fun resetFlowState(graphId: String): Int = flowRuntime.resetGraph(graphId)

    fun emitButton(graph: VisualGraphDocument, eventName: String): LogicExecutionResult {
        val errors = validate(graph)
        if (errors.isNotEmpty()) return failure(errors.first())
        val startNodes = graph.nodes.filter {
            it.type == VisualNodeType.ON_BUTTON_PRESSED && it.textValue == eventName
        }
        return execute(
            graph = graph,
            starts = startNodes,
            context = newContext(graph),
        )
    }

    fun emitTouch(graph: VisualGraphDocument, touchedObjectId: String? = null): LogicExecutionResult {
        val errors = validate(graph)
        if (errors.isNotEmpty()) return failure(errors.first())
        return execute(
            graph = graph,
            starts = graph.nodes.filter { node ->
                val boundObjectId = node.objectId
                val boundObjectName = node.objectName
                node.type == VisualNodeType.ON_TOUCH &&
                    (
                        touchedObjectId == null ||
                            boundObjectId == touchedObjectId ||
                            (boundObjectId == null && boundObjectName == null) ||
                            (
                                boundObjectId == null &&
                                    boundObjectName != null &&
                                    host.findObjectIdByName(boundObjectName) == touchedObjectId
                            )
                    )
            },
            context = newContext(graph).copy(
                targetObject = touchedObjectId?.takeIf(String::isNotBlank)?.let(::ObjectRef),
            ),
        )
    }

    /** Legacy bridge used by existing Lua/runtime code while graphs migrate to EngineEventBus. */
    fun emitCustom(
        graph: VisualGraphDocument,
        eventName: String,
        value: Any? = null,
    ): LogicExecutionResult {
        val errors = validate(graph)
        if (errors.isNotEmpty()) return failure(errors.first())
        val payload = try {
            EventPayload.fromRuntimeValue(value)
        } catch (error: IllegalArgumentException) {
            return failure(error.message ?: "Payload de evento inválido.")
        }
        val starts = customEventStarts(graph, eventName, payload)
        val initialOutputs = starts.associate { node ->
            (node.id to "value") to runtimeValue(payload)
        }
        return execute(
            graph = graph,
            starts = starts,
            initialOutputs = initialOutputs,
            context = newContext(graph),
        )
    }

    /** Entry point used by EngineEventBus subscriptions. */
    fun emitEngineEvent(
        graph: VisualGraphDocument,
        event: EngineEvent,
        baseContext: ExecutionContext? = null,
    ): LogicExecutionResult {
        val errors = validate(graph)
        if (errors.isNotEmpty()) return failure(errors.first())
        val starts = customEventStarts(graph, event.name, event.payload)
        if (starts.isEmpty()) return LogicExecutionResult.Success

        val initialOutputs = buildMap<Pair<String, String>, Any?> {
            starts.forEach { node ->
                put(node.id to "value", runtimeValue(event.payload))
                put(node.id to "sender", event.sender)
                put(node.id to "target", event.address.objectRef)
            }
        }
        val context = (baseContext ?: newContext(graph)).withEvent(event).copy(graphId = graph.graphId)
        return execute(
            graph = graph,
            starts = starts,
            initialOutputs = initialOutputs,
            context = context,
        )
    }

    private fun execute(
        graph: VisualGraphDocument,
        starts: List<VisualNode>,
        initialOutputs: Map<Pair<String, String>, Any?> = emptyMap(),
        context: ExecutionContext,
    ): LogicExecutionResult {
        val byId = graph.nodes.associateBy(VisualNode::id)
        val outgoing = graph.connections.groupBy(VisualConnection::fromNodeId)
        val incoming = graph.connections.groupBy(VisualConnection::toNodeId)
        val outputValues = initialOutputs.toMutableMap()
        val valueBudget = ValueEvaluationBudget(maxExecutedNodes)

        return scheduler.execute(
            starts = starts.map { NoCodeFlowEntry(it.id) },
            executeNode = { entry ->
                val node = byId[entry.nodeId]
                    ?: return@execute NoCodeNodeExecution.Failed(
                        failure("Nó ausente durante execução: ${entry.nodeId}."),
                    )
                executeNode(
                    graph = graph,
                    node = node,
                    incomingFlowPortId = entry.incomingFlowPortId,
                    byId = byId,
                    incoming = incoming,
                    outputValues = outputValues,
                    valueBudget = valueBudget,
                    context = context,
                )
            },
            outgoing = { entry, selectedPortId ->
                val node = byId[entry.nodeId] ?: return@execute emptyList()
                val definition = NoCodeNodeRegistry.definitionFor(node)
                NoCodeConnectionRouter.resolve(
                    node = node,
                    definition = definition,
                    selectedPortId = selectedPortId,
                    outgoing = outgoing[entry.nodeId].orEmpty(),
                ).mapNotNull { connection ->
                    if (connection.toNodeId !in byId) null
                    else NoCodeFlowEntry(
                        nodeId = connection.toNodeId,
                        incomingFlowPortId = connection.toPortId,
                    )
                }
            },
        )
    }

    private fun executeNode(
        graph: VisualGraphDocument,
        node: VisualNode,
        incomingFlowPortId: String?,
        byId: Map<String, VisualNode>,
        incoming: Map<String, List<VisualConnection>>,
        outputValues: MutableMap<Pair<String, String>, Any?>,
        valueBudget: ValueEvaluationBudget,
        context: ExecutionContext,
    ): NoCodeNodeExecution {
        val definition = NoCodeNodeRegistry.definitionFor(node)
        val inputs = try {
            collectInputs(
                node = node,
                definition = definition,
                byId = byId,
                incoming = incoming,
                outputValues = outputValues,
                valueBudget = valueBudget,
                visiting = mutableSetOf(),
            )
        } catch (error: GraphEvaluationException) {
            return NoCodeNodeExecution.Failed(failure(error.message ?: "Falha ao resolver entradas do NoCode."))
        }

        if (definition != null && flowRuntime.supports(definition.id)) {
            val decision = try {
                flowRuntime.route(
                    graphId = graph.graphId,
                    node = node,
                    definition = definition,
                    inputs = inputs,
                    incomingFlowPortId = incomingFlowPortId,
                )
            } catch (error: RuntimeException) {
                return NoCodeNodeExecution.Failed(
                    failure("Falha em ${definition.title}: ${error.message}."),
                )
            }
            return NoCodeNodeExecution.Continue(decision)
        }

        val actionResult = executeAction(
            node = node,
            definition = definition,
            inputs = inputs,
            outputValues = outputValues,
            context = context.copy(graphId = graph.graphId),
        )
        if (actionResult is LogicExecutionResult.Failure) {
            return NoCodeNodeExecution.Failed(actionResult)
        }
        return NoCodeNodeExecution.Continue(defaultFlowDecision(node, definition))
    }

    private fun executeAction(
        node: VisualNode,
        definition: VisualNodeDefinition?,
        inputs: Map<String, Any?>,
        outputValues: MutableMap<Pair<String, String>, Any?>,
        context: ExecutionContext,
    ): LogicExecutionResult {
        when (node.type) {
            VisualNodeType.ROTATE_OBJECT -> {
                val objectId = resolveObjectId(node)
                    ?: return failure("Objeto não encontrado: ${node.objectName ?: node.objectId}.")
                val rotation = host.rotation(objectId) ?: return failure("Transform não encontrado.")
                val rotationY = rotation.y + requireNotNull(node.numberValue)
                if (!rotationY.isFinite() || !host.setRotation(objectId, rotation.copy(y = rotationY))) {
                    return failure("Falha ao rotacionar objeto.")
                }
            }
            VisualNodeType.SET_SCALE -> {
                val objectId = resolveObjectId(node)
                    ?: return failure("Objeto não encontrado: ${node.objectName ?: node.objectId}.")
                val scale = requireNotNull(node.numberValue)
                if (scale <= 0f || !host.setScale(objectId, Vector3(scale, scale, scale))) {
                    return failure("Escala inválida.")
                }
            }
            VisualNodeType.PRINT_LOG -> host.log(LogicLogLevel.INFO, requireNotNull(node.textValue))
            VisualNodeType.CATALOG -> {
                val resolvedDefinition = definition
                    ?: return failure("Definição NoCode desconhecida: ${node.definitionId}.")
                when {
                    NoCodeValueEngine.supports(resolvedDefinition.operation) -> {
                        val result = try {
                            NoCodeValueEngine.evaluate(resolvedDefinition.operation, inputs)
                        } catch (error: RuntimeException) {
                            return failure("Falha em ${resolvedDefinition.title}: ${error.message}.")
                        }
                        resolvedDefinition.outputs
                            .filter { it.type != VisualPortType.FLOW }
                            .forEach { port -> outputValues[node.id to port.id] = result }
                    }
                    eventRuntime?.isSendNode(resolvedDefinition.id) == true -> {
                        val dispatch = try {
                            eventRuntime.dispatchNode(resolvedDefinition.id, inputs, context)
                        } catch (error: IllegalArgumentException) {
                            return failure(error.message ?: "Falha ao enviar evento NoCode.")
                        }
                        if (!dispatch.result.succeeded) {
                            val first = dispatch.result.failures.first()
                            return failure("Evento ${dispatch.event.name} falhou: ${first.message}")
                        }
                    }
                    resolvedDefinition.id == "transform.rotate.y" -> {
                        val objectId = resolveObjectId(node)
                            ?: return failure("Objeto não encontrado: ${node.objectName ?: node.objectId}.")
                        val rotation = host.rotation(objectId) ?: return failure("Transform não encontrado.")
                        val degrees = inputs.float("degrees") ?: node.numberValue ?: 1f
                        if (!host.setRotation(objectId, rotation.copy(y = rotation.y + degrees))) {
                            return failure("Falha ao rotacionar objeto.")
                        }
                    }
                    resolvedDefinition.id == "transform.scale.uniform" -> {
                        val objectId = resolveObjectId(node)
                            ?: return failure("Objeto não encontrado: ${node.objectName ?: node.objectId}.")
                        val scale = inputs.float("scale") ?: node.numberValue ?: 1f
                        if (scale <= 0f || !host.setScale(objectId, Vector3(scale, scale, scale))) {
                            return failure("Escala inválida.")
                        }
                    }
                    resolvedDefinition.id == "world.character_jump" -> {
                        val objectId = resolveObjectId(node)
                            ?: return failure("Personagem não encontrado: ${node.objectName ?: node.objectId}.")
                        if (!host.jump(objectId)) {
                            return failure("O objeto não possui Character Controller ativo.")
                        }
                    }
                    resolvedDefinition.id == "animation.play" -> {
                        val objectId = resolveObjectId(node)
                            ?: return failure("Objeto animado não encontrado: ${node.objectName ?: node.objectId}.")
                        val clip = inputs["animation"]?.toString()
                            ?: inputs["clip"]?.toString()
                            ?: node.textValue
                            ?: return failure("Nome da animação ausente.")
                        val loop = inputs.boolean("loop") ?: true
                        if (!host.playAnimation(objectId, clip, loop)) {
                            return failure("O objeto não possui Animation Controller ou o clipe é inválido.")
                        }
                    }
                    resolvedDefinition.id.startsWith("vehicle.") -> {
                        val objectId = resolveObjectId(node)
                        val number = inputs.float("value") ?: inputs.float("amount") ?: node.numberValue
                        val result = host.vehicleAction(
                            objectId = objectId,
                            operation = resolvedDefinition.id.removePrefix("vehicle."),
                            number = number,
                            text = inputs["value"]?.toString() ?: node.textValue,
                        ) ?: return failure("${resolvedDefinition.title} não pôde ser executado no veículo.")
                        resolvedDefinition.outputs
                            .filter { it.type != VisualPortType.FLOW }
                            .forEach { port -> outputValues[node.id to port.id] = result }
                    }
                    resolvedDefinition.id.startsWith("object.send_event") -> {
                        // Compatibility path for executors created without a Play session.
                        val eventName = inputs["event"]?.toString() ?: node.textValue
                        if (eventName.isNullOrBlank()) return failure("Nome do evento NoCode ausente.")
                        val value = inputs["value"]
                        when (val result = onEmitEvent(eventName.take(EngineEvent.MAX_EVENT_NAME_LENGTH), value)) {
                            LogicExecutionResult.Success -> Unit
                            is LogicExecutionResult.Failure -> return result
                        }
                    }
                    resolvedDefinition.id.startsWith("event.send") -> {
                        return failure("${resolvedDefinition.title} exige uma NoCodeRuntimeSession ativa.")
                    }
                    resolvedDefinition.category == VisualNodeCategory.DEBUG -> {
                        host.log(
                            LogicLogLevel.INFO,
                            inputs["message"]?.toString() ?: node.textValue ?: resolvedDefinition.title,
                        )
                    }
                    resolvedDefinition.category == VisualNodeCategory.EVENTS -> Unit
                    resolvedDefinition.category == VisualNodeCategory.FLOW -> {
                        return failure(
                            "${resolvedDefinition.title} está no catálogo, mas ainda não possui semântica de runtime ligada.",
                        )
                    }
                    else -> return failure(
                        "${resolvedDefinition.title} requer um módulo de runtime ainda não ligado a esta cena.",
                    )
                }
            }
            VisualNodeType.ON_START,
            VisualNodeType.ON_TOUCH,
            VisualNodeType.ON_BUTTON_PRESSED,
            VisualNodeType.SEQUENCE,
            -> Unit
        }
        return LogicExecutionResult.Success
    }

    private fun collectInputs(
        node: VisualNode,
        definition: VisualNodeDefinition?,
        byId: Map<String, VisualNode>,
        incoming: Map<String, List<VisualConnection>>,
        outputValues: MutableMap<Pair<String, String>, Any?>,
        valueBudget: ValueEvaluationBudget,
        visiting: MutableSet<String>,
    ): MutableMap<String, Any?> {
        val inputs = node.values
            .mapValues { (_, value) -> parseLiteral(value) }
            .toMutableMap<String, Any?>()
        node.numberValue?.let {
            inputs.putIfAbsent("value", it.toDouble())
            inputs.putIfAbsent("a", it.toDouble())
        }
        node.textValue?.let {
            inputs.putIfAbsent("text", it)
            inputs.putIfAbsent("value", it)
        }

        val flowInputIds = definition?.inputs
            ?.filter { it.type == VisualPortType.FLOW }
            ?.mapTo(mutableSetOf()) { it.id }
            .orEmpty()
        incoming[node.id].orEmpty().forEach { connection ->
            if (connection.toPortId in flowInputIds || connection.toPortId in LEGACY_FLOW_INPUTS) return@forEach
            val key = connection.fromNodeId to connection.fromPortId
            val value = if (outputValues.containsKey(key)) {
                outputValues[key]
            } else {
                evaluateValueOutput(
                    nodeId = connection.fromNodeId,
                    requestedPortId = connection.fromPortId,
                    byId = byId,
                    incoming = incoming,
                    outputValues = outputValues,
                    valueBudget = valueBudget,
                    visiting = visiting,
                )
            }
            if (outputValues.containsKey(key) || value != null) inputs[connection.toPortId] = value
        }
        return inputs
    }

    private fun evaluateValueOutput(
        nodeId: String,
        requestedPortId: String,
        byId: Map<String, VisualNode>,
        incoming: Map<String, List<VisualConnection>>,
        outputValues: MutableMap<Pair<String, String>, Any?>,
        valueBudget: ValueEvaluationBudget,
        visiting: MutableSet<String>,
    ): Any? {
        val key = nodeId to requestedPortId
        if (outputValues.containsKey(key)) return outputValues[key]
        if (!visiting.add(nodeId)) throw GraphEvaluationException("Ciclo detectado na avaliação de valores do nó $nodeId.")
        try {
            if (!valueBudget.consume()) {
                throw GraphEvaluationException("Limite de avaliação de valores do grafo excedido.")
            }
            val source = byId[nodeId] ?: throw GraphEvaluationException("Nó de valor ausente: $nodeId.")
            val definition = NoCodeNodeRegistry.definitionFor(source)
                ?: throw GraphEvaluationException("Definição de valor ausente no nó $nodeId.")
            if (!NoCodeValueEngine.supports(definition.operation)) {
                throw GraphEvaluationException(
                    "${definition.title} não pode ser usado como valor antes de sua execução de fluxo.",
                )
            }
            val inputs = collectInputs(
                node = source,
                definition = definition,
                byId = byId,
                incoming = incoming,
                outputValues = outputValues,
                valueBudget = valueBudget,
                visiting = visiting,
            )
            val result = try {
                NoCodeValueEngine.evaluate(definition.operation, inputs)
            } catch (error: RuntimeException) {
                throw GraphEvaluationException("Falha em ${definition.title}: ${error.message}.")
            }
            definition.outputs
                .filter { it.type != VisualPortType.FLOW }
                .forEach { port -> outputValues[source.id to port.id] = result }
            return outputValues[key]
        } finally {
            visiting.remove(nodeId)
        }
    }

    private fun customEventStarts(
        graph: VisualGraphDocument,
        eventName: String,
        payload: EventPayload,
    ): List<VisualNode> = graph.nodes.filter { node ->
        val definition = NoCodeNodeRegistry.definitionFor(node) ?: return@filter false
        val isReceiver = eventRuntime?.isReceiverNode(definition.id)
            ?: (definition.id == "event.custom.received" || definition.id.startsWith("event.custom.received_"))
        if (!isReceiver) return@filter false
        val configuredName = node.values["event"] ?: node.textValue.orEmpty()
        val nameMatches = configuredName.isBlank() || configuredName == eventName
        val payloadMatches = eventRuntime?.acceptsPayload(definition.id, payload)
            ?: when {
                definition.id.endsWith("_bool") -> payload is EventPayload.Bool
                definition.id.endsWith("_number") -> payload is EventPayload.Number
                definition.id.endsWith("_text") -> payload is EventPayload.Text
                else -> true
            }
        nameMatches && payloadMatches
    }

    private fun runtimeValue(payload: EventPayload): Any? =
        eventRuntime?.runtimeValue(payload) ?: when (payload) {
            EventPayload.None -> null
            is EventPayload.Bool -> payload.value
            is EventPayload.Number -> payload.value
            is EventPayload.Text -> payload.value
            is EventPayload.Vector3Value -> payload.value
            is EventPayload.ObjectValue -> payload.value
            is EventPayload.ComponentValue -> payload.value
            is EventPayload.ListValue -> payload.values.map(::runtimeValue)
        }

    private fun defaultFlowDecision(
        node: VisualNode,
        definition: VisualNodeDefinition?,
    ): NoCodeFlowDecision {
        val flowOutputs = definition?.outputs
            ?.filter { it.type == VisualPortType.FLOW }
            ?.map { it.id }
            .orEmpty()
        if (flowOutputs.isNotEmpty()) return NoCodeFlowDecision(flowOutputs.take(1))
        return if (node.type in LEGACY_FLOW_NODES) {
            NoCodeFlowDecision(listOf("flow"))
        } else {
            NoCodeFlowDecision(emptyList())
        }
    }

    private fun newContext(graph: VisualGraphDocument): ExecutionContext =
        executionContextFactory?.invoke(graph) ?: ExecutionContext(
            executionId = localExecutionIds.getAndIncrement(),
            graphId = graph.graphId,
        )

    private fun resolveObjectId(node: VisualNode): String? =
        node.objectId ?: node.objectName?.let(host::findObjectIdByName)

    private fun failure(message: String) = LogicExecutionResult.Failure(
        ScriptDiagnostic(DiagnosticSeverity.ERROR, message, null, null),
    )

    private fun parseLiteral(value: String): Any =
        value.toBooleanStrictOrNull() ?: value.toDoubleOrNull() ?: value

    private class GraphEvaluationException(message: String) : RuntimeException(message)

    private class ValueEvaluationBudget(private val limit: Int) {
        private var count = 0

        fun consume(): Boolean {
            count += 1
            return count <= limit
        }
    }

    companion object {
        private val LEGACY_FLOW_INPUTS = setOf("flow", "flowIn", "then", "exec")
        private val LEGACY_FLOW_NODES = setOf(
            VisualNodeType.ON_START,
            VisualNodeType.ON_TOUCH,
            VisualNodeType.ON_BUTTON_PRESSED,
            VisualNodeType.ROTATE_OBJECT,
            VisualNodeType.SET_SCALE,
            VisualNodeType.PRINT_LOG,
        )
    }
}

private fun Map<String, Any?>.boolean(key: String): Boolean? = when (val value = this[key]) {
    is Boolean -> value
    is String -> value.toBooleanStrictOrNull()
    is Number -> value.toInt() != 0
    else -> null
}

private fun Map<String, Any?>.float(key: String): Float? = when (val value = this[key]) {
    is Number -> value.toFloat().takeIf(Float::isFinite)
    is String -> value.toFloatOrNull()?.takeIf(Float::isFinite)
    else -> null
}
