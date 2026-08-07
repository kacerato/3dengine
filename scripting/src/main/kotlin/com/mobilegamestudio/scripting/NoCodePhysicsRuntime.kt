package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.AttributeValue
import com.mobilegamestudio.core.model.EventPayload
import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.Ray3
import com.mobilegamestudio.core.model.RayHit
import com.mobilegamestudio.core.model.RayQuery
import com.mobilegamestudio.core.model.RayQueryResult
import com.mobilegamestudio.core.model.Vector3

/** Physics backend contract consumed by NoCode, Java/Lua/Python bridges and tools. */
fun interface PhysicsQueryHost {
    /** Returns hits for the query. The runtime re-sorts/re-filters defensively. */
    fun traceRay(query: RayQuery): RayQueryResult
}

data class NoCodePhysicsExecution(
    val decision: NoCodeFlowDecision,
    val outputs: Map<String, Any?>,
)

/** Structured execution of Trace Ray nodes; no renderer/backend assumptions. */
class NoCodePhysicsRuntime(
    private val queryHost: PhysicsQueryHost,
) {
    fun supports(definitionId: String): Boolean = isTraceNode(definitionId)

    fun execute(
        definitionId: String,
        inputs: Map<String, Any?>,
    ): NoCodePhysicsExecution {
        require(supports(definitionId)) { "$definitionId não é um Physics Query suportado." }
        val query = buildQuery(definitionId, inputs)
        val backendResult = queryHost.traceRay(query)
        val result = RayQueryResult.normalized(query, backendResult.hits)
        return if (definitionId == TRACE_ALL) {
            allHits(result)
        } else {
            firstHit(result)
        }
    }

    fun buildQuery(
        definitionId: String,
        inputs: Map<String, Any?>,
    ): RayQuery {
        require(supports(definitionId)) { "$definitionId não é um Physics Query suportado." }
        val origin = inputs.vector3("origin")
            ?: throw IllegalArgumentException("Trace Ray exige Origin Vector3.")
        val direction = inputs.vector3("direction")
            ?: throw IllegalArgumentException("Trace Ray exige Direction Vector3.")
        val maxDistance = inputs.float("maxDistance") ?: DEFAULT_MAX_DISTANCE
        val layerMask = inputs.long("layerMask") ?: RayQuery.ALL_LAYERS
        val includeTriggers = inputs.boolean("includeTriggers") ?: false
        val ignored = linkedSetOf<ObjectRef>()
        objectRef(inputs["ignoreObject"])?.let(ignored::add)
        val ignoreList = inputs["ignoreObjects"]
        if (ignoreList != null) {
            require(ignoreList is List<*>) { "Ignore Objects precisa ser uma lista de ObjectRef." }
            ignoreList.forEach { item ->
                objectRef(item)?.let(ignored::add)
            }
        }
        val maxHits = if (definitionId == TRACE_ALL) {
            (inputs.int("maxHits") ?: DEFAULT_MAX_HITS).coerceIn(1, RayQuery.MAX_HITS_LIMIT)
        } else {
            1
        }
        return RayQuery(
            ray = Ray3(origin, direction),
            maxDistance = maxDistance,
            layerMask = layerMask,
            ignoredObjects = ignored,
            includeTriggers = includeTriggers,
            maxHits = maxHits,
        )
    }

    private fun firstHit(result: RayQueryResult): NoCodePhysicsExecution {
        val hit = result.firstHit
        return NoCodePhysicsExecution(
            decision = NoCodeFlowDecision(listOf(if (hit == null) "miss" else "hit")),
            outputs = hitOutputs(hit),
        )
    }

    private fun allHits(result: RayQueryResult): NoCodePhysicsExecution {
        val first = result.firstHit
        return NoCodePhysicsExecution(
            decision = NoCodeFlowDecision(listOf(if (result.hit) "hit" else "miss")),
            outputs = buildMap {
                put("didHit", result.hit)
                put("hits", result.hits)
                put("count", result.hits.size.toDouble())
                put("object", first?.objectRef)
                put("point", first?.point)
                put("distance", first?.distance?.toDouble())
            },
        )
    }

    private fun hitOutputs(hit: RayHit?): Map<String, Any?> = buildMap {
        put("didHit", hit != null)
        put("object", hit?.objectRef)
        put("collider", hit?.colliderRef)
        put("point", hit?.point)
        put("normal", hit?.normal)
        put("distance", hit?.distance?.toDouble())
        put("hitData", hit)
    }

    private fun objectRef(value: Any?): ObjectRef? = when (value) {
        null -> null
        is ObjectRef -> value
        is EventPayload.ObjectValue -> value.value
        is AttributeValue.ObjectValue -> value.value
        is String -> value.trim().takeIf(String::isNotEmpty)?.let(::ObjectRef)
        else -> throw IllegalArgumentException(
            "Ignore Object precisa ser ObjectRef; recebido ${value::class.simpleName}.",
        )
    }

    companion object {
        const val RAYCAST_ALIAS = "physics.raycast"
        const val TRACE = "physics.trace_ray"
        const val TRACE_ALL = "physics.trace_ray_all"
        const val DEFAULT_MAX_DISTANCE = 100f
        const val DEFAULT_MAX_HITS = 32

        private val SUPPORTED_IDS = setOf(RAYCAST_ALIAS, TRACE, TRACE_ALL)

        fun isTraceNode(definitionId: String): Boolean = definitionId in SUPPORTED_IDS
    }
}

private fun Map<String, Any?>.vector3(key: String): Vector3? = when (val value = this[key]) {
    is Vector3 -> value
    is NoCodeVector -> value.components
        .takeIf { it.size == 3 }
        ?.let { components ->
            Vector3(
                components[0].toFloat(),
                components[1].toFloat(),
                components[2].toFloat(),
            )
        }
    is AttributeValue.Vector3Value -> value.value
    is EventPayload.Vector3Value -> value.value
    else -> null
}

private fun Map<String, Any?>.boolean(key: String): Boolean? = when (val value = this[key]) {
    is Boolean -> value
    is Number -> value.toInt() != 0
    is String -> value.toBooleanStrictOrNull()
    else -> null
}

private fun Map<String, Any?>.float(key: String): Float? = when (val value = this[key]) {
    is Number -> value.toFloat().takeIf(Float::isFinite)
    is String -> value.toFloatOrNull()?.takeIf(Float::isFinite)
    else -> null
}

private fun Map<String, Any?>.long(key: String): Long? = when (val value = this[key]) {
    is Number -> value.toLong()
    is String -> value.toLongOrNull()
    else -> null
}

private fun Map<String, Any?>.int(key: String): Int? = when (val value = this[key]) {
    is Number -> value.toInt()
    is String -> value.toIntOrNull()
    else -> null
}
