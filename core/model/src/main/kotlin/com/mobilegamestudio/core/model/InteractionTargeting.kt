package com.mobilegamestudio.core.model

import kotlinx.serialization.Serializable

/** Typed result of a physics trace used by NoCode and script runtimes. */
@Serializable
data class RayHit(
    val objectRef: ObjectRef,
    val colliderRef: ComponentRef? = null,
    val point: Vector3,
    val normal: Vector3,
    val distance: Float,
) {
    init {
        require(distance.isFinite() && distance >= 0f) { "RayHit distance must be finite and non-negative." }
        require(point.isFinite()) { "RayHit point must be finite." }
        require(normal.isFinite()) { "RayHit normal must be finite." }
        require(colliderRef == null || colliderRef.objectRef == objectRef) {
            "RayHit colliderRef must belong to the hit object."
        }
    }
}

/**
 * One candidate supplied by the physics/interaction layer.
 *
 * `aimAlignment` is normalized to 0..1 where 1 means the camera is directly
 * aligned with the candidate. Priority is integer and intentionally dominates
 * normal distance/aim differences when authors explicitly raise it.
 */
data class InteractionCandidate(
    val objectRef: ObjectRef,
    val componentRef: ComponentRef? = null,
    val hit: RayHit? = null,
    val distance: Float,
    val aimAlignment: Float,
    val priority: Int = 0,
    val enabled: Boolean = true,
) {
    init {
        require(distance.isFinite() && distance >= 0f) {
            "Interaction candidate distance must be finite and non-negative."
        }
        require(aimAlignment.isFinite() && aimAlignment in 0f..1f) {
            "Interaction candidate aimAlignment must be within 0..1."
        }
        require(componentRef == null || componentRef.objectRef == objectRef) {
            "Interaction componentRef must belong to the candidate object."
        }
        require(hit == null || hit.objectRef == objectRef) {
            "Interaction RayHit must belong to the candidate object."
        }
    }
}

data class InteractionResolverConfig(
    val maxDistance: Float = 3f,
    val retainDistancePadding: Float = 0.3f,
    val minAimAlignment: Float = 0.82f,
    val retainAimAlignment: Float = 0.74f,
    val aimWeight: Float = 0.55f,
    val distanceWeight: Float = 0.45f,
    val priorityWeight: Float = 1f,
    val currentTargetBonus: Float = 0.12f,
    val switchAdvantage: Float = 0.08f,
) {
    init {
        require(maxDistance.isFinite() && maxDistance > 0f) { "maxDistance must be finite and positive." }
        require(retainDistancePadding.isFinite() && retainDistancePadding >= 0f) {
            "retainDistancePadding must be finite and non-negative."
        }
        require(minAimAlignment.isFinite() && minAimAlignment in 0f..1f) {
            "minAimAlignment must be within 0..1."
        }
        require(retainAimAlignment.isFinite() && retainAimAlignment in 0f..minAimAlignment) {
            "retainAimAlignment must be within 0..minAimAlignment."
        }
        require(aimWeight.isFinite() && aimWeight >= 0f) { "aimWeight must be non-negative." }
        require(distanceWeight.isFinite() && distanceWeight >= 0f) { "distanceWeight must be non-negative." }
        require(priorityWeight.isFinite() && priorityWeight >= 0f) { "priorityWeight must be non-negative." }
        require(currentTargetBonus.isFinite() && currentTargetBonus >= 0f) {
            "currentTargetBonus must be non-negative."
        }
        require(switchAdvantage.isFinite() && switchAdvantage >= 0f) {
            "switchAdvantage must be non-negative."
        }
        require(aimWeight + distanceWeight > 0f) {
            "At least one spatial interaction weight must be positive."
        }
    }
}

data class InteractionTarget(
    val objectRef: ObjectRef,
    val componentRef: ComponentRef?,
    val hit: RayHit?,
    val distance: Float,
    val aimAlignment: Float,
    val priority: Int,
    val score: Float,
)

enum class InteractionResolutionReason {
    NONE,
    ACQUIRED,
    RETAINED,
    SWITCHED,
    LOST,
}

data class InteractionResolution(
    val target: InteractionTarget?,
    val previousTarget: ObjectRef?,
    val reason: InteractionResolutionReason,
) {
    val changed: Boolean get() = previousTarget != target?.objectRef
}

/**
 * Chooses exactly one interaction target without using mutable global state.
 *
 * The caller owns `currentTarget` (usually per player/session). The resolver
 * adds hysteresis and a sticky bonus so two close objects do not alternate on
 * every frame. Explicit priority can still override the current target.
 */
class InteractionTargetResolver(
    private val config: InteractionResolverConfig = InteractionResolverConfig(),
) {
    fun resolve(
        candidates: List<InteractionCandidate>,
        currentTarget: ObjectRef? = null,
    ): InteractionResolution {
        val enabled = candidates.filter(InteractionCandidate::enabled)
        val retainedCurrent = currentTarget?.let { current ->
            enabled
                .asSequence()
                .filter { it.objectRef == current }
                .filter(::eligibleForRetention)
                .map { scored(it, isCurrent = true) }
                .sortedWith(targetComparator)
                .firstOrNull()
        }

        val bestChallenger = enabled
            .asSequence()
            .filter(::eligibleForAcquisition)
            .filter { candidate -> candidate.objectRef != currentTarget }
            .map { scored(it, isCurrent = false) }
            .sortedWith(targetComparator)
            .firstOrNull()

        if (retainedCurrent != null) {
            if (bestChallenger == null || bestChallenger.score < retainedCurrent.score + config.switchAdvantage) {
                return InteractionResolution(
                    target = retainedCurrent,
                    previousTarget = currentTarget,
                    reason = InteractionResolutionReason.RETAINED,
                )
            }
            return InteractionResolution(
                target = bestChallenger,
                previousTarget = currentTarget,
                reason = InteractionResolutionReason.SWITCHED,
            )
        }

        val best = enabled
            .asSequence()
            .filter(::eligibleForAcquisition)
            .map { scored(it, isCurrent = false) }
            .sortedWith(targetComparator)
            .firstOrNull()

        if (best != null) {
            return InteractionResolution(
                target = best,
                previousTarget = currentTarget,
                reason = if (currentTarget == null) {
                    InteractionResolutionReason.ACQUIRED
                } else {
                    InteractionResolutionReason.SWITCHED
                },
            )
        }

        return InteractionResolution(
            target = null,
            previousTarget = currentTarget,
            reason = if (currentTarget == null) {
                InteractionResolutionReason.NONE
            } else {
                InteractionResolutionReason.LOST
            },
        )
    }

    private fun eligibleForAcquisition(candidate: InteractionCandidate): Boolean =
        candidate.distance <= config.maxDistance && candidate.aimAlignment >= config.minAimAlignment

    private fun eligibleForRetention(candidate: InteractionCandidate): Boolean =
        candidate.distance <= config.maxDistance + config.retainDistancePadding &&
            candidate.aimAlignment >= config.retainAimAlignment

    private fun scored(candidate: InteractionCandidate, isCurrent: Boolean): InteractionTarget {
        val normalizedDistance = (candidate.distance / config.maxDistance).coerceIn(0f, 1f)
        val distanceScore = (1f - normalizedDistance) * config.distanceWeight
        val aimScore = candidate.aimAlignment * config.aimWeight
        val priorityScore = candidate.priority * config.priorityWeight
        val stickyScore = if (isCurrent) config.currentTargetBonus else 0f
        return InteractionTarget(
            objectRef = candidate.objectRef,
            componentRef = candidate.componentRef,
            hit = candidate.hit,
            distance = candidate.distance,
            aimAlignment = candidate.aimAlignment,
            priority = candidate.priority,
            score = priorityScore + aimScore + distanceScore + stickyScore,
        )
    }

    private val targetComparator = compareByDescending<InteractionTarget> { it.score }
        .thenByDescending { it.priority }
        .thenByDescending { it.aimAlignment }
        .thenBy { it.distance }
        .thenBy { it.objectRef.objectId }
}
