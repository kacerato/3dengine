package com.mobilegamestudio.projects

import com.mobilegamestudio.core.common.StudioClock
import com.mobilegamestudio.core.common.StudioLogger
import com.mobilegamestudio.core.contracts.ProjectRepository
import com.mobilegamestudio.core.contracts.StudioPreferences
import com.mobilegamestudio.core.model.CreateProjectRequest
import com.mobilegamestudio.core.model.OpenProject
import com.mobilegamestudio.core.model.ProjectId
import com.mobilegamestudio.core.model.ProjectMetadata
import com.mobilegamestudio.core.model.ProjectResult
import com.mobilegamestudio.core.model.ProjectSummary
import com.mobilegamestudio.projects.catalog.ProjectCatalogDao
import com.mobilegamestudio.projects.catalog.ProjectCatalogEntity
import com.mobilegamestudio.projects.files.ProjectFileStore
import com.mobilegamestudio.projects.files.ProjectScanResult
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Job
import kotlinx.coroutines.currentCoroutineContext
import kotlinx.coroutines.ensureActive
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.onStart
import kotlinx.coroutines.launch
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext

class DefaultProjectRepository(
    private val fileStore: ProjectFileStore,
    private val catalogDao: ProjectCatalogDao,
    private val preferences: StudioPreferences,
    private val clock: StudioClock,
    private val logger: StudioLogger,
    private val ioDispatcher: CoroutineDispatcher,
    private val maintenanceScope: CoroutineScope,
) : ProjectRepository {
    private val catalogMutex = Mutex()

    override fun observeProjects(): Flow<List<ProjectSummary>> =
        catalogDao.observeAll()
            .onStart { reconcileCatalog() }
            .map { entities ->
                entities.map { entity ->
                    ProjectSummary(
                        id = ProjectId(entity.projectId),
                        name = entity.displayName,
                        schemaVersion = entity.schemaVersion,
                        updatedAtEpochMillis = entity.updatedAtEpochMillis,
                    )
                }
            }

    override suspend fun createProject(
        request: CreateProjectRequest,
    ): ProjectResult<OpenProject> {
        val committed = commitAndPublish(
            commit = { fileStore.create(request.name) },
            publish = { opened -> updateCatalogBestEffort(opened.metadata) },
        )
        committed.publication?.join()
        return committed.result
    }

    override suspend fun openProject(id: ProjectId): ProjectResult<OpenProject> {
        val opened = commitAndPublish(
            commit = { fileStore.open(id) },
            publish = { project ->
                updateCatalogBestEffort(
                    metadata = project.metadata,
                    lastOpenedAtEpochMillis = clock.nowEpochMillis(),
                )
                runBestEffort("preferences.last_opened_failed", id) {
                    preferences.setLastOpenedProject(id)
                }
            },
        )
        opened.publication?.join()
        return opened.result
    }

    override suspend fun updateMetadata(
        metadata: ProjectMetadata,
        expectedRevision: Long,
    ): ProjectResult<ProjectMetadata> {
        val committed = commitAndPublish(
            commit = { fileStore.update(metadata, expectedRevision) },
            publish = { updated -> updateCatalogBestEffort(updated) },
        )
        committed.publication?.join()
        return committed.result
    }

    /**
     * The publication job is created in an application-owned scope before the
     * dispatcher boundary returns. If caller cancellation races with a durable
     * file commit, catalog reconciliation still proceeds independently.
     */
    private suspend fun <T> commitAndPublish(
        commit: suspend () -> ProjectResult<T>,
        publish: suspend (T) -> Unit,
    ): CommittedResult<T> = withContext(ioDispatcher) {
        currentCoroutineContext().ensureActive()
        val result = commit()
        val publication = when (result) {
            is ProjectResult.Failure -> null
            is ProjectResult.Success -> maintenanceScope.launch {
                publish(result.value)
            }
        }
        CommittedResult(result, publication)
    }

    suspend fun reconcileCatalog() = catalogMutex.withLock {
        try {
            when (val scan = withContext(ioDispatcher) { fileStore.scanProjects() }) {
                is ProjectScanResult.Failure -> {
                    logger.error(
                        "projects.catalog_scan_failed",
                        IllegalStateException(scan.error.toString()),
                    )
                }
                is ProjectScanResult.Complete -> {
                    catalogDao.reconcile(
                        validEntities = scan.metadata.map(ProjectCatalogEntity::from),
                        discoveredProjectIds = scan.discoveredIds.mapTo(mutableSetOf()) { it.value },
                    )
                    logger.info(
                        "projects.catalog_reconciled",
                        mapOf("count" to scan.metadata.size.toString()),
                    )
                }
            }
        } catch (cancellation: CancellationException) {
            throw cancellation
        } catch (throwable: Throwable) {
            logger.error("projects.catalog_reconcile_failed", throwable)
        }
    }

    private suspend fun updateCatalogBestEffort(
        metadata: ProjectMetadata,
        lastOpenedAtEpochMillis: Long? = null,
    ) = catalogMutex.withLock {
        runBestEffort("projects.catalog_update_failed", metadata.id) {
            catalogDao.upsertIfCurrent(
                ProjectCatalogEntity.from(metadata, lastOpenedAtEpochMillis),
            )
        }
    }

    private suspend fun runBestEffort(
        event: String,
        projectId: ProjectId,
        action: suspend () -> Unit,
    ) {
        try {
            action()
        } catch (cancellation: CancellationException) {
            throw cancellation
        } catch (throwable: Throwable) {
            logger.error(event, throwable, mapOf("project_id" to projectId.value))
        }
    }
}

private data class CommittedResult<T>(
    val result: ProjectResult<T>,
    val publication: Job?,
)
