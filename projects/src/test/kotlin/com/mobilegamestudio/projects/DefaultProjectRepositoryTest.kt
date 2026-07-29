package com.mobilegamestudio.projects

import com.mobilegamestudio.core.common.ProjectIdGenerator
import com.mobilegamestudio.core.common.SilentStudioLogger
import com.mobilegamestudio.core.common.StudioClock
import com.mobilegamestudio.core.contracts.StudioPreferences
import com.mobilegamestudio.core.model.CreateProjectRequest
import com.mobilegamestudio.core.model.ProjectId
import com.mobilegamestudio.core.model.ProjectResult
import com.mobilegamestudio.projects.catalog.ProjectCatalogDao
import com.mobilegamestudio.projects.catalog.ProjectCatalogEntity
import com.mobilegamestudio.projects.files.ProjectFileStore
import java.io.File
import kotlinx.coroutines.CompletableDeferred
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.async
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.runCurrent
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.rules.TemporaryFolder

@OptIn(ExperimentalCoroutinesApi::class)
class DefaultProjectRepositoryTest {
    @get:Rule
    val temporaryFolder = TemporaryFolder()

    @Test
    fun `file work is dispatched and successful create updates catalog`() = runTest {
        val dao = FakeCatalogDao()
        val ioDispatcher = StandardTestDispatcher(testScheduler)
        val repository = repository(
            root = temporaryFolder.newFolder("projects"),
            dao = dao,
            ioDispatcher = ioDispatcher,
        )

        val result = async {
            repository.createProject(CreateProjectRequest("Jogo"))
        }

        assertFalse(result.isCompleted)
        advanceUntilIdle()

        assertTrue(result.await() is ProjectResult.Success)
        assertEquals(listOf("project-1"), dao.entities.value.map { it.projectId })
    }

    @Test
    fun `reconcile preserves indexed corrupt project that still exists on disk`() = runTest {
        val root = temporaryFolder.newFolder("projects")
        val projectDirectory = root.resolve("project-1").apply { mkdirs() }
        projectDirectory.resolve("project.json").writeText("{corrupt")
        val dao = FakeCatalogDao().apply {
            upsertIfCurrent(
                ProjectCatalogEntity(
                    projectId = "project-1",
                    relativeDirectory = "project-1",
                    displayName = "Projeto recuperável",
                    schemaVersion = 1,
                    revision = 1,
                    createdAtEpochMillis = 1,
                    updatedAtEpochMillis = 1,
                    lastOpenedAtEpochMillis = null,
                ),
            )
        }
        val repository = repository(root, dao, StandardTestDispatcher(testScheduler))

        repository.reconcileCatalog()

        assertEquals(listOf("project-1"), dao.entities.value.map { it.projectId })
    }

    @Test
    fun `stale catalog publication cannot overwrite newer revision`() = runTest {
        val dao = FakeCatalogDao()

        dao.upsertIfCurrent(catalogEntity(revision = 3, name = "Novo"))
        dao.upsertIfCurrent(catalogEntity(revision = 2, name = "Antigo"))

        assertEquals(3L, dao.entities.value.single().revision)
        assertEquals("Novo", dao.entities.value.single().displayName)
    }

    @Test
    fun `catalog publication survives caller cancellation after file commit`() = runTest {
        val root = temporaryFolder.newFolder("projects")
        val dao = FakeCatalogDao(blockUpsert = true)
        val dispatcher = StandardTestDispatcher(testScheduler)
        val repository = repository(root, dao, dispatcher)

        val operation = async { repository.createProject(CreateProjectRequest("Persistente")) }
        runCurrent()
        dao.upsertStarted.await()
        assertTrue(root.resolve("project-1/project.json").isFile)

        operation.cancel()
        dao.releaseUpsert.complete(Unit)
        advanceUntilIdle()

        assertTrue(operation.isCancelled)
        assertEquals(listOf("project-1"), dao.entities.value.map { it.projectId })
    }

    private fun repository(
        root: File,
        dao: FakeCatalogDao,
        ioDispatcher: CoroutineDispatcher,
    ) = DefaultProjectRepository(
        fileStore = ProjectFileStore(
            projectsRoot = root,
            clock = StudioClock { 1_000 },
            idGenerator = ProjectIdGenerator { "project-1" },
        ),
        catalogDao = dao,
        preferences = FakePreferences,
        clock = StudioClock { 1_000 },
        logger = SilentStudioLogger,
        ioDispatcher = ioDispatcher,
        maintenanceScope = CoroutineScope(SupervisorJob() + ioDispatcher),
    )

    private fun catalogEntity(revision: Long, name: String) = ProjectCatalogEntity(
        projectId = "project-1",
        relativeDirectory = "project-1",
        displayName = name,
        schemaVersion = 1,
        revision = revision,
        createdAtEpochMillis = 1,
        updatedAtEpochMillis = revision,
        lastOpenedAtEpochMillis = null,
    )
}

private class FakeCatalogDao(
    private val blockUpsert: Boolean = false,
) : ProjectCatalogDao {
    val entities = MutableStateFlow<List<ProjectCatalogEntity>>(emptyList())
    val upsertStarted = CompletableDeferred<Unit>()
    val releaseUpsert = CompletableDeferred<Unit>()

    override fun observeAll(): Flow<List<ProjectCatalogEntity>> = entities

    override suspend fun getById(projectId: String): ProjectCatalogEntity? =
        entities.value.firstOrNull { it.projectId == projectId }

    override suspend fun upsertUnchecked(entity: ProjectCatalogEntity) {
        if (blockUpsert) {
            upsertStarted.complete(Unit)
            releaseUpsert.await()
        }
        entities.value = entities.value.filterNot { it.projectId == entity.projectId } + entity
    }

    override suspend fun upsertAll(entities: List<ProjectCatalogEntity>) {
        entities.forEach { upsertUnchecked(it) }
    }

    override suspend fun getAll(): List<ProjectCatalogEntity> = entities.value

    override suspend fun deleteByIds(projectIds: List<String>) {
        entities.value = entities.value.filterNot { it.projectId in projectIds }
    }
}

private object FakePreferences : StudioPreferences {
    override val lastOpenedProjectId: Flow<ProjectId?> = flowOf(null)
    override suspend fun setLastOpenedProject(id: ProjectId) = Unit
}
