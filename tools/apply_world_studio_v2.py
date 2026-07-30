from __future__ import annotations

from pathlib import Path
import re

ROOT = Path(__file__).resolve().parents[1]
MARKER = ROOT / ".world-studio-v2-applied"


def read(path: str) -> str:
    return (ROOT / path).read_text(encoding="utf-8")


def write(path: str, text: str) -> None:
    (ROOT / path).write_text(text, encoding="utf-8")


def replace_once(path: str, old: str, new: str) -> None:
    text = read(path)
    count = text.count(old)
    if count != 1:
        raise RuntimeError(f"{path}: expected one match, found {count}: {old[:120]!r}")
    write(path, text.replace(old, new, 1))


def replace_regex(path: str, pattern: str, replacement: str) -> None:
    text = read(path)
    updated, count = re.subn(pattern, replacement, text, count=1, flags=re.MULTILINE | re.DOTALL)
    if count != 1:
        raise RuntimeError(f"{path}: expected one regex match, found {count}: {pattern[:120]!r}")
    write(path, updated)


def patch_terrain_models() -> None:
    path = "core/model/src/main/kotlin/com/mobilegamestudio/core/model/TerrainModels.kt"
    replace_once(
        path,
        "    val targetHeight: Float = 0.5f,\n    val materialLayerId: String? = null,\n)",
        "    val targetHeight: Float = 0.5f,\n"
        "    val materialLayerId: String? = null,\n"
        "    val falloff: TerrainBrushFalloff = TerrainBrushFalloff.SMOOTH,\n"
        ")",
    )
    replace_once(
        path,
        "        val falloff = (1f - distance / radiusCells).let { it * it * (3f - 2f * it) }",
        "        val normalizedInfluence = (1f - distance / radiusCells).coerceIn(0f, 1f)\n"
        "        val falloff = brush.falloff.evaluate(normalizedInfluence)",
    )


def patch_view_model() -> None:
    path = "editor/src/main/kotlin/com/mobilegamestudio/editor/WorkspaceViewModel.kt"
    replace_once(
        path,
        "import com.mobilegamestudio.core.model.TerrainBrush\nimport com.mobilegamestudio.core.model.TerrainBrushMode",
        "import com.mobilegamestudio.core.model.TerrainBrush\n"
        "import com.mobilegamestudio.core.model.TerrainBrushFalloff\n"
        "import com.mobilegamestudio.core.model.TerrainBrushMode",
    )
    replace_once(
        path,
        "import com.mobilegamestudio.core.model.withImportedHeightmap",
        "import com.mobilegamestudio.core.model.withImportedHeightmap\n"
        "import com.mobilegamestudio.core.model.createFlatTerrainComponent",
    )
    replace_once(
        path,
        "    val targetHeight: Float = 0.35f,\n    val materialLayerId: String? = \"dry-soil\",",
        "    val targetHeight: Float = 0.35f,\n"
        "    val materialLayerId: String? = \"dry-soil\",\n"
        "    val falloff: TerrainBrushFalloff = TerrainBrushFalloff.SMOOTH,",
    )
    replace_once(
        path,
        "    private val playEventMutex = Mutex()\n    private val activeBridgeEvents = mutableSetOf<String>()",
        "    private val playEventMutex = Mutex()\n"
        "    private val activeBridgeEvents = mutableSetOf<String>()\n"
        "    private var terrainStrokeBase: SceneDocument? = null\n"
        "    private var terrainStrokeWorking: SceneDocument? = null\n"
        "    private var terrainStrokeObjectId: String? = null",
    )

    new_block = r'''    fun updateTerrainTool(
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

    fun applyTerrainAutoTile() {'''
    replace_regex(
        path,
        r"    fun updateTerrainTool\(\n.*?\n    fun applyTerrainAutoTile\(\) \{",
        new_block,
    )


def patch_runtime_viewport() -> None:
    path = "runtime/src/main/kotlin/com/mobilegamestudio/runtime/RuntimeSceneViewport.kt"
    replace_once(
        path,
        "    transformGesturesEnabled: Boolean = false,\n    onTransformDrag: (Float, Float) -> Unit = { _, _ -> },\n    onDiagnostic: (String) -> Unit,",
        "    transformGesturesEnabled: Boolean = false,\n"
        "    onTransformDrag: (Float, Float) -> Unit = { _, _ -> },\n"
        "    terrainTopDownCamera: Boolean = false,\n"
        "    onDiagnostic: (String) -> Unit,",
    )
    replace_once(
        path,
        "    val playController = playCharacter?.component<CharacterControllerComponent>()",
        "    val terrainCameraObject = document.objects.firstOrNull {\n"
        "        it.id == selectedObjectId && it.component<TerrainComponent>() != null\n"
        "    }\n"
        "    val terrainCameraTransform = terrainCameraObject?.component<TransformComponent>()\n"
        "    val terrainCameraComponent = terrainCameraObject?.component<TerrainComponent>()\n"
        "    val playController = playCharacter?.component<CharacterControllerComponent>()",
    )
    replace_once(
        path,
        "    val editorCameraManipulator = if (firstPersonPlay || controlledVehicle != null) {",
        "    val editorCameraManipulator = if (firstPersonPlay || controlledVehicle != null || terrainTopDownCamera) {",
    )
    replace_once(
        path,
        "    LaunchedEffect(editorCameraManipulator, mode) {\n"
        "        if (mode == EditorMode.EDITOR && editorCameraManipulator != null) {\n"
        "            sceneCameraNode.transform = editorCameraManipulator.getTransform()\n"
        "        }\n"
        "    }",
        "    LaunchedEffect(editorCameraManipulator, mode, terrainTopDownCamera, selectedObjectId) {\n"
        "        if (mode != EditorMode.EDITOR) return@LaunchedEffect\n"
        "        if (terrainTopDownCamera && terrainCameraComponent != null) {\n"
        "            val target = terrainCameraTransform?.position ?: document.editorSettings.cameraTarget\n"
        "            val cameraHeight = maxOf(\n"
        "                terrainCameraComponent.width * 0.82f,\n"
        "                terrainCameraComponent.maxHeight * 2.4f,\n"
        "                18f,\n"
        "            )\n"
        "            sceneCameraNode.transform = lookAt(\n"
        "                eye = Float3(target.x, target.y + cameraHeight, target.z + 0.001f),\n"
        "                target = Float3(\n"
        "                    target.x,\n"
        "                    target.y + terrainCameraComponent.maxHeight * 0.12f,\n"
        "                    target.z,\n"
        "                ),\n"
        "                up = Float3(0f, 0f, -1f),\n"
        "            )\n"
        "        } else if (editorCameraManipulator != null) {\n"
        "            sceneCameraNode.transform = editorCameraManipulator.getTransform()\n"
        "        }\n"
        "    }",
    )


def patch_shell() -> None:
    path = "editor/src/main/kotlin/com/mobilegamestudio/editor/GodotCompactEditorShell.kt"
    replace_once(
        path,
        "    onTerrainProcess: (com.mobilegamestudio.core.model.TerrainProcessMode, Float, Int, Float) -> Unit,\n"
        "    onImportTerrainHeightmap: () -> Unit,\n)",
        "    onTerrainProcess: (com.mobilegamestudio.core.model.TerrainProcessMode, Float, Int, Float) -> Unit,\n"
        "    onImportTerrainHeightmap: () -> Unit,\n"
        "    onTerrainFalloffChange: (com.mobilegamestudio.core.model.TerrainBrushFalloff) -> Unit,\n"
        "    onTerrainStrokeBegin: () -> Unit,\n"
        "    onTerrainStrokePoint: (Float, Float) -> Unit,\n"
        "    onTerrainStrokeEnd: (Boolean) -> Unit,\n"
        "    onCreateFlatTerrain: (Int, Float, Float) -> Unit,\n"
        "    onAssignTerrainTexture: (String, String, Boolean) -> Unit,\n"
        ")",
    )
    replace_once(
        path,
        "            CompactStudioTopBar(\n",
        "            if (openPanel != StudioPopup.WORLD) CompactStudioTopBar(\n",
    )
    replace_once(
        path,
        "            } else {\n                StudioWorkspaceTabs(\n",
        "            } else {\n"
        "                if (openPanel == StudioPopup.WORLD) {\n"
        "                    WorldStudioWorkspace(\n"
        "                        state = state,\n"
        "                        resolveAsset = resolveAsset,\n"
        "                        onExit = { show(null) },\n"
        "                        onUndo = onUndo,\n"
        "                        onRedo = onRedo,\n"
        "                        onSave = onSaveScene,\n"
        "                        onToolSelected = onToolSelected,\n"
        "                        onSelectObject = onSelectObject,\n"
        "                        onViewportObjectSelected = onViewportObjectSelected,\n"
        "                        onToggleVisibility = onToggleVisibility,\n"
        "                        onAddPrimitive = onAddPrimitive,\n"
        "                        onAddSceneObject = onAddSceneObject,\n"
        "                        onAddAsset = onAddAsset,\n"
        "                        onTransformChange = onTransformChange,\n"
        "                        onTransformValueChange = onTransformValueChange,\n"
        "                        onDiagnostic = onReportDiagnostic,\n"
        "                        onTerrainToolChange = onTerrainToolChange,\n"
        "                        onTerrainFalloffChange = onTerrainFalloffChange,\n"
        "                        onTerrainStrokeBegin = onTerrainStrokeBegin,\n"
        "                        onTerrainStrokePoint = onTerrainStrokePoint,\n"
        "                        onTerrainStrokeEnd = onTerrainStrokeEnd,\n"
        "                        onCreateFlatTerrain = onCreateFlatTerrain,\n"
        "                        onAssignTerrainTexture = onAssignTerrainTexture,\n"
        "                        onImportAsset = onImportAsset,\n"
        "                        onImportHeightmap = onImportTerrainHeightmap,\n"
        "                        modifier = Modifier.weight(1f).fillMaxWidth(),\n"
        "                    )\n"
        "                } else {\n"
        "                StudioWorkspaceTabs(\n",
    )
    replace_once(
        path,
        "                    )\n                }\n            }\n        }\n\n        if (!previewActive && openPanel != null) {",
        "                    )\n"
        "                }\n"
        "                }\n"
        "            }\n"
        "        }\n\n"
        "        if (!previewActive && openPanel != null && openPanel != StudioPopup.WORLD) {",
    )


def patch_workspace_screen() -> None:
    path = "editor/src/main/kotlin/com/mobilegamestudio/editor/WorkspaceScreen.kt"
    replace_once(
        path,
        "                onImportTerrainHeightmap = {\n"
        "                    heightmapLauncher.launch(arrayOf(\"image/png\", \"image/jpeg\", \"application/octet-stream\", \"*/*\"))\n"
        "                },\n"
        "            )",
        "                onImportTerrainHeightmap = {\n"
        "                    heightmapLauncher.launch(arrayOf(\"image/png\", \"image/jpeg\", \"application/octet-stream\", \"*/*\"))\n"
        "                },\n"
        "                onTerrainFalloffChange = viewModel::updateTerrainFalloff,\n"
        "                onTerrainStrokeBegin = viewModel::beginTerrainStroke,\n"
        "                onTerrainStrokePoint = viewModel::continueTerrainStroke,\n"
        "                onTerrainStrokeEnd = viewModel::endTerrainStroke,\n"
        "                onCreateFlatTerrain = viewModel::createFlatTerrain,\n"
        "                onAssignTerrainTexture = viewModel::assignTerrainTexture,\n"
        "            )",
    )


def main() -> None:
    if MARKER.exists():
        print("World Studio v2 already applied")
        return
    patch_terrain_models()
    patch_view_model()
    patch_runtime_viewport()
    patch_shell()
    patch_workspace_screen()
    MARKER.write_text("direct world studio v2\n", encoding="utf-8")
    print("Applied direct World Studio v2")


if __name__ == "__main__":
    main()
