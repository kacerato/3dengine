package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.AttributeValue
import com.mobilegamestudio.core.model.EventPayload
import com.mobilegamestudio.core.model.ExecutionContext
import com.mobilegamestudio.core.model.ObjectRef

/** Structured value output for Object Distance. */
data class NoCodeSpatialValueResult(
    val outputs: Map<String, Any?>,
)

data class NoCodeProximityEvent(
    val key: ProximityWatcherKey,
    val transition: ProximityTransition,
    val distance: Double,
    val objectA: ObjectRef,
    val objectB: ObjectRef,
) {
    val outputPortId: String = when (transition) {
        ProximityTransition.ENTER -> "enter"
        ProximityTransition.STAY -> "stay"
        ProximityTransition.EXIT -> "exit"
        ProximityTransition.NONE -> ""
    }
}

/**
 * Visual-scripting facade over spatial queries and proximity watchers.
 *
 * NoCode stores literal ObjectRefs as object IDs. Connected Object ports are
 * supplied as real ObjectRef values by the graph evaluator. Fallback to source
 * and target is explicit and deterministic for interaction graphs.
 */
class NoCodeSpatialRuntime(
    private val distanceRuntime: ObjectDistanceRuntime,
    val watchers: ProximityWatcherRuntime = ProximityWatcherRuntime(distanceRuntime),
) {
    fun supportsValueNode(definitionId: String): Boolean = definitionId == OBJECT_DISTANCE
    fun isProximityEvent(definitionId: String): Boolean = definitionId == OBJECTS_DISTANCE_EVENT

    fun evaluateDistance(
        inputs: Map<String, Any?>,
        context: ExecutionContext,
    ): NoCodeSpatialValueResult {
        val a = objectRef(inputs["a"]) ?: context.sourceObject
            ?: throw IllegalArgumentException("Object Distance requires Object A or sourceObject.")
        val b = objectRef(inputs["b"]) ?: context.targetObject
            ?: throw IllegalArgumentException("Object Distance requires Object B or targetObject.")
        val distance = distanceRuntime.distance(a, b)
            ?: throw IllegalArgumentException(
                "Object Distance cannot resolve world position for ${a.objectId} or ${b.objectId}.",
            )
        return NoCodeSpatialValueResult(mapOf("distance" to distance))
    }

    fun registerWatcher(
        graphInstanceId: String,
        nodeId: String,
        values: Map<String, String>,
        context: ExecutionContext,
    ): ProximityWatcherSpec {
        val a = objectRef(values["a"]) ?: context.sourceObject
            ?: throw IllegalArgumentException("On Objects Distance requires Object A or graph owner/source.")
        val b = objectRef(values["b"]) ?: context.targetObject
            ?: throw IllegalArgumentException("On Objects Distance requires Object B or targetObject.")
        val enterDistance = values["enterDistance"]?.toDoubleOrNull()
            ?: throw IllegalArgumentException("On Objects Distance requires a numeric Enter Distance.")
        val exitPadding = values["exitPadding"]?.toDoubleOrNull()
            ?: ProximityWatcherSpec.DEFAULT_EXIT_PADDING
        val emitStay = values["emitStay"]?.toBooleanStrictOrNull() ?: false
        val spec = ProximityWatcherSpec(
            key = ProximityWatcherKey(graphInstanceId, nodeId),
            objectA = a,
            objectB = b,
            enterDistance = enterDistance,
            exitPadding = exitPadding,
            emitStay = emitStay,
        )
        watchers.register(spec)
        return spec
    }

    fun evaluateWatchers(): List<NoCodeProximityEvent> = watchers.evaluateAll()
        .mapNotNull { evaluation ->
            val update = (evaluation as? ProximityEvaluation.Available)?.update ?: return@mapNotNull null
            if (update.transition == ProximityTransition.NONE) return@mapNotNull null
            NoCodeProximityEvent(
                key = update.spec.key,
                transition = update.transition,
                distance = update.distance,
                objectA = update.spec.objectA,
                objectB = update.spec.objectB,
            )
        }

    fun unregisterGraph(graphInstanceId: String): Int = watchers.clearGraph(graphInstanceId)

    private fun objectRef(value: Any?): ObjectRef? = when (value) {
        null -> null
        is ObjectRef -> value
        is EventPayload.ObjectValue -> value.value
        is AttributeValue.ObjectValue -> value.value
        is String -> value.trim().takeIf(String::isNotEmpty)?.let(::ObjectRef)
        else -> throw IllegalArgumentException("Spatial object must be ObjectRef; received ${value::class.simpleName}.")
    }

    companion object {
        const val OBJECT_DISTANCE = "object.distance"
        const val OBJECTS_DISTANCE_EVENT = "event.objects_distance"
    }
}
