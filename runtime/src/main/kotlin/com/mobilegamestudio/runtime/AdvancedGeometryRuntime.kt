package com.mobilegamestudio.runtime

import com.google.android.filament.Engine
import com.google.android.filament.MaterialInstance
import com.mobilegamestudio.core.model.EditableMeshComponent
import com.mobilegamestudio.core.model.EditableMeshFace
import com.mobilegamestudio.core.model.Vector3
import com.mobilegamestudio.core.model.VoxelVolumeComponent
import dev.romainguy.kotlin.math.Float2
import dev.romainguy.kotlin.math.Float3
import io.github.sceneview.geometries.Geometry
import io.github.sceneview.math.Position
import io.github.sceneview.node.GeometryNode
import kotlin.math.sqrt

internal fun buildEditableMeshNode(
    engine: Engine,
    mesh: EditableMeshComponent,
    material: MaterialInstance,
): GeometryNode {
    val normals = MutableList(mesh.vertices.size) { Vector3.ZERO }
    mesh.faces.forEach { face ->
        val normal = meshFaceNormal(mesh, face)
        face.vertexIndices.forEach { index ->
            if (index in normals.indices) {
                val current = normals[index]
                normals[index] = Vector3(current.x + normal.x, current.y + normal.y, current.z + normal.z)
            }
        }
    }
    val vertices = mesh.vertices.mapIndexed { index, vertex ->
        val normal = normals[index].normalized()
        Geometry.Vertex(
            position = Position(vertex.x, vertex.y, vertex.z),
            normal = Float3(normal.x, normal.y, normal.z),
            uvCoordinate = Float2(vertex.x + 0.5f, vertex.z + 0.5f),
        )
    }
    val indices = buildList {
        mesh.faces.forEach { face ->
            if (face.vertexIndices.size < 3) return@forEach
            for (index in 1 until face.vertexIndices.lastIndex) {
                add(face.vertexIndices[0])
                add(face.vertexIndices[index])
                add(face.vertexIndices[index + 1])
            }
        }
    }
    val geometry = Geometry.Builder()
        .vertices(vertices)
        .primitivesIndices(listOf(indices))
        .build(engine)
    return GeometryNode(
        engine = engine,
        geometry = geometry,
        materialInstances = listOf(material),
        builderApply = {
            castShadows(true)
            receiveShadows(true)
        },
    )
}

internal fun buildVoxelVolumeNode(
    engine: Engine,
    volume: VoxelVolumeComponent,
    material: MaterialInstance,
): GeometryNode {
    val resolution = volume.safeResolution
    val vertices = ArrayList<Geometry.Vertex>()
    val indices = ArrayList<Int>()
    val cellX = volume.size.x / resolution
    val cellY = volume.size.y / resolution
    val cellZ = volume.size.z / resolution

    fun occupied(x: Int, y: Int, z: Int): Boolean =
        x in 0 until resolution && y in 0 until resolution && z in 0 until resolution &&
            volume.densityAt(x, y, z) >= volume.isoLevel

    data class FaceDefinition(
        val neighborX: Int,
        val neighborY: Int,
        val neighborZ: Int,
        val normal: Float3,
        val corners: Array<FloatArray>,
    )

    val faces = listOf(
        FaceDefinition(-1, 0, 0, Float3(-1f, 0f, 0f), arrayOf(
            floatArrayOf(0f, 0f, 0f), floatArrayOf(0f, 0f, 1f), floatArrayOf(0f, 1f, 1f), floatArrayOf(0f, 1f, 0f),
        )),
        FaceDefinition(1, 0, 0, Float3(1f, 0f, 0f), arrayOf(
            floatArrayOf(1f, 0f, 1f), floatArrayOf(1f, 0f, 0f), floatArrayOf(1f, 1f, 0f), floatArrayOf(1f, 1f, 1f),
        )),
        FaceDefinition(0, -1, 0, Float3(0f, -1f, 0f), arrayOf(
            floatArrayOf(0f, 0f, 1f), floatArrayOf(0f, 0f, 0f), floatArrayOf(1f, 0f, 0f), floatArrayOf(1f, 0f, 1f),
        )),
        FaceDefinition(0, 1, 0, Float3(0f, 1f, 0f), arrayOf(
            floatArrayOf(0f, 1f, 0f), floatArrayOf(0f, 1f, 1f), floatArrayOf(1f, 1f, 1f), floatArrayOf(1f, 1f, 0f),
        )),
        FaceDefinition(0, 0, -1, Float3(0f, 0f, -1f), arrayOf(
            floatArrayOf(1f, 0f, 0f), floatArrayOf(0f, 0f, 0f), floatArrayOf(0f, 1f, 0f), floatArrayOf(1f, 1f, 0f),
        )),
        FaceDefinition(0, 0, 1, Float3(0f, 0f, 1f), arrayOf(
            floatArrayOf(0f, 0f, 1f), floatArrayOf(1f, 0f, 1f), floatArrayOf(1f, 1f, 1f), floatArrayOf(0f, 1f, 1f),
        )),
    )

    val maxVisibleFaces = 90_000
    var visibleFaces = 0
    for (z in 0 until resolution) for (y in 0 until resolution) for (x in 0 until resolution) {
        if (!occupied(x, y, z) || visibleFaces >= maxVisibleFaces) continue
        faces.forEach { face ->
            if (occupied(x + face.neighborX, y + face.neighborY, z + face.neighborZ) || visibleFaces >= maxVisibleFaces) return@forEach
            val base = vertices.size
            face.corners.forEachIndexed { cornerIndex, corner ->
                vertices += Geometry.Vertex(
                    position = Position(
                        (x + corner[0]) * cellX - volume.size.x * 0.5f,
                        (y + corner[1]) * cellY - volume.size.y * 0.5f,
                        (z + corner[2]) * cellZ - volume.size.z * 0.5f,
                    ),
                    normal = face.normal,
                    uvCoordinate = when (cornerIndex) {
                        0 -> Float2(0f, 1f)
                        1 -> Float2(1f, 1f)
                        2 -> Float2(1f, 0f)
                        else -> Float2(0f, 0f)
                    },
                )
            }
            indices += listOf(base, base + 1, base + 2, base, base + 2, base + 3)
            visibleFaces++
        }
    }

    val geometry = Geometry.Builder()
        .vertices(vertices)
        .primitivesIndices(listOf(indices))
        .build(engine)
    return GeometryNode(
        engine = engine,
        geometry = geometry,
        materialInstances = listOf(material),
        builderApply = {
            castShadows(true)
            receiveShadows(true)
        },
    )
}

private fun meshFaceNormal(mesh: EditableMeshComponent, face: EditableMeshFace): Vector3 {
    val a = mesh.vertices.getOrElse(face.vertexIndices.getOrElse(0) { 0 }) { Vector3.ZERO }
    val b = mesh.vertices.getOrElse(face.vertexIndices.getOrElse(1) { 0 }) { Vector3.ZERO }
    val c = mesh.vertices.getOrElse(face.vertexIndices.getOrElse(2) { 0 }) { Vector3.ZERO }
    val ab = Vector3(b.x - a.x, b.y - a.y, b.z - a.z)
    val ac = Vector3(c.x - a.x, c.y - a.y, c.z - a.z)
    return Vector3(
        ab.y * ac.z - ab.z * ac.y,
        ab.z * ac.x - ab.x * ac.z,
        ab.x * ac.y - ab.y * ac.x,
    ).normalized()
}

private fun Vector3.normalized(): Vector3 {
    val length = sqrt(x * x + y * y + z * z).coerceAtLeast(0.0001f)
    return Vector3(x / length, y / length, z / length)
}
