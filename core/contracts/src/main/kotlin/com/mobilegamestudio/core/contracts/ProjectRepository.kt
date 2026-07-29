package com.mobilegamestudio.core.contracts

import com.mobilegamestudio.core.model.CreateProjectRequest
import com.mobilegamestudio.core.model.OpenProject
import com.mobilegamestudio.core.model.ProjectId
import com.mobilegamestudio.core.model.ProjectMetadata
import com.mobilegamestudio.core.model.ProjectResult
import com.mobilegamestudio.core.model.ProjectSummary
import kotlinx.coroutines.flow.Flow

interface ProjectRepository {
    fun observeProjects(): Flow<List<ProjectSummary>>

    suspend fun createProject(request: CreateProjectRequest): ProjectResult<OpenProject>

    suspend fun openProject(id: ProjectId): ProjectResult<OpenProject>

    suspend fun updateMetadata(
        metadata: ProjectMetadata,
        expectedRevision: Long,
    ): ProjectResult<ProjectMetadata>
}

interface StudioPreferences {
    val lastOpenedProjectId: Flow<ProjectId?>

    suspend fun setLastOpenedProject(id: ProjectId)
}

