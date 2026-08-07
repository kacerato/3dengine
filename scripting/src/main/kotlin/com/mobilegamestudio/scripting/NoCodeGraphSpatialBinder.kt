package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.ExecutionContext
import com.mobilegamestudio.core.model.NoCodeNodeRegistry
import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.VisualGraphDocument

data class NoCodeSpatialBindingIssue(
    val nodeId: String,
    val message: String,
)

data class NoCodeSpatialBindingResult(
    val graphInstanceId: String,
    val watcherKeys: List<ProximityWatcherKey>,
    val issues: List<NoCodeSpatialBindingIssue> = emptyList(),
) {
    val succeeded: Boolean get() = issues.isEmpty()
}

/**
 * Registers On Objects Distance nodes once per graph instance.
 * Runtime graph identity is part of every watcher key, preventing reused graph
 * assets on nearby objects from sharing proximity state.
 */
class NoCodeGraphSpatialBinder(
    private val runtime: NoCodeSpatialRuntime,
) {
    fun bind(
        graph: VisualGraphDocument,
        graphInstanceId: String,
        sceneId: String? = null,
        ownerObject: ObjectRef? = null,
    ): NoCodeSpatialBindingResult {
        require(graphInstanceId.isNotBlank()) { "graphInstanceId cannot be blank." }
        runtime.unregisterGraph(graphInstanceId)

        val keys = mutableListOf<ProximityWatcherKey>()
        val issues = mutableListOf<NoCodeSpatialBindingIssue>()
        graph.nodes.forEach { node ->
            val definition = NoCodeNodeRegistry.definitionFor(node) ?: return@forEach
            if (!runtime.isProximityEvent(definition.id)) return@forEach
            try {
                val spec = runtime.registerWatcher(
                    graphInstanceId = graphInstanceId,
                    nodeId = node.id,
                    values = node.values,
                    context = ExecutionContext(
                        executionId = 0,
                        graphId = graphInstanceId,
                        sceneId = sceneId,
                        sourceObject = ownerObject,
                    ),
                )
                keys += spec.key
            } catch (error: IllegalArgumentException) {
                issues += NoCodeSpatialBindingIssue(
                    nodeId = node.id,
                    message = error.message ?: "Invalid On Objects Distance configuration.",
                )
            }
        }

        if (issues.isNotEmpty()) {
            runtime.unregisterGraph(graphInstanceId)
            return NoCodeSpatialBindingResult(graphInstanceId, emptyList(), issues)
        }
        return NoCodeSpatialBindingResult(graphInstanceId, keys)
    }

    fun unbind(binding: NoCodeSpatialBindingResult): Int =
        runtime.unregisterGraph(binding.graphInstanceId)
}
