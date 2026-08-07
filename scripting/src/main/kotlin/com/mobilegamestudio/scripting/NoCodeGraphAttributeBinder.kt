package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.AttributeAddress
import com.mobilegamestudio.core.model.EventAddress
import com.mobilegamestudio.core.model.EventScope
import com.mobilegamestudio.core.model.ExecutionContext
import com.mobilegamestudio.core.model.NoCodeNodeRegistry
import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.VisualGraphDocument

data class NoCodeAttributeBindingIssue(
    val nodeId: String,
    val message: String,
)

data class NoCodeAttributeBindingResult(
    val owner: EventOwner,
    val subscriptionCount: Int,
    val issues: List<NoCodeAttributeBindingIssue> = emptyList(),
) {
    val succeeded: Boolean get() = issues.isEmpty()
}

/**
 * Registers `On Attribute Changed` nodes against the exact Attribute address.
 *
 * A graph listening to door-a.locked is subscribed to door-a's OBJECT address;
 * door-b can use the same attribute name without triggering the first graph.
 * runtimeGraphId identifies the concrete graph instance, not only the graph asset.
 */
class NoCodeGraphAttributeBinder(
    private val eventBus: EngineEventBus,
    private val attributeRuntime: NoCodeAttributeRuntime,
) {
    fun bind(
        graph: VisualGraphDocument,
        executor: VisualGraphExecutor,
        sceneId: String? = null,
        ownerObject: ObjectRef? = null,
        runtimeGraphId: String = graph.graphId,
        instanceKey: String = defaultInstanceKey(runtimeGraphId, sceneId, ownerObject),
    ): NoCodeAttributeBindingResult {
        require(runtimeGraphId.isNotBlank()) { "runtimeGraphId do graph não pode ser vazio." }
        require(instanceKey.isNotBlank()) { "instanceKey do graph não pode ser vazio." }
        val owner = EventOwner("nocode-attribute:$instanceKey")
        eventBus.unsubscribeOwner(owner)

        val issues = mutableListOf<NoCodeAttributeBindingIssue>()
        val bindings = linkedSetOf<BindingKey>()

        graph.nodes.forEach { node ->
            val definition = NoCodeNodeRegistry.definitionFor(node) ?: return@forEach
            if (!attributeRuntime.isChangedNode(definition.id)) return@forEach

            val address = try {
                attributeRuntime.addressForWatcher(
                    values = node.values,
                    graphId = runtimeGraphId,
                    sceneId = sceneId,
                    ownerObject = ownerObject,
                )
            } catch (error: IllegalArgumentException) {
                issues += NoCodeAttributeBindingIssue(
                    nodeId = node.id,
                    message = error.message ?: "Endereço inválido de Attribute Changed.",
                )
                return@forEach
            }
            bindings += BindingKey(
                eventName = attributeRuntime.eventName(address),
                address = address,
            )
        }

        bindings.forEach { binding ->
            subscribe(
                owner = owner,
                eventAddress = attributeRuntime.eventAddress(binding.address),
                eventName = binding.eventName,
            ) { event, dispatchContext ->
                val receiverContext = ExecutionContext(
                    executionId = dispatchContext.executionId,
                    graphId = runtimeGraphId,
                    sceneId = sceneId ?: event.address.sceneId ?: dispatchContext.sceneId,
                    sourceObject = ownerObject,
                    targetObject = event.address.objectRef,
                    senderObject = event.sender ?: dispatchContext.senderObject,
                    frameIndex = dispatchContext.frameIndex,
                    event = event,
                )
                when (val result = executor.emitEngineEvent(graph, event, receiverContext)) {
                    LogicExecutionResult.Success -> Unit
                    is LogicExecutionResult.Failure -> throw NoCodeAttributeEventExecutionException(
                        result.diagnostic.message,
                    )
                }
            }
        }

        return NoCodeAttributeBindingResult(
            owner = owner,
            subscriptionCount = bindings.size,
            issues = issues,
        )
    }

    fun unbind(result: NoCodeAttributeBindingResult): Int = eventBus.unsubscribeOwner(result.owner)

    private fun subscribe(
        owner: EventOwner,
        eventAddress: EventAddress,
        eventName: String,
        listener: EngineEventListener,
    ): EventSubscriptionToken = when (eventAddress.scope) {
        EventScope.LOCAL_GRAPH -> eventBus.subscribeLocalGraph(
            owner = owner,
            graphId = requireNotNull(eventAddress.graphId),
            eventName = eventName,
            listener = listener,
        )
        EventScope.OBJECT -> eventBus.subscribeObject(
            owner = owner,
            objectRef = requireNotNull(eventAddress.objectRef),
            eventName = eventName,
            listener = listener,
        )
        EventScope.SCENE -> eventBus.subscribeScene(
            owner = owner,
            sceneId = requireNotNull(eventAddress.sceneId),
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
        val address: AttributeAddress,
    )

    private class NoCodeAttributeEventExecutionException(message: String) : RuntimeException(message)

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
