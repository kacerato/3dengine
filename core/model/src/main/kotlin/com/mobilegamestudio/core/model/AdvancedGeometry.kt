package com.mobilegamestudio.core.model

import kotlin.math.abs
import kotlin.math.ceil
import kotlin.math.max
import kotlin.math.sqrt
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
@SerialName("editable-mesh")
data class EditableMeshComponent(
    override val componentId: String = java.util.UUID.randomUUID().toString(),
    override val enabled: Boolean = true,
    val vertices: List<Vector3>,
    val faces: List<EditableMeshFace>,
    val selectedVertices: Set<Int> = emptySet(),
    val selectedFace: Int? = null,
    val dynamicTopology: Boolean = false,
    val detailSize: Float = 0.28f,
) : SceneComponent

@Serializable
data class EditableMeshFace(
    val vertexIndices: List<Int>,
)

@Serializable
enum class MeshSelectionMode {
    VERTEX,
    FACE,
}

@Serializable
@SerialName("voxel-volume")
data class VoxelVolumeComponent(
    override val componentId: String = java.util.UUID.randomUUID().toString(),
    override val enabled: Boolean = true,
    val resolution: Int = 24,
    val size: Vector3 = Vector3(12f, 8f, 12f),
    val density: List<Float> = emptyList(),
    val colorArgb: Long = 0xFF77736B,
    val isoLevel: Float = 0.5f,
) : SceneComponent {
    val safeResolution: Int get() = resolution.coerceIn(8, 48)

    fun densityAt(x: Int, y: Int, z: Int): Float {
        val r = safeResolution
        val cx = x.coerceIn(0, r - 1)
        val cy = y.coerceIn(0, r - 1)
        val cz = z.coerceIn(0, r - 1)
        return density.getOrElse((cz * r + cy) * r + cx) { 0f }
    }
}

@Serializable
enum class VoxelBrushMode {
    ADD,
    SUBTRACT,
    SMOOTH,
}

@Serializable
enum class VoxelSliceAxis {
    X,
    Y,
    Z,
}

object EditableMeshPresets {
    fun cube(): EditableMeshComponent = EditableMeshComponent(
        vertices = listOf(
            Vector3(-0.5f, -0.5f, -0.5f), Vector3(0.5f, -0.5f, -0.5f),
            Vector3(0.5f, 0.5f, -0.5f), Vector3(-0.5f, 0.5f, -0.5f),
            Vector3(-0.5f, -0.5f, 0.5f), Vector3(0.5f, -0.5f, 0.5f),
            Vector3(0.5f, 0.5f, 0.5f), Vector3(-0.5f, 0.5f, 0.5f),
        ),
        faces = listOf(
            EditableMeshFace(listOf(0, 1, 2, 3)),
            EditableMeshFace(listOf(5, 4, 7, 6)),
            EditableMeshFace(listOf(4, 0, 3, 7)),
            EditableMeshFace(listOf(1, 5, 6, 2)),
            EditableMeshFace(listOf(3, 2, 6, 7)),
            EditableMeshFace(listOf(4, 5, 1, 0)),
        ),
    )

    fun plane(): EditableMeshComponent = EditableMeshComponent(
        vertices = listOf(
            Vector3(-0.5f, 0f, -0.5f), Vector3(0.5f, 0f, -0.5f),
            Vector3(0.5f, 0f, 0.5f), Vector3(-0.5f, 0f, 0.5f),
        ),
        faces = listOf(EditableMeshFace(listOf(0, 1, 2, 3))),
    )
}

object VoxelVolumePresets {
    fun empty(resolution: Int = 24, size: Vector3 = Vector3(12f, 8f, 12f)): VoxelVolumeComponent {
        val r = resolution.coerceIn(8, 48)
        return VoxelVolumeComponent(resolution = r, size = size, density = List(r * r * r) { 0f })
    }

    fun solid(resolution: Int = 24, size: Vector3 = Vector3(12f, 8f, 12f)): VoxelVolumeComponent {
        val r = resolution.coerceIn(8, 48)
        return VoxelVolumeComponent(resolution = r, size = size, density = List(r * r * r) { 1f })
    }

    fun cave(resolution: Int = 28, size: Vector3 = Vector3(18f, 10f, 18f)): VoxelVolumeComponent {
        var volume = solid(resolution, size)
        volume = volume.applyTunnel(
            start = Vector3(0.08f, 0.52f, 0.18f),
            end = Vector3(0.92f, 0.46f, 0.82f),
            radius = 0.095f,
        )
        volume = volume.applySphereBrush(Vector3(0.54f, 0.42f, 0.55f), 0.22f, 1f, VoxelBrushMode.SUBTRACT)
        return volume
    }
}

fun EditableMeshComponent.selectVertex(index: Int, additive: Boolean = false): EditableMeshComponent {
    if (index !in vertices.indices) return this
    val selection = if (!additive) setOf(index) else selectedVertices.toMutableSet().apply {
        if (!add(index)) remove(index)
    }
    return copy(selectedVertices = selection, selectedFace = null)
}

fun EditableMeshComponent.selectFace(index: Int): EditableMeshComponent {
    if (index !in faces.indices) return this
    return copy(selectedFace = index, selectedVertices = faces[index].vertexIndices.toSet())
}

fun EditableMeshComponent.clearSelection(): EditableMeshComponent = copy(
    selectedVertices = emptySet(),
    selectedFace = null,
)

fun EditableMeshComponent.moveSelection(delta: Vector3): EditableMeshComponent {
    if (selectedVertices.isEmpty()) return this
    return copy(vertices = vertices.mapIndexed { index, vertex ->
        if (index !in selectedVertices) vertex else Vector3(
            vertex.x + delta.x,
            vertex.y + delta.y,
            vertex.z + delta.z,
        )
    })
}

fun EditableMeshComponent.extrudeSelectedFace(distance: Float): EditableMeshComponent {
    val faceIndex = selectedFace ?: return this
    val face = faces.getOrNull(faceIndex) ?: return this
    if (face.vertexIndices.size < 3) return this
    val normal = faceNormal(face)
    val mutableVertices = vertices.toMutableList()
    val duplicated = face.vertexIndices.map { sourceIndex ->
        val source = vertices.getOrElse(sourceIndex) { Vector3.ZERO }
        mutableVertices += Vector3(
            source.x + normal.x * distance,
            source.y + normal.y * distance,
            source.z + normal.z * distance,
        )
        mutableVertices.lastIndex
    }
    val mutableFaces = faces.toMutableList()
    mutableFaces[faceIndex] = EditableMeshFace(duplicated)
    face.vertexIndices.indices.forEach { index ->
        val next = (index + 1) % face.vertexIndices.size
        mutableFaces += EditableMeshFace(
            listOf(face.vertexIndices[index], face.vertexIndices[next], duplicated[next], duplicated[index]),
        )
    }
    return copy(
        vertices = mutableVertices,
        faces = mutableFaces,
        selectedVertices = duplicated.toSet(),
        selectedFace = faceIndex,
    )
}

fun EditableMeshComponent.subdivideSelectedFace(): EditableMeshComponent {
    val faceIndex = selectedFace ?: return this
    val face = faces.getOrNull(faceIndex) ?: return this
    if (face.vertexIndices.size < 3) return this
    val center = face.vertexIndices.mapNotNull(vertices::getOrNull).fold(Vector3.ZERO) { acc, vertex ->
        Vector3(acc.x + vertex.x, acc.y + vertex.y, acc.z + vertex.z)
    }.let { sum ->
        val count = face.vertexIndices.size.toFloat().coerceAtLeast(1f)
        Vector3(sum.x / count, sum.y / count, sum.z / count)
    }
    val mutableVertices = vertices.toMutableList().apply { add(center) }
    val centerIndex = mutableVertices.lastIndex
    val replacements = face.vertexIndices.indices.map { index ->
        val next = (index + 1) % face.vertexIndices.size
        EditableMeshFace(listOf(face.vertexIndices[index], face.vertexIndices[next], centerIndex))
    }
    val mutableFaces = faces.toMutableList().apply {
        removeAt(faceIndex)
        addAll(faceIndex, replacements)
    }
    return copy(
        vertices = mutableVertices,
        faces = mutableFaces,
        selectedVertices = setOf(centerIndex),
        selectedFace = faceIndex,
    )
}

fun EditableMeshComponent.applyDynamicTopology(): EditableMeshComponent {
    val faceIndex = selectedFace ?: return this
    val face = faces.getOrNull(faceIndex) ?: return this
    val longest = face.vertexIndices.indices.maxOfOrNull { index ->
        val a = vertices.getOrElse(face.vertexIndices[index]) { Vector3.ZERO }
        val b = vertices.getOrElse(face.vertexIndices[(index + 1) % face.vertexIndices.size]) { Vector3.ZERO }
        distance(a, b)
    } ?: return this
    return if (longest > detailSize.coerceAtLeast(0.02f)) subdivideSelectedFace().copy(dynamicTopology = true) else copy(dynamicTopology = true)
}

fun EditableMeshComponent.toVoxelVolume(resolution: Int = 24): VoxelVolumeComponent {
    if (vertices.isEmpty()) return VoxelVolumePresets.empty(resolution)
    val minX = vertices.minOf(Vector3::x)
    val minY = vertices.minOf(Vector3::y)
    val minZ = vertices.minOf(Vector3::z)
    val maxX = vertices.maxOf(Vector3::x)
    val maxY = vertices.maxOf(Vector3::y)
    val maxZ = vertices.maxOf(Vector3::z)
    val size = Vector3(
        max(1f, maxX - minX),
        max(1f, maxY - minY),
        max(1f, maxZ - minZ),
    )
    return VoxelVolumePresets.solid(resolution, size)
}

fun VoxelVolumeComponent.applySphereBrush(
    center: Vector3,
    radius: Float,
    strength: Float,
    mode: VoxelBrushMode,
): VoxelVolumeComponent {
    val r = safeResolution
    val source = if (density.size == r * r * r) density else List(r * r * r) { 0f }
    val output = source.toMutableList()
    val safeRadius = radius.coerceIn(0.01f, 0.75f)
    val safeStrength = strength.coerceIn(0.01f, 1f)
    fun index(x: Int, y: Int, z: Int) = (z * r + y) * r + x
    for (z in 0 until r) for (y in 0 until r) for (x in 0 until r) {
        val nx = x.toFloat() / (r - 1)
        val ny = y.toFloat() / (r - 1)
        val nz = z.toFloat() / (r - 1)
        val dx = nx - center.x
        val dy = ny - center.y
        val dz = nz - center.z
        val distance = sqrt(dx * dx + dy * dy + dz * dz)
        if (distance > safeRadius) continue
        val falloff = 1f - distance / safeRadius
        val i = index(x, y, z)
        val amount = falloff * falloff * safeStrength
        output[i] = when (mode) {
            VoxelBrushMode.ADD -> (source[i] + amount).coerceIn(0f, 1f)
            VoxelBrushMode.SUBTRACT -> (source[i] - amount).coerceIn(0f, 1f)
            VoxelBrushMode.SMOOTH -> {
                var total = 0f
                var count = 0
                for (oz in -1..1) for (oy in -1..1) for (ox in -1..1) {
                    val sx = (x + ox).coerceIn(0, r - 1)
                    val sy = (y + oy).coerceIn(0, r - 1)
                    val sz = (z + oz).coerceIn(0, r - 1)
                    total += source[index(sx, sy, sz)]
                    count++
                }
                source[i] + (total / count - source[i]) * amount
            }
        }
    }
    return copy(density = output)
}

fun VoxelVolumeComponent.applyTunnel(start: Vector3, end: Vector3, radius: Float): VoxelVolumeComponent {
    val dx = end.x - start.x
    val dy = end.y - start.y
    val dz = end.z - start.z
    val length = sqrt(dx * dx + dy * dy + dz * dz)
    val steps = ceil(length / (radius.coerceAtLeast(0.02f) * 0.45f)).toInt().coerceIn(2, 128)
    var output = this
    repeat(steps + 1) { index ->
        val t = index.toFloat() / steps
        output = output.applySphereBrush(
            center = Vector3(start.x + dx * t, start.y + dy * t, start.z + dz * t),
            radius = radius,
            strength = 1f,
            mode = VoxelBrushMode.SUBTRACT,
        )
    }
    return output
}

fun VoxelVolumeComponent.smoothVolume(iterations: Int = 1): VoxelVolumeComponent {
    var output = this
    repeat(iterations.coerceIn(1, 8)) {
        val r = output.safeResolution
        val source = output.density
        val smoothed = source.toMutableList()
        fun index(x: Int, y: Int, z: Int) = (z * r + y) * r + x
        for (z in 1 until r - 1) for (y in 1 until r - 1) for (x in 1 until r - 1) {
            var total = 0f
            var count = 0
            for (oz in -1..1) for (oy in -1..1) for (ox in -1..1) {
                total += source[index(x + ox, y + oy, z + oz)]
                count++
            }
            smoothed[index(x, y, z)] = total / count
        }
        output = output.copy(density = smoothed)
    }
    return output
}

private fun EditableMeshComponent.faceNormal(face: EditableMeshFace): Vector3 {
    val a = vertices.getOrElse(face.vertexIndices.getOrElse(0) { 0 }) { Vector3.ZERO }
    val b = vertices.getOrElse(face.vertexIndices.getOrElse(1) { 0 }) { Vector3.ZERO }
    val c = vertices.getOrElse(face.vertexIndices.getOrElse(2) { 0 }) { Vector3.ZERO }
    val ab = Vector3(b.x - a.x, b.y - a.y, b.z - a.z)
    val ac = Vector3(c.x - a.x, c.y - a.y, c.z - a.z)
    val cross = Vector3(
        ab.y * ac.z - ab.z * ac.y,
        ab.z * ac.x - ab.x * ac.z,
        ab.x * ac.y - ab.y * ac.x,
    )
    val length = sqrt(cross.x * cross.x + cross.y * cross.y + cross.z * cross.z).coerceAtLeast(0.0001f)
    return Vector3(cross.x / length, cross.y / length, cross.z / length)
}

private fun distance(a: Vector3, b: Vector3): Float {
    val dx = a.x - b.x
    val dy = a.y - b.y
    val dz = a.z - b.z
    return sqrt(dx * dx + dy * dy + dz * dz)
}
