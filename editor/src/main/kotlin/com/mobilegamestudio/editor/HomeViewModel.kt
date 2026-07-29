package com.mobilegamestudio.editor

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.mobilegamestudio.core.contracts.ProjectRepository
import com.mobilegamestudio.core.contracts.ProjectContentRepository
import com.mobilegamestudio.core.contracts.ContentResult
import com.mobilegamestudio.core.model.CreateProjectRequest
import com.mobilegamestudio.core.model.ProjectError
import com.mobilegamestudio.core.model.ProjectId
import com.mobilegamestudio.core.model.ProjectNameRules
import com.mobilegamestudio.core.model.ProjectResult
import com.mobilegamestudio.core.model.ProjectSummary
import com.mobilegamestudio.core.model.MountainDemoScene
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.channels.Channel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.catch
import kotlinx.coroutines.flow.receiveAsFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

data class HomeUiState(
    val projects: List<ProjectSummary> = emptyList(),
    val isLoading: Boolean = true,
    val isCreating: Boolean = false,
    val openingProjectId: ProjectId? = null,
    val showCreateSheet: Boolean = false,
    val projectName: String = "",
    val projectNameError: String? = null,
    val message: String? = null,
)

sealed interface HomeEvent {
    data class OpenProject(val id: ProjectId) : HomeEvent
}

class HomeViewModel(
    private val repository: ProjectRepository,
    private val contentRepository: ProjectContentRepository? = null,
) : ViewModel() {
    private val mutableState = MutableStateFlow(HomeUiState())
    val state: StateFlow<HomeUiState> = mutableState.asStateFlow()

    private val eventChannel = Channel<HomeEvent>(capacity = Channel.BUFFERED)
    val events = eventChannel.receiveAsFlow()

    init {
        viewModelScope.launch {
            repository.observeProjects()
                .catch { throwable ->
                    mutableState.update {
                        it.copy(
                            isLoading = false,
                            message = "Não foi possível carregar os projetos.",
                        )
                    }
                }
                .collect { projects ->
                    mutableState.update { it.copy(projects = projects, isLoading = false) }
                }
        }
    }

    fun showCreateProject() {
        if (mutableState.value.isCreating || mutableState.value.openingProjectId != null) return
        mutableState.update {
            it.copy(
                showCreateSheet = true,
                projectName = "",
                projectNameError = null,
                message = null,
            )
        }
    }

    fun openMountainDemo() {
        val content = contentRepository ?: run {
            mutableState.update { it.copy(message = "O conteúdo da demonstração não está disponível.") }
            return
        }
        if (mutableState.value.isCreating || mutableState.value.openingProjectId != null) return
        mutableState.update { it.copy(isCreating = true, message = null) }
        viewModelScope.launch {
            try {
                var existingDemo: ProjectId? = null
                for (project in mutableState.value.projects.filter { it.name == MOUNTAIN_DEMO_NAME }) {
                    val scene = content.loadOrCreateScene(project.id)
                    if (scene is ContentResult.Success && scene.value.sceneId == MountainDemoScene.SCENE_ID) {
                        val refreshed = content.installMountainDemo(project.id)
                        if (refreshed is ContentResult.Success) {
                            existingDemo = project.id
                            break
                        }
                    }
                    if (scene is ContentResult.Failure && scene.error == com.mobilegamestudio.core.contracts.ContentError.SceneNotFound) {
                        val repaired = content.installMountainDemo(project.id)
                        if (repaired is ContentResult.Success) {
                            existingDemo = project.id
                            break
                        }
                    }
                }
                if (existingDemo != null) {
                    eventChannel.send(HomeEvent.OpenProject(existingDemo))
                    return@launch
                }
                when (val created = repository.createProject(CreateProjectRequest(MOUNTAIN_DEMO_NAME))) {
                    is ProjectResult.Failure -> mutableState.update {
                        it.copy(message = created.error.toUserMessage())
                    }
                    is ProjectResult.Success -> when (content.installMountainDemo(created.value.metadata.id)) {
                        is ContentResult.Failure -> mutableState.update {
                            it.copy(message = "Não foi possível instalar o Open World Starter.")
                        }
                        is ContentResult.Success -> eventChannel.send(
                            HomeEvent.OpenProject(created.value.metadata.id),
                        )
                    }
                }
            } catch (cancellation: CancellationException) {
                throw cancellation
            } catch (_: Throwable) {
                mutableState.update { it.copy(message = "Falha ao abrir a demonstração.") }
            } finally {
                mutableState.update { it.copy(isCreating = false) }
            }
        }
    }

    fun dismissCreateProject() {
        if (mutableState.value.isCreating) return
        mutableState.update { it.copy(showCreateSheet = false, projectNameError = null) }
    }

    fun updateProjectName(value: String) {
        if (value.length > ProjectNameRules.MAX_LENGTH + 1) return
        mutableState.update {
            it.copy(projectName = value, projectNameError = null, message = null)
        }
    }

    fun createProject() {
        if (mutableState.value.isCreating || mutableState.value.openingProjectId != null) return
        val validation = ProjectNameRules.normalize(mutableState.value.projectName)
        if (validation is ProjectResult.Failure) {
            mutableState.update {
                it.copy(projectNameError = validation.error.toUserMessage())
            }
            return
        }

        mutableState.update { it.copy(isCreating = true, projectNameError = null, message = null) }
        viewModelScope.launch {
            try {
                when (
                    val result = repository.createProject(
                        CreateProjectRequest((validation as ProjectResult.Success).value),
                    )
                ) {
                    is ProjectResult.Success -> {
                        mutableState.update {
                            it.copy(isCreating = false, showCreateSheet = false, projectName = "")
                        }
                        eventChannel.send(HomeEvent.OpenProject(result.value.metadata.id))
                    }
                    is ProjectResult.Failure -> {
                        mutableState.update {
                            it.copy(isCreating = false, projectNameError = result.error.toUserMessage())
                        }
                    }
                }
            } catch (cancellation: CancellationException) {
                throw cancellation
            } catch (throwable: Throwable) {
                mutableState.update {
                    it.copy(
                        isCreating = false,
                        message = "Falha inesperada ao criar o projeto.",
                    )
                }
            }
        }
    }

    fun openProject(id: ProjectId) {
        if (mutableState.value.isCreating || mutableState.value.openingProjectId != null) return
        mutableState.update { it.copy(openingProjectId = id, message = null) }
        viewModelScope.launch {
            try {
                when (val result = repository.openProject(id)) {
                    is ProjectResult.Success -> eventChannel.send(HomeEvent.OpenProject(id))
                    is ProjectResult.Failure -> {
                        mutableState.update { it.copy(message = result.error.toUserMessage()) }
                    }
                }
            } catch (cancellation: CancellationException) {
                throw cancellation
            } catch (throwable: Throwable) {
                mutableState.update {
                    it.copy(message = "Falha inesperada ao abrir o projeto.")
                }
            } finally {
                mutableState.update { it.copy(openingProjectId = null) }
            }
        }
    }

    fun clearMessage() {
        mutableState.update { it.copy(message = null) }
    }

    companion object {
        private const val MOUNTAIN_DEMO_NAME = "Open World Starter"
    }
}

internal fun ProjectError.toUserMessage(): String = when (this) {
    is ProjectError.InvalidName -> reason
    ProjectError.AlreadyExists -> "Já existe um projeto com esse identificador."
    ProjectError.NotFound -> "O projeto não foi encontrado no armazenamento."
    ProjectError.CorruptedMetadata -> "Os metadados do projeto estão corrompidos."
    is ProjectError.UnsupportedSchemaVersion ->
        "O projeto usa a versão $found; esta instalação suporta até $supported."
    ProjectError.StorageUnavailable -> "Não foi possível acessar o armazenamento do projeto."
    ProjectError.ConcurrentModification -> "O projeto mudou em outro processo. Abra-o novamente."
    is ProjectError.Unexpected -> detail
}
