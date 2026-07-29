package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.Vector3
import com.mobilegamestudio.core.model.VisualGraphDocument
import com.mobilegamestudio.core.model.VisualNode
import com.mobilegamestudio.core.model.VisualNodeType
import com.mobilegamestudio.core.model.VisualGraphValidator
import com.mobilegamestudio.core.model.VisualNodeCatalog
import com.mobilegamestudio.core.model.VisualPortType

class VisualGraphExecutor(
    private val host: LogicSceneHost,
    private val maxExecutedNodes: Int = 128,
    private val onEmitEvent: (String, Any?) -> LogicExecutionResult = { _, _ ->
        LogicExecutionResult.Success
    },
) {
    fun validate(graph: VisualGraphDocument): List<String> = VisualGraphValidator.validate(graph)

    fun emitButton(graph: VisualGraphDocument, eventName: String): LogicExecutionResult {
        val errors = validate(graph)
        if (errors.isNotEmpty()) return failure(errors.first())
        val startNodes = graph.nodes.filter {
            it.type == VisualNodeType.ON_BUTTON_PRESSED && it.textValue == eventName
        }
        return execute(graph, startNodes)
    }

    fun emitTouch(graph: VisualGraphDocument, touchedObjectId: String? = null): LogicExecutionResult {
        val errors = validate(graph)
        if (errors.isNotEmpty()) return failure(errors.first())
        return execute(
            graph,
            graph.nodes.filter { node ->
                val boundObjectId = node.objectId
                val boundObjectName = node.objectName
                node.type == VisualNodeType.ON_TOUCH &&
                    (
                        touchedObjectId == null ||
                            boundObjectId == touchedObjectId ||
                            (
                                boundObjectId == null &&
                                    boundObjectName == null
                            ) ||
                            (
                                boundObjectId == null &&
                                    boundObjectName != null &&
                                    host.findObjectIdByName(boundObjectName) == touchedObjectId
                            )
                    )
            },
        )
    }

    fun emitCustom(
        graph: VisualGraphDocument,
        eventName: String,
        value: Any? = null,
    ): LogicExecutionResult {
        val errors = validate(graph)
        if (errors.isNotEmpty()) return failure(errors.first())
        val starts = graph.nodes.filter { node ->
            VisualNodeCatalog.definitionFor(node)?.id == "event.custom.received" &&
                node.values["event"].orEmpty().let { it.isBlank() || it == eventName }
        }
        return execute(
            graph = graph,
            starts = starts,
            initialValues = starts.associate { it.id to value },
        )
    }

    private fun execute(
        graph: VisualGraphDocument,
        starts: List<VisualNode>,
        initialValues: Map<String, Any?> = emptyMap(),
    ): LogicExecutionResult {
        val byId = graph.nodes.associateBy(VisualNode::id)
        val outgoing = graph.connections.groupBy { it.fromNodeId }
        val incoming = graph.connections.groupBy { it.toNodeId }
        val outputValues = mutableMapOf<Pair<String, String>, Any?>()
        initialValues.forEach { (nodeId, value) ->
            outputValues[nodeId to "value"] = value
        }
        val queue = ArrayDeque(starts)
        var executed = 0
        while (queue.isNotEmpty()) {
            val node = queue.removeFirst()
            if (++executed > maxExecutedNodes) return failure("Limite de execução do grafo excedido.")
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
                    val definition = VisualNodeCatalog.definitionFor(node)
                        ?: return failure("Definição NoCode desconhecida: ${node.definitionId}.")
                    when {
                        NoCodeValueEngine.supports(definition.operation) -> {
                            val inputs = node.values
                                .mapValues { (_, value) -> value.toBooleanStrictOrNull() ?: value.toDoubleOrNull() ?: value }
                                .toMutableMap<String, Any?>()
                            incoming[node.id].orEmpty().forEach { connection ->
                                outputValues[connection.fromNodeId to connection.fromPortId]?.let { value ->
                                    inputs[connection.toPortId] = value
                                }
                            }
                            node.numberValue?.let {
                                inputs.putIfAbsent("value", it.toDouble())
                                inputs.putIfAbsent("a", it.toDouble())
                            }
                            node.textValue?.let {
                                inputs.putIfAbsent("text", it)
                                inputs.putIfAbsent("value", it)
                            }
                            val result = try {
                                NoCodeValueEngine.evaluate(definition.operation, inputs)
                            } catch (error: RuntimeException) {
                                return failure("Falha em ${definition.title}: ${error.message}.")
                            }
                            definition.outputs
                                .filter { it.type != VisualPortType.FLOW }
                                .forEach { port -> outputValues[node.id to port.id] = result }
                        }
                        definition.id == "transform.rotate.y" -> {
                            val objectId = resolveObjectId(node)
                                ?: return failure("Objeto não encontrado: ${node.objectName ?: node.objectId}.")
                            val rotation = host.rotation(objectId) ?: return failure("Transform não encontrado.")
                            val degrees = node.values["degrees"]?.toFloatOrNull() ?: node.numberValue ?: 1f
                            if (!host.setRotation(objectId, rotation.copy(y = rotation.y + degrees))) {
                                return failure("Falha ao rotacionar objeto.")
                            }
                        }
                        definition.id == "transform.scale.uniform" -> {
                            val objectId = resolveObjectId(node)
                                ?: return failure("Objeto não encontrado: ${node.objectName ?: node.objectId}.")
                            val scale = node.values["scale"]?.toFloatOrNull() ?: node.numberValue ?: 1f
                            if (scale <= 0f || !host.setScale(objectId, Vector3(scale, scale, scale))) {
                                return failure("Escala inválida.")
                            }
                        }
                        definition.id == "world.character_jump" -> {
                            val objectId = resolveObjectId(node)
                                ?: return failure("Personagem não encontrado: ${node.objectName ?: node.objectId}.")
                            if (!host.jump(objectId)) {
                                return failure("O objeto não possui Character Controller ativo.")
                            }
                        }
                        definition.id == "animation.play" -> {
                            val objectId = resolveObjectId(node)
                                ?: return failure("Objeto animado não encontrado: ${node.objectName ?: node.objectId}.")
                            val clip = node.values["animation"]
                                ?: node.values["clip"]
                                ?: node.textValue
                                ?: return failure("Nome da animação ausente.")
                            val loop = node.values["loop"]?.toBooleanStrictOrNull() ?: true
                            if (!host.playAnimation(objectId, clip, loop)) {
                                return failure("O objeto não possui Animation Controller ou o clipe é inválido.")
                            }
                        }
                        definition.id.startsWith("vehicle.") -> {
                            val objectId = resolveObjectId(node)
                            val number = node.values["value"]?.toFloatOrNull()
                                ?: node.values["amount"]?.toFloatOrNull()
                                ?: node.numberValue
                            val result = host.vehicleAction(
                                objectId = objectId,
                                operation = definition.id.removePrefix("vehicle."),
                                number = number,
                                text = node.values["value"] ?: node.textValue,
                            ) ?: return failure("${definition.title} não pôde ser executado no veículo.")
                            definition.outputs
                                .filter { it.type != VisualPortType.FLOW }
                                .forEach { port -> outputValues[node.id to port.id] = result }
                        }
                        definition.id.startsWith("object.send_event") -> {
                            val eventName = node.values["event"] ?: node.textValue
                            if (eventName.isNullOrBlank()) return failure("Nome do evento NoCode ausente.")
                            val value = node.values["value"]
                                ?.let { raw -> raw.toBooleanStrictOrNull() ?: raw.toDoubleOrNull() ?: raw }
                            when (val result = onEmitEvent(eventName.take(64), value)) {
                                LogicExecutionResult.Success -> Unit
                                is LogicExecutionResult.Failure -> return result
                            }
                        }
                        definition.category.name == "DEBUG" -> {
                            host.log(LogicLogLevel.INFO, node.values["message"] ?: node.textValue ?: definition.title)
                        }
                        definition.category.name in setOf("EVENTS", "FLOW") -> Unit
                        else -> return failure(
                            "${definition.title} requer um módulo de runtime ainda não ligado a esta cena.",
                        )
                    }
                }
                else -> Unit
            }
            outgoing[node.id].orEmpty().forEach { connection ->
                byId[connection.toNodeId]?.let(queue::addLast)
            }
        }
        return LogicExecutionResult.Success
    }

    private fun resolveObjectId(node: VisualNode): String? =
        node.objectId ?: node.objectName?.let(host::findObjectIdByName)

    private fun failure(message: String) = LogicExecutionResult.Failure(
        ScriptDiagnostic(DiagnosticSeverity.ERROR, message, null, null),
    )

}
