package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.ColliderComponent
import com.mobilegamestudio.core.model.ColliderShape
import com.mobilegamestudio.core.model.ComponentRef
import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.PhysicsQueryFilterComponent
import com.mobilegamestudio.core.model.RayHit
import com.mobilegamestudio.core.model.RayQuery
import com.mobilegamestudio.core.model.RayQueryResult
import com.mobilegamestudio.core.model.SceneDocument
import com.mobilegamestudio.core.model.TransformComponent
import com.mobilegamestudio.core.model.Vector3
import kotlin.math.abs
import kotlin.math.cos
import kotlin.math.max
import kotlin.math.min
import kotlin.math.sin
import kotlin.math.sqrt

/**
 * SceneDocument physics-query backend used by editor Play and tests.
 *
 * It matches the current renderer model: each object's TransformComponent is
 * applied directly. Parent/world transform composition must be introduced in
 * renderer and physics together so visible geometry and query geometry never
 * disagree.
 */
class SceneDocumentPhysicsQueryHost(
    private val snapshotProvider: () -> SceneDocument,
) : PhysicsQueryHost {
    override fun traceRay(query: RayQuery): RayQueryResult {
        val document = snapshotProvider()
        val direction = query.ray.normalizedDirection
        val rawHits = buildList {
            document.objects.forEach { objectValue ->
                if (!objectValue.enabled) return@forEach
                val objectRef = ObjectRef(objectValue.id)
                if (objectRef in query.ignoredObjects) return@forEach

                val filter = objectValue.components
                    .filterIsInstance<PhysicsQueryFilterComponent>()
                    .firstOrNull { it.enabled }
                val layer = filter?.layer ?: PhysicsQueryFilterComponent.DEFAULT_LAYER
                val isTrigger = filter?.isTrigger ?: false
                if (!layerIncluded(query.layerMask, layer)) return@forEach
                if (isTrigger && !query.includeTriggers) return@forEach

                val transform = objectValue.components
                    .filterIsInstance<TransformComponent>()
                    .firstOrNull { it.enabled }
                    ?: return@forEach
                objectValue.components
                    .filterIsInstance<ColliderComponent>()
                    .filter { it.enabled }
                    .forEach { collider ->
                        intersect(
                            objectRef = objectRef,
                            transform = transform,
                            collider = collider,
                            rayOrigin = query.ray.origin,
                            rayDirection = direction,
                            maxDistance = query.maxDistance,
                        )?.let(::add)
                    }
            }
        }
        return RayQueryResult.normalized(query, rawHits)
    }

    private fun intersect(
        objectRef: ObjectRef,
        transform: TransformComponent,
        collider: ColliderComponent,
        rayOrigin: Vector3,
        rayDirection: Vector3,
        maxDistance: Float,
    ): RayHit? {
        val scale = transform.scale.absolute()
        if (scale.x <= EPSILON || scale.y <= EPSILON || scale.z <= EPSILON) return null
        val rotation = transform.rotationEulerDegrees
        val scaledCenter = collider.center.multiply(scale)
        val worldCenter = transform.position + rotateEuler(scaledCenter, rotation)
        val geometricHit = when (collider.shape) {
            ColliderShape.BOX -> intersectOrientedBox(
                rayOrigin = rayOrigin,
                rayDirection = rayDirection,
                center = worldCenter,
                rotation = rotation,
                halfExtents = collider.size.multiply(scale).absolute() * 0.5f,
                maxDistance = maxDistance,
            )
            ColliderShape.SPHERE -> intersectSphere(
                rayOrigin = rayOrigin,
                rayDirection = rayDirection,
                center = worldCenter,
                radius = collider.radius * max(scale.x, max(scale.y, scale.z)),
                maxDistance = maxDistance,
            )
            ColliderShape.CAPSULE -> {
                val radius = collider.radius * max(scale.x, scale.z)
                val totalHeight = collider.height * scale.y
                val segmentHalf = max(0f, totalHeight * 0.5f - radius)
                val up = rotateEuler(Vector3(0f, 1f, 0f), rotation).normalized()
                if (segmentHalf <= EPSILON) {
                    intersectSphere(
                        rayOrigin = rayOrigin,
                        rayDirection = rayDirection,
                        center = worldCenter,
                        radius = radius,
                        maxDistance = maxDistance,
                    )
                } else {
                    intersectCapsule(
                        rayOrigin = rayOrigin,
                        rayDirection = rayDirection,
                        a = worldCenter - up * segmentHalf,
                        b = worldCenter + up * segmentHalf,
                        radius = radius,
                        maxDistance = maxDistance,
                    )
                }
            }
        } ?: return null

        return RayHit(
            objectRef = objectRef,
            colliderRef = ComponentRef(objectRef, collider.componentId),
            point = geometricHit.point,
            normal = geometricHit.normal,
            distance = geometricHit.distance,
        )
    }

    private fun intersectSphere(
        rayOrigin: Vector3,
        rayDirection: Vector3,
        center: Vector3,
        radius: Float,
        maxDistance: Float,
    ): GeometryHit? {
        if (!radius.isFinite() || radius <= EPSILON) return null
        val offset = rayOrigin - center
        val c = offset.dot(offset) - radius * radius
        if (c <= 0f) {
            return GeometryHit(
                distance = 0f,
                point = rayOrigin,
                normal = (rayDirection * -1f).normalized(),
            )
        }
        val b = offset.dot(rayDirection)
        val discriminant = b * b - c
        if (discriminant < 0f) return null
        val distance = -b - sqrt(discriminant)
        if (distance < 0f || distance > maxDistance) return null
        val point = rayOrigin + rayDirection * distance
        return GeometryHit(
            distance = distance,
            point = point,
            normal = (point - center).normalized(),
        )
    }

    private fun intersectOrientedBox(
        rayOrigin: Vector3,
        rayDirection: Vector3,
        center: Vector3,
        rotation: Vector3,
        halfExtents: Vector3,
        maxDistance: Float,
    ): GeometryHit? {
        if (halfExtents.x <= EPSILON || halfExtents.y <= EPSILON || halfExtents.z <= EPSILON) return null
        val localOrigin = inverseRotateEuler(rayOrigin - center, rotation)
        val localDirection = inverseRotateEuler(rayDirection, rotation)
        val inside = abs(localOrigin.x) <= halfExtents.x &&
            abs(localOrigin.y) <= halfExtents.y &&
            abs(localOrigin.z) <= halfExtents.z
        if (inside) {
            return GeometryHit(
                distance = 0f,
                point = rayOrigin,
                normal = (rayDirection * -1f).normalized(),
            )
        }

        var near = 0f
        var far = maxDistance
        var nearNormal = Vector3.ZERO
        val axes = listOf(
            Axis(localOrigin.x, localDirection.x, halfExtents.x, Vector3(1f, 0f, 0f)),
            Axis(localOrigin.y, localDirection.y, halfExtents.y, Vector3(0f, 1f, 0f)),
            Axis(localOrigin.z, localDirection.z, halfExtents.z, Vector3(0f, 0f, 1f)),
        )
        for (axis in axes) {
            if (abs(axis.direction) <= EPSILON) {
                if (axis.origin < -axis.extent || axis.origin > axis.extent) return null
                continue
            }
            var t1 = (-axis.extent - axis.origin) / axis.direction
            var t2 = (axis.extent - axis.origin) / axis.direction
            var normal = axis.unit * -1f
            if (t1 > t2) {
                val swap = t1
                t1 = t2
                t2 = swap
                normal = axis.unit
            }
            if (t1 > near) {
                near = t1
                nearNormal = normal
            }
            far = min(far, t2)
            if (near > far) return null
        }
        if (near < 0f || near > maxDistance) return null
        val point = rayOrigin + rayDirection * near
        return GeometryHit(
            distance = near,
            point = point,
            normal = rotateEuler(nearNormal, rotation).normalized(),
        )
    }

    /** Exact finite capsule intersection (cylinder body + spherical caps). */
    private fun intersectCapsule(
        rayOrigin: Vector3,
        rayDirection: Vector3,
        a: Vector3,
        b: Vector3,
        radius: Float,
        maxDistance: Float,
    ): GeometryHit? {
        if (!radius.isFinite() || radius <= EPSILON) return null
        val ba = b - a
        val oa = rayOrigin - a
        val baba = ba.dot(ba)
        if (baba <= EPSILON) {
            return intersectSphere(rayOrigin, rayDirection, a, radius, maxDistance)
        }
        val bard = ba.dot(rayDirection)
        val baoa = ba.dot(oa)
        val rdoa = rayDirection.dot(oa)
        val oaoa = oa.dot(oa)
        val aa = baba - bard * bard
        val bb = baba * rdoa - baoa * bard
        val cc = baba * oaoa - baoa * baoa - radius * radius * baba

        if (cc <= 0f && pointSegmentDistanceSquared(rayOrigin, a, b) <= radius * radius) {
            return GeometryHit(0f, rayOrigin, (rayDirection * -1f).normalized())
        }

        if (abs(aa) > EPSILON) {
            val discriminant = bb * bb - aa * cc
            if (discriminant >= 0f) {
                val distance = (-bb - sqrt(discriminant)) / aa
                val y = baoa + distance * bard
                if (distance in 0f..maxDistance && y > 0f && y < baba) {
                    val point = rayOrigin + rayDirection * distance
                    val closest = a + ba * (y / baba)
                    return GeometryHit(
                        distance = distance,
                        point = point,
                        normal = (point - closest).normalized(),
                    )
                }
            }
        }

        val capA = intersectSphere(rayOrigin, rayDirection, a, radius, maxDistance)
        val capB = intersectSphere(rayOrigin, rayDirection, b, radius, maxDistance)
        return listOfNotNull(capA, capB).minByOrNull(GeometryHit::distance)
    }

    private fun layerIncluded(mask: Long, layer: Int): Boolean =
        mask == RayQuery.ALL_LAYERS || (mask and (1L shl layer)) != 0L

    private data class GeometryHit(
        val distance: Float,
        val point: Vector3,
        val normal: Vector3,
    )

    private data class Axis(
        val origin: Float,
        val direction: Float,
        val extent: Float,
        val unit: Vector3,
    )

    companion object {
        private const val EPSILON = 1e-6f
    }
}

private fun Vector3.dot(other: Vector3): Float = x * other.x + y * other.y + z * other.z
private operator fun Vector3.plus(other: Vector3) = Vector3(x + other.x, y + other.y, z + other.z)
private operator fun Vector3.minus(other: Vector3) = Vector3(x - other.x, y - other.y, z - other.z)
private operator fun Vector3.times(value: Float) = Vector3(x * value, y * value, z * value)
private fun Vector3.multiply(other: Vector3) = Vector3(x * other.x, y * other.y, z * other.z)
private fun Vector3.absolute() = Vector3(abs(x), abs(y), abs(z))
private fun Vector3.lengthSquared(): Float = dot(this)
private fun Vector3.normalized(): Vector3 {
    val length = sqrt(lengthSquared())
    if (length <= 1e-8f) return Vector3.ZERO
    return this * (1f / length)
}

/** Euler convention shared by this query backend: local X, then Y, then Z. */
private fun rotateEuler(value: Vector3, degrees: Vector3): Vector3 {
    var current = rotateX(value, Math.toRadians(degrees.x.toDouble()).toFloat())
    current = rotateY(current, Math.toRadians(degrees.y.toDouble()).toFloat())
    return rotateZ(current, Math.toRadians(degrees.z.toDouble()).toFloat())
}

private fun inverseRotateEuler(value: Vector3, degrees: Vector3): Vector3 {
    var current = rotateZ(value, -Math.toRadians(degrees.z.toDouble()).toFloat())
    current = rotateY(current, -Math.toRadians(degrees.y.toDouble()).toFloat())
    return rotateX(current, -Math.toRadians(degrees.x.toDouble()).toFloat())
}

private fun rotateX(v: Vector3, angle: Float): Vector3 {
    val c = cos(angle)
    val s = sin(angle)
    return Vector3(v.x, v.y * c - v.z * s, v.y * s + v.z * c)
}

private fun rotateY(v: Vector3, angle: Float): Vector3 {
    val c = cos(angle)
    val s = sin(angle)
    return Vector3(v.x * c + v.z * s, v.y, -v.x * s + v.z * c)
}

private fun rotateZ(v: Vector3, angle: Float): Vector3 {
    val c = cos(angle)
    val s = sin(angle)
    return Vector3(v.x * c - v.y * s, v.x * s + v.y * c, v.z)
}

private fun pointSegmentDistanceSquared(point: Vector3, a: Vector3, b: Vector3): Float {
    val ab = b - a
    val lengthSquared = ab.dot(ab)
    if (lengthSquared <= 1e-8f) return (point - a).dot(point - a)
    val t = ((point - a).dot(ab) / lengthSquared).coerceIn(0f, 1f)
    val closest = a + ab * t
    val delta = point - closest
    return delta.dot(delta)
}
