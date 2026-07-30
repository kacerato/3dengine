package com.mobilegamestudio.core.contracts

import com.mobilegamestudio.core.model.AssetRecord
import com.mobilegamestudio.core.model.ProjectId
import com.mobilegamestudio.core.model.SceneDocument
import com.mobilegamestudio.core.model.VisualGraphDocument
import java.io.File
import java.io.InputStream

interface ProjectContentRepository {
    suspend fun loadOrCreateScene(projectId: ProjectId): ContentResult<SceneDocument>

    suspend fun saveScene(
        projectId: ProjectId,
        scene: SceneDocument,
        expectedRevision: Long,
    ): ContentResult<SceneDocument>

    suspend fun installMountainDemo(projectId: ProjectId): ContentResult<SceneDocument>

    suspend fun listAssets(projectId: ProjectId): ContentResult<List<AssetRecord>>

    suspend fun importModel(
        projectId: ProjectId,
        sourceName: String,
        input: InputStream,
    ): ContentResult<AssetRecord>

    fun resolveAsset(projectId: ProjectId, assetId: String): File?

    suspend fun readLuaScript(projectId: ProjectId, relativePath: String): ContentResult<String>

    suspend fun saveLuaScript(
        projectId: ProjectId,
        relativePath: String,
        source: String,
    ): ContentResult<Unit>

    suspend fun readVisualGraph(
        projectId: ProjectId,
        relativePath: String,
    ): ContentResult<VisualGraphDocument>

    suspend fun saveVisualGraph(
        projectId: ProjectId,
        relativePath: String,
        graph: VisualGraphDocument,
    ): ContentResult<Unit>

    suspend fun moveLogicResource(
        projectId: ProjectId,
        fromRelativePath: String,
        toRelativePath: String,
    ): ContentResult<Unit> = ContentResult.Failure(ContentError.StorageUnavailable)

    suspend fun deleteLogicResource(
        projectId: ProjectId,
        relativePath: String,
    ): ContentResult<Unit> = ContentResult.Failure(ContentError.StorageUnavailable)
}

sealed interface ContentResult<out T> {
    data class Success<T>(val value: T) : ContentResult<T>
    data class Failure(val error: ContentError) : ContentResult<Nothing>
}

sealed interface ContentError {
    data object ProjectNotFound : ContentError
    data object SceneNotFound : ContentError
    data object CorruptedScene : ContentError
    data object ConcurrentModification : ContentError
    data object StorageUnavailable : ContentError
    data object InvalidPath : ContentError
    data object UnsupportedAsset : ContentError
    data object AssetTooLarge : ContentError
    data class InvalidAsset(val reason: String) : ContentError
    data class InvalidScene(val reason: String) : ContentError
}
