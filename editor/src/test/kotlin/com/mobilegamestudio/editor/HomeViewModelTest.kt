package com.mobilegamestudio.editor

import com.mobilegamestudio.core.contracts.ProjectRepository
import com.mobilegamestudio.core.model.CreateProjectRequest
import com.mobilegamestudio.core.model.OpenProject
import com.mobilegamestudio.core.model.ProjectId
import com.mobilegamestudio.core.model.ProjectMetadata
import com.mobilegamestudio.core.model.ProjectResult
import com.mobilegamestudio.core.model.ProjectSummary
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.test.setMain
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class HomeViewModelTest {
    private val dispatcher = StandardTestDispatcher()

    @Before
    fun setUp() {
        Dispatchers.setMain(dispatcher)
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    @Test
    fun `loads projects from repository flow`() = runTest(dispatcher) {
        val repository = FakeProjectRepository()
        val viewModel = HomeViewModel(repository)

        repository.projects.value = listOf(SUMMARY)
        advanceUntilIdle()

        assertFalse(viewModel.state.value.isLoading)
        assertEquals(listOf(SUMMARY), viewModel.state.value.projects)
    }

    @Test
    fun `invalid name is rejected before repository call`() = runTest(dispatcher) {
        val repository = FakeProjectRepository()
        val viewModel = HomeViewModel(repository)
        advanceUntilIdle()

        viewModel.showCreateProject()
        viewModel.updateProjectName("../")
        viewModel.createProject()
        advanceUntilIdle()

        assertEquals(0, repository.createCalls)
        assertTrue(viewModel.state.value.projectNameError != null)
    }

    @Test
    fun `double submit starts one creation`() = runTest(dispatcher) {
        val repository = FakeProjectRepository()
        val viewModel = HomeViewModel(repository)
        advanceUntilIdle()

        viewModel.showCreateProject()
        viewModel.updateProjectName("Jogo")
        viewModel.createProject()
        viewModel.createProject()
        advanceUntilIdle()

        assertEquals(1, repository.createCalls)
        assertFalse(viewModel.state.value.isCreating)
    }

    @Test
    fun `mountain demo reports unavailable content without creating or overwriting`() = runTest(dispatcher) {
        val viewModel = HomeViewModel(FakeProjectRepository())
        advanceUntilIdle()

        viewModel.openMountainDemo()

        assertEquals("O conteúdo da demonstração não está disponível.", viewModel.state.value.message)
        assertFalse(viewModel.state.value.showCreateSheet)
    }

    @Test
    fun `opening a project blocks concurrent creation flow`() = runTest(dispatcher) {
        val repository = FakeProjectRepository()
        val viewModel = HomeViewModel(repository)
        advanceUntilIdle()

        viewModel.openProject(METADATA.id)
        viewModel.showCreateProject()
        viewModel.updateProjectName("Concorrente")
        viewModel.createProject()

        assertEquals(METADATA.id, viewModel.state.value.openingProjectId)
        assertFalse(viewModel.state.value.showCreateSheet)
        assertEquals(0, repository.createCalls)
        advanceUntilIdle()
    }

    private class FakeProjectRepository : ProjectRepository {
        val projects = MutableStateFlow<List<ProjectSummary>>(emptyList())
        var createCalls = 0

        override fun observeProjects(): Flow<List<ProjectSummary>> = projects

        override suspend fun createProject(request: CreateProjectRequest): ProjectResult<OpenProject> {
            createCalls += 1
            return ProjectResult.Success(OpenProject(METADATA.copy(name = request.name)))
        }

        override suspend fun openProject(id: ProjectId): ProjectResult<OpenProject> =
            ProjectResult.Success(OpenProject(METADATA))

        override suspend fun updateMetadata(
            metadata: ProjectMetadata,
            expectedRevision: Long,
        ): ProjectResult<ProjectMetadata> = ProjectResult.Success(metadata)
    }

    companion object {
        private val METADATA = ProjectMetadata(
            format = "mobile-game-studio",
            schemaVersion = 1,
            id = ProjectId("project-1"),
            name = "Jogo",
            createdAtEpochMillis = 1,
            updatedAtEpochMillis = 1,
            revision = 1,
            engineVersion = "0.1.0",
            startScene = null,
        )
        private val SUMMARY = ProjectSummary(
            id = METADATA.id,
            name = METADATA.name,
            schemaVersion = METADATA.schemaVersion,
            updatedAtEpochMillis = METADATA.updatedAtEpochMillis,
        )
    }
}
