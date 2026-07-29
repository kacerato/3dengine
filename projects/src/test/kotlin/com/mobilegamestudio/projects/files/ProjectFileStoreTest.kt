package com.mobilegamestudio.projects.files

import com.mobilegamestudio.core.common.ProjectIdGenerator
import com.mobilegamestudio.core.common.StudioClock
import com.mobilegamestudio.core.model.OpenProject
import com.mobilegamestudio.core.model.ProjectError
import com.mobilegamestudio.core.model.ProjectId
import com.mobilegamestudio.core.model.ProjectResult
import java.io.File
import java.util.concurrent.atomic.AtomicLong
import kotlinx.coroutines.async
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.rules.TemporaryFolder

class ProjectFileStoreTest {
    @get:Rule
    val temporaryFolder = TemporaryFolder()

    private val now = AtomicLong(1_000)
    private val clock = StudioClock { now.getAndIncrement() }

    @Test
    fun `creates complete structure and reopens from a fresh store`() = runTest {
        val root = temporaryFolder.newFolder("projects")
        val store = store(root, "project-1")

        val created = store.create(" Meu   Jogo ")

        assertTrue(created is ProjectResult.Success)
        val metadata = (created as ProjectResult.Success<OpenProject>).value.metadata
        assertEquals("Meu Jogo", metadata.name)
        assertTrue(root.resolve("project-1/project.json").isFile)
        EXPECTED_DIRECTORIES.forEach { relative ->
            assertTrue("Missing $relative", root.resolve("project-1/$relative").isDirectory)
        }

        val reopened = store(root, "unused-id").open(ProjectId("project-1"))
        assertEquals(created, reopened)
    }

    @Test
    fun `invalid metadata and future schema are reported without crashing`() = runTest {
        val root = temporaryFolder.newFolder("projects")
        val projectDirectory = root.resolve("project-1").apply { mkdirs() }
        projectDirectory.resolve("project.json").writeText("{bad-json")

        assertEquals(
            ProjectResult.Failure(ProjectError.CorruptedMetadata),
            store(root, "unused").open(ProjectId("project-1")),
        )

        projectDirectory.resolve("project.json").writeText(
            """
                {
                  "format": "mobile-game-studio",
                  "schemaVersion": 2,
                  "id": "project-1",
                  "name": "Novo",
                  "createdAtEpochMillis": 1,
                  "updatedAtEpochMillis": 1,
                  "revision": 1,
                  "engineVersion": "1"
                }
            """.trimIndent(),
        )
        assertEquals(
            ProjectResult.Failure(ProjectError.UnsupportedSchemaVersion(2, 1)),
            store(root, "unused").open(ProjectId("project-1")),
        )
    }

    @Test
    fun `save increments revision and rejects stale writer`() = runTest {
        val root = temporaryFolder.newFolder("projects")
        val store = store(root, "project-1")
        val created = (store.create("Original") as ProjectResult.Success).value.metadata

        now.set(2_000)
        val saved = store.update(created.copy(name = "Renomeado"), expectedRevision = 1)
        assertTrue(saved is ProjectResult.Success)
        assertEquals(2, (saved as ProjectResult.Success).value.revision)
        assertEquals("Renomeado", saved.value.name)

        assertEquals(
            ProjectResult.Failure(ProjectError.ConcurrentModification),
            store.update(created.copy(name = "Atrasado"), expectedRevision = 1),
        )
    }

    @Test
    fun `concurrent duplicate id creates only one project`() = runTest {
        val root = temporaryFolder.newFolder("projects")
        val store = store(root, "same-id")

        val first = async { store.create("Primeiro") }
        val second = async { store.create("Segundo") }
        val results = listOf(first.await(), second.await())

        assertEquals(1, results.count { it is ProjectResult.Success })
        assertEquals(
            1,
            results.count {
                it == ProjectResult.Failure(ProjectError.AlreadyExists)
            },
        )
        assertEquals(1, root.listFiles().orEmpty().count(File::isDirectory))
    }

    @Test
    fun `stale temporary file never replaces valid metadata`() = runTest {
        val root = temporaryFolder.newFolder("projects")
        val store = store(root, "project-1")
        val created = store.create("Seguro")
        root.resolve("project-1/project.json.tmp").writeText("{incomplete")

        assertEquals(created, store.open(ProjectId("project-1")))
    }

    @Test
    fun `unsafe id is rejected before resolving a path`() = runTest {
        val root = temporaryFolder.newFolder("projects")

        assertEquals(
            ProjectResult.Failure(ProjectError.NotFound),
            store(root, "unused").open(ProjectId("../outside")),
        )
    }

    @Test
    fun `oversized metadata is rejected through bounded read`() = runTest {
        val root = temporaryFolder.newFolder("projects")
        val directory = root.resolve("project-1").apply { mkdirs() }
        directory.resolve("project.json").writeBytes(
            ByteArray(ProjectMetadataCodec.MAX_METADATA_BYTES + 1) { 'x'.code.toByte() },
        )

        assertEquals(
            ProjectResult.Failure(ProjectError.CorruptedMetadata),
            store(root, "unused").open(ProjectId("project-1")),
        )
    }

    private fun store(root: File, generatedId: String) = ProjectFileStore(
        projectsRoot = root,
        clock = clock,
        idGenerator = ProjectIdGenerator { generatedId },
    )

    companion object {
        private val EXPECTED_DIRECTORIES = listOf(
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
    }
}
