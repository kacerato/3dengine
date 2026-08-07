package com.mobilegamestudio.core.model

data class ResolvedVisualPort(
    val port: VisualPortDefinition,
    val legacyAlias: Boolean = false,
)

data class VisualConnectionCheck(
    val valid: Boolean,
    val message: String? = null,
    val from: ResolvedVisualPort? = null,
    val to: ResolvedVisualPort? = null,
) {
    val isFlow: Boolean get() = from?.port?.type == VisualPortType.FLOW && to?.port?.type == VisualPortType.FLOW
}

/**
 * Single source of truth for editor/runtime graph port compatibility.
 *
 * Rules intentionally avoid implicit coercion. `ANY` is the only dynamic data
 * type; FLOW never converts to/from a value. Legacy `flow` aliases are accepted
 * only for node families with a defined migration path.
 */
object NoCodePortCompatibility {
    fun resolveOutput(node: VisualNode, portId: String): ResolvedVisualPort? {
        val definition = NoCodeNodeRegistry.definitionFor(node) ?: return null
        definition.outputs.firstOrNull { it.id == portId }?.let { return ResolvedVisualPort(it) }

        if (portId == LEGACY_FLOW_PORT && supportsLegacyFlowOutput(definition.id)) {
            return ResolvedVisualPort(
                port = VisualPortDefinition(
                    id = LEGACY_FLOW_PORT,
                    label = "Fluxo legado",
                    type = VisualPortType.FLOW,
                ),
                legacyAlias = true,
            )
        }
        return null
    }

    fun resolveInput(node: VisualNode, portId: String): ResolvedVisualPort? {
        val definition = NoCodeNodeRegistry.definitionFor(node) ?: return null
        definition.inputs.firstOrNull { it.id == portId }?.let { return ResolvedVisualPort(it) }

        if (portId == LEGACY_FLOW_PORT) {
            val canonical = definition.inputs.firstOrNull { it.id == "flowIn" && it.type == VisualPortType.FLOW }
                ?: definition.inputs.filter { it.type == VisualPortType.FLOW }.singleOrNull()
            if (canonical != null) return ResolvedVisualPort(canonical, legacyAlias = true)
        }
        return null
    }

    fun check(
        fromNode: VisualNode,
        fromPortId: String,
        toNode: VisualNode,
        toPortId: String,
    ): VisualConnectionCheck {
        val from = resolveOutput(fromNode, fromPortId)
            ?: return VisualConnectionCheck(
                valid = false,
                message = "Porta de saída inexistente: ${fromNode.id}.$fromPortId.",
            )
        val to = resolveInput(toNode, toPortId)
            ?: return VisualConnectionCheck(
                valid = false,
                message = "Porta de entrada inexistente: ${toNode.id}.$toPortId.",
                from = from,
            )

        val sourceType = from.port.type
        val targetType = to.port.type
        val compatible = when {
            sourceType == VisualPortType.FLOW || targetType == VisualPortType.FLOW ->
                sourceType == VisualPortType.FLOW && targetType == VisualPortType.FLOW
            sourceType == VisualPortType.ANY || targetType == VisualPortType.ANY -> true
            else -> sourceType == targetType
        }
        return if (compatible) {
            VisualConnectionCheck(valid = true, from = from, to = to)
        } else {
            VisualConnectionCheck(
                valid = false,
                message = "Tipos incompatíveis: ${fromNode.id}.$fromPortId ($sourceType) → " +
                    "${toNode.id}.$toPortId ($targetType).",
                from = from,
                to = to,
            )
        }
    }

    fun supportsLegacyFlowOutput(definitionId: String): Boolean =
        definitionId.startsWith("flow.sequence.") ||
            definitionId == "flow.branch" ||
            definitionId == "flow.parallel" ||
            definitionId.startsWith("flow.parallel.") ||
            definitionId == "flow.multi_gate" ||
            definitionId.startsWith("flow.multi_gate.")

    private const val LEGACY_FLOW_PORT = "flow"
}
