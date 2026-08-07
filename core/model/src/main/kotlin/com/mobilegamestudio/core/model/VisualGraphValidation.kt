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
        graph.connections.forEach { connection ->
            if (connection.fromNodeId !in nodesById) {
                errors += "Nó de origem ausente: ${connection.fromNodeId}."
            }
            if (connection.toNodeId !in nodesById) {
                errors += "Nó de destino ausente: ${connection.toNodeId}."
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
                VisualNodeType.CATALOG -> Unit
                else -> Unit
            }
        }
        if (hasCycle(graph, nodesById.keys)) errors += "O grafo contém ciclo de fluxo."
        return errors.distinct()
    }

    private fun hasCycle(graph: VisualGraphDocument, nodeIds: Set<String>): Boolean {
        val outgoing = graph.connections
            .filter { it.fromNodeId in nodeIds && it.toNodeId in nodeIds }
            .groupBy(VisualConnection::fromNodeId)
        val inDegree = nodeIds.associateWith { 0 }.toMutableMap()
        graph.connections.forEach { connection ->
            if (connection.fromNodeId in nodeIds && connection.toNodeId in nodeIds) {
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
        return visited != nodeIds.size
    }
}
