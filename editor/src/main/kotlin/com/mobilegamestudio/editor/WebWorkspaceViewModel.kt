package com.mobilegamestudio.editor

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.mobilegamestudio.core.contracts.ContentResult
import com.mobilegamestudio.core.contracts.ProjectContentRepository
import com.mobilegamestudio.core.contracts.ProjectRepository
import com.mobilegamestudio.core.model.CameraComponent
import com.mobilegamestudio.core.model.ColliderComponent
import com.mobilegamestudio.core.model.DirectionalLightComponent
import com.mobilegamestudio.core.model.GameObject
import com.mobilegamestudio.core.model.MeshRendererComponent
import com.mobilegamestudio.core.model.PbrMaterialComponent
import com.mobilegamestudio.core.model.PrimitiveMesh
import com.mobilegamestudio.core.model.ProjectId
import com.mobilegamestudio.core.model.ProjectMetadata
import com.mobilegamestudio.core.model.ProjectResult
import com.mobilegamestudio.core.model.SceneDocument
import com.mobilegamestudio.core.model.SceneValidator
import com.mobilegamestudio.core.model.TransformComponent
import com.mobilegamestudio.core.model.Vector3
import java.util.UUID
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

enum class WebEditorTool {
    SELECT,
    MOVE,
    ROTATE,
    SCALE,
}

data class WebWorkspaceUiState(
    val isLoading: Boolean = true,
    val isSaving: Boolean = false,
    val metadata: ProjectMetadata? = null,
    val scene: SceneDocument? = null,
    val playScene: SceneDocument? = null,
    val selectedObjectId: String? = null,
    val tool: WebEditorTool = WebEditorTool.MOVE,
    val dirty: Boolean = false,
    val canUndo: Boolean = false,
    val canRedo: Boolean = false,
    val playing: Boolean = false,
    val message: String? = null,
)

/**
 * Minimal, coherent editing core used by the web editor shell.
 *
 * It deliberately owns only the vertical slice being validated: scene loading,
 * hierarchy, primitive/camera/light creation, atomic transforms, editor camera,
 * undo/redo, save and native play preview. Advanced authoring remains outside
 * this flow until the basics pass device validation.
 */
class WebWorkspaceViewModel(
    private val projectId: ProjectId,
    private val repository: ProjectRepository,
    private val contentRepository: ProjectContentRepository,
) : ViewModel() {
    private val mutableState = MutableStateFlow(WebWorkspaceUiState())
    val state: StateFlow<WebWorkspaceUiState> = mutableState.asStateFlow()

    private val undoStack = ArrayDeque<SceneDocument>()
    private val redoStack = ArrayDeque<SceneDocument>()

    init {
        load()
    }

    fun selectObject(objectId: String?) {
        val scene = mutableState.value.scene ?: return
        val validId = objectId?.takeIf { id -> scene.objects.any { it.id == id } }
        mutableState.update { it.copy(selectedObjectId = validId) }
    }

    fun setTool(tool: WebEditorTool) {
        if (mutableState.value.playing) return
        mutableState.update { it.copy(tool = tool) }
    }

    fun addPrimitive(primitive: PrimitiveMesh) {
        val scene = mutableState.value.scene ?: return
        val count = scene.objects.count { it.component<MeshRendererComponent>() != null } + 1
        val objectValue = GameObject(
            id = UUID.randomUUID().toString(),
            name = if (primitive == PrimitiveMesh.CUBE) "Cubo $count" else "Plano $count",
            tags = setOf("geometry"),
            components = listOf(
                TransformComponent(
                    position = if (primitive == PrimitiveMesh.CUBE) {
                        Vector3(count * 0.6f, 0.5f, 0f)
                    } else {
                        Vector3(0f, 0f, 0f)
                    },
                    scale = if (primitive == PrimitiveMesh.PLANE) Vector3(6f, 1f, 6f) else Vector3.ONE,
                ),
                MeshRendererComponent(
                    primitive = primitive,
                    colorArgb = if (primitive == PrimitiveMesh.CUBE) 0xFF7D91A8 else 0xFF626B5D,
                ),
                PbrMaterialComponent(
                    materialId = if (primitive == PrimitiveMesh.CUBE) "web-cube" else "web-plane",
                    roughness = if (primitive == PrimitiveMesh.CUBE) 0.72f else 0.94f,
                ),
                ColliderComponent(
                    size = if (primitive == PrimitiveMesh.PLANE) Vector3(6f, 0.1f, 6f) else Vector3.ONE,
                ),
            ),
        )
        replaceScene(
            scene.copy(
                objects = scene.objects + objectValue,
                rootObjects = scene.rootObjects + objectValue.id,
            ),
            selectedObjectId = objectValue.id,
        )
    }

    fun addCamera() {
        val scene = mutableState.value.scene ?: return
        val count = scene.objects.count { it.component<CameraComponent>() != null } + 1
        val hasMain = scene.objects.any { it.component<CameraComponent>()?.isMain == true }
        val objectValue = GameObject(
            id = UUID.randomUUID().toString(),
            name = if (hasMain) "Câmera $count" else "Main Camera",
            tags = setOf("camera"),
            components = listOf(
                TransformComponent(
                    position = Vector3(6f, 4f, 8f),
                    rotationEulerDegrees = Vector3(-18f, 35f, 0f),
                ),
                CameraComponent(isMain = !hasMain),
            ),
        )
        replaceScene(
            scene.copy(
                objects = scene.objects + objectValue,
                rootObjects = scene.rootObjects + objectValue.id,
            ),
            selectedObjectId = objectValue.id,
        )
    }

    fun addDirectionalLight() {
        val scene = mutableState.value.scene ?: return
        val count = scene.objects.count { it.component<DirectionalLightComponent>() != null } + 1
        val objectValue = GameObject(
            id = UUID.randomUUID().toString(),
            name = "Luz direcional $count",
            tags = setOf("light"),
            components = listOf(
                TransformComponent(
                    position = Vector3(0f, 8f, 0f),
                    rotationEulerDegrees = Vector3(-45f, 35f, 0f),
                ),
                DirectionalLightComponent(),
            ),
        )
        replaceScene(
            scene.copy(
                objects = scene.objects + objectValue,
                rootObjects = scene.rootObjects + objectValue.id,
            ),
            selectedObjectId = objectValue.id,
        )
    }

    fun renameObject(objectId: String, name: String) {
        val cleanName = name.trim().take(64)
        if (cleanName.isBlank()) return
        updateObject(objectId) { it.copy(name = cleanName) }
    }

    fun toggleObject(objectId: String) {
        updateObject(objectId) { it.copy(enabled = !it.enabled) }
    }

    fun deleteObject(objectId: String) {
        val scene = mutableState.value.scene ?: return
        if (scene.objects.none { it.id == objectId }) return
        val descendants = buildSet {
            fun collect(id: String) {
                if (!add(id)) return
                scene.objects.firstOrNull { it.id == id }?.children?.forEach(::collect)
            }
            collect(objectId)
        }
        val updated = scene.copy(
            objects = scene.objects
                .filterNot { it.id in descendants }
                .map { it.copy(children = it.children.filterNot(descendants::contains)) },
            rootObjects = scene.rootObjects.filterNot(descendants::contains),
        )
        replaceScene(updated, selectedObjectId = null)
    }

    fun updateTransform(objectId: String, transform: TransformComponent) {
        updateObject(objectId) { objectValue ->
            objectValue.copy(
                components = objectValue.components.map { component ->
                    if (component is TransformComponent) transform.copy(componentId = component.componentId) else component
                },
            )
        }
    }

    fun setEditorCamera(orbit: Vector3, target: Vector3) {
        val scene = mutableState.value.scene ?: return
        val nextSettings = scene.editorSettings.copy(cameraOrbit = orbit, cameraTarget = target)
        if (nextSettings == scene.editorSettings) return
        replaceScene(scene.copy(editorSettings = nextSettings), selectedObjectId = mutableState.value.selectedObjectId)
    }

    fun undo() {
        val current = mutableState.value.scene ?: return
        val previous = undoStack.removeLastOrNull() ?: return
        redoStack.addLast(current)
        publishScene(previous, dirty = true)
    }

    fun redo() {
        val current = mutableState.value.scene ?: return
        val next = redoStack.removeLastOrNull() ?: return
        undoStack.addLast(current)
        publishScene(next, dirty = true)
    }

    fun save() {
        val current = mutableState.value
        val scene = current.scene ?: return
        if (current.isSaving || !current.dirty) return
        val validation = SceneValidator.validate(scene)
        if (validation.isNotEmpty()) {
            mutableState.update { it.copy(message = "Cena inválida: ${validation.first()}") }
            return
        }
        mutableState.update { it.copy(isSaving = true, message = null) }
        viewModelScope.launch {
            when (val result = contentRepository.saveScene(projectId, scene, scene.metadata.revision)) {
                is ContentResult.Success -> {
                    mutableState.update {
                        it.copy(
                            isSaving = false,
                            scene = result.value,
                            dirty = false,
                            message = "Cena salva.",
                        )
                    }
                }
                is ContentResult.Failure -> {
                    mutableState.update {
                        it.copy(isSaving = false, message = "Falha ao salvar: ${result.error}")
                    }
                }
            }
        }
    }

    fun startPlay() {
        val scene = mutableState.value.scene ?: return
        val validation = SceneValidator.validate(scene)
        if (validation.isNotEmpty()) {
            mutableState.update { it.copy(message = "Play bloqueado: ${validation.first()}") }
            return
        }
        val mainCameraCount = scene.objects.count { it.enabled && it.component<CameraComponent>()?.isMain == true }
        if (mainCameraCount != 1) {
            mutableState.update { it.copy(message = "A cena precisa de exatamente uma câmera principal.") }
            return
        }
        mutableState.update {
            it.copy(
                playing = true,
                playScene = scene,
                message = null,
            )
        }
    }

    fun stopPlay() {
        mutableState.update { it.copy(playing = false, playScene = null) }
    }

    fun clearMessage() {
        mutableState.update { it.copy(message = null) }
    }

    private fun load() {
        viewModelScope.launch {
            val metadata = when (val projectResult = repository.openProject(projectId)) {
                is ProjectResult.Success -> projectResult.value.metadata
                is ProjectResult.Failure -> {
                    mutableState.update {
                        it.copy(isLoading = false, message = "Falha ao abrir projeto: ${projectResult.error}")
                    }
                    return@launch
                }
            }
            when (val sceneResult = contentRepository.loadOrCreateScene(projectId)) {
                is ContentResult.Success -> {
                    val scene = sceneResult.value
                    mutableState.value = WebWorkspaceUiState(
                        isLoading = false,
                        metadata = metadata,
                        scene = scene,
                        selectedObjectId = scene.editorSettings.selectedObjectId
                            ?.takeIf { id -> scene.objects.any { it.id == id } },
                    )
                }
                is ContentResult.Failure -> {
                    mutableState.update {
                        it.copy(
                            isLoading = false,
                            metadata = metadata,
                            message = "Falha ao carregar cena: ${sceneResult.error}",
                        )
                    }
                }
            }
        }
    }

    private fun updateObject(objectId: String, transform: (GameObject) -> GameObject) {
        val scene = mutableState.value.scene ?: return
        if (scene.objects.none { it.id == objectId }) return
        replaceScene(
            scene.copy(
                objects = scene.objects.map { objectValue ->
                    if (objectValue.id == objectId) transform(objectValue) else objectValue
                },
            ),
            selectedObjectId = mutableState.value.selectedObjectId,
        )
    }

    private fun replaceScene(next: SceneDocument, selectedObjectId: String?) {
        val current = mutableState.value.scene ?: return
        if (next == current) return
        undoStack.addLast(current)
        while (undoStack.size > 80) undoStack.removeFirst()
        redoStack.clear()
        val withSelection = next.copy(
            editorSettings = next.editorSettings.copy(selectedObjectId = selectedObjectId),
        )
        publishScene(withSelection, dirty = true, selectedObjectId = selectedObjectId)
    }

    private fun publishScene(
        scene: SceneDocument,
        dirty: Boolean,
        selectedObjectId: String? = mutableState.value.selectedObjectId
            ?.takeIf { id -> scene.objects.any { it.id == id } },
    ) {
        mutableState.update {
            it.copy(
                scene = scene,
                selectedObjectId = selectedObjectId,
                dirty = dirty,
                canUndo = undoStack.isNotEmpty(),
                canRedo = redoStack.isNotEmpty(),
                message = null,
            )
        }
    }
}
