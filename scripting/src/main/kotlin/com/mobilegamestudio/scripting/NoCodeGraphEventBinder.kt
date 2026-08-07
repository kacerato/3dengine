package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.EventAddress
import com.mobilegamestudio.core.model.EventScope
import com.mobilegamestudio.core.model.NoCodeNodeRegistry
import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.VisualGraphDocument

data class NoCodeGraphBindingIssue(
    val nodeId: String,
    val message: String,
)

data class NoCodeGraphBindingResult(
    val owner: EventOwner,
    val subscriptionCount: Int,
    val issues: List<NoCodeGraphBindingIssue> = emptyList(),
) {
    val succeeded: Boolean get() = issues.isEmpty()
}

/**
 * Registers Custom Event receiver nodes once for the lifetime of a graph
 * instance. Rebinding the same graph instance first removes its old listeners,
 * preventing duplicate callbacks after Play reload/hot reload.
 */
class NoCodeGraphEventBinder(
    private val eventBus: EngineEventBus,
    private val eventRuntime: NoCodeEventRuntime,
) {
    fun bind(
        graph: VisualGraphDocument,
        executor: VisualGraphExecutor,
        sceneId: String? = null,
        ownerObject: ObjectRef? = null,
        runtimeGraphId: String = graph.graphId,
        instanceKey: String = defaultInstanceKey(runtimeGraphId, sceneId, ownerObject),
    ): NoCodeGraphBindingResult {
        require(runtimeGraphId.isNotBlank()) { "runtimeGraphId do graph não pode ser vazio." }
        require(instanceKey.isNotBlank()) { "instanceKey do graph não pode ser vazio." }
        val owner = EventOwner("nocode:$instanceKey")
        eventBus.unsubscribeOwner(owner)

        val issues = mutableListOf<NoCodeGraphBindingIssue>()
        val bindings = linkedSetOf<BindingKey>()

        graph.nodes.forEach { node ->
            val definition = NoCodeNodeRegistry.definitionFor(node) ?: return@forEach
            if (!eventRuntime.isReceiverNode(definition.id)) return@forEach

            val eventName = (node.values["event"] ?: node.textValue).orEmpty().trim()
            if (eventName.isBlank()) {
                issues += NoCodeGraphBindingIssue(
                    nodeId = node.id,
                    message = "Custom Event precisa de um nome explícito para registrar listener.",
                )
                return@forEach
            }
            val address = try {
                eventRuntime.addressForReceiver(
                    definitionId = definition.id,
                    values = node.values,
                    graphId = runtimeGraphId,
                    sceneId = sceneId,
                    ownerObject = ownerObject,
                )
            } catch (error: IllegalArgumentException) {
                issues += NoCodeGraphBindingIssue(
                    nodeId = node.id,
                    message = error.message ?: "Endereço inválido de Custom Event.",
                )
                return@forEach
            }
            bindings += BindingKey(eventName, address)
        }

        bindings.forEach { binding ->
            subscribe(owner, binding.address, binding.eventName) { event, context ->
                when (val result = executor.emitEngineEvent(graph, event, context)) {
                    LogicExecutionResult.Success -> Unit
                    is LogicExecutionResult.Failure -> throw NoCodeGraphEventExecutionException(
                        result.diagnostic.message,
                    )
                }
            }
        }

        return NoCodeGraphBindingResult(
            owner = owner,
            subscriptionCount = bindings.size,
            issues = issues,
        )
    }

    fun unbind(result: NoCodeGraphBindingResult): Int = eventBus.unsubscribeOwner(result.owner)

    private fun subscribe(
        owner: EventOwner,
        address: EventAddress,
        eventName: String,
        listener: EngineEventListener,
    ): EventSubscriptionToken = when (address.scope) {
        EventScope.LOCAL_GRAPH -> eventBus.subscribeLocalGraph(
            owner = owner,
            graphId = requireNotNull(address.graphId),
            eventName = eventName,
            listener = listener,
        )
        EventScope.OBJECT -> eventBus.subscribeObject(
            owner = owner,
            objectRef = requireNotNull(address.objectRef),
            eventName = eventName,
            listener = listener,
        )
        EventScope.SCENE -> eventBus.subscribeScene(
            owner = owner,
            sceneId = requireNotNull(address.sceneId),
            eventName = eventName,
            listener = listener,
        )
        EventScope.GLOBAL -> eventBus.subscribeGlobal(
            owner = owner,
            eventName = eventName,
            listener = listener,
        )
    }

    private data class BindingKey(
        val eventName: String,
        val address: EventAddress,
    )

    private class NoCodeGraphEventExecutionException(message: String) : RuntimeException(message)

    companion object {
        private fun defaultInstanceKey(
            runtimeGraphId: String,
            sceneId: String?,
            ownerObject: ObjectRef?,
        ): String = listOfNotNull(
            sceneId?.let { "scene=$it" },
            ownerObject?.objectId?.let { "object=$it" },
            "graph=$runtimeGraphId",
        ).joinToString("|")
    }
}
