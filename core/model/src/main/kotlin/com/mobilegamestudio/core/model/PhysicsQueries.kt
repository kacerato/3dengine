package com.mobilegamestudio.core.model

import kotlin.math.sqrt

/** Immutable 3D ray used by runtime physics queries. */
data class Ray3(
    val origin: Vector3,
    val direction: Vector3,
) {
    init {
        require(origin.isFinite()) { "Ray origin must be finite." }
        require(direction.isFinite()) { "Ray direction must be finite." }
        require(direction.lengthSquared() > MIN_DIRECTION_LENGTH_SQUARED) {
            "Ray direction cannot be zero."
        }
    }

    val normalizedDirection: Vector3
        get() = direction.normalized()

    companion object {
        private const val MIN_DIRECTION_LENGTH_SQUARED = 1e-8f
    }
}

/**
 * Backend-neutral ray query. `layerMask` is opaque to NoCode and interpreted by
 * the physics backend, so changing renderer/physics implementations does not
 * alter graph contracts.
 */
data class RayQuery(
    val ray: Ray3,
    val maxDistance: Float = 100f,
    val layerMask: Long = ALL_LAYERS,
    val ignoredObjects: Set<ObjectRef> = emptySet(),
    val includeTriggers: Boolean = false,
    val maxHits: Int = 1,
) {
    init {
        require(maxDistance.isFinite() && maxDistance > 0f) {
            "Ray maxDistance must be finite and positive."
        }
        require(maxHits in 1..MAX_HITS_LIMIT) {
            "Ray maxHits must be within 1..$MAX_HITS_LIMIT."
        }
    }

    companion object {
        const val ALL_LAYERS: Long = -1L
        const val MAX_HITS_LIMIT = 256
    }
}

/** Sorted, validated hit collection returned by a physics backend. */
data class RayQueryResult(
    val hits: List<RayHit>,
) {
    init {
        require(hits.zipWithNext().all { (a, b) -> a.distance <= b.distance }) {
            "Ray hits must be sorted nearest-first."
        }
    }

    val hit: Boolean get() = hits.isNotEmpty()
    val firstHit: RayHit? get() = hits.firstOrNull()

    companion object {
        val MISS = RayQueryResult(emptyList())

        fun normalized(
            query: RayQuery,
            rawHits: Iterable<RayHit>,
        ): RayQueryResult {
            val filtered = rawHits
                .asSequence()
                .filter { it.distance <= query.maxDistance }
                .filter { it.objectRef !in query.ignoredObjects }
                .sortedWith(
                    compareBy<RayHit> { it.distance }
                        .thenBy { it.objectRef.objectId }
                        .thenBy { it.colliderRef?.componentId.orEmpty() },
                )
                .take(query.maxHits)
                .toList()
            return RayQueryResult(filtered)
        }
    }
}

private fun Vector3.lengthSquared(): Float = x * x + y * y + z * z

private fun Vector3.normalized(): Vector3 {
    val length = sqrt(lengthSquared())
    return Vector3(x / length, y / length, z / length)
}
