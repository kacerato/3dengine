package com.mobilegamestudio.core.model

object VisualGraphValidator {
    const val MAX_NODES = 256
    const val MAX_CONNECTIONS = 512

    fun validate(graph: VisualGraphDocument): List<String> {
        val errors = mutableListOf<String>()
        if (graph.schemaVersion !in 1..2) errors += "Versão de grafo não suportada."
        if (graph.graphId.isBlank()) errors += "ID do grafo ausente."
        if (graph.name.isBlank() || graph.name.length > 96) errors += "Nome do grafo inválido."
        if (graph.nodes.size > MAX_NODES) errors += "O grafo excede $MAX_NODES nós."
        if (graph.connections.size > MAX_CONNECTIONS) {
            errors += "O grafo excede $MAX_CONNECTIONS conexões."
        }

        val nodesById = graph.nodes.associateBy(VisualNode::id)
        if (nodesById.size != graph.nodes.size || graph.nodes.any { it.id.isBlank() }) {
            errors += "IDs de nós ausentes ou duplicados."
        }

        val connectionChecks = mutableMapOf<VisualConnection, VisualConnectionCheck>()
        graph.connections.forEach { connection ->
            val fromNode = nodesById[connection.fromNodeId]
            val toNode = nodesById[connection.toNodeId]
            if (fromNode == null) {
                errors += "Nó de origem ausente: ${connection.fromNodeId}."
            }
            if (toNode == null) {
                errors += "Nó de destino ausente: ${connection.toNodeId}."
            }
            if (fromNode != null && toNode != null) {
                val check = NoCodePortCompatibility.check(
                    fromNode = fromNode,
                    fromPortId = connection.fromPortId,
                    toNode = toNode,
                    toPortId = connection.toPortId,
                )
                connectionChecks[connection] = check
                if (!check.valid) errors += requireNotNull(check.message)
            }
        }

        val duplicateConnections = graph.connections
            .groupingBy { it }
            .eachCount()
            .filterValues { it > 1 }
        if (duplicateConnections.isNotEmpty()) {
            errors += "O grafo contém conexões duplicadas."
        }

        val connectedInputPorts = graph.connections.mapNotNull { connection ->
            val check = connectionChecks[connection] ?: return@mapNotNull null
            if (!check.valid) return@mapNotNull null
            connection.toNodeId to requireNotNull(check.to).port.id
        }.toSet()

        val incomingDataPorts = graph.connections
            .mapNotNull { connection ->
                val check = connectionChecks[connection] ?: return@mapNotNull null
                if (!check.valid || check.to?.port?.type == VisualPortType.FLOW) return@mapNotNull null
                Triple(connection.toNodeId, check.to.port.id, connection)
            }
            .groupBy { (nodeId, portId, _) -> nodeId to portId }
        incomingDataPorts.forEach { (target, connections) ->
            if (connections.size > 1) {
                errors += "A entrada de dados ${target.first}.${target.second} aceita apenas uma conexão."
            }
        }

        graph.nodes.forEach { node ->
            if (!node.positionX.isFinite() || !node.positionY.isFinite()) {
                errors += "Posição inválida no nó ${node.id}."
            }
            if (node.type == VisualNodeType.CATALOG && NoCodeNodeRegistry.definitionFor(node) == null) {
                errors += "Definição desconhecida no nó ${node.id}."
            }
            when (node.type) {
                VisualNodeType.ROTATE_OBJECT,
                VisualNodeType.SET_SCALE,
                -> if (
                    (node.objectId != null && node.objectId.isBlank()) ||
                    (node.objectId.isNullOrBlank() && node.objectName.isNullOrBlank()) ||
                    (node.objectId?.length ?: 0) > 128 ||
                    (node.objectName?.length ?: 0) > 96 ||
                    node.numberValue?.isFinite() != true
                ) {
                    errors += "Parâmetros inválidos no nó ${node.id}."
                }
                VisualNodeType.PRINT_LOG -> if (
                    node.textValue.isNullOrBlank() ||
                    node.textValue.length > 300
                ) {
                    errors += "Mensagem ausente ou excessiva no nó ${node.id}."
                }
                VisualNodeType.ON_BUTTON_PRESSED -> if (
                    node.textValue.isNullOrBlank() ||
                    node.textValue.length > 64
                ) {
                    errors += "Evento de botão inválido no nó ${node.id}."
                }
                VisualNodeType.ON_TOUCH -> if (
                    (node.objectId != null && node.objectId.isBlank()) ||
                    (node.objectId?.length ?: 0) > 128 ||
                    (node.objectName?.length ?: 0) > 96
                ) {
                    errors += "Objeto do evento de toque inválido no nó ${node.id}."
                }
                VisualNodeType.CATALOG -> validateCatalogNode(node, connectedInputPorts, errors)
                else -> Unit
            }
        }

        val validFlowConnections = graph.connections.filter { connection ->
            connectionChecks[connection]?.let { it.valid && it.isFlow } == true
        }
        val validValueConnections = graph.connections.filter { connection ->
            connectionChecks[connection]?.let {
                it.valid && it.from?.port?.type != VisualPortType.FLOW && it.to?.port?.type != VisualPortType.FLOW
            } == true
        }
        if (hasCycle(validFlowConnections, nodesById.keys)) {
            errors += "O grafo contém ciclo de fluxo não suportado."
        }
        if (hasCycle(validValueConnections, nodesById.keys)) {
            errors += "O grafo contém ciclo de valores."
        }
        return errors.distinct()
    }

    private fun validateCatalogNode(
        node: VisualNode,
        connectedInputPorts: Set<Pair<String, String>>,
        errors: MutableList<String>,
    ) {
        val definition = NoCodeNodeRegistry.definitionFor(node) ?: return
        when {
            definition.id == "event.custom.received" || definition.id.startsWith("event.custom.received_") -> {
                val eventName = (node.values["event"] ?: node.textValue).orEmpty().trim()
                if (eventName.isBlank()) errors += "Custom Event ${node.id} precisa de um nome."
                if (eventName.length > EngineEvent.MAX_EVENT_NAME_LENGTH) {
                    errors += "Custom Event ${node.id} excede ${EngineEvent.MAX_EVENT_NAME_LENGTH} caracteres."
                }
            }
            definition.id == "event.send" || definition.id.startsWith("event.send_") ||
                definition.id == "object.send_event" || definition.id.startsWith("object.send_event_") -> {
                val eventName = (node.values["event"] ?: node.textValue).orEmpty().trim()
                val hasEventConnection = node.id to "event" in connectedInputPorts
                if (eventName.isBlank() && !hasEventConnection) {
                    errors += "Send Event ${node.id} precisa de um nome ou conexão na entrada Event."
                }
                if (eventName.length > EngineEvent.MAX_EVENT_NAME_LENGTH) {
                    errors += "Send Event ${node.id} excede ${EngineEvent.MAX_EVENT_NAME_LENGTH} caracteres."
                }
            }
        }
    }

    private fun hasCycle(
        connections: List<VisualConnection>,
        nodeIds: Set<String>,
    ): Boolean {
        if (connections.isEmpty()) return false
        val involvedNodes = connections
            .flatMap { listOf(it.fromNodeId, it.toNodeId) }
            .filterTo(linkedSetOf()) { it in nodeIds }
        if (involvedNodes.isEmpty()) return false

        val outgoing = connections
            .filter { it.fromNodeId in involvedNodes && it.toNodeId in involvedNodes }
            .groupBy(VisualConnection::fromNodeId)
        val inDegree = involvedNodes.associateWith { 0 }.toMutableMap()
        connections.forEach { connection ->
            if (connection.fromNodeId in involvedNodes && connection.toNodeId in involvedNodes) {
                inDegree[connection.toNodeId] = inDegree.getValue(connection.toNodeId) + 1
            }
        }
        val queue = ArrayDeque(inDegree.filterValues { it == 0 }.keys)
        var visited = 0
        while (queue.isNotEmpty()) {
            val id = queue.removeFirst()
            visited += 1
            outgoing[id].orEmpty().forEach { connection ->
                val nextDegree = inDegree.getValue(connection.toNodeId) - 1
                inDegree[connection.toNodeId] = nextDegree
                if (nextDegree == 0) queue.addLast(connection.toNodeId)
            }
        }
        return visited != involvedNodes.size
    }
}
