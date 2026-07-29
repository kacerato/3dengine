package com.mobilegamestudio.core.model

@JvmInline
value class ProjectId(val value: String)

data class ProjectMetadata(
    val format: String,
    val schemaVersion: Int,
    val id: ProjectId,
    val name: String,
    val createdAtEpochMillis: Long,
    val updatedAtEpochMillis: Long,
    val revision: Long,
    val engineVersion: String,
    val startScene: String?,
)

data class ProjectSummary(
    val id: ProjectId,
    val name: String,
    val schemaVersion: Int,
    val updatedAtEpochMillis: Long,
)

data class CreateProjectRequest(val name: String)

data class OpenProject(val metadata: ProjectMetadata)

sealed interface ProjectResult<out T> {
    data class Success<T>(val value: T) : ProjectResult<T>
    data class Failure(val error: ProjectError) : ProjectResult<Nothing>
}

sealed interface ProjectError {
    data class InvalidName(val reason: String) : ProjectError
    data object AlreadyExists : ProjectError
    data object NotFound : ProjectError
    data object CorruptedMetadata : ProjectError
    data class UnsupportedSchemaVersion(val found: Int, val supported: Int) : ProjectError
    data object StorageUnavailable : ProjectError
    data object ConcurrentModification : ProjectError
    data class Unexpected(val detail: String) : ProjectError
}

