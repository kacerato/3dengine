package com.mobilegamestudio.projects.files

import com.mobilegamestudio.core.common.ProjectIdGenerator
import com.mobilegamestudio.core.common.StudioClock
import com.mobilegamestudio.core.model.OpenProject
import com.mobilegamestudio.core.model.ProjectError
import com.mobilegamestudio.core.model.ProjectId
import com.mobilegamestudio.core.model.ProjectMetadata
import com.mobilegamestudio.core.model.ProjectNameRules
import com.mobilegamestudio.core.model.ProjectResult
import java.io.File
import java.nio.ByteBuffer
import java.nio.channels.FileChannel
import java.io.IOException
import java.nio.file.Files
import java.nio.file.LinkOption
import java.nio.file.StandardCopyOption
import java.nio.file.StandardOpenOption
import java.util.UUID
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock

class ProjectFileStore(
    private val projectsRoot: File,
    private val clock: StudioClock,
    private val idGenerator: ProjectIdGenerator,
    private val codec: ProjectMetadataCodec = ProjectMetadataCodec(),
) {
    suspend fun create(name: String): ProjectResult<OpenProject> = PROCESS_FILE_MUTEX.withLock {
        when (val normalized = ProjectNameRules.normalize(name)) {
            is ProjectResult.Failure -> normalized
            is ProjectResult.Success -> createValidated(normalized.value)
        }
    }

    suspend fun open(id: ProjectId): ProjectResult<OpenProject> = PROCESS_FILE_MUTEX.withLock {
        readProjectUnlocked(id)
    }

    suspend fun update(
        metadata: ProjectMetadata,
        expectedRevision: Long,
    ): ProjectResult<ProjectMetadata> = PROCESS_FILE_MUTEX.withLock {
        val normalized = ProjectNameRules.normalize(metadata.name)
        if (normalized is ProjectResult.Failure) return@withLock normalized
        if (!isSafeProjectId(metadata.id.value)) {
            return@withLock ProjectResult.Failure(ProjectError.NotFound)
        }

        when (val existing = readProjectUnlocked(metadata.id)) {
            is ProjectResult.Failure -> existing
            is ProjectResult.Success -> {
                if (existing.value.metadata.revision != expectedRevision) {
                    ProjectResult.Failure(ProjectError.ConcurrentModification)
                } else if (expectedRevision == Long.MAX_VALUE) {
                    ProjectResult.Failure(ProjectError.CorruptedMetadata)
                } else {
                    val now = clock.nowEpochMillis()
                    val updated = existing.value.metadata.copy(
                        name = (normalized as ProjectResult.Success).value,
                        updatedAtEpochMillis = maxOf(now, existing.value.metadata.updatedAtEpochMillis),
                        revision = expectedRevision + 1,
                    )
                    try {
                        atomicWrite(projectDirectory(metadata.id).resolve(METADATA_FILE), codec.encode(updated))
                        ProjectResult.Success(updated)
                    } catch (_: IOException) {
                        ProjectResult.Failure(ProjectError.StorageUnavailable)
                    }
                }
            }
        }
    }

    suspend fun scanProjects(): ProjectScanResult = PROCESS_FILE_MUTEX.withLock {
        try {
            if (!ensureTrustedRoot()) {
                return@withLock ProjectScanResult.Failure(ProjectError.StorageUnavailable)
            }
            val directories = projectsRoot.listFiles()
                ?: return@withLock ProjectScanResult.Failure(ProjectError.StorageUnavailable)
            val discoveredIds = mutableSetOf<ProjectId>()
            val metadata = directories
                .asSequence()
                .filter { directory ->
                    directory.isDirectory &&
                        !Files.isSymbolicLink(directory.toPath()) &&
                        isSafeProjectId(directory.name) &&
                        isContainedProjectDirectory(directory)
                }
                .mapNotNull { directory ->
                    val id = ProjectId(directory.name)
                    discoveredIds += id
                    when (val result = readProjectUnlocked(id)) {
                        is ProjectResult.Success -> result.value.metadata
                        is ProjectResult.Failure -> null
                    }
                }
                .sortedByDescending(ProjectMetadata::updatedAtEpochMillis)
                .toList()
            ProjectScanResult.Complete(metadata, discoveredIds)
        } catch (_: IOException) {
            ProjectScanResult.Failure(ProjectError.StorageUnavailable)
        } catch (_: SecurityException) {
            ProjectScanResult.Failure(ProjectError.StorageUnavailable)
        }
    }

    private fun ensureTrustedRoot(): Boolean {
        if (!projectsRoot.exists() && !projectsRoot.mkdirs()) return false
        return projectsRoot.isDirectory && !Files.isSymbolicLink(projectsRoot.toPath())
    }

    private fun isContainedProjectDirectory(directory: File): Boolean =
        try {
            directory.canonicalFile.parentFile == projectsRoot.canonicalFile
        } catch (_: IOException) {
            false
        }

    private fun readBoundedMetadata(metadataFile: File): ProjectResult<ByteArray> {
        val path = metadataFile.toPath()
        if (Files.isSymbolicLink(path)) {
            return ProjectResult.Failure(ProjectError.CorruptedMetadata)
        }
        return try {
            FileChannel.open(path, StandardOpenOption.READ, LinkOption.NOFOLLOW_LINKS).use { channel ->
                val buffer = ByteBuffer.allocate(ProjectMetadataCodec.MAX_METADATA_BYTES + 1)
                while (buffer.hasRemaining() && channel.read(buffer) != -1) {
                    // Continue until EOF or the strict upper bound is reached.
                }
                if (buffer.position() > ProjectMetadataCodec.MAX_METADATA_BYTES) {
                    ProjectResult.Failure(ProjectError.CorruptedMetadata)
                } else {
                    ProjectResult.Success(buffer.array().copyOf(buffer.position()))
                }
            }
        } catch (_: IOException) {
            ProjectResult.Failure(ProjectError.StorageUnavailable)
        } catch (_: SecurityException) {
            ProjectResult.Failure(ProjectError.StorageUnavailable)
        }
    }

    private fun createValidated(name: String): ProjectResult<OpenProject> {
        val idValue = idGenerator.nextId()
        if (!isSafeProjectId(idValue)) {
            return ProjectResult.Failure(ProjectError.Unexpected("O gerador produziu um ID inválido."))
        }

        val id = ProjectId(idValue)
        val directory = projectDirectory(id)
        if (directory.exists()) return ProjectResult.Failure(ProjectError.AlreadyExists)
        if (!ensureTrustedRoot()) return ProjectResult.Failure(ProjectError.StorageUnavailable)
        if (!directory.mkdirs()) return ProjectResult.Failure(ProjectError.StorageUnavailable)
        if (!isContainedProjectDirectory(directory) || Files.isSymbolicLink(directory.toPath())) {
            deleteCreatedDirectory(directory)
            return ProjectResult.Failure(ProjectError.StorageUnavailable)
        }

        return try {
            PROJECT_DIRECTORIES.forEach { relativePath ->
                val child = directory.resolve(relativePath)
                if (!child.mkdirs() && !child.isDirectory) {
                    throw IOException("Unable to create project directory: $relativePath")
                }
            }

            val now = clock.nowEpochMillis()
            val metadata = ProjectMetadata(
                format = PROJECT_FORMAT,
                schemaVersion = CURRENT_SCHEMA_VERSION,
                id = id,
                name = name,
                createdAtEpochMillis = now,
                updatedAtEpochMillis = now,
                revision = 1,
                engineVersion = ENGINE_VERSION,
                startScene = null,
            )
            atomicWrite(directory.resolve(METADATA_FILE), codec.encode(metadata))
            ProjectResult.Success(OpenProject(metadata))
        } catch (_: IOException) {
            deleteCreatedDirectory(directory)
            ProjectResult.Failure(ProjectError.StorageUnavailable)
        } catch (_: RuntimeException) {
            deleteCreatedDirectory(directory)
            ProjectResult.Failure(ProjectError.Unexpected("Falha inesperada ao criar o projeto."))
        }
    }

    private fun readProjectUnlocked(id: ProjectId): ProjectResult<OpenProject> {
        if (!isSafeProjectId(id.value)) return ProjectResult.Failure(ProjectError.NotFound)
        val directory = projectDirectory(id)
        if (
            !directory.isDirectory ||
            Files.isSymbolicLink(directory.toPath()) ||
            !isContainedProjectDirectory(directory)
        ) {
            return ProjectResult.Failure(ProjectError.NotFound)
        }
        val metadataFile = directory.resolve(METADATA_FILE)
        if (!metadataFile.isFile) return ProjectResult.Failure(ProjectError.NotFound)

        return when (val bytes = readBoundedMetadata(metadataFile)) {
            is ProjectResult.Failure -> bytes
            is ProjectResult.Success -> when (val decoded = codec.decode(bytes.value)) {
                is ProjectResult.Failure -> decoded
                is ProjectResult.Success -> {
                    if (decoded.value.id != id) {
                        ProjectResult.Failure(ProjectError.CorruptedMetadata)
                    } else {
                        ProjectResult.Success(OpenProject(decoded.value))
                    }
                }
            }
        }
    }

    private fun projectDirectory(id: ProjectId): File = projectsRoot.resolve(id.value)

    private fun atomicWrite(destination: File, bytes: ByteArray) {
        require(bytes.size <= ProjectMetadataCodec.MAX_METADATA_BYTES)
        val parent = requireNotNull(destination.parentFile)
        require(isContainedProjectDirectory(parent) && !Files.isSymbolicLink(parent.toPath()))
        val temporary = parent.resolve(".$METADATA_FILE.${UUID.randomUUID()}.tmp")
        try {
            FileChannel.open(
                temporary.toPath(),
                StandardOpenOption.CREATE_NEW,
                StandardOpenOption.WRITE,
                LinkOption.NOFOLLOW_LINKS,
            ).use { channel ->
                val buffer = ByteBuffer.wrap(bytes)
                while (buffer.hasRemaining()) channel.write(buffer)
                channel.force(true)
            }
            Files.move(
                temporary.toPath(),
                destination.toPath(),
                StandardCopyOption.ATOMIC_MOVE,
                StandardCopyOption.REPLACE_EXISTING,
            )
            forceDirectoryBestEffort(parent)
        } finally {
            Files.deleteIfExists(temporary.toPath())
        }
    }

    private fun forceDirectoryBestEffort(directory: File) {
        try {
            FileChannel.open(directory.toPath(), StandardOpenOption.READ).use { it.force(true) }
        } catch (_: IOException) {
            // Some filesystems do not expose directory fsync through Java.
        } catch (_: UnsupportedOperationException) {
            // The file itself was already forced before the atomic rename.
        }
    }

    private fun deleteCreatedDirectory(directory: File) {
        if (directory.parentFile == projectsRoot && isContainedProjectDirectory(directory)) {
            try {
                Files.walk(directory.toPath()).use { paths ->
                    paths.sorted(Comparator.reverseOrder()).forEach(Files::deleteIfExists)
                }
            } catch (_: IOException) {
                // Best-effort rollback; a later scan ignores incomplete projects.
            }
        }
    }

    companion object {
        const val PROJECT_FORMAT = "mobile-game-studio"
        const val CURRENT_SCHEMA_VERSION = 1
        const val ENGINE_VERSION = "0.1.0"
        const val METADATA_FILE = "project.json"

        private val SAFE_PROJECT_ID = Regex("[A-Za-z0-9][A-Za-z0-9-]{0,63}")
        private val PROCESS_FILE_MUTEX = Mutex()
        private val PROJECT_DIRECTORIES = listOf(
            "scenes",
            "prefabs",
            "assets/models",
            "assets/textures",
            "assets/materials",
            "assets/animations",
            "assets/audio",
            "scripts/lua",
            "scripts/java",
            "visual-graphs",
            "ui",
            "plugins",
            "cache",
            "settings",
        )

        fun isSafeProjectId(value: String): Boolean = SAFE_PROJECT_ID.matches(value)
    }
}

sealed interface ProjectScanResult {
    data class Complete(
        val metadata: List<ProjectMetadata>,
        val discoveredIds: Set<ProjectId>,
    ) : ProjectScanResult

    data class Failure(val error: ProjectError) : ProjectScanResult
}
