package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.SceneDocument
import com.mobilegamestudio.core.model.TransformComponent
import com.mobilegamestudio.core.model.Vector3
import kotlin.math.sqrt

/** Read-only world-space position boundary shared by NoCode and script APIs. */
fun interface ObjectSpatialQueryHost {
    fun position(objectRef: ObjectRef): Vector3?
}

/** Scene-document adapter for editor preview/tests. A live backend can implement the same contract. */
class SceneDocumentSpatialQueryHost(
    private val documentProvider: () -> SceneDocument?,
) : ObjectSpatialQueryHost {
    override fun position(objectRef: ObjectRef): Vector3? = documentProvider()
        ?.objects
        ?.firstOrNull { it.id == objectRef.objectId }
        ?.components
        ?.filterIsInstance<TransformComponent>()
        ?.firstOrNull { it.enabled }
        ?.position
}

class ObjectDistanceRuntime(
    private val host: ObjectSpatialQueryHost,
) {
    fun position(objectRef: ObjectRef): Vector3? = host.position(objectRef)

    fun distance(a: ObjectRef, b: ObjectRef): Double? {
        val positionA = host.position(a) ?: return null
        val positionB = host.position(b) ?: return null
        return distance(positionA, positionB)
    }

    fun distance(positionA: Vector3, positionB: Vector3): Double {
        require(positionA.isFinite() && positionB.isFinite()) { "Spatial positions must be finite." }
        val dx = (positionA.x - positionB.x).toDouble()
        val dy = (positionA.y - positionB.y).toDouble()
        val dz = (positionA.z - positionB.z).toDouble()
        val result = sqrt(dx * dx + dy * dy + dz * dz)
        require(result.isFinite()) { "Computed object distance must be finite." }
        return result
    }
}

data class ProximityWatcherKey(
    val graphInstanceId: String,
    val nodeId: String,
) {
    init {
        require(graphInstanceId.isNotBlank()) { "graphInstanceId cannot be blank." }
        require(nodeId.isNotBlank()) { "nodeId cannot be blank." }
    }
}

data class ProximityWatcherSpec(
    val key: ProximityWatcherKey,
    val objectA: ObjectRef,
    val objectB: ObjectRef,
    val enterDistance: Double,
    val exitPadding: Double = DEFAULT_EXIT_PADDING,
    val emitStay: Boolean = false,
) {
    init {
        require(enterDistance.isFinite() && enterDistance > 0.0) {
            "enterDistance must be finite and positive."
        }
        require(exitPadding.isFinite() && exitPadding >= 0.0) {
            "exitPadding must be finite and non-negative."
        }
        require(objectA != objectB) { "A proximity watcher requires two different objects." }
    }

    val exitDistance: Double get() = enterDistance + exitPadding

    companion object {
        const val DEFAULT_EXIT_PADDING = 0.15
    }
}

enum class ProximityState {
    OUTSIDE,
    INSIDE,
}

enum class ProximityTransition {
    NONE,
    ENTER,
    STAY,
    EXIT,
}

data class ProximityUpdate(
    val spec: ProximityWatcherSpec,
    val previousState: ProximityState,
    val state: ProximityState,
    val transition: ProximityTransition,
    val distance: Double,
)

sealed interface ProximityEvaluation {
    data class Available(val update: ProximityUpdate) : ProximityEvaluation

    data class Unavailable(
        val spec: ProximityWatcherSpec,
        val missingObjects: Set<ObjectRef>,
    ) : ProximityEvaluation
}

/**
 * Session-owned proximity evaluator with Schmitt-trigger style hysteresis.
 *
 * Enter uses enterDistance. Once inside, Exit uses the larger exitDistance.
 * This prevents ENTER/EXIT chatter when two objects hover around the threshold.
 * State is keyed by graph instance + node, never globally by object name.
 */
class ProximityWatcherRuntime(
    private val spatial: ObjectDistanceRuntime,
) {
    private val lock = Any()
    private val specs = linkedMapOf<ProximityWatcherKey, ProximityWatcherSpec>()
    private val states = mutableMapOf<ProximityWatcherKey, ProximityState>()

    fun register(spec: ProximityWatcherSpec) = synchronized(lock) {
        specs[spec.key] = spec
        states.putIfAbsent(spec.key, ProximityState.OUTSIDE)
    }

    fun unregister(key: ProximityWatcherKey): Boolean = synchronized(lock) {
        states.remove(key)
        specs.remove(key) != null
    }

    fun clearGraph(graphInstanceId: String): Int = synchronized(lock) {
        val keys = specs.keys.filter { it.graphInstanceId == graphInstanceId }
        keys.forEach {
            specs.remove(it)
            states.remove(it)
        }
        keys.size
    }

    fun clear(): Int = synchronized(lock) {
        val count = specs.size
        specs.clear()
        states.clear()
        count
    }

    fun registeredCount(): Int = synchronized(lock) { specs.size }

    fun evaluate(key: ProximityWatcherKey): ProximityEvaluation {
        val pair = synchronized(lock) {
            val spec = specs[key] ?: throw IllegalArgumentException("Unknown proximity watcher: $key.")
            spec to states.getOrPut(key) { ProximityState.OUTSIDE }
        }
        return evaluate(pair.first, pair.second)
    }

    fun evaluateAll(): List<ProximityEvaluation> {
        val snapshot = synchronized(lock) {
            specs.values.map { spec -> spec to states.getOrPut(spec.key) { ProximityState.OUTSIDE } }
        }
        return snapshot.map { (spec, state) -> evaluate(spec, state) }
    }

    fun state(key: ProximityWatcherKey): ProximityState? = synchronized(lock) { states[key] }

    private fun evaluate(
        spec: ProximityWatcherSpec,
        previous: ProximityState,
    ): ProximityEvaluation {
        // One position snapshot per object per evaluation. Moving objects cannot
        // produce two different samples inside the same threshold decision.
        val positionA = spatial.position(spec.objectA)
        val positionB = spatial.position(spec.objectB)
        if (positionA == null || positionB == null) {
            return ProximityEvaluation.Unavailable(
                spec = spec,
                missingObjects = buildSet {
                    if (positionA == null) add(spec.objectA)
                    if (positionB == null) add(spec.objectB)
                },
            )
        }
        val distance = spatial.distance(positionA, positionB)

        val next = when (previous) {
            ProximityState.OUTSIDE -> if (distance <= spec.enterDistance) ProximityState.INSIDE else ProximityState.OUTSIDE
            ProximityState.INSIDE -> if (distance > spec.exitDistance) ProximityState.OUTSIDE else ProximityState.INSIDE
        }
        val transition = when {
            previous == ProximityState.OUTSIDE && next == ProximityState.INSIDE -> ProximityTransition.ENTER
            previous == ProximityState.INSIDE && next == ProximityState.OUTSIDE -> ProximityTransition.EXIT
            next == ProximityState.INSIDE && spec.emitStay -> ProximityTransition.STAY
            else -> ProximityTransition.NONE
        }
        synchronized(lock) {
            // Do not resurrect a watcher removed concurrently during the query.
            if (specs[spec.key] == spec) states[spec.key] = next
        }
        return ProximityEvaluation.Available(
            ProximityUpdate(spec, previous, next, transition, distance),
        )
    }
}
