package com.mobilegamestudio.projects.content

import com.mobilegamestudio.core.contracts.ContentError
import com.mobilegamestudio.core.contracts.ContentResult
import com.mobilegamestudio.core.model.AssetRecord
import com.mobilegamestudio.core.model.SceneDocument
import com.mobilegamestudio.core.model.SceneValidator
import com.mobilegamestudio.core.model.VisualGraphDocument
import com.mobilegamestudio.core.model.VisualGraphValidator
import kotlinx.serialization.builtins.ListSerializer
import kotlinx.serialization.json.Json

internal class SceneContentCodec {
    private val json = Json {
        classDiscriminator = "componentType"
        encodeDefaults = true
        ignoreUnknownKeys = false
        prettyPrint = true
    }

    fun encodeScene(scene: SceneDocument): ByteArray =
        json.encodeToString(SceneDocument.serializer(), scene).encodeToByteArray()

    fun decodeScene(bytes: ByteArray): ContentResult<SceneDocument> {
        if (bytes.size > MAX_SCENE_BYTES) return ContentResult.Failure(ContentError.CorruptedScene)
        val document = runCatching {
            json.decodeFromString(SceneDocument.serializer(), bytes.decodeToString())
        }.getOrElse { return ContentResult.Failure(ContentError.CorruptedScene) }
        val errors = SceneValidator.validate(document)
        return if (errors.isEmpty()) ContentResult.Success(document)
        else ContentResult.Failure(ContentError.InvalidScene(errors.first().toString()))
    }

    fun encodeAssets(assets: List<AssetRecord>): ByteArray =
        json.encodeToString(ListSerializer(AssetRecord.serializer()), assets).encodeToByteArray()

    fun decodeAssets(bytes: ByteArray): ContentResult<List<AssetRecord>> {
        if (bytes.size > MAX_ASSET_INDEX_BYTES) {
            return ContentResult.Failure(ContentError.StorageUnavailable)
        }
        return runCatching {
            json.decodeFromString(ListSerializer(AssetRecord.serializer()), bytes.decodeToString())
        }.fold(
            onSuccess = { ContentResult.Success(it) },
            onFailure = { ContentResult.Failure(ContentError.StorageUnavailable) },
        )
    }

    fun encodeGraph(graph: VisualGraphDocument): ByteArray =
        json.encodeToString(VisualGraphDocument.serializer(), graph).encodeToByteArray()

    fun decodeGraph(bytes: ByteArray): ContentResult<VisualGraphDocument> {
        if (bytes.size > MAX_GRAPH_BYTES) return ContentResult.Failure(ContentError.StorageUnavailable)
        val graph = runCatching {
            json.decodeFromString(VisualGraphDocument.serializer(), bytes.decodeToString())
        }.getOrElse { return ContentResult.Failure(ContentError.StorageUnavailable) }
        val errors = VisualGraphValidator.validate(graph)
        return if (errors.isEmpty()) ContentResult.Success(graph)
        else ContentResult.Failure(ContentError.InvalidScene(errors.first()))
    }

    companion object {
        const val MAX_SCENE_BYTES = 2 * 1024 * 1024
        const val MAX_ASSET_INDEX_BYTES = 512 * 1024
        const val MAX_GRAPH_BYTES = 512 * 1024
    }
}
