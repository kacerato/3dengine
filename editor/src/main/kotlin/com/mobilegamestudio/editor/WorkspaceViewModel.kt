package com.mobilegamestudio.editor

import android.graphics.BitmapFactory
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.mobilegamestudio.core.contracts.ContentError
import com.mobilegamestudio.core.contracts.ContentResult
import com.mobilegamestudio.core.contracts.ProjectContentRepository
import com.mobilegamestudio.core.contracts.ProjectRepository
import com.mobilegamestudio.core.model.CameraComponent
import com.mobilegamestudio.core.model.ColliderComponent
import com.mobilegamestudio.core.model.DirectionalLightComponent
import com.mobilegamestudio.core.model.AssetRecord
import com.mobilegamestudio.core.model.AnimationControllerComponent
import com.mobilegamestudio.core.model.AnimationClipMapping
import com.mobilegamestudio.core.model.AnimationPackComponent
import com.mobilegamestudio.core.model.EditorMode
import com.mobilegamestudio.core.model.GameObject
import com.mobilegamestudio.core.model.LuaScriptComponent
import com.mobilegamestudio.core.model.MeshRendererComponent
import com.mobilegamestudio.core.model.MeshModifierStackComponent
import com.mobilegamestudio.core.model.MeshModifier
import com.mobilegamestudio.core.model.MeshModifierType
import com.mobilegamestudio.core.model.PbrMaterialComponent
import com.mobilegamestudio.core.model.RigidBodyComponent
import com.mobilegamestudio.core.model.RigidBodyType
import com.mobilegamestudio.core.model.MergeableSceneCommand
import com.mobilegamestudio.core.model.MountainDemoScene
import com.mobilegamestudio.core.model.PrimitiveMesh
import com.mobilegamestudio.core.model.ProjectId
import com.mobilegamestudio.core.model.ProjectMetadata
import com.mobilegamestudio.core.model.ProjectNameRules
import com.mobilegamestudio.core.model.ProjectResult
import com.mobilegamestudio.core.model.SceneDocument
import com.mobilegamestudio.core.model.SceneCommand
import com.mobilegamestudio.core.model.SceneCommandHistory
import com.mobilegamestudio.core.model.SceneEditResult
import com.mobilegamestudio.core.model.TouchButtonComponent
import com.mobilegamestudio.core.model.VirtualJoystickComponent
import com.mobilegamestudio.core.model.VehicleControllerComponent
import com.mobilegamestudio.core.model.VehicleControlInput
import com.mobilegamestudio.core.model.VehiclePartComponent
import com.mobilegamestudio.core.model.VehiclePhysics
import com.mobilegamestudio.core.model.VehicleRuntimeState
import com.mobilegamestudio.core.model.CharacterControllerComponent
import com.mobilegamestudio.core.model.CharacterCameraMode
import com.mobilegamestudio.core.model.TerrainBrush
import com.mobilegamestudio.core.model.TerrainBrushFalloff
import com.mobilegamestudio.core.model.TerrainBrushMode
import com.mobilegamestudio.core.model.TerrainComponent
import com.mobilegamestudio.core.model.EditableMeshComponent
import com.mobilegamestudio.core.model.EditableMeshPresets
import com.mobilegamestudio.core.model.VoxelVolumeComponent
import com.mobilegamestudio.core.model.VoxelVolumePresets
import com.mobilegamestudio.core.model.VoxelBrushMode
import com.mobilegamestudio.core.model.VoxelSliceAxis
import com.mobilegamestudio.core.model.selectVertex
import com.mobilegamestudio.core.model.selectFace
import com.mobilegamestudio.core.model.moveSelection
import com.mobilegamestudio.core.model.extrudeSelectedFace
import com.mobilegamestudio.core.model.subdivideSelectedFace
import com.mobilegamestudio.core.model.applyDynamicTopology
import com.mobilegamestudio.core.model.toVoxelVolume
import com.mobilegamestudio.core.model.applySphereBrush
import com.mobilegamestudio.core.model.smoothVolume
import com.mobilegamestudio.core.model.TerrainPresets
import com.mobilegamestudio.core.model.TerrainHeightmapData
import com.mobilegamestudio.core.model.TerrainProcessMode
import com.mobilegamestudio.core.model.TerrainProcessSettings
import com.mobilegamestudio.core.model.SafeProjectPath
import com.mobilegamestudio.core.model.applyTerrainProcess
import com.mobilegamestudio.core.model.withImportedHeightmap
import com.mobilegamestudio.core.model.createFlatTerrainComponent
import com.mobilegamestudio.core.model.VegetationSpawnerComponent
import com.mobilegamestudio.core.model.applyAutoTile
import com.mobilegamestudio.core.model.applyBrush
import com.mobilegamestudio.core.model.TransformComponent
import com.mobilegamestudio.core.model.Vector3
import com.mobilegamestudio.core.model.VisualConnection
import com.mobilegamestudio.core.model.VisualGraphComponent
import com.mobilegamestudio.core.model.VisualGraphDocument
import com.mobilegamestudio.core.model.VisualGraphValidator
import com.mobilegamestudio.core.model.VisualNode
import com.mobilegamestudio.core.model.VisualNodeCatalog
import com.mobilegamestudio.core.model.VisualNodeType
import com.mobilegamestudio.scripting.LogicExecutionResult
import com.mobilegamestudio.scripting.LogicLogLevel
import com.mobilegamestudio.scripting.LogicSceneHost
import com.mobilegamestudio.scripting.LuaSceneSession
import com.mobilegamestudio.scripting.VisualGraphExecutor
import java.io.File
import java.io.InputStream
import java.util.UUID
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext
import kotlin.math.max

enum class WorkspaceSection(val label: String) {
    SCENE("Cena"),
    OBJECTS("Objetos"),
    LOGIC("Lógica"),
    ASSETS("Assets"),
    PROJECT("Projeto"),
}

enum class EditorTool(val label: String) {
    SELECT("Selecionar"),
    MOVE("Mover"),
    ROTATE("Rotacionar"),
    SCALE("Escalar"),
}

enum class QuickBehavior(val label: String, val actionNodeType: VisualNodeType) {
    ROTATE_ON_TOUCH("Girar ao tocar", VisualNodeType.ROTATE_OBJECT),
    SCALE_ON_TOUCH("Aumentar ao tocar", VisualNodeType.SET_SCALE),
}

enum class EditorObjectType(val label: String) {
    ENVIRONMENT("Ambiente"),
    LIGHT("Luz"),
    CAMERA("Câmera"),
    MESH("Malha"),
    PLAYER("Jogador"),
    PLAYER_FIRST_PERSON("Jogador 1ª pessoa"),
    PLAYER_TOP_DOWN("Jogador visão superior"),
    TERRAIN("Terreno"),
    JOYSTICK("Joystick"),
    UI_BUTTON("Botão UI"),
    VEHICLE("Veículo"),
}

data class TerrainToolState(
    val mode: TerrainBrushMode = TerrainBrushMode.RAISE,
    val radius: Float = 0.14f,
    val strength: Float = 0.42f,
    val targetHeight: Float = 0.35f,
    val materialLayerId: String? = "dry-soil",
    val falloff: TerrainBrushFalloff = TerrainBrushFalloff.SMOOTH,
)

data class EditorVector3(
    val x: Float = 0f,
    val y: Float = 0f,
    val z: Float = 0f,
)

data class EditorTransform(
    val position: EditorVector3 = EditorVector3(),
    val rotation: EditorVector3 = EditorVector3(),
    val scale: EditorVector3 = EditorVector3(1f, 1f, 1f),
)

data class EditorSceneObject(
    val id: String,
    val name: String,
    val type: EditorObjectType,
    val parentId: String? = null,
    val isVisible: Boolean = true,
    val transform: EditorTransform = EditorTransform(),
    val assetId: String? = null,
    val primitive: PrimitiveMesh? = null,
    val vehicle: VehicleControllerComponent? = null,
    val collider: ColliderComponent? = null,
    val animation: AnimationControllerComponent? = null,
    val animationPack: AnimationPackComponent? = null,
    val pbrMaterial: PbrMaterialComponent? = null,
    val meshModifiers: MeshModifierStackComponent? = null,
    val rigidBody: RigidBodyComponent? = null,
    val vegetation: VegetationSpawnerComponent? = null,
    val luaScriptPaths: List<String> = emptyList(),
    val visualGraphPaths: List<String> = emptyList(),
    val viewportX: Float,
    val viewportY: Float,
)

data class WorkspaceUiState(
    val isLoading: Boolean = true,
    val isSaving: Boolean = false,
    val isSavingScene: Boolean = false,
    val isSceneDirty: Boolean = false,
    val metadata: ProjectMetadata? = null,
    val editableName: String = "",
    val nameError: String? = null,
    val message: String? = null,
    val activeSection: WorkspaceSection = WorkspaceSection.SCENE,
    val activeTool: EditorTool = EditorTool.SELECT,
    val sceneObjects: List<EditorSceneObject> = emptyList(),
    val selectedObjectId: String? = null,
    val isPreviewStarting: Boolean = false,
    val isPreviewRunning: Boolean = false,
    val previewSeconds: Float = 0f,
    val canUndo: Boolean = false,
    val canRedo: Boolean = false,
    val hasLuaScript: Boolean = false,
    val scriptSource: String? = null,
    val scriptPath: String? = null,
    val isLoadingScript: Boolean = false,
    val isSavingScript: Boolean = false,
    val isScriptDirty: Boolean = false,
    val scriptDiagnostics: List<String> = emptyList(),
    val hasVisualGraph: Boolean = false,
    val visualGraph: VisualGraphDocument? = null,
    val visualGraphPath: String? = null,
    val isLoadingGraph: Boolean = false,
    val isSavingGraph: Boolean = false,
    val sceneDocument: SceneDocument? = null,
    val playDocument: SceneDocument? = null,
    val assets: List<AssetRecord> = emptyList(),
    val isImportingAsset: Boolean = false,
    val terrainTool: TerrainToolState = TerrainToolState(),
) {
    val selectedObject: EditorSceneObject?
        get() = sceneObjects.firstOrNull { it.id == selectedObjectId }

    val selectedTerrain: TerrainComponent?
        get() = sceneDocument?.objects
            ?.firstOrNull { it.id == selectedObjectId }
            ?.component<TerrainComponent>()

    val selectedEditableMesh: EditableMeshComponent?
        get() = sceneDocument?.objects
            ?.firstOrNull { it.id == selectedObjectId }
            ?.component<EditableMeshComponent>()

    val selectedVoxelVolume: VoxelVolumeComponent?
        get() = sceneDocument?.objects
            ?.firstOrNull { it.id == selectedObjectId }
            ?.component<VoxelVolumeComponent>()
}

class WorkspaceViewModel(
    private val projectId: ProjectId,
    private val repository: ProjectRepository,
    private val contentRepository: ProjectContentRepository,
    private val runtimeDispatcher: CoroutineDispatcher = Dispatchers.Main.immediate,
) : ViewModel() {
    private val mutableState = MutableStateFlow(WorkspaceUiState())
    val state: StateFlow<WorkspaceUiState> = mutableState.asStateFlow()

    private var sceneHistory: SceneCommandHistory? = null
    private var nextObjectNumber = 1
    private var persistedScene: SceneDocument? = null
    private var logicHost: MutableSceneLogicHost? = null
    private var luaSession: LuaSceneSession? = null
    private var playGraphs: List<VisualGraphDocument> = emptyList()
    private var editGeneration = 0L
    private var autosaveJob: Job? = null
    private var graphSaveJob: Job? = null
    private var scriptSaveJob: Job? = null
    private var lastGraphSaveFailed = false
    private var previewJob: Job? = null
    private var previewGeneration = 0L
    private val playEventMutex = Mutex()
    private val activeBridgeEvents = mutableSetOf<String>()
    private var terrainStrokeBase: SceneDocument? = null
    private var terrainStrokeWorking: SceneDocument? = null
    private var terrainStrokeObjectId: String? = null

    init {
        load()
    }

    fun updateName(value: String) {
        if (value.length > ProjectNameRules.MAX_LENGTH + 1) return
        mutableState.update { it.copy(editableName = value, nameError = null, message = null) }
    }

    fun selectSection(section: WorkspaceSection) {
        if (!canEdit()) return
        mutableState.update { it.copy(activeSection = section) }
    }

    fun selectTool(tool: EditorTool) {
        if (!canEdit()) return
        mutableState.update { it.copy(activeTool = tool) }
    }

    fun selectObject(id: String) {
        if (!canEdit()) return
        if (mutableState.value.sceneObjects.none { it.id == id }) return
        val hasGraph = mutableState.value.sceneDocument
            ?.objects
            ?.firstOrNull { it.id == id }
            ?.components
            ?.any { it is VisualGraphComponent && it.enabled } == true
        val hasScript = mutableState.value.sceneDocument
            ?.objects
            ?.firstOrNull { it.id == id }
            ?.components
            ?.any { it is LuaScriptComponent && it.enabled } == true
        mutableState.update {
            it.copy(
                selectedObjectId = id,
                visualGraph = null,
                visualGraphPath = null,
                isLoadingGraph = hasGraph,
                scriptSource = null,
                scriptPath = null,
                isLoadingScript = hasScript,
                isScriptDirty = false,
                scriptDiagnostics = emptyList(),
            )
        }
        loadGraphForObject(id)
        loadScriptForObject(id)
    }

    fun toggleObjectVisibility(id: String) {
        if (!canEdit()) return
        mutateScene { objects ->
            objects.map { item ->
                if (item.id == id) item.copy(isVisible = !item.isVisible) else item
            }
        }
    }

    fun addAsset(asset: AssetRecord) {
        if (!canEdit()) return
        val selectedId = mutableState.value.selectedObjectId
        val document = mutableState.value.sceneDocument
        val selected = document?.objects?.firstOrNull { it.id == selectedId }
        if (asset.mediaType.startsWith("image/")) {
            if (selected == null || document == null) {
                mutableState.update { it.copy(message = "Selecione uma malha ou terreno para aplicar a textura PBR.") }
                return
            }
            val lowerName = asset.displayName.lowercase()
            val updated = document.copy(
                objects = document.objects.map { item ->
                    if (item.id != selected.id) return@map item
                    val existingPbr = item.component<PbrMaterialComponent>()
                    if (item.component<TerrainComponent>() != null) {
                        item.copy(
                            components = item.components.map { component ->
                                if (component !is TerrainComponent) component else component.copy(
                                    materialLayers = component.materialLayers.mapIndexed { index, layer ->
                                        if (index != 0) layer else if ("normal" in lowerName) {
                                            layer.copy(normalAssetId = asset.id)
                                        } else {
                                            layer.copy(textureAssetId = asset.id)
                                        }
                                    },
                                )
                            },
                        )
                    } else {
                        val pbr = existingPbr ?: PbrMaterialComponent(materialId = "imported-pbr")
                        val configured = when {
                            "normal" in lowerName -> pbr.copy(normalTextureAssetId = asset.id)
                            "rough" in lowerName || "metal" in lowerName ->
                                pbr.copy(metallicRoughnessTextureAssetId = asset.id)
                            "occlusion" in lowerName || "_ao" in lowerName -> pbr.copy(occlusionTextureAssetId = asset.id)
                            "emiss" in lowerName -> pbr.copy(emissiveTextureAssetId = asset.id)
                            else -> pbr.copy(baseColorTextureAssetId = asset.id)
                        }
                        item.copy(
                            components = if (existingPbr == null) item.components + configured else {
                                item.components.map { component ->
                                    if (component is PbrMaterialComponent) configured else component
                                }
                            },
                        )
                    }
                },
            )
            applyDocumentEdit(updated)
            mutableState.update { it.copy(message = "${asset.displayName} aplicado ao material PBR.") }
            return
        }
        if (selected?.component<CharacterControllerComponent>() != null && asset.animationClips.isNotEmpty()) {
            val mappings = asset.animationClips.map { clip ->
                AnimationClipMapping(
                    sourceClip = clip,
                    stateName = clip,
                    loop = !clip.contains("death", ignoreCase = true),
                )
            }
            val updated = document.copy(
                objects = document.objects.map { item ->
                    if (item.id != selected.id) item else item.copy(
                        components = item.components
                            .filterNot { it is AnimationPackComponent }
                            .map { component ->
                                when (component) {
                                    is MeshRendererComponent -> component.copy(assetId = asset.id, primitive = null)
                                    is AnimationControllerComponent -> component.copy(
                                        defaultClip = asset.animationClips.first(),
                                        availableClips = asset.animationClips,
                                    )
                                    else -> component
                                }
                            } + AnimationPackComponent(
                            sourceAssetId = asset.id,
                            clipMappings = mappings,
                        ),
                    )
                },
            )
            applyDocumentEdit(updated)
            mutableState.update {
                it.copy(message = "Pack ${asset.displayName} ligado ao personagem com ${mappings.size} animações.")
            }
            return
        }
        if (selected?.component<TerrainComponent>() != null) {
            val existing = selected.component<VegetationSpawnerComponent>()
            val updated = document.copy(
                objects = document.objects.map { item ->
                    if (item.id != selected.id) item else item.copy(
                        components = if (existing == null) {
                            item.components + VegetationSpawnerComponent(modelAssetIds = listOf(asset.id))
                        } else {
                            item.components.map { component ->
                                if (component is VegetationSpawnerComponent) component.copy(
                                    modelAssetIds = (component.modelAssetIds + asset.id).distinct(),
                                ) else component
                            }
                        },
                    )
                },
            )
            applyDocumentEdit(updated)
            mutableState.update { it.copy(message = "${asset.displayName} adicionado ao espalhador de vegetação.") }
            return
        }
        val objectNumber = nextObjectNumber++
        val newObject = EditorSceneObject(
            id = UUID.randomUUID().toString(),
            name = asset.displayName.substringBeforeLast('.').ifBlank { "Modelo $objectNumber" },
            type = EditorObjectType.MESH,
            assetId = asset.id,
            collider = ColliderComponent(size = Vector3(1f, 1f, 1f)),
            rigidBody = RigidBodyComponent(massKg = 10f),
            pbrMaterial = PbrMaterialComponent(
                materialId = asset.materialSlots.firstOrNull() ?: "imported-pbr",
                targetSlot = asset.materialSlots.firstOrNull(),
            ),
            meshModifiers = MeshModifierStackComponent(
                modifiers = listOf(MeshModifier(type = MeshModifierType.SCALE_AXIS, axis = Vector3(0f, 1f, 0f))),
            ),
            transform = EditorTransform(
                position = EditorVector3(x = objectNumber * 0.5f, z = objectNumber * -0.35f),
            ),
            viewportX = 0.42f + ((objectNumber % 4) * 0.1f),
            viewportY = 0.54f + ((objectNumber % 3) * 0.08f),
        )
        mutateScene { it + newObject }
        mutableState.update {
            it.copy(
                selectedObjectId = newObject.id,
                visualGraph = null,
                visualGraphPath = null,
                isLoadingGraph = false,
                scriptSource = null,
                scriptPath = null,
                isLoadingScript = false,
                isScriptDirty = false,
                activeSection = WorkspaceSection.SCENE,
                message = "${asset.displayName} adicionado à cena.",
            )
        }
    }

    fun addPrimitive(primitive: PrimitiveMesh) {
        if (!canEdit()) return
        val objectNumber = nextObjectNumber++
        val label = if (primitive == PrimitiveMesh.CUBE) "Cube" else "Plane"
        val newObject = EditorSceneObject(
            id = UUID.randomUUID().toString(),
            name = "$label $objectNumber",
            type = EditorObjectType.MESH,
            primitive = primitive,
            collider = ColliderComponent(
                size = if (primitive == PrimitiveMesh.PLANE) Vector3(4f, 0.1f, 4f) else Vector3.ONE,
            ),
            rigidBody = if (primitive == PrimitiveMesh.CUBE) RigidBodyComponent() else null,
            pbrMaterial = PbrMaterialComponent(
                materialId = if (primitive == PrimitiveMesh.CUBE) "cube-pbr" else "ground-pbr",
                roughness = if (primitive == PrimitiveMesh.CUBE) 0.68f else 0.94f,
            ),
            meshModifiers = MeshModifierStackComponent(
                modifiers = listOf(MeshModifier(type = MeshModifierType.SCALE_AXIS, axis = Vector3(0f, 1f, 0f))),
            ),
            transform = if (primitive == PrimitiveMesh.PLANE) {
                EditorTransform(
                    position = EditorVector3(y = -1f),
                    scale = EditorVector3(4f, 1f, 4f),
                )
            } else EditorTransform(position = EditorVector3(x = 0.5f * objectNumber)),
            viewportX = 0.5f,
            viewportY = 0.5f,
        )
        mutateScene { it + newObject }
        mutableState.update {
            it.copy(
                selectedObjectId = newObject.id,
                visualGraph = null,
                visualGraphPath = null,
                isLoadingGraph = false,
                scriptSource = null,
                scriptPath = null,
                isLoadingScript = false,
                isScriptDirty = false,
                activeSection = WorkspaceSection.SCENE,
            )
        }
    }

    fun addSceneObject(type: EditorObjectType) {
        if (!canEdit()) return
        require(type != EditorObjectType.MESH)
        val objectNumber = nextObjectNumber++
        val newObject = EditorSceneObject(
            id = UUID.randomUUID().toString(),
            name = when (type) {
                EditorObjectType.CAMERA -> "Camera $objectNumber"
                EditorObjectType.LIGHT -> "Directional Light $objectNumber"
                EditorObjectType.TERRAIN -> "Mundo Semiárido $objectNumber"
                EditorObjectType.PLAYER -> "Personagem $objectNumber"
                EditorObjectType.PLAYER_FIRST_PERSON -> "Personagem FPS $objectNumber"
                EditorObjectType.PLAYER_TOP_DOWN -> "Personagem Top Down $objectNumber"
                EditorObjectType.JOYSTICK -> "Joystick $objectNumber"
                EditorObjectType.UI_BUTTON -> "Botão $objectNumber"
                EditorObjectType.VEHICLE -> "Veículo $objectNumber"
                else -> "Objeto $objectNumber"
            },
            type = type,
            transform = when (type) {
                EditorObjectType.CAMERA -> EditorTransform(position = EditorVector3(6f, 4f, 8f))
                EditorObjectType.LIGHT -> EditorTransform(rotation = EditorVector3(-45f, -30f, 0f))
                EditorObjectType.PLAYER,
                EditorObjectType.PLAYER_FIRST_PERSON,
                EditorObjectType.PLAYER_TOP_DOWN,
                -> EditorTransform(position = EditorVector3(y = 1f))
                else -> EditorTransform()
            },
            viewportX = 0.5f,
            viewportY = 0.5f,
        )
        mutateScene { it + newObject }
        mutableState.update {
            it.copy(
                selectedObjectId = newObject.id,
                visualGraph = null,
                visualGraphPath = null,
                isLoadingGraph = false,
                scriptSource = null,
                scriptPath = null,
                isLoadingScript = false,
                isScriptDirty = false,
            )
        }
    }

    fun updateTerrainTool(
        mode: TerrainBrushMode? = null,
        radius: Float? = null,
        strength: Float? = null,
        targetHeight: Float? = null,
        materialLayerId: String? = null,
    ) {
        mutableState.update { state ->
            state.copy(
                terrainTool = state.terrainTool.copy(
                    mode = mode ?: state.terrainTool.mode,
                    radius = radius?.coerceIn(0.01f, 0.5f) ?: state.terrainTool.radius,
                    strength = strength?.coerceIn(0.01f, 1f) ?: state.terrainTool.strength,
                    targetHeight = targetHeight?.coerceIn(0f, 1f) ?: state.terrainTool.targetHeight,
                    materialLayerId = materialLayerId ?: state.terrainTool.materialLayerId,
                ),
            )
        }
    }

    fun updateTerrainFalloff(falloff: TerrainBrushFalloff) {
        mutableState.update { state ->
            state.copy(terrainTool = state.terrainTool.copy(falloff = falloff))
        }
    }

    fun createFlatTerrain(resolution: Int, widthMeters: Float, maxHeightMeters: Float) {
        if (!canEdit()) return
        val document = mutableState.value.sceneDocument ?: return
        val terrain = createFlatTerrainComponent(resolution, widthMeters, maxHeightMeters)
        val id = UUID.randomUUID().toString()
        val objectValue = GameObject(
            id = id,
            name = "Terreno editável ${nextObjectNumber++}",
            components = listOf(TransformComponent(), terrain),
        )
        applyDocumentEdit(
            document.copy(
                objects = document.objects + objectValue,
                rootObjects = (document.rootObjects + id).distinct(),
            ),
        )
        mutableState.update {
            it.copy(
                selectedObjectId = id,
                terrainTool = it.terrainTool.copy(
                    mode = TerrainBrushMode.RAISE,
                    materialLayerId = terrain.materialLayers.firstOrNull()?.id,
                ),
                message = "Terreno plano criado. Arraste no viewport para começar a moldar.",
            )
        }
    }

    fun assignTerrainTexture(layerId: String, assetId: String, normalMap: Boolean) {
        if (!canEdit()) return
        val asset = mutableState.value.assets.firstOrNull { it.id == assetId && it.mediaType.startsWith("image/") }
            ?: return
        val selectedId = mutableState.value.selectedObjectId ?: return
        val document = mutableState.value.sceneDocument ?: return
        val updated = document.copy(
            objects = document.objects.map { objectValue ->
                if (objectValue.id != selectedId) objectValue else objectValue.copy(
                    components = objectValue.components.map { component ->
                        if (component !is TerrainComponent) component else component.copy(
                            materialLayers = component.materialLayers.map { layer ->
                                if (layer.id != layerId) layer else if (normalMap) {
                                    layer.copy(normalAssetId = assetId)
                                } else {
                                    layer.copy(textureAssetId = assetId)
                                }
                            },
                        )
                    },
                )
            },
        )
        applyDocumentEdit(updated)
        mutableState.update {
            it.copy(message = "${asset.displayName} aplicado à camada de terreno.")
        }
    }

    fun beginTerrainStroke() {
        if (!canEdit() || terrainStrokeBase != null) return
        val selectedId = mutableState.value.selectedObjectId ?: return
        val base = sceneHistory?.document ?: mutableState.value.sceneDocument ?: return
        val hasTerrain = base.objects
            .firstOrNull { it.id == selectedId }
            ?.component<TerrainComponent>() != null
        if (!hasTerrain) return
        terrainStrokeBase = base
        terrainStrokeWorking = base
        terrainStrokeObjectId = selectedId
        autosaveJob?.cancel()
    }

    fun continueTerrainStroke(normalizedX: Float, normalizedZ: Float) {
        if (!canEdit()) return
        if (terrainStrokeBase == null) beginTerrainStroke()
        val selectedId = terrainStrokeObjectId ?: return
        val current = terrainStrokeWorking ?: return
        val terrainTool = mutableState.value.terrainTool
        val updated = current.copy(
            objects = current.objects.map { objectValue ->
                if (objectValue.id != selectedId) return@map objectValue
                objectValue.copy(
                    components = objectValue.components.map { component ->
                        if (component !is TerrainComponent) component else component.applyBrush(
                            TerrainBrush(
                                mode = terrainTool.mode,
                                normalizedX = normalizedX,
                                normalizedZ = normalizedZ,
                                radius = terrainTool.radius,
                                strength = terrainTool.strength,
                                targetHeight = terrainTool.targetHeight,
                                materialLayerId = terrainTool.materialLayerId,
                                falloff = terrainTool.falloff,
                            ),
                        )
                    },
                )
            },
        )
        if (updated == current) return
        terrainStrokeWorking = updated
        mutableState.update {
            it.copy(
                sceneDocument = updated,
                sceneObjects = updated.toEditorObjects(),
                isSceneDirty = updated != persistedScene,
            )
        }
    }

    fun endTerrainStroke(cancelled: Boolean = false) {
        val base = terrainStrokeBase ?: return
        val final = terrainStrokeWorking ?: base
        terrainStrokeBase = null
        terrainStrokeWorking = null
        terrainStrokeObjectId = null
        val history = sceneHistory ?: return
        if (cancelled || final == base) {
            mutableState.update {
                it.copy(
                    sceneDocument = history.document,
                    sceneObjects = history.document.toEditorObjects(),
                    isSceneDirty = history.document != persistedScene,
                )
            }
            return
        }
        val result = history.execute(ReplaceSceneDocumentCommand(history.document, final))
        if (result is SceneEditResult.Success) publishHistory(history)
    }

    fun applyTerrainBrush(normalizedX: Float, normalizedZ: Float) {
        beginTerrainStroke()
        continueTerrainStroke(normalizedX, normalizedZ)
        endTerrainStroke(false)
    }

    fun applyTerrainAutoTile() {
        if (!canEdit()) return
        val selectedId = mutableState.value.selectedObjectId ?: return
        val document = mutableState.value.sceneDocument ?: return
        applyDocumentEdit(
            document.copy(
                objects = document.objects.map { objectValue ->
                    if (objectValue.id != selectedId) objectValue else objectValue.copy(
                        components = objectValue.components.map { component ->
                            if (component is TerrainComponent) component.applyAutoTile() else component
                        },
                    )
                },
            ),
        )
        mutableState.update { it.copy(message = "Auto-tile recalculado por altura e inclinação.") }
    }


    fun applyTerrainProcess(mode: TerrainProcessMode, strength: Float, iterations: Int, scale: Float) {
        if (!canEdit()) return
        val selectedId = mutableState.value.selectedObjectId ?: return
        val document = mutableState.value.sceneDocument ?: return
        val updated = document.copy(
            objects = document.objects.map { objectValue ->
                if (objectValue.id != selectedId) objectValue else objectValue.copy(
                    components = objectValue.components.map { component ->
                        if (component is TerrainComponent) {
                            component.applyTerrainProcess(
                                mode,
                                TerrainProcessSettings(
                                    strength = strength,
                                    iterations = iterations,
                                    scale = scale,
                                    seed = component.seed,
                                ),
                            )
                        } else component
                    },
                )
            },
        )
        applyDocumentEdit(updated)
        mutableState.update { it.copy(message = "${mode.name.lowercase().replace('_', ' ')} aplicado ao terreno.") }
    }

    fun importTerrainHeightmap(sourceName: String, openStream: () -> InputStream?) {
        if (!canEdit()) return
        val selectedId = mutableState.value.selectedObjectId ?: run {
            mutableState.update { it.copy(message = "Selecione um terreno antes de importar o heightmap.") }
            return
        }
        if (mutableState.value.selectedTerrain == null) {
            mutableState.update { it.copy(message = "O objeto selecionado não possui um TerrainComponent.") }
            return
        }
        viewModelScope.launch {
            val decoded = withContext(Dispatchers.IO) {
                openStream()?.use { decodeTerrainHeightmap(sourceName, it) }
            }
            if (decoded == null) {
                mutableState.update { it.copy(message = "Heightmap inválido. Use PNG, JPG, RAW16 ou R16 quadrado.") }
                return@launch
            }
            val document = mutableState.value.sceneDocument ?: return@launch
            val updated = document.copy(
                objects = document.objects.map { objectValue ->
                    if (objectValue.id != selectedId) objectValue else objectValue.copy(
                        components = objectValue.components.map { component ->
                            if (component is TerrainComponent) component.withImportedHeightmap(decoded) else component
                        },
                    )
                },
            )
            applyDocumentEdit(updated)
            mutableState.update {
                it.copy(message = "Heightmap $sourceName importado em ${decoded.resolution} × ${decoded.resolution}.")
            }
        }
    }


    fun createEditableMesh(primitive: PrimitiveMesh) {
        if (!canEdit()) return
        val mesh = if (primitive == PrimitiveMesh.PLANE) EditableMeshPresets.plane() else EditableMeshPresets.cube()
        val objectNumber = nextObjectNumber++
        val objectValue = GameObject(
            id = UUID.randomUUID().toString(),
            name = if (primitive == PrimitiveMesh.PLANE) "Malha plana $objectNumber" else "Malha editável $objectNumber",
            components = listOf(
                TransformComponent(),
                MeshRendererComponent(primitive = primitive, colorArgb = 0xFF7A8392),
                PbrMaterialComponent(materialId = "editable-mesh", roughness = 0.78f),
                mesh,
            ),
        )
        val document = mutableState.value.sceneDocument ?: return
        applyDocumentEdit(document.copy(objects = document.objects + objectValue, rootObjects = document.rootObjects + objectValue.id))
        mutableState.update { it.copy(selectedObjectId = objectValue.id, message = "Malha editável criada.") }
    }

    fun convertSelectedToEditableMesh() {
        if (!canEdit()) return
        val selectedId = mutableState.value.selectedObjectId ?: return
        val document = mutableState.value.sceneDocument ?: return
        val selected = document.objects.firstOrNull { it.id == selectedId } ?: return
        if (selected.component<EditableMeshComponent>() != null) return
        val primitive = selected.component<MeshRendererComponent>()?.primitive ?: PrimitiveMesh.CUBE
        val editable = if (primitive == PrimitiveMesh.PLANE) EditableMeshPresets.plane() else EditableMeshPresets.cube()
        applyDocumentEdit(document.copy(objects = document.objects.map { item ->
            if (item.id != selectedId) item else item.copy(components = item.components + editable)
        }))
        mutableState.update { it.copy(message = "Objeto convertido para edição de vértices e faces.") }
    }

    fun selectEditableMeshVertex(index: Int, additive: Boolean = false) = updateSelectedEditableMesh {
        it.selectVertex(index, additive)
    }

    fun selectEditableMeshFace(index: Int) = updateSelectedEditableMesh { it.selectFace(index) }

    fun moveEditableMeshSelection(axis: TransformAxis, delta: Float) = updateSelectedEditableMesh { mesh ->
        mesh.moveSelection(
            when (axis) {
                TransformAxis.X -> Vector3(delta, 0f, 0f)
                TransformAxis.Y -> Vector3(0f, delta, 0f)
                TransformAxis.Z -> Vector3(0f, 0f, delta)
            },
        )
    }

    fun extrudeEditableMeshFace(distance: Float) = updateSelectedEditableMesh {
        it.extrudeSelectedFace(distance.coerceIn(-20f, 20f))
    }

    fun subdivideEditableMeshFace() = updateSelectedEditableMesh { it.subdivideSelectedFace() }

    fun applyEditableMeshDyntopo() = updateSelectedEditableMesh { it.applyDynamicTopology() }

    fun createVoxelVolume(resolution: Int = 24, cave: Boolean = false) {
        if (!canEdit()) return
        val objectNumber = nextObjectNumber++
        val volume = if (cave) VoxelVolumePresets.cave(resolution.coerceAtLeast(24)) else VoxelVolumePresets.solid(resolution)
        val objectValue = GameObject(
            id = UUID.randomUUID().toString(),
            name = if (cave) "Caverna voxel $objectNumber" else "Volume voxel $objectNumber",
            components = listOf(
                TransformComponent(position = Vector3(0f, volume.size.y * 0.5f - 1f, 0f)),
                MeshRendererComponent(primitive = PrimitiveMesh.CUBE, colorArgb = volume.colorArgb),
                PbrMaterialComponent(materialId = "voxel-volume", roughness = 0.9f),
                volume,
            ),
        )
        val document = mutableState.value.sceneDocument ?: return
        applyDocumentEdit(document.copy(objects = document.objects + objectValue, rootObjects = document.rootObjects + objectValue.id))
        mutableState.update { it.copy(selectedObjectId = objectValue.id, message = if (cave) "Caverna voxel criada." else "Volume voxel criado.") }
    }

    fun convertSelectedMeshToVoxel(resolution: Int = 24) {
        if (!canEdit()) return
        val selectedId = mutableState.value.selectedObjectId ?: return
        val document = mutableState.value.sceneDocument ?: return
        val selected = document.objects.firstOrNull { it.id == selectedId } ?: return
        val mesh = selected.component<EditableMeshComponent>() ?: run {
            mutableState.update { it.copy(message = "Converta o objeto para malha editável antes de voxelizar.") }
            return
        }
        val volume = mesh.toVoxelVolume(resolution)
        applyDocumentEdit(document.copy(objects = document.objects.map { item ->
            if (item.id != selectedId) item else item.copy(
                components = item.components.filterNot { it is EditableMeshComponent } + volume,
            )
        }))
        mutableState.update { it.copy(message = "Malha convertida para volume voxel editável.") }
    }

    fun applyVoxelSliceBrush(
        axis: VoxelSliceAxis,
        slice: Int,
        u: Float,
        v: Float,
        radius: Float,
        strength: Float,
        mode: VoxelBrushMode,
    ) = updateSelectedVoxel { volume ->
        val normalizedSlice = slice.coerceIn(0, volume.safeResolution - 1).toFloat() / (volume.safeResolution - 1)
        val center = when (axis) {
            VoxelSliceAxis.X -> Vector3(normalizedSlice, v.coerceIn(0f, 1f), u.coerceIn(0f, 1f))
            VoxelSliceAxis.Y -> Vector3(u.coerceIn(0f, 1f), normalizedSlice, v.coerceIn(0f, 1f))
            VoxelSliceAxis.Z -> Vector3(u.coerceIn(0f, 1f), v.coerceIn(0f, 1f), normalizedSlice)
        }
        volume.applySphereBrush(center, radius, strength, mode)
    }

    fun smoothSelectedVoxel(iterations: Int = 1) = updateSelectedVoxel { it.smoothVolume(iterations) }

    private fun updateSelectedEditableMesh(transform: (EditableMeshComponent) -> EditableMeshComponent) {
        if (!canEdit()) return
        val selectedId = mutableState.value.selectedObjectId ?: return
        val document = mutableState.value.sceneDocument ?: return
        var changed = false
        val updated = document.copy(objects = document.objects.map { item ->
            if (item.id != selectedId) item else item.copy(components = item.components.map { component ->
                if (component is EditableMeshComponent) {
                    changed = true
                    transform(component)
                } else component
            })
        })
        if (changed) applyDocumentEdit(updated)
    }

    private fun updateSelectedVoxel(transform: (VoxelVolumeComponent) -> VoxelVolumeComponent) {
        if (!canEdit()) return
        val selectedId = mutableState.value.selectedObjectId ?: return
        val document = mutableState.value.sceneDocument ?: return
        var changed = false
        val updated = document.copy(objects = document.objects.map { item ->
            if (item.id != selectedId) item else item.copy(components = item.components.map { component ->
                if (component is VoxelVolumeComponent) {
                    changed = true
                    transform(component)
                } else component
            })
        })
        if (changed) applyDocumentEdit(updated)
    }

    fun renameSelected(name: String) {
        if (!canEdit()) return
        val selectedId = mutableState.value.selectedObjectId ?: return
        val normalized = name.trim().take(64)
        if (normalized.isBlank()) return
        mutateScene { objects ->
            objects.map { if (it.id == selectedId) it.copy(name = normalized) else it }
        }
    }

    fun duplicateSelected() {
        if (!canEdit()) return
        val selected = mutableState.value.selectedObject ?: return
        val copy = selected.copy(
            id = UUID.randomUUID().toString(),
            name = "${selected.name} Copy".take(64),
            parentId = null,
            transform = selected.transform.copy(
                position = selected.transform.position.copy(x = selected.transform.position.x + 0.5f),
            ),
        )
        mutateScene { it + copy }
        mutableState.update {
            it.copy(
                selectedObjectId = copy.id,
                visualGraph = null,
                visualGraphPath = null,
                isLoadingGraph = false,
                scriptSource = null,
                scriptPath = null,
                isLoadingScript = false,
                isScriptDirty = false,
            )
        }
    }

    fun deleteSelected() {
        if (!canEdit()) return
        val selectedId = mutableState.value.selectedObjectId ?: return
        val objects = mutableState.value.sceneObjects
        val childrenByParent = objects.groupBy(EditorSceneObject::parentId)
        val removing = mutableSetOf<String>()
        fun collect(id: String) {
            if (removing.add(id)) childrenByParent[id].orEmpty().forEach { collect(it.id) }
        }
        collect(selectedId)
        mutateScene { it.filterNot { item -> item.id in removing } }
        mutableState.update {
            it.copy(
                selectedObjectId = null,
                visualGraph = null,
                visualGraphPath = null,
                isLoadingGraph = false,
                scriptSource = null,
                scriptPath = null,
                isLoadingScript = false,
                isScriptDirty = false,
            )
        }
    }

    fun importModel(sourceName: String, openStream: () -> InputStream?) {
        if (!canEdit()) return
        if (mutableState.value.isImportingAsset) return
        viewModelScope.launch {
            mutableState.update { it.copy(isImportingAsset = true, message = null) }
            try {
                val result = withContext(Dispatchers.IO) {
                    openStream()?.use { stream ->
                        contentRepository.importModel(projectId, sourceName, stream)
                    } ?: ContentResult.Failure(ContentError.StorageUnavailable)
                }
                when (result) {
                    is ContentResult.Success -> {
                        refreshAssets()
                        mutableState.update {
                            it.copy(
                                isImportingAsset = false,
                                message = "${result.value.displayName} importado.",
                            )
                        }
                    }
                    is ContentResult.Failure -> mutableState.update {
                        it.copy(isImportingAsset = false, message = result.error.toContentMessage())
                    }
                }
            } catch (cancellation: CancellationException) {
                throw cancellation
            } catch (_: Throwable) {
                mutableState.update {
                    it.copy(isImportingAsset = false, message = "Falha ao importar o modelo.")
                }
            }
        }
    }

    fun resolveAsset(assetId: String): File? = contentRepository.resolveAsset(projectId, assetId)

    fun updateSelectedTransform(
        property: TransformProperty,
        axis: TransformAxis,
        delta: Float,
    ) {
        if (!canEdit()) return
        val selectedId = mutableState.value.selectedObjectId ?: return
        mutateScene { objects ->
            objects.map { item ->
                if (item.id != selectedId) return@map item
                when (property) {
                    TransformProperty.POSITION,
                    TransformProperty.ROTATION,
                    TransformProperty.SCALE,
                    -> item.copy(transform = item.transform.adjust(property, axis, delta))
                    TransformProperty.VEHICLE_POWER -> item.copy(
                        vehicle = item.vehicle?.copy(enginePowerKw = (item.vehicle.enginePowerKw + delta).coerceIn(1f, 2_000f)),
                    )
                    TransformProperty.VEHICLE_MASS -> item.copy(
                        vehicle = item.vehicle?.copy(massKg = (item.vehicle.massKg + delta).coerceIn(100f, 20_000f)),
                    )
                    TransformProperty.VEHICLE_TORQUE -> item.copy(
                        vehicle = item.vehicle?.copy(maxTorqueNm = (item.vehicle.maxTorqueNm + delta).coerceIn(1f, 10_000f)),
                    )
                    TransformProperty.VEHICLE_TOP_SPEED -> item.copy(
                        vehicle = item.vehicle?.copy(topSpeedKph = (item.vehicle.topSpeedKph + delta).coerceIn(1f, 600f)),
                    )
                    TransformProperty.VEHICLE_STEERING -> item.copy(
                        vehicle = item.vehicle?.copy(maxSteeringDegrees = (item.vehicle.maxSteeringDegrees + delta).coerceIn(1f, 70f)),
                    )
                    TransformProperty.VEHICLE_BRAKE -> item.copy(
                        vehicle = item.vehicle?.copy(brakeForce = (item.vehicle.brakeForce + delta).coerceIn(100f, 100_000f)),
                    )
                    TransformProperty.VEHICLE_GRIP -> item.copy(
                        vehicle = item.vehicle?.copy(tireGrip = (item.vehicle.tireGrip + delta).coerceIn(0.05f, 5f)),
                    )
                    TransformProperty.VEHICLE_SUSPENSION_TRAVEL -> item.copy(
                        vehicle = item.vehicle?.copy(suspensionTravelMeters = (item.vehicle.suspensionTravelMeters + delta).coerceIn(0.01f, 1.5f)),
                    )
                    TransformProperty.VEHICLE_SUSPENSION_STIFFNESS -> item.copy(
                        vehicle = item.vehicle?.copy(suspensionStiffness = (item.vehicle.suspensionStiffness + delta).coerceIn(100f, 250_000f)),
                    )
                    TransformProperty.VEHICLE_SUSPENSION_DAMPING -> item.copy(
                        vehicle = item.vehicle?.copy(suspensionDamping = (item.vehicle.suspensionDamping + delta).coerceIn(0f, 50_000f)),
                    )
                    TransformProperty.VEHICLE_WHEEL_RADIUS -> item.copy(
                        vehicle = item.vehicle?.copy(wheelRadiusMeters = (item.vehicle.wheelRadiusMeters + delta).coerceIn(0.05f, 2f)),
                    )
                    TransformProperty.VEHICLE_DOWNFORCE -> item.copy(
                        vehicle = item.vehicle?.copy(downforceCoefficient = (item.vehicle.downforceCoefficient + delta).coerceIn(0f, 5f)),
                    )
                    TransformProperty.PBR_METALLIC -> item.copy(
                        pbrMaterial = item.pbrMaterial?.copy(metallic = (item.pbrMaterial.metallic + delta).coerceIn(0f, 1f)),
                    )
                    TransformProperty.PBR_ROUGHNESS -> item.copy(
                        pbrMaterial = item.pbrMaterial?.copy(roughness = (item.pbrMaterial.roughness + delta).coerceIn(0f, 1f)),
                    )
                    TransformProperty.MESH_MODIFIER_AMOUNT -> item.copy(
                        meshModifiers = item.meshModifiers?.copy(
                            modifiers = item.meshModifiers.modifiers.mapIndexed { index, modifier ->
                                if (index == 0) modifier.copy(amount = (modifier.amount + delta).coerceIn(-0.95f, 10f)) else modifier
                            },
                        ),
                    )
                    TransformProperty.VEGETATION_DENSITY -> item.copy(
                        vegetation = item.vegetation?.copy(
                            densityPerSquareMeter = (item.vegetation.densityPerSquareMeter + delta).coerceIn(0f, 10f),
                        ),
                    )
                    TransformProperty.ANIMATION_SPEED -> item.copy(
                        animation = item.animation?.copy(playbackSpeed = (item.animation.playbackSpeed + delta).coerceIn(0.01f, 10f)),
                    )
                    TransformProperty.COLLIDER_SIZE -> item.copy(
                        collider = item.collider?.copy(size = item.collider.size.adjust(axis, delta, minimum = 0.01f)),
                    )
                }
            }
        }
    }

    fun setSelectedTransformValue(
        property: TransformProperty,
        axis: TransformAxis,
        value: Float,
    ) {
        if (!canEdit()) return
        if (!value.isFinite() || (property in setOf(TransformProperty.SCALE, TransformProperty.COLLIDER_SIZE) && value <= 0f)) {
            mutableState.update {
                it.copy(message = "Use um número finito${if (property == TransformProperty.SCALE) " maior que zero" else ""}.")
            }
            return
        }
        val selectedId = mutableState.value.selectedObjectId ?: return
        mutateScene { objects ->
            objects.map { item ->
                if (item.id != selectedId) return@map item
                when (property) {
                    TransformProperty.POSITION,
                    TransformProperty.ROTATION,
                    TransformProperty.SCALE,
                    -> item.copy(transform = item.transform.set(property, axis, value))
                    TransformProperty.VEHICLE_POWER -> item.copy(vehicle = item.vehicle?.copy(enginePowerKw = value.coerceIn(1f, 2_000f)))
                    TransformProperty.VEHICLE_MASS -> item.copy(vehicle = item.vehicle?.copy(massKg = value.coerceIn(100f, 20_000f)))
                    TransformProperty.VEHICLE_TORQUE -> item.copy(vehicle = item.vehicle?.copy(maxTorqueNm = value.coerceIn(1f, 10_000f)))
                    TransformProperty.VEHICLE_TOP_SPEED -> item.copy(vehicle = item.vehicle?.copy(topSpeedKph = value.coerceIn(1f, 600f)))
                    TransformProperty.VEHICLE_STEERING -> item.copy(vehicle = item.vehicle?.copy(maxSteeringDegrees = value.coerceIn(1f, 70f)))
                    TransformProperty.VEHICLE_BRAKE -> item.copy(vehicle = item.vehicle?.copy(brakeForce = value.coerceIn(100f, 100_000f)))
                    TransformProperty.VEHICLE_GRIP -> item.copy(vehicle = item.vehicle?.copy(tireGrip = value.coerceIn(0.05f, 5f)))
                    TransformProperty.VEHICLE_SUSPENSION_TRAVEL -> item.copy(vehicle = item.vehicle?.copy(suspensionTravelMeters = value.coerceIn(0.01f, 1.5f)))
                    TransformProperty.VEHICLE_SUSPENSION_STIFFNESS -> item.copy(vehicle = item.vehicle?.copy(suspensionStiffness = value.coerceIn(100f, 250_000f)))
                    TransformProperty.VEHICLE_SUSPENSION_DAMPING -> item.copy(vehicle = item.vehicle?.copy(suspensionDamping = value.coerceIn(0f, 50_000f)))
                    TransformProperty.VEHICLE_WHEEL_RADIUS -> item.copy(vehicle = item.vehicle?.copy(wheelRadiusMeters = value.coerceIn(0.05f, 2f)))
                    TransformProperty.VEHICLE_DOWNFORCE -> item.copy(vehicle = item.vehicle?.copy(downforceCoefficient = value.coerceIn(0f, 5f)))
                    TransformProperty.PBR_METALLIC -> item.copy(pbrMaterial = item.pbrMaterial?.copy(metallic = value.coerceIn(0f, 1f)))
                    TransformProperty.PBR_ROUGHNESS -> item.copy(pbrMaterial = item.pbrMaterial?.copy(roughness = value.coerceIn(0f, 1f)))
                    TransformProperty.MESH_MODIFIER_AMOUNT -> item.copy(
                        meshModifiers = item.meshModifiers?.copy(
                            modifiers = item.meshModifiers.modifiers.mapIndexed { index, modifier ->
                                if (index == 0) modifier.copy(amount = value.coerceIn(-0.95f, 10f)) else modifier
                            },
                        ),
                    )
                    TransformProperty.VEGETATION_DENSITY -> item.copy(
                        vegetation = item.vegetation?.copy(densityPerSquareMeter = value.coerceIn(0f, 10f)),
                    )
                    TransformProperty.ANIMATION_SPEED -> item.copy(
                        animation = item.animation?.copy(playbackSpeed = value.coerceIn(0.01f, 10f)),
                    )
                    TransformProperty.COLLIDER_SIZE -> item.copy(
                        collider = item.collider?.copy(size = item.collider.size.set(axis, value.coerceAtLeast(0.01f))),
                    )
                }
            }
        }
    }

    fun applyViewportDrag(deltaX: Float, deltaY: Float) {
        if (!canEdit()) return
        val current = mutableState.value
        val selectedId = current.selectedObjectId ?: return
        if (current.activeTool == EditorTool.SELECT) return
        mutateScene(mergeKey = "viewport-${current.activeTool}-$selectedId") { objects ->
            objects.map { item ->
                if (item.id != selectedId) return@map item
                val updatedTransform = when (current.activeTool) {
                    EditorTool.SELECT -> item.transform
                    EditorTool.MOVE -> item.transform.copy(
                        position = item.transform.position
                            .adjust(TransformAxis.X, deltaX / 48f)
                            .adjust(TransformAxis.Y, -deltaY / 48f),
                    )
                    EditorTool.ROTATE -> item.transform.copy(
                        rotation = item.transform.rotation.adjust(
                            TransformAxis.Y,
                            deltaX / 3f,
                        ),
                    )
                    EditorTool.SCALE -> {
                        val delta = -deltaY / 180f
                        item.transform.copy(
                            scale = item.transform.scale
                                .adjust(TransformAxis.X, delta, minimum = 0.1f)
                                .adjust(TransformAxis.Y, delta, minimum = 0.1f)
                                .adjust(TransformAxis.Z, delta, minimum = 0.1f),
                        )
                    }
                }
                item.copy(transform = updatedTransform)
            }
        }
    }

    fun undo() {
        if (!canEdit()) return
        val history = sceneHistory ?: return
        val result = history.undo()
        if (result is SceneEditResult.Success) publishHistory(history)
    }

    fun redo() {
        if (!canEdit()) return
        val history = sceneHistory ?: return
        val result = history.redo()
        if (result is SceneEditResult.Success) publishHistory(history)
    }


    fun openScriptResource(ownerObjectId: String, relativePath: String) {
        if (!canEdit() || !relativePath.startsWith("scripts/lua/")) return
        mutableState.update {
            it.copy(
                selectedObjectId = ownerObjectId,
                scriptSource = null,
                scriptPath = relativePath,
                isLoadingScript = true,
                isScriptDirty = false,
                scriptDiagnostics = emptyList(),
            )
        }
        viewModelScope.launch {
            when (val result = contentRepository.readLuaScript(projectId, relativePath)) {
                is ContentResult.Success -> mutableState.update {
                    if (it.selectedObjectId == ownerObjectId && it.scriptPath == relativePath) {
                        it.copy(scriptSource = result.value, isLoadingScript = false, hasLuaScript = true)
                    } else it
                }
                is ContentResult.Failure -> mutableState.update {
                    it.copy(isLoadingScript = false, scriptDiagnostics = listOf(result.error.toContentMessage()))
                }
            }
        }
    }

    fun openGraphResource(ownerObjectId: String, relativePath: String) {
        if (!canEdit() || !relativePath.startsWith("visual-graphs/")) return
        mutableState.update {
            it.copy(
                selectedObjectId = ownerObjectId,
                visualGraph = null,
                visualGraphPath = relativePath,
                isLoadingGraph = true,
            )
        }
        viewModelScope.launch {
            when (val result = contentRepository.readVisualGraph(projectId, relativePath)) {
                is ContentResult.Success -> mutableState.update {
                    if (it.selectedObjectId == ownerObjectId && it.visualGraphPath == relativePath) {
                        it.copy(visualGraph = result.value, isLoadingGraph = false, hasVisualGraph = true)
                    } else it
                }
                is ContentResult.Failure -> mutableState.update {
                    it.copy(isLoadingGraph = false, message = result.error.toContentMessage())
                }
            }
        }
    }

    fun moveLogicResource(ownerObjectId: String, currentPath: String, folder: String, fileName: String) {
        if (!canEdit()) return
        val lua = currentPath.startsWith("scripts/lua/")
        val root = if (lua) "scripts/lua" else "visual-graphs"
        val extension = if (lua) "lua" else "graph.json"
        val targetPath = buildLogicPath(folder, fileName, root, extension) ?: run {
            mutableState.update { it.copy(message = "Pasta ou nome de arquivo inválido.") }
            return
        }
        if (targetPath == currentPath) return
        viewModelScope.launch {
            when (val result = contentRepository.moveLogicResource(projectId, currentPath, targetPath)) {
                is ContentResult.Success -> {
                    val document = mutableState.value.sceneDocument ?: return@launch
                    val updated = document.copy(
                        objects = document.objects.map { objectValue ->
                            if (objectValue.id != ownerObjectId) objectValue else objectValue.copy(
                                components = objectValue.components.map { component ->
                                    when {
                                        component is LuaScriptComponent && component.relativePath == currentPath -> component.copy(relativePath = targetPath)
                                        component is VisualGraphComponent && component.relativePath == currentPath -> component.copy(relativePath = targetPath)
                                        else -> component
                                    }
                                },
                            )
                        },
                    )
                    applyDocumentEdit(updated)
                    if (lua) openScriptResource(ownerObjectId, targetPath) else openGraphResource(ownerObjectId, targetPath)
                    mutableState.update { it.copy(message = "Recurso movido para res://$targetPath") }
                }
                is ContentResult.Failure -> mutableState.update { it.copy(message = result.error.toContentMessage()) }
            }
        }
    }

    fun deleteLogicResource(ownerObjectId: String, relativePath: String) {
        if (!canEdit()) return
        viewModelScope.launch {
            when (val result = contentRepository.deleteLogicResource(projectId, relativePath)) {
                is ContentResult.Success -> {
                    val document = mutableState.value.sceneDocument ?: return@launch
                    val updated = document.copy(
                        objects = document.objects.map { objectValue ->
                            if (objectValue.id != ownerObjectId) objectValue else objectValue.copy(
                                components = objectValue.components.filterNot { component ->
                                    (component is LuaScriptComponent && component.relativePath == relativePath) ||
                                        (component is VisualGraphComponent && component.relativePath == relativePath)
                                },
                            )
                        },
                    )
                    applyDocumentEdit(updated)
                    mutableState.update {
                        it.copy(
                            scriptSource = it.scriptSource.takeUnless { _ -> it.scriptPath == relativePath },
                            scriptPath = it.scriptPath.takeUnless { path -> path == relativePath },
                            visualGraph = it.visualGraph.takeUnless { _ -> it.visualGraphPath == relativePath },
                            visualGraphPath = it.visualGraphPath.takeUnless { path -> path == relativePath },
                            message = "Recurso excluído: res://$relativePath",
                        )
                    }
                }
                is ContentResult.Failure -> mutableState.update { it.copy(message = result.error.toContentMessage()) }
            }
        }
    }

    fun createScriptForSelected(folder: String = "scripts/lua", fileName: String? = null, forceNew: Boolean = false) {
        if (!canEdit() || mutableState.value.isSavingScript) return
        val selected = mutableState.value.selectedObject ?: run {
            mutableState.update { it.copy(message = "Selecione um objeto antes de criar um script.") }
            return
        }
        val document = mutableState.value.sceneDocument ?: return
        val existing = document.objects
            .firstOrNull { it.id == selected.id }
            ?.components
            ?.filterIsInstance<LuaScriptComponent>()
            ?.firstOrNull()
        if (existing != null && !forceNew) {
            openScriptResource(selected.id, existing.relativePath)
            return
        }
        val relativePath = buildLogicPath(folder, fileName, "scripts/lua", "lua") ?: run {
            mutableState.update { it.copy(message = "Pasta ou nome de script inválido.") }
            return
        }
        val safeName = selected.name.replace("\\", "\\\\").replace("\"", "\\\"")
        val source = """
            -- ${selected.name}
            local object = Scene:GetObject("$safeName")

            object.OnTouch:Connect(function()
                object.Transform.rotationY = object.Transform.rotationY + 45
                Scene:EmitEvent("object_touched", "${selected.name}")
                Log.info("${selected.name} recebeu um toque")
            end)

            Scene:OnEvent("nocode_action", function(value)
                Log.info("NoCode chamou Lua: " .. tostring(value))
            end)
        """.trimIndent()
        val updated = document.copy(
            objects = document.objects.map { item ->
                if (item.id == selected.id) {
                    item.copy(components = item.components + LuaScriptComponent(relativePath = relativePath))
                } else item
            },
        )
        applyDocumentEdit(updated)
        mutableState.update {
            it.copy(
                hasLuaScript = true,
                scriptSource = source,
                scriptPath = relativePath,
                isLoadingScript = false,
                isScriptDirty = true,
                scriptDiagnostics = emptyList(),
                message = "Script Lua criado e ligado a ${selected.name}.",
            )
        }
        saveLuaScript()
    }

    fun updateScriptSource(source: String) {
        if (!canEdit() || source.encodeToByteArray().size > MAX_SCRIPT_EDITOR_BYTES) return
        mutableState.update {
            it.copy(
                scriptSource = source,
                isScriptDirty = true,
                scriptDiagnostics = emptyList(),
            )
        }
    }

    fun saveLuaScript() {
        if (!canEdit() || mutableState.value.isSavingScript) return
        val path = mutableState.value.scriptPath ?: return
        val source = mutableState.value.scriptSource ?: return
        val validationHost = MutableSceneLogicHost(
            initial = mutableState.value.sceneDocument ?: return,
            onChanged = {},
            onLog = { _, _ -> },
        )
        val validationSession = LuaSceneSession(validationHost)
        val validation = validationSession.load(path, source)
        validationSession.stop()
        if (validation is LogicExecutionResult.Failure) {
            mutableState.update {
                it.copy(
                    scriptDiagnostics = listOf(validation.diagnostic.message),
                    message = "O script contém um erro e não foi salvo.",
                )
            }
            return
        }
        mutableState.update { it.copy(isSavingScript = true, scriptDiagnostics = emptyList(), message = null) }
        scriptSaveJob = viewModelScope.launch {
            try {
                when (val result = contentRepository.saveLuaScript(projectId, path, source)) {
                    is ContentResult.Success -> mutableState.update {
                        it.copy(
                            isSavingScript = false,
                            isScriptDirty = false,
                            hasLuaScript = true,
                            message = "Script validado e salvo.",
                        )
                    }
                    is ContentResult.Failure -> mutableState.update {
                        it.copy(isSavingScript = false, message = result.error.toContentMessage())
                    }
                }
            } catch (cancellation: CancellationException) {
                throw cancellation
            } catch (_: Throwable) {
                mutableState.update {
                    it.copy(isSavingScript = false, message = "Falha inesperada ao salvar o script.")
                }
            }
        }
    }

    fun createTouchGraph(folder: String = "visual-graphs", fileName: String? = null, forceNew: Boolean = false) {
        if (!canEdit()) return
        if (mutableState.value.isLoadingGraph || mutableState.value.isSavingGraph) {
            mutableState.update { it.copy(message = "Aguarde a sincronização do comportamento atual.") }
            return
        }
        val selected = mutableState.value.selectedObject
            ?: mutableState.value.sceneObjects.firstOrNull { it.type == EditorObjectType.MESH }
            ?: run {
                mutableState.update { it.copy(message = "Adicione ou selecione um objeto antes de criar lógica.") }
                return
            }
        val document = mutableState.value.sceneDocument ?: return
        val existingComponent = document.objects
            .firstOrNull { it.id == selected.id }
            ?.components
            ?.filterIsInstance<VisualGraphComponent>()
            ?.firstOrNull()
        if (existingComponent != null && !forceNew) {
            openGraphResource(selected.id, existingComponent.relativePath)
            return
        }
        val graphPath = buildLogicPath(folder, fileName, "visual-graphs", "graph.json") ?: run {
            mutableState.update { it.copy(message = "Pasta ou nome de grafo inválido.") }
            return
        }
        val graph = VisualGraphDocument(
            graphId = UUID.randomUUID().toString(),
            name = "Ao tocar em ${selected.name}",
            nodes = listOf(
                VisualNode(
                    id = UUID.randomUUID().toString(),
                    type = VisualNodeType.ON_TOUCH,
                    definitionId = "event.object.touch",
                    objectId = selected.id,
                    objectName = selected.name,
                    positionX = 72f,
                    positionY = 160f,
                ),
            ),
            connections = emptyList(),
        )
        val alreadyAttached = document.objects.any { objectItem ->
            objectItem.components.any { it is VisualGraphComponent && it.relativePath == graphPath }
        }
        if (!alreadyAttached) {
            val updated = document.copy(
                objects = document.objects.map { objectItem ->
                    if (objectItem.id == selected.id) {
                        objectItem.copy(
                            components = objectItem.components + VisualGraphComponent(relativePath = graphPath),
                        )
                    } else objectItem
                },
            )
            applyDocumentEdit(updated)
        }
        mutableState.update {
            it.copy(
                visualGraph = graph,
                visualGraphPath = graphPath,
                hasVisualGraph = true,
                activeSection = WorkspaceSection.LOGIC,
                message = "Evento de toque criado. Adicione ações e salve o grafo.",
            )
        }
    }

    fun addVisualNode(type: VisualNodeType) {
        if (!canEdit()) return
        if (mutableState.value.isLoadingGraph || mutableState.value.isSavingGraph) return
        if (type !in EDITABLE_ACTION_NODE_TYPES) return
        val current = mutableState.value.visualGraph ?: run {
            createTouchGraph()
            mutableState.value.visualGraph
        } ?: return
        if (current.nodes.size >= VisualGraphValidator.MAX_NODES) {
            mutableState.update { it.copy(message = "O grafo atingiu o limite de nós.") }
            return
        }
        val selectedName = mutableState.value.selectedObject?.name
            ?: mutableState.value.sceneObjects.firstOrNull { it.type == EditorObjectType.MESH }?.name
            ?: return
        val node = when (type) {
            VisualNodeType.ROTATE_OBJECT -> VisualNode(
                id = UUID.randomUUID().toString(),
                type = type,
                definitionId = "transform.rotate.y",
                objectId = mutableState.value.selectedObjectId,
                objectName = selectedName,
                numberValue = 45f,
                positionX = 72f + current.nodes.size * 230f,
                positionY = 160f,
            )
            VisualNodeType.SET_SCALE -> VisualNode(
                id = UUID.randomUUID().toString(),
                type = type,
                definitionId = "transform.scale.uniform",
                objectId = mutableState.value.selectedObjectId,
                objectName = selectedName,
                numberValue = 1.25f,
                positionX = 72f + current.nodes.size * 230f,
                positionY = 160f,
            )
            VisualNodeType.PRINT_LOG -> VisualNode(
                id = UUID.randomUUID().toString(),
                type = type,
                definitionId = "debug.log.info",
                textValue = "Ação executada em $selectedName",
                positionX = 72f + current.nodes.size * 230f,
                positionY = 160f,
            )
            else -> return
        }
        mutableState.update {
            it.copy(
                visualGraph = current.copy(
                    nodes = current.nodes + node,
                    connections = current.connections,
                ),
                message = "${type.toEditorLabel()} adicionado. Conecte as portas manualmente.",
            )
        }
    }

    fun addCatalogNode(definitionId: String) {
        if (!canEdit()) return
        if (mutableState.value.isLoadingGraph || mutableState.value.isSavingGraph) return
        val definition = VisualNodeCatalog.byId[definitionId] ?: return
        val current = mutableState.value.visualGraph ?: run {
            createTouchGraph()
            mutableState.value.visualGraph
        } ?: return
        if (current.nodes.size >= VisualGraphValidator.MAX_NODES) {
            mutableState.update { it.copy(message = "O grafo atingiu o limite de nós.") }
            return
        }
        val selected = mutableState.value.selectedObject
        val node = VisualNode(
            id = UUID.randomUUID().toString(),
            type = VisualNodeType.CATALOG,
            definitionId = definition.id,
            objectId = selected?.id,
            objectName = selected?.name,
            numberValue = if (definition.inputs.any { it.id in setOf("degrees", "scale", "value") }) 1f else null,
            textValue = if (definition.inputs.any { it.type.name == "TEXT" }) "" else null,
            positionX = 72f + (current.nodes.size % 4) * 230f,
            positionY = 96f + (current.nodes.size / 4) * 150f,
        )
        mutableState.update {
            it.copy(
                visualGraph = current.copy(
                    schemaVersion = 2,
                    nodes = current.nodes + node,
                    connections = current.connections,
                ),
                message = "${definition.title} adicionado. Conecte as portas manualmente.",
            )
        }
    }

    fun moveVisualNode(nodeId: String, x: Float, y: Float) {
        if (!canEdit() || !x.isFinite() || !y.isFinite()) return
        val graph = mutableState.value.visualGraph ?: return
        mutableState.update {
            it.copy(
                visualGraph = graph.copy(
                    schemaVersion = 2,
                    nodes = graph.nodes.map { node ->
                        if (node.id == nodeId) {
                            node.copy(positionX = x.coerceIn(-4000f, 4000f), positionY = y.coerceIn(-4000f, 4000f))
                        } else {
                            node
                        }
                    },
                ),
            )
        }
    }

    fun connectVisualNodes(fromNodeId: String, fromPortId: String, toNodeId: String, toPortId: String) {
        if (!canEdit() || fromNodeId == toNodeId) return
        val graph = mutableState.value.visualGraph ?: return
        val from = graph.nodes.firstOrNull { it.id == fromNodeId } ?: return
        val to = graph.nodes.firstOrNull { it.id == toNodeId } ?: return
        val output = VisualNodeCatalog.definitionFor(from)?.outputs?.firstOrNull { it.id == fromPortId } ?: return
        val input = VisualNodeCatalog.definitionFor(to)?.inputs?.firstOrNull { it.id == toPortId } ?: return
        if (
            output.type.name != "ANY" &&
            input.type.name != "ANY" &&
            output.type != input.type
        ) {
            mutableState.update { it.copy(message = "Portas incompatíveis: ${output.type} e ${input.type}.") }
            return
        }
        val connection = VisualConnection(fromNodeId, toNodeId, fromPortId, toPortId)
        if (connection in graph.connections) return
        val candidate = graph.copy(schemaVersion = 2, connections = graph.connections + connection)
        val errors = VisualGraphValidator.validate(candidate)
        if (errors.isNotEmpty()) {
            mutableState.update { it.copy(message = errors.first()) }
            return
        }
        mutableState.update {
            it.copy(visualGraph = candidate, message = "${output.label} conectado a ${input.label}.")
        }
    }

    fun removeLastVisualNode() {
        if (!canEdit()) return
        if (mutableState.value.isLoadingGraph || mutableState.value.isSavingGraph) return
        val graph = mutableState.value.visualGraph ?: return
        if (graph.nodes.size <= 1) return
        val removing = graph.nodes.last()
        mutableState.update {
            it.copy(
                visualGraph = graph.copy(
                    nodes = graph.nodes.dropLast(1),
                    connections = graph.connections.filterNot { connection ->
                        connection.fromNodeId == removing.id || connection.toNodeId == removing.id
                    },
                ),
            )
        }
    }

    fun saveVisualGraph() {
        if (!canEdit()) return
        val graph = mutableState.value.visualGraph ?: return
        if (mutableState.value.isSavingGraph) return
        val validationErrors = VisualGraphValidator.validate(graph)
        if (validationErrors.isNotEmpty()) {
            mutableState.update { it.copy(message = validationErrors.first()) }
            return
        }
        val relativePath = mutableState.value.visualGraphPath ?: run {
            mutableState.update { it.copy(message = "O componente do grafo não está ligado à cena.") }
            return
        }
        lastGraphSaveFailed = false
        mutableState.update { it.copy(isSavingGraph = true, message = null) }
        graphSaveJob = viewModelScope.launch {
            try {
                when (val result = contentRepository.saveVisualGraph(projectId, relativePath, graph)) {
                    is ContentResult.Success -> mutableState.update {
                        it.copy(isSavingGraph = false, hasVisualGraph = true, message = "Grafo visual salvo.")
                    }
                    is ContentResult.Failure -> mutableState.update {
                        lastGraphSaveFailed = true
                        it.copy(isSavingGraph = false, message = result.error.toContentMessage())
                    }
                }
            } catch (cancellation: CancellationException) {
                throw cancellation
            } catch (_: Throwable) {
                lastGraphSaveFailed = true
                mutableState.update {
                    it.copy(isSavingGraph = false, message = "Falha inesperada ao salvar o grafo.")
                }
            }
        }
    }

    fun togglePreview() {
        if (mutableState.value.isPreviewStarting) {
            stopPreview()
            return
        }
        if (mutableState.value.isPreviewRunning) {
            stopPreview()
        } else {
            startPreview()
        }
    }

    fun addQuickBehavior(behavior: QuickBehavior) {
        if (!canEdit()) return
        if (mutableState.value.isLoadingGraph || mutableState.value.isSavingGraph) {
            mutableState.update { it.copy(message = "Aguarde o comportamento terminar de sincronizar.") }
            return
        }
        if (mutableState.value.visualGraph == null) createTouchGraph()
        if (mutableState.value.visualGraph == null) return
        val previousNode = mutableState.value.visualGraph?.nodes?.lastOrNull()
        addVisualNode(behavior.actionNodeType)
        val addedNode = mutableState.value.visualGraph?.nodes?.lastOrNull()
        if (previousNode != null && addedNode != null && previousNode.id != addedNode.id) {
            connectVisualNodes(previousNode.id, "flow", addedNode.id, "flowIn")
        }
        saveVisualGraph()
        mutableState.update {
            it.copy(activeSection = WorkspaceSection.SCENE)
        }
    }

    fun onViewportObjectSelected(id: String?) {
        if (id == null) return
        if (!mutableState.value.isPreviewRunning) {
            selectObject(id)
            return
        }
        viewModelScope.launch(runtimeDispatcher) {
            playEventMutex.withLock {
                publishLogicResult(luaSession?.emitTouch(id))
                val host = logicHost ?: return@withLock
                playGraphs.forEach { graph ->
                    publishLogicResult(graphExecutor(host).emitTouch(graph, id))
                }
            }
        }
    }

    fun emitPreviewAction(eventName: String) {
        viewModelScope.launch(runtimeDispatcher) {
            playEventMutex.withLock {
                val host = logicHost ?: return@withLock
                val axis = eventName.parsePreviewAxis()
                if (axis != null) host.moveCharacters(axis.first, axis.second)
                eventName.parseLookDelta()?.let { (yaw, pitch) -> host.lookCharacter(yaw, pitch) }
                if (eventName == "jump") host.jumpCharacters()
                if (eventName == "interact.vehicle") host.toggleVehicleControl()
                if (eventName == "interact.door") host.toggleNearestDoor()
                if (eventName == "vehicle.handbrake") host.toggleHandbrake()
                publishLogicResult(luaSession?.emitEvent(eventName))
                playGraphs.forEach { graph ->
                    publishLogicResult(graphExecutor(host).emitButton(graph, eventName))
                }
            }
        }
    }

    fun advancePreview(deltaSeconds: Float) {
        if (!mutableState.value.isPreviewRunning) return
        val safeDelta = deltaSeconds.coerceIn(0f, 0.1f)
        logicHost?.advanceCharacters(safeDelta)
        mutableState.update { it.copy(previewSeconds = it.previewSeconds + safeDelta) }
    }

    private fun startPreview() {
        val source = mutableState.value.sceneDocument ?: return
        autosaveJob?.cancel()
        autosaveJob = null
        val generation = ++previewGeneration
        mutableState.update { it.copy(isPreviewStarting = true, message = null) }
        previewJob = viewModelScope.launch(runtimeDispatcher) {
            graphSaveJob?.join()
            scriptSaveJob?.join()
            if (generation != previewGeneration) return@launch
            if (lastGraphSaveFailed) {
                mutableState.update {
                    it.copy(
                        isPreviewStarting = false,
                        message = "Corrija o erro ao salvar o comportamento antes de iniciar Play.",
                    )
                }
                return@launch
            }
            val host = MutableSceneLogicHost(
                initial = source,
                onChanged = { updated ->
                    mutableState.update { it.copy(playDocument = updated) }
                },
                onLog = { level, message ->
                    mutableState.update { it.copy(message = "${level.name}: $message") }
                },
            )
            val diagnostics = mutableListOf<String>()
            val graphs = mutableListOf<VisualGraphDocument>()
            val graphComponents = source.objects
                .filter(GameObject::enabled)
                .flatMap { it.components.filter { component -> component.enabled } }
                .filterIsInstance<VisualGraphComponent>()
                .distinctBy(VisualGraphComponent::relativePath)
            if (graphComponents.size > MAX_PLAY_GRAPHS) {
                diagnostics += "A cena excede o limite de $MAX_PLAY_GRAPHS grafos ativos."
            }
            graphComponents.take(MAX_PLAY_GRAPHS).forEach { component ->
                when (val graph = contentRepository.readVisualGraph(projectId, component.relativePath)) {
                    is ContentResult.Success -> graphs += graph.value
                    is ContentResult.Failure -> diagnostics += graph.error.toContentMessage()
                }
            }
            val session = LuaSceneSession(
                host = host,
                onEmitEvent = ::dispatchRuntimeEventFromLua,
            )
            logicHost = host
            luaSession = session
            playGraphs = graphs
            val scriptComponents = source.objects
                .filter(GameObject::enabled)
                .flatMap { it.components.filter { component -> component.enabled } }
                .filterIsInstance<LuaScriptComponent>()
                .distinctBy(LuaScriptComponent::relativePath)
            if (scriptComponents.size > MAX_PLAY_SCRIPTS) {
                diagnostics += "A cena excede o limite de $MAX_PLAY_SCRIPTS scripts ativos."
            }
            val startedAtNanos = System.nanoTime()
            scriptComponents.take(MAX_PLAY_SCRIPTS).forEach { component ->
                    if ((System.nanoTime() - startedAtNanos) > PLAY_START_BUDGET_NANOS) {
                        diagnostics += "A inicialização dos scripts excedeu o orçamento de tempo."
                        return@forEach
                    }
                    when (val script = contentRepository.readLuaScript(projectId, component.relativePath)) {
                        is ContentResult.Success -> {
                            val result = session.load(component.relativePath, script.value)
                            if (result is LogicExecutionResult.Failure) diagnostics += result.diagnostic.message
                        }
                        is ContentResult.Failure -> diagnostics += script.error.toContentMessage()
                    }
                }
            if (diagnostics.isNotEmpty()) {
                session.stop()
                luaSession = null
                logicHost = null
                playGraphs = emptyList()
                if (generation != previewGeneration) return@launch
                mutableState.update {
                    it.copy(
                        isPreviewStarting = false,
                        isPreviewRunning = false,
                        playDocument = null,
                        message = diagnostics.first(),
                    )
                }
                return@launch
            }
            if (generation != previewGeneration) {
                session.stop()
                return@launch
            }
            logicHost = host
            luaSession = session
            playGraphs = graphs
            mutableState.update {
                it.copy(
                    isPreviewStarting = false,
                    isPreviewRunning = true,
                    previewSeconds = 0f,
                    playDocument = source,
                    message = diagnostics.firstOrNull(),
                )
            }
        }
        previewJob?.invokeOnCompletion { failure ->
            if (
                failure != null &&
                failure !is CancellationException &&
                generation == previewGeneration
            ) {
                mutableState.update {
                    it.copy(
                        isPreviewStarting = false,
                        isPreviewRunning = false,
                        playDocument = null,
                        message = "Falha ao iniciar Play.",
                    )
                }
            }
        }
    }

    private fun stopPreview() {
        previewGeneration += 1
        previewJob?.cancel()
        previewJob = null
        luaSession?.stop()
        luaSession = null
        logicHost = null
        playGraphs = emptyList()
        mutableState.update {
            it.copy(
                isPreviewStarting = false,
                isPreviewRunning = false,
                previewSeconds = 0f,
                playDocument = null,
            )
        }
        if (mutableState.value.isSceneDirty) scheduleAutosave()
    }

    private fun publishLogicResult(result: LogicExecutionResult?) {
        if (result is LogicExecutionResult.Failure) {
            mutableState.update { it.copy(message = result.diagnostic.message) }
        }
    }

    private fun graphExecutor(host: LogicSceneHost): VisualGraphExecutor =
        VisualGraphExecutor(
            host = host,
            onEmitEvent = ::dispatchRuntimeEventFromNoCode,
        )

    private fun dispatchRuntimeEventFromLua(eventName: String, value: Any?): LogicExecutionResult {
        val host = logicHost ?: return LogicExecutionResult.Success
        val key = "lua:$eventName"
        if (!activeBridgeEvents.add(key)) return LogicExecutionResult.Success
        return try {
            playGraphs.forEach { graph ->
                val executor = graphExecutor(host)
                val buttonResult = executor.emitButton(graph, eventName)
                if (buttonResult is LogicExecutionResult.Failure) return buttonResult
                val customResult = executor.emitCustom(graph, eventName, value)
                if (customResult is LogicExecutionResult.Failure) return customResult
            }
            LogicExecutionResult.Success
        } finally {
            activeBridgeEvents.remove(key)
        }
    }

    private fun dispatchRuntimeEventFromNoCode(eventName: String, value: Any?): LogicExecutionResult {
        val key = "nocode:$eventName"
        if (!activeBridgeEvents.add(key)) return LogicExecutionResult.Success
        return try {
            luaSession?.emitEvent(eventName, value) ?: LogicExecutionResult.Success
        } finally {
            activeBridgeEvents.remove(key)
        }
    }

    fun saveScene() {
        val current = mutableState.value
        val stored = persistedScene ?: return
        if (current.isSavingScene || !current.isSceneDirty) return
        val candidate = current.sceneDocument ?: return
        val savingGeneration = editGeneration
        viewModelScope.launch {
            mutableState.update { it.copy(isSavingScene = true, message = null) }
            try {
                when (
                    val result = contentRepository.saveScene(
                        projectId = projectId,
                        scene = candidate,
                        expectedRevision = stored.metadata.revision,
                    )
                ) {
                    is ContentResult.Success -> {
                        persistedScene = result.value
                        val hasNewerEdits = editGeneration != savingGeneration
                        val history = sceneHistory
                        val canonicalDocument = if (!hasNewerEdits && history != null) {
                            if (!history.updateMetadataFromStorage(result.value)) {
                                history.replaceFromStorage(result.value)
                            }
                            history.document
                        } else result.value
                        mutableState.update {
                            if (hasNewerEdits) {
                                it.copy(
                                    isSavingScene = false,
                                    isSceneDirty = true,
                                    message = "Cena salva; alterações mais recentes aguardam o próximo salvamento.",
                                )
                            } else {
                                it.copy(
                                    isSavingScene = false,
                                    isSceneDirty = false,
                                    sceneDocument = canonicalDocument,
                                    sceneObjects = canonicalDocument.toEditorObjects(),
                                    canUndo = history?.canUndo == true,
                                    canRedo = history?.canRedo == true,
                                    message = "Cena salva · revisão ${result.value.metadata.revision}.",
                                )
                            }
                        }
                        if (hasNewerEdits) scheduleAutosave()
                    }
                    is ContentResult.Failure -> {
                        mutableState.update {
                            it.copy(
                                isSavingScene = false,
                                message = result.error.toContentMessage(),
                            )
                        }
                    }
                }
            } catch (cancellation: CancellationException) {
                throw cancellation
            } catch (_: Throwable) {
                mutableState.update {
                    it.copy(isSavingScene = false, message = "Falha inesperada ao salvar a cena.")
                }
            }
        }
    }

    fun save() {
        val current = mutableState.value
        val metadata = current.metadata ?: return
        if (current.isSaving) return
        when (val validation = ProjectNameRules.normalize(current.editableName)) {
            is ProjectResult.Failure -> {
                mutableState.update { it.copy(nameError = validation.error.toUserMessage()) }
            }
            is ProjectResult.Success -> {
                viewModelScope.launch {
                    mutableState.update { it.copy(isSaving = true, nameError = null, message = null) }
                    try {
                        when (
                            val result = repository.updateMetadata(
                                metadata.copy(name = validation.value),
                                expectedRevision = metadata.revision,
                            )
                        ) {
                            is ProjectResult.Success -> {
                                mutableState.update {
                                    it.copy(
                                        isSaving = false,
                                        metadata = result.value,
                                        editableName = result.value.name,
                                        message = "Metadados salvos.",
                                    )
                                }
                            }
                            is ProjectResult.Failure -> {
                                mutableState.update {
                                    it.copy(isSaving = false, nameError = result.error.toUserMessage())
                                }
                            }
                        }
                    } catch (cancellation: CancellationException) {
                        throw cancellation
                    } catch (throwable: Throwable) {
                        mutableState.update {
                            it.copy(isSaving = false, message = "Falha inesperada ao salvar.")
                        }
                    }
                }
            }
        }
    }

    fun clearMessage() {
        mutableState.update { it.copy(message = null) }
    }

    fun reportDiagnostic(message: String) {
        mutableState.update { it.copy(message = message.take(400)) }
    }

    private fun mutateScene(
        mergeKey: String? = null,
        transform: (List<EditorSceneObject>) -> List<EditorSceneObject>,
    ) {
        if (!canEdit()) return
        val current = mutableState.value.sceneObjects
        val changed = transform(current)
        if (changed == current) return
        val currentDocument = mutableState.value.sceneDocument ?: return
        val history = sceneHistory ?: return
        val updatedDocument = currentDocument.mergeEditorObjects(changed)
        val result = history.execute(
            ReplaceSceneDocumentCommand(
                before = currentDocument,
                after = updatedDocument,
                mergeKey = mergeKey,
            ),
        )
        if (result is SceneEditResult.Success) {
            editGeneration += 1
            mutableState.update {
                it.copy(
                    sceneObjects = changed,
                    sceneDocument = result.document,
                    isSceneDirty = result.document != persistedScene,
                    canUndo = history.canUndo,
                    canRedo = history.canRedo,
                )
            }
            scheduleAutosave()
        }
    }

    private fun load() {
        viewModelScope.launch {
            try {
                when (val result = repository.openProject(projectId)) {
                    is ProjectResult.Success -> {
                        val sceneResult = contentRepository.loadOrCreateScene(projectId)
                        if (sceneResult is ContentResult.Failure) {
                            mutableState.value = WorkspaceUiState(
                                isLoading = false,
                                metadata = result.value.metadata,
                                editableName = result.value.metadata.name,
                                message = sceneResult.error.toContentMessage(),
                            )
                            return@launch
                        }
                        val scene = (sceneResult as ContentResult.Success).value
                        persistedScene = scene
                        sceneHistory = SceneCommandHistory(scene, MAX_HISTORY)
                        val objects = scene.toEditorObjects()
                        val selectedId = objects.firstOrNull {
                            it.type in setOf(
                                EditorObjectType.MESH,
                                EditorObjectType.VEHICLE,
                                EditorObjectType.PLAYER,
                            )
                        }?.id
                        val graphEntry = loadGraph(scene, selectedId)
                        val scriptEntry = loadScript(scene, selectedId)
                        nextObjectNumber = objects.size + 1
                        mutableState.value = WorkspaceUiState(
                            isLoading = false,
                            metadata = result.value.metadata,
                            editableName = result.value.metadata.name,
                            sceneObjects = objects,
                            sceneDocument = scene,
                            selectedObjectId = selectedId,
                            hasLuaScript = scene.objects.any { item ->
                                item.components.any { it is LuaScriptComponent }
                            },
                            hasVisualGraph = scene.objects.any { item ->
                                item.components.any { it is VisualGraphComponent }
                            },
                            visualGraph = graphEntry?.second,
                            visualGraphPath = graphEntry?.first,
                            scriptSource = scriptEntry?.second,
                            scriptPath = scriptEntry?.first,
                            assets = loadAssets(),
                        )
                    }
                    is ProjectResult.Failure -> {
                        mutableState.value = WorkspaceUiState(
                            isLoading = false,
                            message = result.error.toUserMessage(),
                        )
                    }
                }
            } catch (cancellation: CancellationException) {
                throw cancellation
            } catch (throwable: Throwable) {
                mutableState.value = WorkspaceUiState(
                    isLoading = false,
                    message = "Falha inesperada ao abrir o projeto.",
                )
            }
        }
    }

    private suspend fun loadAssets(): List<AssetRecord> =
        when (val result = contentRepository.listAssets(projectId)) {
            is ContentResult.Success -> result.value
            is ContentResult.Failure -> emptyList()
        }

    private suspend fun loadGraph(
        scene: SceneDocument,
        objectId: String?,
    ): Pair<String, VisualGraphDocument>? {
        val component = scene.objects
            .firstOrNull { it.id == objectId && it.enabled }
            ?.components
            ?.asSequence()
            ?.filterIsInstance<VisualGraphComponent>()
            ?.firstOrNull { it.enabled }
            ?: return null
        return when (val result = contentRepository.readVisualGraph(projectId, component.relativePath)) {
            is ContentResult.Success -> component.relativePath to result.value
            is ContentResult.Failure -> null
        }
    }

    private fun loadGraphForObject(objectId: String) {
        val component = mutableState.value.sceneDocument
            ?.objects
            ?.firstOrNull { it.id == objectId }
            ?.components
            ?.filterIsInstance<VisualGraphComponent>()
            ?.firstOrNull { it.enabled }
        if (component == null) {
            mutableState.update {
                if (it.selectedObjectId == objectId) it.copy(isLoadingGraph = false) else it
            }
            return
        }
        viewModelScope.launch {
            when (val result = contentRepository.readVisualGraph(projectId, component.relativePath)) {
                is ContentResult.Success -> {
                    if (mutableState.value.selectedObjectId == objectId) {
                        mutableState.update {
                            it.copy(
                                visualGraph = result.value,
                                visualGraphPath = component.relativePath,
                                isLoadingGraph = false,
                            )
                        }
                    }
                }
                is ContentResult.Failure -> {
                    if (mutableState.value.selectedObjectId == objectId) {
                        mutableState.update {
                            it.copy(
                                isLoadingGraph = false,
                                message = result.error.toContentMessage(),
                            )
                        }
                    }
                }
            }
        }
    }

    private suspend fun loadScript(
        scene: SceneDocument,
        objectId: String?,
    ): Pair<String, String>? {
        val component = scene.objects
            .firstOrNull { it.id == objectId && it.enabled }
            ?.components
            ?.filterIsInstance<LuaScriptComponent>()
            ?.firstOrNull { it.enabled }
            ?: return null
        return when (val result = contentRepository.readLuaScript(projectId, component.relativePath)) {
            is ContentResult.Success -> component.relativePath to result.value
            is ContentResult.Failure -> null
        }
    }

    private fun loadScriptForObject(objectId: String) {
        val component = mutableState.value.sceneDocument
            ?.objects
            ?.firstOrNull { it.id == objectId }
            ?.components
            ?.filterIsInstance<LuaScriptComponent>()
            ?.firstOrNull { it.enabled }
        if (component == null) {
            mutableState.update {
                if (it.selectedObjectId == objectId) {
                    it.copy(isLoadingScript = false, scriptSource = null, scriptPath = null)
                } else it
            }
            return
        }
        viewModelScope.launch {
            when (val result = contentRepository.readLuaScript(projectId, component.relativePath)) {
                is ContentResult.Success -> if (mutableState.value.selectedObjectId == objectId) {
                    mutableState.update {
                        it.copy(
                            scriptSource = result.value,
                            scriptPath = component.relativePath,
                            isLoadingScript = false,
                            isScriptDirty = false,
                            scriptDiagnostics = emptyList(),
                        )
                    }
                }
                is ContentResult.Failure -> if (mutableState.value.selectedObjectId == objectId) {
                    mutableState.update {
                        it.copy(
                            isLoadingScript = false,
                            scriptDiagnostics = listOf(result.error.toContentMessage()),
                        )
                    }
                }
            }
        }
    }

    private fun applyDocumentEdit(updatedDocument: SceneDocument) {
        val currentDocument = mutableState.value.sceneDocument ?: return
        if (currentDocument == updatedDocument) return
        val history = sceneHistory ?: return
        val result = history.execute(ReplaceSceneDocumentCommand(currentDocument, updatedDocument))
        if (result is SceneEditResult.Success) publishHistory(history)
    }

    private suspend fun refreshAssets() {
        val assets = loadAssets()
        mutableState.update { it.copy(assets = assets) }
    }

    private fun publishHistory(history: SceneCommandHistory) {
        val document = history.document
        val objects = document.toEditorObjects()
        editGeneration += 1
        mutableState.update {
            it.copy(
                sceneDocument = document,
                sceneObjects = objects,
                selectedObjectId = it.selectedObjectId.takeIf { id ->
                    objects.any { item -> item.id == id }
                },
                isSceneDirty = document != persistedScene,
                canUndo = history.canUndo,
                canRedo = history.canRedo,
            )
        }
        scheduleAutosave()
    }

    private fun scheduleAutosave() {
        if (!canEdit()) return
        autosaveJob?.cancel()
        autosaveJob = viewModelScope.launch {
            delay(AUTOSAVE_DELAY_MILLIS)
            saveScene()
        }
    }

    companion object {
        const val MAX_HISTORY = 50
        const val AUTOSAVE_DELAY_MILLIS = 1_200L
        const val MAX_PLAY_SCRIPTS = 8
        const val MAX_PLAY_GRAPHS = 16
        const val PLAY_START_BUDGET_NANOS = 750_000_000L
        const val MAX_SCRIPT_EDITOR_BYTES = 256 * 1024
        val EDITABLE_ACTION_NODE_TYPES = setOf(
            VisualNodeType.ROTATE_OBJECT,
            VisualNodeType.SET_SCALE,
            VisualNodeType.PRINT_LOG,
        )
    }

    private fun canEdit(): Boolean {
        val current = mutableState.value
        return !current.isPreviewStarting && !current.isPreviewRunning
    }
}

enum class TransformProperty {
    POSITION,
    ROTATION,
    SCALE,
    VEHICLE_POWER,
    VEHICLE_MASS,
    VEHICLE_TORQUE,
    VEHICLE_TOP_SPEED,
    VEHICLE_STEERING,
    VEHICLE_BRAKE,
    VEHICLE_GRIP,
    VEHICLE_SUSPENSION_TRAVEL,
    VEHICLE_SUSPENSION_STIFFNESS,
    VEHICLE_SUSPENSION_DAMPING,
    VEHICLE_WHEEL_RADIUS,
    VEHICLE_DOWNFORCE,
    PBR_METALLIC,
    PBR_ROUGHNESS,
    MESH_MODIFIER_AMOUNT,
    VEGETATION_DENSITY,
    ANIMATION_SPEED,
    COLLIDER_SIZE,
}
enum class TransformAxis { X, Y, Z }

private fun EditorTransform.adjust(
    property: TransformProperty,
    axis: TransformAxis,
    delta: Float,
): EditorTransform = when (property) {
    TransformProperty.POSITION -> copy(position = position.adjust(axis, delta))
    TransformProperty.ROTATION -> copy(rotation = rotation.adjust(axis, delta))
    TransformProperty.SCALE -> copy(scale = scale.adjust(axis, delta, minimum = 0.1f))
    else -> this
}

private fun EditorTransform.set(
    property: TransformProperty,
    axis: TransformAxis,
    value: Float,
): EditorTransform = when (property) {
    TransformProperty.POSITION -> copy(position = position.set(axis, value))
    TransformProperty.ROTATION -> copy(rotation = rotation.set(axis, value))
    TransformProperty.SCALE -> copy(scale = scale.set(axis, value))
    else -> this
}

private fun EditorVector3.adjust(
    axis: TransformAxis,
    delta: Float,
    minimum: Float? = null,
): EditorVector3 {
    fun bounded(value: Float): Float = minimum?.let { max(it, value) } ?: value
    return when (axis) {
        TransformAxis.X -> copy(x = bounded(x + delta))
        TransformAxis.Y -> copy(y = bounded(y + delta))
        TransformAxis.Z -> copy(z = bounded(z + delta))
    }
}

private fun EditorVector3.set(axis: TransformAxis, value: Float): EditorVector3 = when (axis) {
    TransformAxis.X -> copy(x = value)
    TransformAxis.Y -> copy(y = value)
    TransformAxis.Z -> copy(z = value)
}

private fun Vector3.adjust(
    axis: TransformAxis,
    delta: Float,
    minimum: Float,
): Vector3 = set(
    axis,
    when (axis) {
        TransformAxis.X -> (x + delta).coerceAtLeast(minimum)
        TransformAxis.Y -> (y + delta).coerceAtLeast(minimum)
        TransformAxis.Z -> (z + delta).coerceAtLeast(minimum)
    },
)

private fun Vector3.set(axis: TransformAxis, value: Float): Vector3 = when (axis) {
    TransformAxis.X -> copy(x = value)
    TransformAxis.Y -> copy(y = value)
    TransformAxis.Z -> copy(z = value)
}

private fun SceneDocument.toEditorObjects(): List<EditorSceneObject> =
    objects.mapIndexed { index, item ->
        val transform = item.components.filterIsInstance<TransformComponent>().firstOrNull()
            ?: TransformComponent()
        EditorSceneObject(
            id = item.id,
            name = item.name,
            type = item.toEditorType(),
            parentId = item.parentId,
            isVisible = item.enabled,
            transform = EditorTransform(
                position = transform.position.toEditorVector(),
                rotation = transform.rotationEulerDegrees.toEditorVector(),
                scale = transform.scale.toEditorVector(),
            ),
            assetId = item.components.filterIsInstance<MeshRendererComponent>().firstOrNull()?.assetId,
            primitive = item.components.filterIsInstance<MeshRendererComponent>().firstOrNull()?.primitive,
            vehicle = item.component<VehicleControllerComponent>(),
            collider = item.component<ColliderComponent>(),
            animation = item.component<AnimationControllerComponent>(),
            animationPack = item.component<AnimationPackComponent>(),
            pbrMaterial = item.component<PbrMaterialComponent>(),
            meshModifiers = item.component<MeshModifierStackComponent>(),
            rigidBody = item.component<RigidBodyComponent>(),
            vegetation = item.component<VegetationSpawnerComponent>(),
            luaScriptPaths = item.components.filterIsInstance<LuaScriptComponent>().map(LuaScriptComponent::relativePath),
            visualGraphPaths = item.components.filterIsInstance<VisualGraphComponent>().map(VisualGraphComponent::relativePath),
            viewportX = 0.22f + ((index % 4) * 0.17f),
            viewportY = 0.28f + ((index % 3) * 0.2f),
        )
    }

private fun SceneDocument.mergeEditorObjects(editorObjects: List<EditorSceneObject>): SceneDocument {
    val existingById = objects.associateBy(GameObject::id)
    val merged = editorObjects.map { editorObject ->
        val existing = existingById[editorObject.id]
        val existingTransform = existing?.component<TransformComponent>()
        val transform = editorObject.transform.toComponent(existingTransform)
        if (existing == null) {
            editorObject.toGameObject(transform)
        } else {
            existing.copy(
                name = editorObject.name,
                enabled = editorObject.isVisible,
                components = existing.components
                    .map { component ->
                        when (component) {
                            is TransformComponent -> transform
                            is VehicleControllerComponent -> editorObject.vehicle ?: component
                            is ColliderComponent -> editorObject.collider ?: component
                            is RigidBodyComponent -> editorObject.rigidBody ?: component
                            is PbrMaterialComponent -> editorObject.pbrMaterial ?: component
                            is MeshModifierStackComponent -> editorObject.meshModifiers ?: component
                            is VegetationSpawnerComponent -> editorObject.vegetation ?: component
                            is AnimationControllerComponent -> editorObject.animation ?: component
                            is AnimationPackComponent -> editorObject.animationPack ?: component
                            else -> component
                        }
                    },
            )
        }
    }
    val childrenByParent = merged
        .filter { it.parentId != null }
        .groupBy(GameObject::parentId)
        .mapValues { (_, children) -> children.map(GameObject::id) }
    val consistent = merged.map { objectItem ->
        objectItem.copy(children = childrenByParent[objectItem.id].orEmpty())
    }
    return copy(
        objects = consistent,
        rootObjects = consistent.filter { it.parentId == null }.map(GameObject::id),
    )
}

private fun GameObject.toEditorType(): EditorObjectType = when {
    components.any { it is TerrainComponent } -> EditorObjectType.TERRAIN
    components.any { it is EditableMeshComponent || it is VoxelVolumeComponent } -> EditorObjectType.MESH
    components.any { it is CharacterControllerComponent } -> EditorObjectType.PLAYER
    components.any { it is VehicleControllerComponent } -> EditorObjectType.VEHICLE
    components.any { it is VirtualJoystickComponent } -> EditorObjectType.JOYSTICK
    components.any { it is DirectionalLightComponent } -> EditorObjectType.LIGHT
    components.any { it is CameraComponent } -> EditorObjectType.CAMERA
    components.any { it is MeshRendererComponent } -> EditorObjectType.MESH
    components.any { it is TouchButtonComponent } -> EditorObjectType.UI_BUTTON
    else -> EditorObjectType.ENVIRONMENT
}

private fun EditorSceneObject.toGameObject(transform: TransformComponent): GameObject {
    val specificComponents = when (type) {
        EditorObjectType.ENVIRONMENT -> emptyList()
        EditorObjectType.LIGHT -> listOf(DirectionalLightComponent())
        EditorObjectType.CAMERA -> listOf(CameraComponent())
        EditorObjectType.MESH -> buildList {
            add(
                if (assetId != null) MeshRendererComponent(assetId = assetId)
                else MeshRendererComponent(primitive = primitive ?: PrimitiveMesh.CUBE),
            )
            collider?.let(::add)
            rigidBody?.let(::add)
            pbrMaterial?.let(::add)
            meshModifiers?.let(::add)
        }
        EditorObjectType.TERRAIN -> listOf(TerrainPresets.semiArid())
        EditorObjectType.PLAYER -> listOf(
            CharacterControllerComponent(cameraMode = CharacterCameraMode.THIRD_PERSON),
            MeshRendererComponent(primitive = PrimitiveMesh.CUBE, colorArgb = 0xFF7F56D9),
        )
        EditorObjectType.PLAYER_FIRST_PERSON -> listOf(
            CharacterControllerComponent(cameraMode = CharacterCameraMode.FIRST_PERSON, cameraDistance = 0f),
            MeshRendererComponent(primitive = PrimitiveMesh.CUBE, colorArgb = 0xFF7F56D9),
        )
        EditorObjectType.PLAYER_TOP_DOWN -> listOf(
            CharacterControllerComponent(cameraMode = CharacterCameraMode.TOP_DOWN, cameraDistance = 8f),
            MeshRendererComponent(primitive = PrimitiveMesh.CUBE, colorArgb = 0xFF7F56D9),
        )
        EditorObjectType.JOYSTICK -> listOf(VirtualJoystickComponent())
        EditorObjectType.UI_BUTTON -> listOf(TouchButtonComponent(label = name, eventName = "action"))
        EditorObjectType.VEHICLE -> listOf(
            MeshRendererComponent(primitive = PrimitiveMesh.CUBE, colorArgb = 0xFFB33636),
            ColliderComponent(size = Vector3(1.8f, 1.4f, 4.2f)),
            VehicleControllerComponent(),
        )
    }
    return GameObject(
        id = id,
        name = name,
        enabled = isVisible,
        parentId = parentId,
        components = listOf(transform) + specificComponents,
    )
}

private fun TransformComponent.toEditorTransform(): EditorTransform = EditorTransform(
    position = position.toEditorVector(),
    rotation = rotationEulerDegrees.toEditorVector(),
    scale = scale.toEditorVector(),
)

private fun Vector3.toEditorVector() = EditorVector3(x, y, z)

private fun EditorTransform.toComponent(existing: TransformComponent? = null) = TransformComponent(
    componentId = existing?.componentId ?: TransformComponent().componentId,
    enabled = existing?.enabled ?: true,
    position = Vector3(position.x, position.y, position.z),
    rotationEulerDegrees = Vector3(rotation.x, rotation.y, rotation.z),
    scale = Vector3(scale.x, scale.y, scale.z),
)

private fun buildLogicPath(folder: String, fileName: String?, root: String, extension: String): String? {
    val normalizedFolder = folder.trim().replace('\\', '/').trimEnd('/').ifBlank { root }
    if (normalizedFolder != root && !normalizedFolder.startsWith("$root/")) return null
    val requested = fileName?.trim().orEmpty().ifBlank { UUID.randomUUID().toString() }
    val withoutExtension = requested
        .removeSuffix(".$extension")
        .removeSuffix(".graph.json")
        .removeSuffix(".lua")
    val safeName = withoutExtension
        .replace(Regex("[^A-Za-z0-9._-]+"), "-")
        .trim('-', '.', '_')
        .take(72)
        .ifBlank { return null }
    val path = "$normalizedFolder/$safeName.$extension"
    return path.takeIf(SafeProjectPath::isValidRelativePath)
}

private fun decodeTerrainHeightmap(sourceName: String, input: InputStream): TerrainHeightmapData? {
    val bytes = input.readBytes()
    val extension = sourceName.substringAfterLast('.', "").lowercase()
    if (extension == "raw" || extension == "raw16" || extension == "r16") {
        if (bytes.size < 9 * 9 * 2 || bytes.size % 2 != 0) return null
        val sampleCount = bytes.size / 2
        val side = kotlin.math.sqrt(sampleCount.toDouble()).toInt()
        if (side * side != sampleCount || side !in 9..257) return null
        val values = List(sampleCount) { index ->
            val low = bytes[index * 2].toInt() and 0xFF
            val high = bytes[index * 2 + 1].toInt() and 0xFF
            ((high shl 8) or low) / 65535f
        }
        return TerrainHeightmapData(side, values)
    }
    val bitmap = BitmapFactory.decodeByteArray(bytes, 0, bytes.size) ?: return null
    return try {
        val side = minOf(bitmap.width, bitmap.height, 257).coerceAtLeast(9)
        val values = List(side * side) { index ->
            val x = index % side
            val z = index / side
            val sx = if (side == 1) 0 else x * (bitmap.width - 1) / (side - 1)
            val sz = if (side == 1) 0 else z * (bitmap.height - 1) / (side - 1)
            val pixel = bitmap.getPixel(sx, sz)
            val red = (pixel shr 16) and 0xFF
            val green = (pixel shr 8) and 0xFF
            val blue = pixel and 0xFF
            (red * 0.2126f + green * 0.7152f + blue * 0.0722f) / 255f
        }
        TerrainHeightmapData(side, values)
    } finally {
        bitmap.recycle()
    }
}

private fun ContentError.toContentMessage(): String = when (this) {
    ContentError.ProjectNotFound -> "O projeto não foi encontrado."
    ContentError.SceneNotFound -> "A cena principal não foi encontrada."
    ContentError.CorruptedScene -> "A cena está corrompida."
    ContentError.ConcurrentModification -> "A cena mudou em outra sessão. Abra o projeto novamente."
    ContentError.StorageUnavailable -> "Não foi possível acessar os arquivos da cena."
    ContentError.InvalidPath -> "A cena contém um caminho inválido."
    ContentError.UnsupportedAsset -> "O asset não é compatível."
    ContentError.AssetTooLarge -> "O asset excede o limite permitido."
    is ContentError.InvalidAsset -> reason
    is ContentError.InvalidScene -> reason
}

private fun VisualNodeType.toEditorLabel(): String = when (this) {
    VisualNodeType.ON_START -> "Ao iniciar"
    VisualNodeType.ON_TOUCH -> "Ao tocar"
    VisualNodeType.ON_BUTTON_PRESSED -> "Ao pressionar botão"
    VisualNodeType.ROTATE_OBJECT -> "Rotacionar objeto"
    VisualNodeType.SET_SCALE -> "Alterar escala"
    VisualNodeType.PRINT_LOG -> "Mostrar log"
    VisualNodeType.SEQUENCE -> "Sequência"
    VisualNodeType.CATALOG -> "Nó de catálogo"
}

private class MutableSceneLogicHost(
    initial: SceneDocument,
    private val onChanged: (SceneDocument) -> Unit,
    private val onLog: (LogicLogLevel, String) -> Unit,
) : LogicSceneHost {
    private var document = initial
    private val groundedY = initial.objects.mapNotNull { item ->
        item.component<CharacterControllerComponent>()?.let {
            item.id to (item.component<TransformComponent>()?.position?.y ?: 0f)
        }
    }.toMap()
    private val verticalVelocity = mutableMapOf<String, Float>()
    private val vehicleStates = mutableMapOf<String, VehicleRuntimeState>()
    private val vehicleInputs = mutableMapOf<String, VehicleControlInput>()
    private val bodyVelocities = mutableMapOf<String, Vector3>()
    private var activeVehicleId: String? = null

    override fun findObjectIdByName(name: String): String? =
        document.objects.firstOrNull { it.name == name }?.id

    override fun rotation(objectId: String): Vector3? =
        document.objects.firstOrNull { it.id == objectId }
            ?.components
            ?.filterIsInstance<TransformComponent>()
            ?.firstOrNull()
            ?.rotationEulerDegrees

    override fun scale(objectId: String): Vector3? =
        document.objects.firstOrNull { it.id == objectId }
            ?.components
            ?.filterIsInstance<TransformComponent>()
            ?.firstOrNull()
            ?.scale

    override fun setRotation(objectId: String, rotation: Vector3): Boolean =
        updateTransform(objectId) { it.copy(rotationEulerDegrees = rotation) }

    override fun setScale(objectId: String, scale: Vector3): Boolean =
        updateTransform(objectId) { it.copy(scale = scale) }

    override fun log(level: LogicLogLevel, message: String) {
        onLog(level, message.take(300))
    }

    fun moveCharacters(axisX: Float, axisZ: Float) {
        if (!axisX.isFinite() || !axisZ.isFinite()) return
        activeVehicleId?.let { vehicleId ->
            vehicleInputs[vehicleId] = VehicleControlInput(
                throttle = (-axisZ).coerceIn(-1f, 1f),
                brake = if (axisZ > 0.15f && (vehicleStates[vehicleId]?.longitudinalSpeedMetersPerSecond ?: 0f) > 0.5f) {
                    axisZ.coerceIn(0f, 1f)
                } else 0f,
                steering = axisX.coerceIn(-1f, 1f),
            )
            return
        }
        var changed = false
        val updated = document.objects.map { item ->
            val controller = item.component<CharacterControllerComponent>() ?: return@map item
            if (!controller.enabled || "player" !in item.tags) return@map item
            item.copy(
                components = item.components.map { component ->
                    if (component !is TransformComponent) component else {
                        changed = true
                        val yaw = Math.toRadians(component.rotationEulerDegrees.y.toDouble())
                        val moveX =
                            axisX.coerceIn(-1f, 1f) * kotlin.math.cos(yaw).toFloat() +
                                axisZ.coerceIn(-1f, 1f) * kotlin.math.sin(yaw).toFloat()
                        val moveZ =
                            axisZ.coerceIn(-1f, 1f) * kotlin.math.cos(yaw).toFloat() -
                                axisX.coerceIn(-1f, 1f) * kotlin.math.sin(yaw).toFloat()
                        val candidate = component.position.copy(
                            x = component.position.x + moveX * controller.movementSpeed * 0.08f,
                            z = component.position.z + moveZ * controller.movementSpeed * 0.08f,
                        )
                        component.copy(position = resolveCharacterCollision(item.id, candidate, component.position))
                    }
                },
            )
        }
        if (changed) {
            document = document.copy(objects = updated)
            onChanged(document)
        }
    }

    fun lookCharacter(deltaYaw: Float, deltaPitch: Float) {
        if (activeVehicleId != null || !deltaYaw.isFinite() || !deltaPitch.isFinite()) return
        var changed = false
        document = document.copy(
            objects = document.objects.map { item ->
                val controller = item.component<CharacterControllerComponent>()
                if (controller?.enabled != true || "player" !in item.tags) return@map item
                item.copy(
                    components = item.components.map { component ->
                        if (component !is TransformComponent) component else {
                            changed = true
                            component.copy(
                                rotationEulerDegrees = component.rotationEulerDegrees.copy(
                                    x = (component.rotationEulerDegrees.x + deltaPitch * controller.lookSensitivity)
                                        .coerceIn(-82f, 82f),
                                    y = component.rotationEulerDegrees.y + deltaYaw * controller.lookSensitivity,
                                ),
                            )
                        }
                    },
                )
            },
        )
        if (changed) onChanged(document)
    }

    fun toggleVehicleControl() {
        val occupied = activeVehicleId
        if (occupied != null) {
            val vehicleObject = document.objects.firstOrNull { it.id == occupied }
            val vehicleTransform = vehicleObject?.component<TransformComponent>()
            activeVehicleId = null
            vehicleInputs.remove(occupied)
            val exitPosition = vehicleObject?.let(::findSafeExitPosition)
            document = document.copy(
                objects = document.objects.map { item ->
                    when {
                        item.id == occupied -> item.copy(tags = item.tags - RUNTIME_CONTROLLED_TAG)
                        "player" in item.tags && vehicleTransform != null && exitPosition != null -> item.copy(
                            components = item.components.map { component ->
                                if (component is TransformComponent) {
                                    component.copy(
                                        position = exitPosition,
                                        rotationEulerDegrees = component.rotationEulerDegrees.copy(
                                            y = vehicleTransform.rotationEulerDegrees.y,
                                        ),
                                    )
                                } else component
                            },
                        )
                        else -> item
                    }
                },
            )
            onChanged(document)
            onLog(LogicLogLevel.INFO, "Você saiu do veículo.")
            return
        }
        val player = document.objects.firstOrNull { "player" in it.tags }
        val playerPosition = player?.component<TransformComponent>()?.position ?: return
        val nearest = document.objects
            .filter { it.component<VehicleControllerComponent>()?.enabled == true }
            .minByOrNull { item ->
                val position = item.component<TransformComponent>()?.position ?: Vector3.ZERO
                val dx = position.x - playerPosition.x
                val dy = position.y - playerPosition.y
                val dz = position.z - playerPosition.z
                dx * dx + dy * dy + dz * dz
            } ?: return
        val vehiclePosition = nearest.component<TransformComponent>()?.position ?: return
        val dx = vehiclePosition.x - playerPosition.x
        val dy = vehiclePosition.y - playerPosition.y
        val dz = vehiclePosition.z - playerPosition.z
        if (dx * dx + dy * dy + dz * dz > 36f) {
            onLog(LogicLogLevel.WARNING, "Aproxime-se do veículo para entrar.")
            return
        }
        activeVehicleId = nearest.id
        vehicleInputs[nearest.id] = VehicleControlInput()
        document = document.copy(
            objects = document.objects.map { item ->
                if (item.id == nearest.id) item.copy(tags = item.tags + RUNTIME_CONTROLLED_TAG) else item
            },
        )
        onChanged(document)
        onLog(LogicLogLevel.INFO, "Você entrou em ${nearest.name}.")
    }

    fun toggleNearestDoor() {
        val vehicleId = activeVehicleId
        val vehiclePosition = vehicleId?.let { id ->
            document.objects.firstOrNull { it.id == id }?.component<TransformComponent>()?.position
        }
        val playerPosition = document.objects.firstOrNull { "player" in it.tags }
            ?.component<TransformComponent>()?.position
        val origin = vehiclePosition ?: playerPosition ?: return
        val door = document.objects
            .filter {
                "vehicle-door" in it.tags &&
                    (vehicleId == null || it.component<VehiclePartComponent>()?.vehicleObjectId == vehicleId)
            }
            .minByOrNull { item ->
                val position = item.component<TransformComponent>()?.position ?: Vector3.ZERO
                val dx = position.x - origin.x
                val dy = position.y - origin.y
                val dz = position.z - origin.z
                dx * dx + dy * dy + dz * dz
            } ?: return
        val doorPosition = door.component<TransformComponent>()?.position ?: return
        val distanceSquared =
            (doorPosition.x - origin.x) * (doorPosition.x - origin.x) +
                (doorPosition.y - origin.y) * (doorPosition.y - origin.y) +
                (doorPosition.z - origin.z) * (doorPosition.z - origin.z)
        if (distanceSquared > 49f) {
            onLog(LogicLogLevel.WARNING, "Aproxime-se da porta.")
            return
        }
        document = document.copy(
            objects = document.objects.map { item ->
                if (item.id != door.id) item else item.copy(
                    components = item.components.map { component ->
                        if (component is TransformComponent) {
                            val part = item.component<VehiclePartComponent>()
                            val closed = part?.closedAngleDegrees ?: 0f
                            val opened = part?.openAngleDegrees ?: -68f
                            val open = kotlin.math.abs(component.rotationEulerDegrees.y - closed) > 10f
                            component.copy(
                                rotationEulerDegrees = component.rotationEulerDegrees.copy(
                                    y = if (open) closed else opened,
                                ),
                            )
                        } else component
                    },
                )
            },
        )
        onChanged(document)
        onLog(LogicLogLevel.INFO, "Porta alternada.")
    }

    fun toggleHandbrake() {
        val vehicleId = activeVehicleId ?: run {
            onLog(LogicLogLevel.WARNING, "Entre no veículo para usar o freio de mão.")
            return
        }
        val current = vehicleInputs[vehicleId] ?: VehicleControlInput()
        val engaged = current.handbrake < 0.5f
        vehicleInputs[vehicleId] = current.copy(handbrake = if (engaged) 1f else 0f)
        onLog(LogicLogLevel.INFO, if (engaged) "Freio de mão acionado." else "Freio de mão liberado.")
    }

    fun jumpCharacters() {
        document.objects.forEach { item ->
            val controller = item.component<CharacterControllerComponent>() ?: return@forEach
            val currentVelocity = verticalVelocity[item.id] ?: 0f
            if (currentVelocity == 0f) verticalVelocity[item.id] = controller.jumpForce
        }
    }

    override fun jump(objectId: String): Boolean {
        val item = document.objects.firstOrNull { it.id == objectId } ?: return false
        val controller = item.component<CharacterControllerComponent>()?.takeIf { it.enabled }
            ?: return false
        val currentVelocity = verticalVelocity[objectId] ?: 0f
        if (currentVelocity == 0f) verticalVelocity[objectId] = controller.jumpForce
        return true
    }

    override fun playAnimation(objectId: String, clip: String, loop: Boolean): Boolean {
        if (clip.isBlank()) return false
        var changed = false
        val updated = document.objects.map { item ->
            if (item.id != objectId) return@map item
            val controller = item.component<AnimationControllerComponent>()?.takeIf { it.enabled }
                ?: return false
            val resolvedClip = controller.availableClips
                .firstOrNull { it.equals(clip, ignoreCase = true) }
                ?: return false
            changed = true
            item.copy(
                components = item.components.map { component ->
                    if (component is AnimationControllerComponent) {
                        component.copy(defaultClip = resolvedClip, loop = loop)
                    } else {
                        component
                    }
                },
            )
        }
        if (!changed) return false
        document = document.copy(objects = updated)
        onChanged(document)
        return true
    }

    override fun vehicleAction(
        objectId: String?,
        operation: String,
        number: Float?,
        text: String?,
    ): Any? {
        val targetId = objectId ?: activeVehicleId
        when (operation) {
            "enter" -> {
                if (activeVehicleId == null) toggleVehicleControl()
                return activeVehicleId != null
            }
            "exit" -> {
                if (activeVehicleId != null) toggleVehicleControl()
                return activeVehicleId == null
            }
            "open_door", "close_door", "toggle_door",
            "open_hood", "close_hood", "open_trunk", "close_trunk",
            -> {
                toggleNearestDoor()
                return true
            }
            "set_throttle", "set_brake", "set_steering", "set_handbrake" -> {
                val id = targetId ?: return null
                val current = vehicleInputs[id] ?: VehicleControlInput()
                val value = number?.coerceIn(-1f, 1f) ?: return null
                vehicleInputs[id] = when (operation) {
                    "set_throttle" -> current.copy(throttle = value)
                    "set_brake" -> current.copy(brake = value.coerceIn(0f, 1f))
                    "set_steering" -> current.copy(steering = value)
                    else -> current.copy(handbrake = value.coerceIn(0f, 1f))
                }
                return true
            }
            "get_throttle" -> return targetId?.let { vehicleInputs[it]?.throttle ?: 0f }
            "get_brake" -> return targetId?.let { vehicleInputs[it]?.brake ?: 0f }
            "get_steering" -> return targetId?.let { vehicleInputs[it]?.steering ?: 0f }
            "get_speed" -> return targetId?.let {
                (vehicleStates[it]?.longitudinalSpeedMetersPerSecond ?: 0f) * 3.6f
            }
            "get_rpm" -> return targetId?.let { vehicleStates[it]?.engineRpm ?: 0f }
            "get_gear" -> return targetId?.let { vehicleStates[it]?.gear ?: 1 }
            "get_suspension_compression" -> return targetId?.let {
                vehicleStates[it]?.suspensionCompression?.average()?.toFloat() ?: 0f
            }
            "reset_upright" -> {
                val id = targetId ?: return null
                return updateTransform(id) { transform ->
                    transform.copy(rotationEulerDegrees = transform.rotationEulerDegrees.copy(x = 0f, z = 0f))
                }
            }
        }
        val value = number ?: return null
        val id = targetId ?: return null
        var changed = false
        document = document.copy(
            objects = document.objects.map { item ->
                if (item.id != id) return@map item
                val vehicle = item.component<VehicleControllerComponent>() ?: return null
                val updated = when (operation) {
                    "set_mass" -> vehicle.copy(massKg = value.coerceIn(100f, 20_000f))
                    "set_engine_power" -> vehicle.copy(enginePowerKw = value.coerceIn(1f, 2_000f))
                    "set_max_torque" -> vehicle.copy(maxTorqueNm = value.coerceIn(1f, 10_000f))
                    "set_redline_rpm" -> vehicle.copy(redlineRpm = value.coerceIn(2_000f, 20_000f))
                    "set_top_speed" -> vehicle.copy(topSpeedKph = value.coerceIn(1f, 600f))
                    "set_tire_grip" -> vehicle.copy(tireGrip = value.coerceIn(0.05f, 5f))
                    "set_lateral_grip" -> vehicle.copy(lateralGrip = value.coerceIn(0.05f, 5f))
                    "set_traction_control" -> vehicle.copy(tractionControl = value.coerceIn(0f, 1f))
                    "set_abs" -> vehicle.copy(antiLockBrakes = value.coerceIn(0f, 1f))
                    "set_stability_assist" -> vehicle.copy(stabilityAssist = value.coerceIn(0f, 1f))
                    "set_steering_angle" -> vehicle.copy(maxSteeringDegrees = value.coerceIn(1f, 70f))
                    "set_steering_response" -> vehicle.copy(steeringResponse = value.coerceIn(0.1f, 30f))
                    "set_wheel_radius" -> vehicle.copy(wheelRadiusMeters = value.coerceIn(0.05f, 2f))
                    "set_suspension_travel" -> vehicle.copy(suspensionTravelMeters = value.coerceIn(0.01f, 1.5f))
                    "set_spring_strength" -> vehicle.copy(suspensionStiffness = value.coerceIn(100f, 250_000f))
                    "set_suspension_damping" -> vehicle.copy(suspensionDamping = value.coerceIn(0f, 50_000f))
                    "set_downforce" -> vehicle.copy(downforceCoefficient = value.coerceIn(0f, 5f))
                    "set_aero_drag" -> vehicle.copy(dragCoefficient = value.coerceIn(0f, 3f))
                    "set_rolling_resistance" -> vehicle.copy(rollingResistance = value.coerceIn(0f, 0.5f))
                    else -> return null
                }
                changed = true
                item.copy(
                    components = item.components.map { component ->
                        if (component is VehicleControllerComponent) updated else component
                    },
                )
            },
        )
        if (changed) onChanged(document)
        return changed
    }

    fun advanceCharacters(deltaSeconds: Float) {
        if (deltaSeconds <= 0f) return
        advanceVehicles(deltaSeconds)
        advanceRigidBodies(deltaSeconds)
        if (verticalVelocity.isEmpty()) return
        var changed = false
        val updated = document.objects.map { item ->
            val controller = item.component<CharacterControllerComponent>() ?: return@map item
            val velocity = verticalVelocity[item.id] ?: return@map item
            val ground = groundedY[item.id] ?: 0f
            item.copy(
                components = item.components.map { component ->
                    if (component !is TransformComponent) component else {
                        val nextVelocity = velocity - controller.gravity * deltaSeconds
                        val nextY = component.position.y + nextVelocity * deltaSeconds
                        changed = true
                        if (nextY <= ground) {
                            verticalVelocity.remove(item.id)
                            component.copy(position = component.position.copy(y = ground))
                        } else {
                            verticalVelocity[item.id] = nextVelocity
                            component.copy(position = component.position.copy(y = nextY))
                        }
                    }
                },
            )
        }
        if (changed) {
            document = document.copy(objects = updated)
            onChanged(document)
        }
    }

    private fun advanceVehicles(deltaSeconds: Float) {
        var changed = false
        val previousTransforms = document.objects.associate { item ->
            item.id to item.component<TransformComponent>()
        }
        val stepped = document.objects.map { item ->
            val vehicle = item.component<VehicleControllerComponent>()?.takeIf { it.enabled }
                ?: return@map item
            val transform = item.component<TransformComponent>() ?: return@map item
            val state = vehicleStates[item.id] ?: VehicleRuntimeState(engineRpm = vehicle.idleRpm)
            val input = vehicleInputs[item.id] ?: VehicleControlInput()
            val result = VehiclePhysics.step(
                vehicle = vehicle,
                state = state,
                input = input,
                transform = transform,
                deltaSeconds = deltaSeconds,
                groundHeight = ::terrainHeightAt,
            )
            val blocked = collidesWithSolid(
                movingObjectId = item.id,
                position = result.position,
                collider = item.component<ColliderComponent>(),
            )
            val resolvedResult = if (blocked) {
                vehicleStates[item.id] = result.state.copy(
                    longitudinalSpeedMetersPerSecond = -result.state.longitudinalSpeedMetersPerSecond * 0.08f,
                    lateralSpeedMetersPerSecond = 0f,
                )
                result.copy(position = transform.position)
            } else {
                vehicleStates[item.id] = result.state
                result
            }
            if (
                resolvedResult.position != transform.position ||
                resolvedResult.rotationEulerDegrees != transform.rotationEulerDegrees
            ) changed = true
            item.copy(
                components = item.components.map { component ->
                    if (component is TransformComponent) {
                        component.copy(
                            position = resolvedResult.position,
                            rotationEulerDegrees = resolvedResult.rotationEulerDegrees,
                        )
                    } else component
                },
            )
        }
        if (!changed) return
        val steppedById = stepped.associateBy(GameObject::id)
        val withParts = stepped.map { item ->
            val part = item.component<VehiclePartComponent>() ?: return@map item
            val vehicleTransform = steppedById[part.vehicleObjectId]?.component<TransformComponent>()
                ?: return@map item
            val previousVehicle = previousTransforms[part.vehicleObjectId] ?: return@map item
            val currentPartTransform = item.component<TransformComponent>() ?: return@map item
            val previousYaw = Math.toRadians(previousVehicle.rotationEulerDegrees.y.toDouble())
            val currentYaw = Math.toRadians(vehicleTransform.rotationEulerDegrees.y.toDouble())
            val local = if (part.localPosition.isFinite()) part.localPosition else {
                Vector3(
                    currentPartTransform.position.x - previousVehicle.position.x,
                    currentPartTransform.position.y - previousVehicle.position.y,
                    currentPartTransform.position.z - previousVehicle.position.z,
                )
            }
            val worldPosition = Vector3(
                x = vehicleTransform.position.x +
                    kotlin.math.cos(currentYaw).toFloat() * local.x +
                    kotlin.math.sin(currentYaw).toFloat() * local.z,
                y = vehicleTransform.position.y + local.y,
                z = vehicleTransform.position.z -
                    kotlin.math.sin(currentYaw).toFloat() * local.x +
                    kotlin.math.cos(currentYaw).toFloat() * local.z,
            )
            val hingeDelta = currentPartTransform.rotationEulerDegrees.y -
                previousVehicle.rotationEulerDegrees.y
            item.copy(
                components = item.components.map { component ->
                    if (component is TransformComponent) component.copy(
                        position = worldPosition,
                        rotationEulerDegrees = component.rotationEulerDegrees.copy(
                            x = vehicleTransform.rotationEulerDegrees.x + part.localRotationEulerDegrees.x,
                            y = vehicleTransform.rotationEulerDegrees.y + hingeDelta,
                            z = vehicleTransform.rotationEulerDegrees.z + part.localRotationEulerDegrees.z,
                        ),
                    ) else component
                },
            )
        }
        document = document.copy(objects = withParts)
        onChanged(document)
    }

    private fun advanceRigidBodies(deltaSeconds: Float) {
        val dt = deltaSeconds.coerceIn(0.001f, 0.05f)
        var changed = false
        val updated = document.objects.map { item ->
            val body = item.component<RigidBodyComponent>()?.takeIf {
                it.enabled && it.bodyType == RigidBodyType.DYNAMIC
            } ?: return@map item
            if (item.component<VehicleControllerComponent>() != null) return@map item
            val transform = item.component<TransformComponent>() ?: return@map item
            val collider = item.component<ColliderComponent>() ?: return@map item
            val current = bodyVelocities[item.id] ?: Vector3.ZERO
            val damping = (1f - body.linearDamping * dt).coerceIn(0f, 1f)
            var velocity = Vector3(
                current.x * damping,
                (current.y - 9.81f * dt) * damping,
                current.z * damping,
            )
            var candidate = Vector3(
                transform.position.x + velocity.x * dt,
                transform.position.y + velocity.y * dt,
                transform.position.z + velocity.z * dt,
            )
            val halfHeight = collider.size.y * transform.scale.y * 0.5f
            val floor = terrainHeightAt(candidate.x, candidate.z) + halfHeight
            if (candidate.y <= floor) {
                candidate = candidate.copy(y = floor)
                velocity = velocity.copy(
                    x = velocity.x * (1f - body.friction * dt).coerceIn(0f, 1f),
                    y = if (kotlin.math.abs(velocity.y) > 1f) {
                        -velocity.y * body.restitution
                    } else 0f,
                    z = velocity.z * (1f - body.friction * dt).coerceIn(0f, 1f),
                )
            }
            if (collidesWithSolid(item.id, candidate, collider)) {
                candidate = transform.position
                velocity = Vector3(
                    -velocity.x * body.restitution,
                    velocity.y.coerceAtLeast(0f),
                    -velocity.z * body.restitution,
                )
            }
            bodyVelocities[item.id] = velocity
            if (candidate == transform.position) return@map item
            changed = true
            item.copy(
                components = item.components.map { component ->
                    if (component is TransformComponent) component.copy(position = candidate) else component
                },
            )
        }
        if (changed) {
            document = document.copy(objects = updated)
            onChanged(document)
        }
    }

    private fun terrainHeightAt(worldX: Float, worldZ: Float): Float {
        val terrainObject = document.objects.firstOrNull {
            it.enabled && it.component<TerrainComponent>()?.enabled == true
        } ?: return 0f
        val terrain = terrainObject.component<TerrainComponent>() ?: return 0f
        val transform = terrainObject.component<TransformComponent>() ?: TransformComponent()
        val localX = ((worldX - transform.position.x) / terrain.width + 0.5f)
            .coerceIn(0f, 1f) * (terrain.resolution - 1)
        val localZ = ((worldZ - transform.position.z) / terrain.width + 0.5f)
            .coerceIn(0f, 1f) * (terrain.resolution - 1)
        val x0 = kotlin.math.floor(localX).toInt()
        val z0 = kotlin.math.floor(localZ).toInt()
        val x1 = (x0 + 1).coerceAtMost(terrain.resolution - 1)
        val z1 = (z0 + 1).coerceAtMost(terrain.resolution - 1)
        val tx = localX - x0
        val tz = localZ - z0
        val h00 = terrain.heightAt(x0, z0)
        val h10 = terrain.heightAt(x1, z0)
        val h01 = terrain.heightAt(x0, z1)
        val h11 = terrain.heightAt(x1, z1)
        val h0 = h00 + (h10 - h00) * tx
        val h1 = h01 + (h11 - h01) * tx
        return transform.position.y + (h0 + (h1 - h0) * tz) * terrain.maxHeight
    }

    private fun resolveCharacterCollision(
        playerId: String,
        candidate: Vector3,
        fallback: Vector3,
    ): Vector3 {
        val player = document.objects.firstOrNull { it.id == playerId }
        val collider = player?.component<ColliderComponent>()
        if (collidesWithSolid(playerId, candidate, collider)) return fallback
        val playerHalfHeight = (collider?.size?.y ?: 1.8f) * 0.5f
        return candidate.copy(y = terrainHeightAt(candidate.x, candidate.z) + playerHalfHeight)
    }

    private fun collidesWithSolid(
        movingObjectId: String,
        position: Vector3,
        collider: ColliderComponent?,
    ): Boolean {
        val movingHalfX = (collider?.size?.x ?: 0.8f) * 0.5f
        val movingHalfZ = (collider?.size?.z ?: 0.8f) * 0.5f
        return document.objects.any { other ->
            if (
                other.id == movingObjectId ||
                !other.enabled ||
                "terrain" in other.tags ||
                other.parentId == movingObjectId ||
                other.component<VehiclePartComponent>()?.vehicleObjectId == movingObjectId
            ) return@any false
            val otherCollider = other.component<ColliderComponent>()
                ?.takeIf { it.enabled && !it.isTrigger } ?: return@any false
            val otherTransform = other.component<TransformComponent>() ?: return@any false
            val halfX = otherCollider.size.x * otherTransform.scale.x * 0.5f
            val halfZ = otherCollider.size.z * otherTransform.scale.z * 0.5f
            val yaw = Math.toRadians(-otherTransform.rotationEulerDegrees.y.toDouble())
            val dx = position.x - otherTransform.position.x
            val dz = position.z - otherTransform.position.z
            val localX = kotlin.math.cos(yaw).toFloat() * dx - kotlin.math.sin(yaw).toFloat() * dz
            val localZ = kotlin.math.sin(yaw).toFloat() * dx + kotlin.math.cos(yaw).toFloat() * dz
            kotlin.math.abs(localX) < halfX + movingHalfX &&
                kotlin.math.abs(localZ) < halfZ + movingHalfZ
        }
    }

    private fun findSafeExitPosition(vehicle: GameObject): Vector3 {
        val transform = vehicle.component<TransformComponent>() ?: return Vector3.ZERO
        val collider = vehicle.component<ColliderComponent>()
        val side = (collider?.size?.x ?: 2f) * 0.5f + 0.9f
        val rear = (collider?.size?.z ?: 4f) * 0.5f + 0.9f
        val yaw = Math.toRadians(transform.rotationEulerDegrees.y.toDouble())
        val candidates = listOf(
            side to 0f,
            -side to 0f,
            0f to -rear,
        ).map { (localX, localZ) ->
            Vector3(
                x = transform.position.x + kotlin.math.cos(yaw).toFloat() * localX +
                    kotlin.math.sin(yaw).toFloat() * localZ,
                y = transform.position.y,
                z = transform.position.z - kotlin.math.sin(yaw).toFloat() * localX +
                    kotlin.math.cos(yaw).toFloat() * localZ,
            )
        }
        val player = document.objects.firstOrNull { "player" in it.tags }
        val playerCollider = player?.component<ColliderComponent>()
        return candidates.firstOrNull {
            !collidesWithSolid(player?.id.orEmpty(), it, playerCollider)
        }?.let {
            it.copy(y = terrainHeightAt(it.x, it.z) + (playerCollider?.size?.y ?: 1.8f) * 0.5f)
        } ?: transform.position.copy(y = transform.position.y + 1f)
    }

    private fun updateTransform(
        objectId: String,
        update: (TransformComponent) -> TransformComponent,
    ): Boolean {
        if (!listOfNotNull(rotation(objectId), scale(objectId)).all(Vector3::isFinite)) return false
        var changed = false
        val updatedObjects = document.objects.map { item ->
            if (item.id != objectId) return@map item
            val components = item.components.map { component ->
                if (component is TransformComponent) {
                    val candidate = update(component)
                    if (
                        !candidate.position.isFinite() ||
                        !candidate.rotationEulerDegrees.isFinite() ||
                        !candidate.scale.isFinite() ||
                        candidate.scale.x <= 0f ||
                        candidate.scale.y <= 0f ||
                        candidate.scale.z <= 0f
                    ) return false
                    changed = true
                    candidate
                } else {
                    component
                }
            }
            item.copy(components = components)
        }
        if (!changed) return false
        document = document.copy(objects = updatedObjects)
        onChanged(document)
        return true
    }

    private companion object {
        const val RUNTIME_CONTROLLED_TAG = "runtime-controlled"
    }
}

private fun String.parsePreviewAxis(): Pair<Float, Float>? {
    val parts = split(':')
    if (parts.size != 3 || !parts[0].endsWith(".axis")) return null
    return (parts[1].toFloatOrNull() ?: return null) to (parts[2].toFloatOrNull() ?: return null)
}

private fun String.parseLookDelta(): Pair<Float, Float>? {
    val parts = split(':')
    if (parts.size != 3 || parts[0] != "look.delta") return null
    val yaw = parts[1].toFloatOrNull() ?: return null
    val pitch = parts[2].toFloatOrNull() ?: return null
    return yaw.coerceIn(-12f, 12f) to pitch.coerceIn(-12f, 12f)
}

private data class ReplaceSceneDocumentCommand(
    val before: SceneDocument,
    val after: SceneDocument,
    val mergeKey: String? = null,
    val createdAtNanos: Long = System.nanoTime(),
) : MergeableSceneCommand {
    override val label: String = "Editar cena"

    override fun apply(document: SceneDocument): SceneEditResult =
        if (document.sameContent(before)) {
            SceneEditResult.Success(after.copy(metadata = document.metadata))
        } else {
            SceneEditResult.Failure("A cena mudou antes da alteração.")
        }

    override fun revert(document: SceneDocument): SceneEditResult =
        if (document.sameContent(after)) {
            SceneEditResult.Success(before.copy(metadata = document.metadata))
        } else {
            SceneEditResult.Failure("A cena mudou antes de desfazer.")
        }

    override fun mergeWith(next: SceneCommand): SceneCommand? {
        val nextCommand = next as? ReplaceSceneDocumentCommand ?: return null
        if (
            mergeKey == null ||
            mergeKey != nextCommand.mergeKey ||
            nextCommand.createdAtNanos - createdAtNanos !in 0..MERGE_WINDOW_NANOS ||
            !after.sameContent(nextCommand.before)
        ) {
            return null
        }
        return copy(after = nextCommand.after, createdAtNanos = nextCommand.createdAtNanos)
    }

    companion object {
        const val MERGE_WINDOW_NANOS = 300_000_000L
    }
}

private fun SceneDocument.sameContent(other: SceneDocument): Boolean =
    copy(metadata = other.metadata) == other
