package com.mobilegamestudio.app

import androidx.compose.material3.MaterialTheme
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.test.onNodeWithText
import com.mobilegamestudio.core.contracts.ProjectRepository
import com.mobilegamestudio.core.model.CreateProjectRequest
import com.mobilegamestudio.core.model.OpenProject
import com.mobilegamestudio.core.model.ProjectId
import com.mobilegamestudio.core.model.ProjectMetadata
import com.mobilegamestudio.core.model.ProjectResult
import com.mobilegamestudio.core.model.ProjectSummary
import com.mobilegamestudio.editor.HomeRoute
import com.mobilegamestudio.editor.HomeViewModel
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.flowOf
import org.junit.Rule
import org.junit.Test

class HomeScreenTest {
    @get:Rule
    val composeRule = createComposeRule()

    @Test
    fun emptyStateOffersARealCreateAction() {
        composeRule.setContent {
            MaterialTheme {
                HomeRoute(
                    viewModel = HomeViewModel(EmptyRepository),
                    onOpenProject = {},
                )
            }
        }

        composeRule.onNodeWithText("Comece pelo primeiro projeto").assertIsDisplayed()
        composeRule.onNodeWithText("Criar projeto").assertIsDisplayed()
    }
}

private object EmptyRepository : ProjectRepository {
    override fun observeProjects(): Flow<List<ProjectSummary>> = flowOf(emptyList())
    override suspend fun createProject(request: CreateProjectRequest): ProjectResult<OpenProject> =
        error("Not called by this test")
    override suspend fun openProject(id: ProjectId): ProjectResult<OpenProject> =
        error("Not called by this test")
    override suspend fun updateMetadata(
        metadata: ProjectMetadata,
        expectedRevision: Long,
    ): ProjectResult<ProjectMetadata> = error("Not called by this test")
}
