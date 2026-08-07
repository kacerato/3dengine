package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.VisualConnection
import com.mobilegamestudio.core.model.VisualNode
import com.mobilegamestudio.core.model.VisualNodeDefinition

/**
 * Resolves graph edges after a flow node selects one semantic output port.
 *
 * Older graph files used a single `flow` output even for Sequence, Branch,
 * Parallel and Multi Gate. New contracts expose explicit ports. This router
 * preserves old projects without mutating the persisted graph during runtime.
 * A future graph migration can rewrite the same mapping on disk.
 */
object NoCodeConnectionRouter {
    fun resolve(
        node: VisualNode,
        definition: VisualNodeDefinition?,
        selectedPortId: String,
        outgoing: List<VisualConnection>,
    ): List<VisualConnection> {
        val exact = outgoing.filter { it.fromPortId == selectedPortId }
        if (exact.isNotEmpty()) return exact

        val legacy = outgoing.filter { it.fromPortId == LEGACY_FLOW_PORT }
        if (legacy.isEmpty() || definition == null) return emptyList()

        return when {
            definition.id.startsWith("flow.sequence.") -> legacyByOrdinal(selectedPortId, "then", legacy)
            definition.id == "flow.parallel" || definition.id.startsWith("flow.parallel.") ->
                legacyByOrdinal(selectedPortId, "branch", legacy)
            definition.id == "flow.multi_gate" || definition.id.startsWith("flow.multi_gate.") ->
                legacyByZeroBasedOrdinal(selectedPortId, "out", legacy)
            definition.id == "flow.branch" -> when (selectedPortId) {
                "true", "then" -> legacy.take(1)
                // Old Branch only had one output. Interpreting it as the true
                // path is the least surprising migration; false consumes flow.
                "false", "else" -> emptyList()
                else -> legacy.take(1)
            }
            // Single-output stateful flow nodes already use `flow`, but keeping
            // this fallback makes renamed equivalent ports migration-safe.
            definition.id in SINGLE_OUTPUT_FLOW_IDS -> legacy.take(1)
            else -> emptyList()
        }
    }

    private fun legacyByOrdinal(
        selectedPortId: String,
        prefix: String,
        legacy: List<VisualConnection>,
    ): List<VisualConnection> {
        val oneBased = selectedPortId.removePrefix(prefix).toIntOrNull() ?: return emptyList()
        return legacy.getOrNull(oneBased - 1)?.let(::listOf).orEmpty()
    }

    private fun legacyByZeroBasedOrdinal(
        selectedPortId: String,
        prefix: String,
        legacy: List<VisualConnection>,
    ): List<VisualConnection> {
        val zeroBased = selectedPortId.removePrefix(prefix).toIntOrNull() ?: return emptyList()
        return legacy.getOrNull(zeroBased)?.let(::listOf).orEmpty()
    }

    private const val LEGACY_FLOW_PORT = "flow"
    private val SINGLE_OUTPUT_FLOW_IDS = setOf(
        "flow.gate",
        "flow.once",
        "flow.do_n",
    )
}
