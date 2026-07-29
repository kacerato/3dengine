package com.mobilegamestudio.app

import androidx.compose.runtime.Composable
import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProvider
import androidx.lifecycle.viewmodel.compose.viewModel
import kotlinx.coroutines.Dispatchers
import androidx.navigation.NavType
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import androidx.navigation.navArgument
import com.mobilegamestudio.core.contracts.ProjectRepository
import com.mobilegamestudio.core.contracts.ProjectContentRepository
import com.mobilegamestudio.core.model.ProjectId
import com.mobilegamestudio.editor.HomeRoute
import com.mobilegamestudio.editor.HomeViewModel
import com.mobilegamestudio.editor.WorkspaceRoute
import com.mobilegamestudio.editor.WorkspaceViewModel

private const val PROJECTS_ROUTE = "projects"
private const val WORKSPACE_ROUTE = "workspace"
private const val PROJECT_ID_ARGUMENT = "projectId"

@Composable
fun MobileGameStudioApp(
    repository: ProjectRepository,
    contentRepository: ProjectContentRepository,
) {
    val navController = rememberNavController()

    NavHost(navController = navController, startDestination = PROJECTS_ROUTE) {
        composable(PROJECTS_ROUTE) {
            val homeViewModel: HomeViewModel = viewModel(
                factory = factory { HomeViewModel(repository, contentRepository) },
            )
            HomeRoute(
                viewModel = homeViewModel,
                onOpenProject = { projectId ->
                    navController.navigate("$WORKSPACE_ROUTE/${projectId.value}")
                },
            )
        }

        composable(
            route = "$WORKSPACE_ROUTE/{$PROJECT_ID_ARGUMENT}",
            arguments = listOf(navArgument(PROJECT_ID_ARGUMENT) { type = NavType.StringType }),
        ) { backStackEntry ->
            val rawProjectId = requireNotNull(
                backStackEntry.arguments?.getString(PROJECT_ID_ARGUMENT),
            )
            val workspaceViewModel: WorkspaceViewModel = viewModel(
                key = "workspace-$rawProjectId",
                factory = factory {
                    WorkspaceViewModel(
                        projectId = ProjectId(rawProjectId),
                        repository = repository,
                        contentRepository = contentRepository,
                        runtimeDispatcher = Dispatchers.Default,
                    )
                },
            )
            WorkspaceRoute(
                viewModel = workspaceViewModel,
                onBack = navController::popBackStack,
            )
        }
    }
}

private fun <T : ViewModel> factory(create: () -> T): ViewModelProvider.Factory =
    object : ViewModelProvider.Factory {
        @Suppress("UNCHECKED_CAST")
        override fun <R : ViewModel> create(modelClass: Class<R>): R = create() as R
    }
