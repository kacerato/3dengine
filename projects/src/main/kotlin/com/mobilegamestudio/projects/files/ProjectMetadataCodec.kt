package com.mobilegamestudio.projects.files

import com.mobilegamestudio.core.model.ProjectError
import com.mobilegamestudio.core.model.ProjectId
import com.mobilegamestudio.core.model.ProjectMetadata
import com.mobilegamestudio.core.model.ProjectNameRules
import com.mobilegamestudio.core.model.ProjectResult
import com.mobilegamestudio.core.model.SafeProjectPath
import kotlinx.serialization.Serializable
import kotlinx.serialization.SerializationException
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.encodeToString
import kotlinx.serialization.json.Json

@OptIn(ExperimentalSerializationApi::class)
class ProjectMetadataCodec(
    private val json: Json = Json {
        prettyPrint = true
        prettyPrintIndent = "  "
        ignoreUnknownKeys = true
        explicitNulls = true
    },
) {
    fun encode(metadata: ProjectMetadata): ByteArray {
        val dto = ProjectMetadataDto(
            format = metadata.format,
            schemaVersion = metadata.schemaVersion,
            id = metadata.id.value,
            name = metadata.name,
            createdAtEpochMillis = metadata.createdAtEpochMillis,
            updatedAtEpochMillis = metadata.updatedAtEpochMillis,
            revision = metadata.revision,
            engineVersion = metadata.engineVersion,
            startScene = metadata.startScene,
        )
        return json.encodeToString(dto).toByteArray(Charsets.UTF_8)
    }

    fun decode(bytes: ByteArray): ProjectResult<ProjectMetadata> {
        if (bytes.size > MAX_METADATA_BYTES) {
            return ProjectResult.Failure(ProjectError.CorruptedMetadata)
        }

        return try {
            val dto = json.decodeFromString<ProjectMetadataDto>(bytes.toString(Charsets.UTF_8))
            when {
                dto.format != ProjectFileStore.PROJECT_FORMAT ->
                    ProjectResult.Failure(ProjectError.CorruptedMetadata)
                dto.schemaVersion > ProjectFileStore.CURRENT_SCHEMA_VERSION ->
                    ProjectResult.Failure(
                        ProjectError.UnsupportedSchemaVersion(
                            found = dto.schemaVersion,
                            supported = ProjectFileStore.CURRENT_SCHEMA_VERSION,
                        ),
                    )
                dto.schemaVersion < 1 ||
                    !ProjectFileStore.isSafeProjectId(dto.id) ||
                    dto.revision < 1 ||
                    dto.revision == Long.MAX_VALUE ||
                    dto.createdAtEpochMillis < 0 ||
                    dto.updatedAtEpochMillis < dto.createdAtEpochMillis ||
                    (dto.startScene != null && !SafeProjectPath.isValidRelativePath(dto.startScene)) ->
                    ProjectResult.Failure(ProjectError.CorruptedMetadata)
                else -> when (val name = ProjectNameRules.normalize(dto.name)) {
                    is ProjectResult.Failure -> ProjectResult.Failure(ProjectError.CorruptedMetadata)
                    is ProjectResult.Success -> ProjectResult.Success(
                        ProjectMetadata(
                            format = dto.format,
                            schemaVersion = dto.schemaVersion,
                            id = ProjectId(dto.id),
                            name = name.value,
                            createdAtEpochMillis = dto.createdAtEpochMillis,
                            updatedAtEpochMillis = dto.updatedAtEpochMillis,
                            revision = dto.revision,
                            engineVersion = dto.engineVersion,
                            startScene = dto.startScene,
                        ),
                    )
                }
            }
        } catch (_: SerializationException) {
            ProjectResult.Failure(ProjectError.CorruptedMetadata)
        } catch (_: IllegalArgumentException) {
            ProjectResult.Failure(ProjectError.CorruptedMetadata)
        }
    }

    companion object {
        const val MAX_METADATA_BYTES = 64 * 1024
    }
}

@Serializable
private data class ProjectMetadataDto(
    val format: String,
    val schemaVersion: Int,
    val id: String,
    val name: String,
    val createdAtEpochMillis: Long,
    val updatedAtEpochMillis: Long,
    val revision: Long,
    val engineVersion: String,
    val startScene: String? = null,
)
