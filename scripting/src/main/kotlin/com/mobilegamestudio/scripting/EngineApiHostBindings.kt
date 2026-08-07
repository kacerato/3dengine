package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.EngineApiCapability
import com.mobilegamestudio.core.model.EngineApiCatalog
import com.mobilegamestudio.core.model.EventAddress
import com.mobilegamestudio.core.model.ObjectRef

/**
 * Wires canonical Engine API contracts to the runtime services that actually
 * exist today. Contract-only APIs are intentionally not registered here.
 */
class EngineApiHostBindings(
    private val host: LogicSceneHost,
    private val session: NoCodeRuntimeSession,
) {
    fun install(dispatcher: EngineApiDispatcher) {
        dispatcher.register("scene.find_object") { call ->
            val name = call.arguments.getValue("name") as String
            host.findObjectIdByName(name)?.let(::ObjectRef)
        }

        dispatcher.register("event.send") { call ->
            val eventName = call.arguments.getValue("event") as String
            val value = call.arguments["value"]
            val address = when {
                call.context.sceneId != null -> EventAddress.scene(call.context.sceneId)
                call.context.graphId != null -> EventAddress.localGraph(call.context.graphId)
                else -> EventAddress.global()
            }
            val result = session.dispatchRuntimeEvent(
                name = eventName,
                address = address,
                value = value,
                sender = call.context.sourceObject ?: call.context.senderObject,
                context = call.context,
            )
            if (!result.succeeded) {
                error(result.failures.joinToString("; ") { it.message })
            }
            Unit
        }

        dispatcher.register("attribute.get") { call ->
            val read = session.attributeRuntime.readNode(
                definitionId = "attribute.get",
                inputs = call.arguments,
                context = call.context,
            )
            session.attributeRuntime.runtimeValue(read.value)
        }

        dispatcher.register("attribute.set") { call ->
            val mutation = session.attributeRuntime.setNode(
                definitionId = "attribute.set",
                inputs = call.arguments,
                context = call.context,
            )
            if (!mutation.dispatch.notificationSucceeded) {
                val message = mutation.dispatch.eventResult
                    ?.failures
                    ?.joinToString("; ") { it.message }
                    .orEmpty()
                    .ifBlank { "Attribute atualizado, mas uma notificação falhou." }
                host.log(LogicLogLevel.WARNING, message)
            }
            Unit
        }

        dispatcher.register("debug.log") { call ->
            host.log(LogicLogLevel.INFO, call.arguments.getValue("message") as String)
            Unit
        }
    }

    companion object {
        /** Conservative default sandbox: no files, network, audio or physics writes. */
        val DEFAULT_RUNTIME_CAPABILITIES: Set<EngineApiCapability> = setOf(
            EngineApiCapability.SCENE_READ,
            EngineApiCapability.SCENE_WRITE,
            EngineApiCapability.DEBUG,
        )

        fun createDispatcher(
            host: LogicSceneHost,
            session: NoCodeRuntimeSession,
            grantedCapabilities: Set<EngineApiCapability> = DEFAULT_RUNTIME_CAPABILITIES,
        ): EngineApiDispatcher = EngineApiDispatcher(
            registry = EngineApiCatalog.registry,
            grantedCapabilities = grantedCapabilities,
        ).also { dispatcher ->
            EngineApiHostBindings(host, session).install(dispatcher)
        }
    }
}
