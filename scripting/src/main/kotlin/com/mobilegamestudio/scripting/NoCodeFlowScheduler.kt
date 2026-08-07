package com.mobilegamestudio.scripting

/** One executable flow entry. `incomingFlowPortId` preserves control-port intent. */
data class NoCodeFlowEntry(
    val nodeId: String,
    val incomingFlowPortId: String? = null,
)

/** Result returned by the node executor before the scheduler follows edges. */
sealed interface NoCodeNodeExecution {
    data class Continue(
        val decision: NoCodeFlowDecision,
    ) : NoCodeNodeExecution

    data class Failed(
        val failure: LogicExecutionResult.Failure,
    ) : NoCodeNodeExecution
}

/**
 * Deterministic depth-first flow scheduler.
 *
 * ORDERED decisions complete each selected branch before the next branch starts.
 * INDEPENDENT decisions execute every sibling branch even when one fails; the
 * first failure is returned after all siblings have had a chance to run.
 *
 * This intentionally does not create background threads. Gameplay scene changes
 * must remain on the engine thread; future asynchronous nodes will suspend/resume
 * scheduler continuations rather than mutate the scene concurrently.
 */
class NoCodeFlowScheduler(
    private val maxExecutedNodes: Int = 128,
) {
    init {
        require(maxExecutedNodes > 0) { "maxExecutedNodes must be positive." }
    }

    fun execute(
        starts: List<NoCodeFlowEntry>,
        executeNode: (NoCodeFlowEntry) -> NoCodeNodeExecution,
        outgoing: (NoCodeFlowEntry, String) -> List<NoCodeFlowEntry>,
    ): LogicExecutionResult {
        val budget = ExecutionBudget(maxExecutedNodes)
        for (start in starts) {
            val failure = executeBranch(start, budget, executeNode, outgoing)
            if (failure != null) return failure
        }
        return LogicExecutionResult.Success
    }

    private fun executeBranch(
        entry: NoCodeFlowEntry,
        budget: ExecutionBudget,
        executeNode: (NoCodeFlowEntry) -> NoCodeNodeExecution,
        outgoing: (NoCodeFlowEntry, String) -> List<NoCodeFlowEntry>,
    ): LogicExecutionResult.Failure? {
        if (!budget.consume()) {
            return failure("Limite de execução do grafo excedido (${budget.limit} nós).")
        }

        return when (val result = executeNode(entry)) {
            is NoCodeNodeExecution.Failed -> result.failure
            is NoCodeNodeExecution.Continue -> when (result.decision.dispatchMode) {
                FlowDispatchMode.ORDERED -> executeOrdered(
                    entry = entry,
                    ports = result.decision.outputPortIds,
                    budget = budget,
                    executeNode = executeNode,
                    outgoing = outgoing,
                )
                FlowDispatchMode.INDEPENDENT -> executeIndependent(
                    entry = entry,
                    ports = result.decision.outputPortIds,
                    budget = budget,
                    executeNode = executeNode,
                    outgoing = outgoing,
                )
            }
        }
    }

    private fun executeOrdered(
        entry: NoCodeFlowEntry,
        ports: List<String>,
        budget: ExecutionBudget,
        executeNode: (NoCodeFlowEntry) -> NoCodeNodeExecution,
        outgoing: (NoCodeFlowEntry, String) -> List<NoCodeFlowEntry>,
    ): LogicExecutionResult.Failure? {
        for (port in ports) {
            for (next in outgoing(entry, port)) {
                val failure = executeBranch(next, budget, executeNode, outgoing)
                if (failure != null) return failure
            }
        }
        return null
    }

    private fun executeIndependent(
        entry: NoCodeFlowEntry,
        ports: List<String>,
        budget: ExecutionBudget,
        executeNode: (NoCodeFlowEntry) -> NoCodeNodeExecution,
        outgoing: (NoCodeFlowEntry, String) -> List<NoCodeFlowEntry>,
    ): LogicExecutionResult.Failure? {
        var firstFailure: LogicExecutionResult.Failure? = null
        for (port in ports) {
            for (next in outgoing(entry, port)) {
                val failure = executeBranch(next, budget, executeNode, outgoing)
                if (failure != null && firstFailure == null) firstFailure = failure
            }
        }
        return firstFailure
    }

    private fun failure(message: String) = LogicExecutionResult.Failure(
        ScriptDiagnostic(
            severity = DiagnosticSeverity.ERROR,
            message = message,
            line = null,
            column = null,
        ),
    )

    private class ExecutionBudget(
        val limit: Int,
    ) {
        private var executed: Int = 0

        fun consume(): Boolean {
            executed += 1
            return executed <= limit
        }
    }
}
