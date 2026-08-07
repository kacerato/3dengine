package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.EngineApiCapability
import com.mobilegamestudio.core.model.EngineApiCatalog
import com.mobilegamestudio.core.model.EventAddress
import com.mobilegamestudio.core.model.ObjectRef

/**
 * Wires canonical Engine API contracts only when the backing service exists in
 * this Play session. Missing optional backends therefore produce HANDLER_MISSING
 * instead of a fake success path.
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

        session.distanceRuntime?.let { distanceRuntime ->
            dispatcher.register("transform.get_position") { call ->
                distanceRuntime.position(call.arguments.getValue("object") as ObjectRef)
            }
            dispatcher.register("object.distance") { call ->
                val runtime = requireNotNull(session.spatialRuntime)
                runtime.evaluateDistance(call.arguments, call.context).outputs["distance"]
            }
        }

        session.componentRuntime?.let { componentRuntime ->
            dispatcher.register("component.get") { call ->
                componentRuntime.evaluate(
                    definitionId = NoCodeComponentRuntime.GET_COMPONENT,
                    inputs = call.arguments,
                    context = call.context,
                ).outputs["component"]
            }
            dispatcher.register("component.call") { call ->
                componentRuntime.executeMethod(call.arguments).outputs["result"]
            }
        }

        session.physicsRuntime?.let { physicsRuntime ->
            dispatcher.register("physics.trace_ray") { call ->
                val inputs = buildMap<String, Any?> {
                    put("origin", call.arguments.getValue("origin"))
                    put("direction", call.arguments.getValue("direction"))
                    call.arguments["distance"]?.let { put("maxDistance", it) }
                }
                physicsRuntime.execute(NoCodePhysicsRuntime.TRACE, inputs).outputs["hitData"]
            }
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
            if (!result.succeeded) error(result.failures.joinToString("; ") { it.message })
            null
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
            null
        }

        dispatcher.register("debug.log") { call ->
            host.log(LogicLogLevel.INFO, call.arguments.getValue("message") as String)
            null
        }
    }

    companion object {
        /** Conservative default sandbox: read/write scene state and diagnostics only. */
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
