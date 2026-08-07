package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.EngineEvent
import com.mobilegamestudio.core.model.EventAddress
import com.mobilegamestudio.core.model.EventPayload
import com.mobilegamestudio.core.model.ExecutionContext
import com.mobilegamestudio.core.model.ObjectRef

/** Public NoCode spelling for EngineEvent addressing. */
enum class NoCodeEventScope {
    LOCAL_GRAPH,
    OBJECT,
    SCENE,
    GLOBAL;

    companion object {
        fun parse(value: Any?): NoCodeEventScope? {
            val normalized = value?.toString()?.trim()?.lowercase()?.replace('-', '_')?.replace(' ', '_')
                ?: return null
            return when (normalized) {
                "local", "local_graph", "graph" -> LOCAL_GRAPH
                "object", "target" -> OBJECT
                "scene" -> SCENE
                "global", "project" -> GLOBAL
                else -> throw IllegalArgumentException("Escopo de evento desconhecido: $value.")
            }
        }
    }
}

enum class NoCodeEventPayloadKind {
    ANY,
    BOOL,
    NUMBER,
    TEXT,
}

data class NoCodeEventDispatch(
    val event: EngineEvent,
    val result: EventDispatchResult,
)

/**
 * Strict bridge between NoCode Send Event nodes and EngineEventBus.
 *
 * The bridge never consults selection state or a global "last object". Object,
 * scene and graph addressing comes from explicit inputs or the immutable current
 * ExecutionContext.
 */
class NoCodeEventRuntime(
    private val eventBus: EngineEventBus,
) {
    fun dispatchNode(
        definitionId: String,
        inputs: Map<String, Any?>,
        context: ExecutionContext,
    ): NoCodeEventDispatch {
        require(isSendNode(definitionId)) { "$definitionId não é um node Send Event." }

        val eventName = inputs["event"]?.toString()?.trim().orEmpty()
        require(eventName.isNotBlank()) { "Send Event exige um nome de evento." }
        require(eventName.length <= EngineEvent.MAX_EVENT_NAME_LENGTH) {
            "Nome do evento excede ${EngineEvent.MAX_EVENT_NAME_LENGTH} caracteres."
        }

        val objectAlias = definitionId.startsWith("object.send_event")
        val explicitTarget = objectRef(inputs["object"] ?: inputs["target"])
        val scope = if (objectAlias) {
            NoCodeEventScope.OBJECT
        } else {
            NoCodeEventScope.parse(inputs["scope"]) ?: NoCodeEventScope.LOCAL_GRAPH
        }
        val address = resolveAddress(
            scope = scope,
            explicitTarget = explicitTarget,
            explicitScene = inputs["scene"]?.toString()?.trim()?.takeIf(String::isNotEmpty),
            explicitGraph = inputs["graph"]?.toString()?.trim()?.takeIf(String::isNotEmpty),
            context = context,
        )
        val payload = payloadFor(payloadKind(definitionId), inputs["value"])
        val sender = context.sourceObject ?: context.senderObject
        val event = EngineEvent(
            name = eventName,
            address = address,
            payload = payload,
            sender = sender,
        )
        return NoCodeEventDispatch(
            event = event,
            result = eventBus.dispatch(event, context),
        )
    }

    fun addressForReceiver(
        definitionId: String,
        values: Map<String, String>,
        graphId: String,
        sceneId: String? = null,
        ownerObject: ObjectRef? = null,
    ): EventAddress {
        require(isReceiverNode(definitionId)) { "$definitionId não é um Custom Event receiver." }
        val scope = NoCodeEventScope.parse(values["scope"]) ?: NoCodeEventScope.LOCAL_GRAPH
        return resolveAddress(
            scope = scope,
            explicitTarget = values["target"]?.takeIf(String::isNotBlank)?.let(::ObjectRef),
            explicitScene = values["scene"]?.takeIf(String::isNotBlank),
            explicitGraph = values["graph"]?.takeIf(String::isNotBlank) ?: graphId,
            context = ExecutionContext(
                executionId = 0,
                graphId = graphId,
                sceneId = sceneId,
                sourceObject = ownerObject,
                targetObject = ownerObject,
            ),
        )
    }

    fun acceptsPayload(definitionId: String, payload: EventPayload): Boolean = when (payloadKind(definitionId)) {
        NoCodeEventPayloadKind.ANY -> true
        NoCodeEventPayloadKind.BOOL -> payload is EventPayload.Bool
        NoCodeEventPayloadKind.NUMBER -> payload is EventPayload.Number
        NoCodeEventPayloadKind.TEXT -> payload is EventPayload.Text
    }

    fun runtimeValue(payload: EventPayload): Any? = when (payload) {
        EventPayload.None -> null
        is EventPayload.Bool -> payload.value
        is EventPayload.Number -> payload.value
        is EventPayload.Text -> payload.value
        is EventPayload.Vector3Value -> payload.value
        is EventPayload.ObjectValue -> payload.value
        is EventPayload.ComponentValue -> payload.value
        is EventPayload.ListValue -> payload.values.map(::runtimeValue)
    }

    fun payloadKind(definitionId: String): NoCodeEventPayloadKind = when {
        definitionId.endsWith("_bool") -> NoCodeEventPayloadKind.BOOL
        definitionId.endsWith("_number") -> NoCodeEventPayloadKind.NUMBER
        definitionId.endsWith("_text") -> NoCodeEventPayloadKind.TEXT
        else -> NoCodeEventPayloadKind.ANY
    }

    fun isSendNode(definitionId: String): Boolean =
        definitionId == "event.send" ||
            definitionId.startsWith("event.send_") ||
            definitionId == "object.send_event" ||
            definitionId.startsWith("object.send_event_")

    fun isReceiverNode(definitionId: String): Boolean =
        definitionId == "event.custom.received" || definitionId.startsWith("event.custom.received_")

    private fun resolveAddress(
        scope: NoCodeEventScope,
        explicitTarget: ObjectRef?,
        explicitScene: String?,
        explicitGraph: String?,
        context: ExecutionContext,
    ): EventAddress = when (scope) {
        NoCodeEventScope.LOCAL_GRAPH -> EventAddress.localGraph(
            explicitGraph ?: context.graphId
            ?: throw IllegalArgumentException("Evento LOCAL_GRAPH exige graphId."),
        )
        NoCodeEventScope.OBJECT -> EventAddress.objectTarget(
            explicitTarget ?: context.targetObject
            ?: throw IllegalArgumentException("Evento OBJECT exige Target/ObjectRef explícito ou target no contexto."),
        )
        NoCodeEventScope.SCENE -> EventAddress.scene(
            explicitScene ?: context.sceneId
            ?: throw IllegalArgumentException("Evento SCENE exige sceneId explícito ou scene no contexto."),
        )
        NoCodeEventScope.GLOBAL -> EventAddress.global()
    }

    private fun payloadFor(kind: NoCodeEventPayloadKind, value: Any?): EventPayload = when (kind) {
        NoCodeEventPayloadKind.ANY -> EventPayload.fromRuntimeValue(value)
        NoCodeEventPayloadKind.BOOL -> EventPayload.Bool(
            value as? Boolean
                ?: throw IllegalArgumentException("Send Event Bool exige Boolean; recebido ${typeName(value)}."),
        )
        NoCodeEventPayloadKind.NUMBER -> {
            val number = value as? Number
                ?: throw IllegalArgumentException("Send Event Number exige Number; recebido ${typeName(value)}.")
            EventPayload.Number(number.toDouble())
        }
        NoCodeEventPayloadKind.TEXT -> EventPayload.Text(
            value as? String
                ?: throw IllegalArgumentException("Send Event Text exige String; recebido ${typeName(value)}."),
        )
    }

    private fun objectRef(value: Any?): ObjectRef? = when (value) {
        null -> null
        is ObjectRef -> value
        is EventPayload.ObjectValue -> value.value
        is String -> value.trim().takeIf(String::isNotEmpty)?.let(::ObjectRef)
        else -> throw IllegalArgumentException("Target de evento precisa ser ObjectRef; recebido ${typeName(value)}.")
    }

    private fun typeName(value: Any?): String = value?.let { it::class.simpleName } ?: "null"
}
