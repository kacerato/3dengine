package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.VisualNode
import com.mobilegamestudio.core.model.VisualNodeDefinition
import com.mobilegamestudio.core.model.VisualPortType
import kotlin.random.Random

/** How selected flow outputs must be scheduled by the graph executor. */
enum class FlowDispatchMode {
    /** Finish one selected branch before starting the next one. */
    ORDERED,

    /** Branches are independent but remain on the engine thread for scene safety. */
    INDEPENDENT,
}

/** Explicit routing result; an empty output list means the flow is consumed. */
data class NoCodeFlowDecision(
    val outputPortIds: List<String>,
    val dispatchMode: FlowDispatchMode = FlowDispatchMode.ORDERED,
)

/** Read-only state useful for debugger/profiler UI. */
data class NoCodeFlowStateSnapshot(
    val gateOpen: Boolean,
    val onceConsumed: Boolean,
    val doNExecutions: Int,
    val multiGateIndex: Int,
    val lastRandomIndex: Int?,
)

private data class FlowNodeState(
    var gateOpen: Boolean = true,
    var gateInitialized: Boolean = false,
    var onceConsumed: Boolean = false,
    var doNExecutions: Int = 0,
    var multiGateIndex: Int = 0,
    var multiGateInitialized: Boolean = false,
    var lastRandomIndex: Int? = null,
)

/**
 * Runtime semantics for stateful NoCode flow nodes.
 *
 * This class deliberately knows nothing about SceneDocument or Android UI. State
 * is keyed by graph + node, never globally by node name, so two graph instances
 * cannot steal each other's Gate/DoOnce/MultiGate state.
 *
 * "Parallel" means independent branches, not background threads. Scene mutation
 * remains on the engine scheduler thread, matching the safety model used by
 * mature game engines.
 */
class NoCodeFlowRuntime(
    private val random: Random = Random.Default,
) {
    private val lock = Any()
    private val states = mutableMapOf<NodeKey, FlowNodeState>()

    fun supports(definitionId: String): Boolean =
        definitionId.startsWith("flow.sequence.") ||
            definitionId in SUPPORTED_IDS

    fun route(
        graphId: String,
        node: VisualNode,
        definition: VisualNodeDefinition,
        inputs: Map<String, Any?> = emptyMap(),
        incomingFlowPortId: String? = null,
    ): NoCodeFlowDecision {
        require(graphId.isNotBlank()) { "graphId cannot be blank." }
        require(node.id.isNotBlank()) { "NoCode flow node id cannot be blank." }
        require(supports(definition.id)) { "Unsupported NoCode flow node: ${definition.id}." }

        val flowOutputs = definition.outputs.filter { it.type == VisualPortType.FLOW }.map { it.id }
        val key = NodeKey(graphId, node.id)
        return synchronized(lock) {
            val state = states.getOrPut(key) { FlowNodeState() }
            when {
                definition.id.startsWith("flow.sequence.") -> NoCodeFlowDecision(
                    outputPortIds = flowOutputs,
                    dispatchMode = FlowDispatchMode.ORDERED,
                )
                definition.id == FLOW_PARALLEL -> NoCodeFlowDecision(
                    outputPortIds = flowOutputs,
                    dispatchMode = FlowDispatchMode.INDEPENDENT,
                )
                definition.id == FLOW_BRANCH -> routeBranch(flowOutputs, inputs)
                definition.id == FLOW_GATE -> routeGate(state, flowOutputs, inputs, incomingFlowPortId)
                definition.id == FLOW_ONCE -> routeOnce(state, flowOutputs, incomingFlowPortId)
                definition.id == FLOW_DO_N -> routeDoN(state, flowOutputs, inputs, incomingFlowPortId)
                definition.id == FLOW_MULTI_GATE -> routeMultiGate(
                    state = state,
                    outputs = flowOutputs,
                    inputs = inputs,
                    incomingFlowPortId = incomingFlowPortId,
                )
                else -> error("Unsupported NoCode flow node: ${definition.id}.")
            }
        }
    }

    fun resetNode(graphId: String, nodeId: String): Boolean = synchronized(lock) {
        states.remove(NodeKey(graphId, nodeId)) != null
    }

    fun resetGraph(graphId: String): Int = synchronized(lock) {
        val keys = states.keys.filter { it.graphId == graphId }
        keys.forEach(states::remove)
        keys.size
    }

    fun clear() = synchronized(lock) { states.clear() }

    fun state(graphId: String, nodeId: String): NoCodeFlowStateSnapshot? = synchronized(lock) {
        states[NodeKey(graphId, nodeId)]?.toSnapshot()
    }

    private fun routeBranch(
        outputs: List<String>,
        inputs: Map<String, Any?>,
    ): NoCodeFlowDecision {
        val condition = inputs.boolean("condition") ?: inputs.boolean("value") ?: false
        val preferred = if (condition) listOf("true", "then", "flow") else listOf("false", "else")
        val output = preferred.firstOrNull(outputs::contains)
            ?: if (outputs.size >= 2) outputs[if (condition) 0 else 1] else outputs.firstOrNull()
        return NoCodeFlowDecision(output?.let(::listOf).orEmpty())
    }

    private fun routeGate(
        state: FlowNodeState,
        outputs: List<String>,
        inputs: Map<String, Any?>,
        incomingFlowPortId: String?,
    ): NoCodeFlowDecision {
        if (!state.gateInitialized) {
            state.gateOpen = inputs.boolean("startOpen")
                ?: inputs.boolean("start_open")
                ?: true
            state.gateInitialized = true
        }

        val command = when (incomingFlowPortId?.lowercase()) {
            "open" -> "open"
            "close" -> "close"
            "toggle" -> "toggle"
            else -> inputs["command"]?.toString()?.trim()?.lowercase()
        }
        when (command) {
            "open" -> {
                state.gateOpen = true
                return NoCodeFlowDecision(emptyList())
            }
            "close" -> {
                state.gateOpen = false
                return NoCodeFlowDecision(emptyList())
            }
            "toggle" -> {
                state.gateOpen = !state.gateOpen
                return NoCodeFlowDecision(emptyList())
            }
        }
        return NoCodeFlowDecision(if (state.gateOpen) outputs.take(1) else emptyList())
    }

    private fun routeOnce(
        state: FlowNodeState,
        outputs: List<String>,
        incomingFlowPortId: String?,
    ): NoCodeFlowDecision {
        if (incomingFlowPortId.equals("reset", ignoreCase = true)) {
            state.onceConsumed = false
            return NoCodeFlowDecision(emptyList())
        }
        if (state.onceConsumed) return NoCodeFlowDecision(emptyList())
        state.onceConsumed = true
        return NoCodeFlowDecision(outputs.take(1))
    }

    private fun routeDoN(
        state: FlowNodeState,
        outputs: List<String>,
        inputs: Map<String, Any?>,
        incomingFlowPortId: String?,
    ): NoCodeFlowDecision {
        if (incomingFlowPortId.equals("reset", ignoreCase = true)) {
            state.doNExecutions = 0
            return NoCodeFlowDecision(emptyList())
        }
        val limit = (inputs.int("n") ?: inputs.int("count") ?: 1).coerceAtLeast(0)
        if (state.doNExecutions >= limit) return NoCodeFlowDecision(emptyList())
        state.doNExecutions += 1
        return NoCodeFlowDecision(outputs.take(1))
    }

    private fun routeMultiGate(
        state: FlowNodeState,
        outputs: List<String>,
        inputs: Map<String, Any?>,
        incomingFlowPortId: String?,
    ): NoCodeFlowDecision {
        if (incomingFlowPortId.equals("reset", ignoreCase = true) || inputs.boolean("reset") == true) {
            state.multiGateInitialized = false
            state.multiGateIndex = 0
            state.lastRandomIndex = null
            return NoCodeFlowDecision(emptyList())
        }
        if (outputs.isEmpty()) return NoCodeFlowDecision(emptyList())

        if (!state.multiGateInitialized) {
            state.multiGateIndex = (inputs.int("startIndex") ?: inputs.int("start_index") ?: 0)
                .coerceIn(0, outputs.lastIndex)
            state.multiGateInitialized = true
        }

        val loop = inputs.boolean("loop") ?: true
        val mode = inputs["mode"]?.toString()?.trim()?.lowercase() ?: "sequential"
        val selectedIndex = when (mode) {
            "random" -> random.nextInt(outputs.size)
            "random_no_repeat", "random no repeat", "random-no-repeat" -> {
                if (outputs.size == 1) {
                    0
                } else {
                    var candidate = random.nextInt(outputs.size)
                    while (candidate == state.lastRandomIndex) candidate = random.nextInt(outputs.size)
                    candidate
                }
            }
            else -> {
                if (!loop && state.multiGateIndex >= outputs.size) return NoCodeFlowDecision(emptyList())
                state.multiGateIndex.coerceIn(0, outputs.lastIndex)
            }
        }

        state.lastRandomIndex = selectedIndex
        if (mode == "sequential") {
            state.multiGateIndex += 1
            if (loop && state.multiGateIndex >= outputs.size) state.multiGateIndex = 0
        }
        return NoCodeFlowDecision(listOf(outputs[selectedIndex]))
    }

    private fun FlowNodeState.toSnapshot() = NoCodeFlowStateSnapshot(
        gateOpen = gateOpen,
        onceConsumed = onceConsumed,
        doNExecutions = doNExecutions,
        multiGateIndex = multiGateIndex,
        lastRandomIndex = lastRandomIndex,
    )

    private data class NodeKey(
        val graphId: String,
        val nodeId: String,
    )

    companion object {
        const val FLOW_BRANCH = "flow.branch"
        const val FLOW_GATE = "flow.gate"
        const val FLOW_ONCE = "flow.once"
        const val FLOW_DO_N = "flow.do_n"
        const val FLOW_PARALLEL = "flow.parallel"
        const val FLOW_MULTI_GATE = "flow.multi_gate"

        private val SUPPORTED_IDS = setOf(
            FLOW_BRANCH,
            FLOW_GATE,
            FLOW_ONCE,
            FLOW_DO_N,
            FLOW_PARALLEL,
            FLOW_MULTI_GATE,
        )
    }
}

private fun Map<String, Any?>.boolean(key: String): Boolean? = when (val value = this[key]) {
    is Boolean -> value
    is String -> value.toBooleanStrictOrNull()
    is Number -> value.toInt() != 0
    else -> null
}

private fun Map<String, Any?>.int(key: String): Int? = when (val value = this[key]) {
    is Number -> value.toInt()
    is String -> value.toIntOrNull()
    else -> null
}
