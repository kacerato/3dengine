package com.mobilegamestudio.projects.content

import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * Generates a deterministic glTF 2.0 binary fixture. It is a real indexed PBR
 * mesh used by Mountain Demo and by the importer/runtime integration tests.
 */
internal object MountainGlbFactory {
    fun create(): ByteArray {
        val positions = floatArrayOf(
            -1.2f, 0f, -1.2f,
            1.2f, 0f, -1.2f,
            1.2f, 0f, 1.2f,
            -1.2f, 0f, 1.2f,
            0f, 1.8f, 0f,
        )
        val indices = shortArrayOf(
            0, 2, 1, 0, 3, 2,
            0, 1, 4, 1, 2, 4,
            2, 3, 4, 3, 0, 4,
        )
        val binary = ByteBuffer.allocate(positions.size * 4 + indices.size * 2)
            .order(ByteOrder.LITTLE_ENDIAN)
        positions.forEach(binary::putFloat)
        indices.forEach(binary::putShort)
        val binaryBytes = binary.array().padTo4()

        val json = """
            {
              "asset":{"version":"2.0","generator":"Mobile Game Studio"},
              "scene":0,
              "scenes":[{"name":"Mountain","nodes":[0]}],
              "nodes":[{"name":"MountainMesh","mesh":0}],
              "meshes":[{"name":"MountainMesh","primitives":[{"attributes":{"POSITION":0},"indices":1,"material":0}]}],
              "materials":[{"name":"Mountain Rock","pbrMetallicRoughness":{"baseColorFactor":[0.29,0.48,0.34,1.0],"metallicFactor":0.0,"roughnessFactor":0.92}}],
              "buffers":[{"byteLength":${positions.size * 4 + indices.size * 2}}],
              "bufferViews":[
                {"buffer":0,"byteOffset":0,"byteLength":${positions.size * 4},"target":34962},
                {"buffer":0,"byteOffset":${positions.size * 4},"byteLength":${indices.size * 2},"target":34963}
              ],
              "accessors":[
                {"bufferView":0,"componentType":5126,"count":5,"type":"VEC3","min":[-1.2,0,-1.2],"max":[1.2,1.8,1.2]},
                {"bufferView":1,"componentType":5123,"count":18,"type":"SCALAR","min":[0],"max":[4]}
              ]
            }
        """.trimIndent().encodeToByteArray().padTo4(0x20)

        val totalLength = 12 + 8 + json.size + 8 + binaryBytes.size
        return ByteBuffer.allocate(totalLength)
            .order(ByteOrder.LITTLE_ENDIAN)
            .putInt(GLB_MAGIC)
            .putInt(2)
            .putInt(totalLength)
            .putInt(json.size)
            .putInt(JSON_CHUNK)
            .put(json)
            .putInt(binaryBytes.size)
            .putInt(BIN_CHUNK)
            .put(binaryBytes)
            .array()
    }

    private fun ByteArray.padTo4(padding: Int = 0): ByteArray {
        val paddedSize = (size + 3) and -4
        return if (paddedSize == size) this else copyOf(paddedSize).also { output ->
            for (index in size until paddedSize) output[index] = padding.toByte()
        }
    }

    private const val GLB_MAGIC = 0x46546C67
    private const val JSON_CHUNK = 0x4E4F534A
    private const val BIN_CHUNK = 0x004E4942
}
