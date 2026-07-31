from pathlib import Path


def read(path: str) -> str:
    return Path(path).read_text(encoding="utf-8")


def write(path: str, text: str) -> None:
    Path(path).parent.mkdir(parents=True, exist_ok=True)
    Path(path).write_text(text, encoding="utf-8")


def replace_once(path: str, old: str, new: str, label: str) -> None:
    text = read(path)
    if new in text:
        return
    if old not in text:
        raise RuntimeError(f"{label}: trecho não encontrado em {path}: {old[:180]!r}")
    write(path, text.replace(old, new, 1))


def remove_once(path: str, old: str, label: str) -> None:
    text = read(path)
    if old not in text:
        return
    write(path, text.replace(old, "", 1))


def remove_between(path: str, start: str, end: str, label: str, keep_end: bool = True) -> None:
    text = read(path)
    start_index = text.find(start)
    if start_index < 0:
        return
    end_index = text.find(end, start_index)
    if end_index < 0:
        raise RuntimeError(f"{label}: marcador final não encontrado em {path}")
    replacement = end if keep_end else ""
    write(path, text[:start_index] + replacement + text[end_index + len(end):])


# ---------------------------------------------------------------------------
# 1. Keep the existing free camera. Remove the extra preset button dock.
# ---------------------------------------------------------------------------
scene_path = "editor/src/main/kotlin/com/mobilegamestudio/editor/SceneViewport.kt"
remove_once(scene_path, "import androidx.compose.runtime.mutableIntStateOf\n", "remove camera token import")
remove_once(scene_path, "import com.mobilegamestudio.runtime.EditorCameraPreset\n", "remove camera preset import")
remove_once(
    scene_path,
    '''    var editorCameraPreset by remember(document.sceneId) { mutableStateOf<EditorCameraPreset?>(null) }
    var editorCameraCommandToken by remember(document.sceneId) { mutableIntStateOf(0) }
    fun requestCamera(preset: EditorCameraPreset) {
        editorCameraPreset = preset
        editorCameraCommandToken += 1
    }
''',
    "remove camera preset state",
)
remove_once(
    scene_path,
    '''            editorCameraPreset = editorCameraPreset,
            editorCameraCommandToken = editorCameraCommandToken,
''',
    "remove camera preset runtime parameters",
)
remove_once(
    scene_path,
    '''        if (!state.isPreviewRunning) {
            EditorCameraDock(
                onHome = { requestCamera(EditorCameraPreset.HOME) },
                onTop = { requestCamera(EditorCameraPreset.TOP) },
                onFront = { requestCamera(EditorCameraPreset.FRONT) },
                onRight = { requestCamera(EditorCameraPreset.RIGHT) },
                onFocus = { requestCamera(EditorCameraPreset.FOCUS_SELECTION) },
                focusEnabled = state.selectedObjectId != null,
                modifier = Modifier.align(Alignment.TopEnd).padding(10.dp),
            )
        }

''',
    "remove camera dock invocation",
)
remove_between(
    scene_path,
    "@Composable\nprivate fun EditorCameraDock(",
    "@Composable\nprivate fun ViewportTransformDock(",
    "remove camera dock composable",
    keep_end=True,
)

runtime_path = "runtime/src/main/kotlin/com/mobilegamestudio/runtime/RuntimeSceneViewport.kt"
remove_once(
    runtime_path,
    '''                    onDoubleTap = { _, node ->
                        if (mode == EditorMode.EDITOR) {
                            val transform = document.objects
                                .firstOrNull { it.id == node?.name }
                                ?.component<TransformComponent>()
                            if (transform == null) {
                                persistentEditorManipulator.applyPreset(EditorCameraPreset.HOME, null, 4f)
                            } else {
                                val scale = transform.scale
                                val radius = maxOf(
                                    kotlin.math.abs(scale.x),
                                    kotlin.math.abs(scale.y),
                                    kotlin.math.abs(scale.z),
                                ).coerceAtLeast(0.25f) * 3.4f
                                persistentEditorManipulator.applyPreset(
                                    EditorCameraPreset.FOCUS_SELECTION,
                                    Position(transform.position.x, transform.position.y, transform.position.z),
                                    radius,
                                )
                            }
                            sceneCameraNode.transform = persistentEditorManipulator.getTransform()
                        }
                    },
''',
    "remove double-tap camera override",
)

# ---------------------------------------------------------------------------
# 2. Migrate layers once when the scene loads. Context resolution no longer
#    creates temporary layer systems during every World Studio composition.
# ---------------------------------------------------------------------------
view_model_path = "editor/src/main/kotlin/com/mobilegamestudio/editor/WorkspaceViewModel.kt"
replace_once(
    view_model_path,
    '''                        val scene = (sceneResult as ContentResult.Success).value
                        persistedScene = scene
''',
    '''                        val loadedScene = (sceneResult as ContentResult.Success).value
                        val scene = loadedScene.ensureWorldLayerStructure()
                        persistedScene = scene
''',
    "normalize world layers on project load",
)

# ---------------------------------------------------------------------------
# 3. Do not destroy and recreate the native 3D viewport when Mundo opens.
#    Mundo becomes a dock beside the same viewport/free camera.
# ---------------------------------------------------------------------------
shell_path = "editor/src/main/kotlin/com/mobilegamestudio/editor/GodotCompactEditorShell.kt"
replace_once(
    shell_path,
    '''    val openPanel = openPanelName?.let { savedName ->
        StudioPopup.entries.firstOrNull { it.name == savedName }
    }

    fun show(panel: StudioPopup?) {
''',
    '''    val openPanel = openPanelName?.let { savedName ->
        StudioPopup.entries.firstOrNull { it.name == savedName }
    }
    var worldModeName by rememberSaveable { mutableStateOf(WorldStudioInlineMode.OBJECTS.name) }
    var worldSurfaceEditing by rememberSaveable { mutableStateOf(false) }
    val worldMode = WorldStudioInlineMode.entries.firstOrNull { it.name == worldModeName }
        ?: WorldStudioInlineMode.OBJECTS
    val worldTerrainAuthoring = openPanel == StudioPopup.WORLD &&
        worldSurfaceEditing &&
        state.selectedTerrain != null &&
        worldMode in setOf(WorldStudioInlineMode.TERRAIN, WorldStudioInlineMode.PAINT)

    fun show(panel: StudioPopup?) {
        if (panel != StudioPopup.WORLD) worldSurfaceEditing = false
''',
    "add inline world state",
)
replace_once(
    shell_path,
    "            if (openPanel != StudioPopup.WORLD) CompactStudioTopBar(\n",
    "            CompactStudioTopBar(\n",
    "always keep compact top bar",
)

shell_text = read(shell_path)
world_start = "                if (openPanel == StudioPopup.WORLD) {\n"
normal_start = "                } else {\n                StudioWorkspaceTabs(\n"
if world_start in shell_text:
    start_index = shell_text.index(world_start)
    end_index = shell_text.index(normal_start, start_index)
    shell_text = shell_text[:start_index] + "                StudioWorkspaceTabs(\n" + shell_text[end_index + len(normal_start):]
    tail = '''                    )
                }
                }
            }
        }

        if (!previewActive && openPanel != null && openPanel != StudioPopup.WORLD) {
'''
    replacement_tail = '''                    )
                }
            }
        }

        if (!previewActive && openPanel != null && openPanel != StudioPopup.WORLD) {
'''
    if tail not in shell_text:
        raise RuntimeError("remove detached World workspace: fechamento do bloco não encontrado")
    shell_text = shell_text.replace(tail, replacement_tail, 1)
    write(shell_path, shell_text)

replace_once(
    shell_path,
    '''                    StudioDockRail(
                        panels = listOf(
                            StudioPopup.FILES,
                            StudioPopup.SCENE,
                            StudioPopup.ADD,
                            StudioPopup.ASSETS,
                            StudioPopup.WORLD,
                        ),
                        selected = openPanel,
                        onSelect = ::toggle,
                    )
                    Column(
''',
    '''                    StudioDockRail(
                        panels = listOf(
                            StudioPopup.FILES,
                            StudioPopup.SCENE,
                            StudioPopup.ADD,
                            StudioPopup.ASSETS,
                            StudioPopup.WORLD,
                        ),
                        selected = openPanel,
                        onSelect = ::toggle,
                    )
                    if (openPanel == StudioPopup.WORLD) {
                        WorldStudioV4InlineDock(
                            state = state,
                            mode = worldMode,
                            surfaceEditing = worldSurfaceEditing,
                            onMode = { next ->
                                worldModeName = next.name
                                worldSurfaceEditing = false
                                when (next) {
                                    WorldStudioInlineMode.PAINT ->
                                        onTerrainToolChange(TerrainBrushMode.PAINT, null, null, null, null)
                                    WorldStudioInlineMode.OBJECTS ->
                                        if (state.activeTool == EditorTool.SELECT) onToolSelected(EditorTool.MOVE)
                                    else -> onToolSelected(EditorTool.SELECT)
                                }
                            },
                            onSurfaceEditing = { worldSurfaceEditing = it },
                            onClose = { show(null) },
                            onSelectObject = onSelectObject,
                            onCreateLayer = onCreateWorldLayer,
                            onSelectLayer = onSelectWorldLayer,
                            onRenameLayer = onRenameWorldLayer,
                            onMoveLayer = onMoveWorldLayer,
                            onToggleLayerVisibility = onToggleWorldLayerVisibility,
                            onToggleLayerLock = onToggleWorldLayerLock,
                            onToggleLayerSolo = onToggleWorldLayerSolo,
                            onAssignSelectedToLayer = onAssignSelectedToWorldLayer,
                            onAddPrimitive = onAddPrimitive,
                            onAddSceneObject = onAddSceneObject,
                            onCreateFlatTerrain = onCreateFlatTerrain,
                            onCreatePlayableWorld = onCreatePlayableWorld,
                            onCreateEditableMesh = onCreateEditableMesh,
                            onConvertSelectedToEditableMesh = onConvertSelectedToEditableMesh,
                            onCreateVoxelVolume = onCreateVoxelVolume,
                            onConvertMeshToVoxel = onConvertMeshToVoxel,
                            onImportAsset = onImportAsset,
                            onDiagnostic = onReportDiagnostic,
                        )
                    }
                    Column(
''',
    "insert inline world dock",
)
replace_once(
    shell_path,
    '''                        CompactViewportTools(state.activeTool, onToolSelected)
                        SceneViewport(
''',
    '''                        if (openPanel == StudioPopup.WORLD) {
                            WorldStudioV4InlineToolbar(
                                mode = worldMode,
                                surfaceEditing = worldSurfaceEditing,
                                activeTool = state.activeTool,
                                onMode = { next ->
                                    worldModeName = next.name
                                    worldSurfaceEditing = false
                                    when (next) {
                                        WorldStudioInlineMode.PAINT ->
                                            onTerrainToolChange(TerrainBrushMode.PAINT, null, null, null, null)
                                        WorldStudioInlineMode.OBJECTS ->
                                            if (state.activeTool == EditorTool.SELECT) onToolSelected(EditorTool.MOVE)
                                        else -> onToolSelected(EditorTool.SELECT)
                                    }
                                },
                                onSurfaceEditing = { worldSurfaceEditing = it },
                                onToolSelected = onToolSelected,
                            )
                        } else {
                            CompactViewportTools(state.activeTool, onToolSelected)
                        }
                        SceneViewport(
''',
    "world inline viewport toolbar",
)
replace_once(
    shell_path,
    '''                            onObjectSelected = { id ->
                                onViewportObjectSelected(id)
                                if (id != null) show(StudioPopup.INSPECTOR)
                            },
                            onTransformDrag = onTransformDrag,
                            onTransformChange = onTransformChange,
                            onDiagnostic = onReportDiagnostic,
                            onPreviewAction = onPreviewAction,
                            modifier = Modifier
''',
    '''                            onObjectSelected = { id ->
                                if (!worldTerrainAuthoring) {
                                    onViewportObjectSelected(id)
                                    if (id != null && openPanel != StudioPopup.WORLD) show(StudioPopup.INSPECTOR)
                                }
                            },
                            onTransformDrag = onTransformDrag,
                            onTransformChange = onTransformChange,
                            onDiagnostic = onReportDiagnostic,
                            onPreviewAction = onPreviewAction,
                            terrainAuthoringEnabled = worldTerrainAuthoring,
                            terrainTopDownCamera = false,
                            terrainBrushRadius = state.terrainTool.radius,
                            onTerrainStrokeBegin = onTerrainStrokeBegin,
                            onTerrainStrokePoint = onTerrainStrokePoint,
                            onTerrainStrokeEnd = onTerrainStrokeEnd,
                            modifier = Modifier
''',
    "connect terrain authoring to persistent viewport",
)

# ---------------------------------------------------------------------------
# 4. Inline World Studio dock. This panel never owns a second SceneView.
# ---------------------------------------------------------------------------
inline_path = "editor/src/main/kotlin/com/mobilegamestudio/editor/WorldStudioV4InlineDock.kt"
inline_source = r'''package com.mobilegamestudio.editor

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.mobilegamestudio.core.model.PrimitiveMesh
import com.mobilegamestudio.core.model.WorldLayerKind

internal enum class WorldStudioInlineMode {
    OBJECTS,
    TERRAIN,
    PAINT,
    MESH,
    VOLUME,
}

private enum class WorldStudioInlineTab {
    STRUCTURE,
    CREATE,
    AUTHOR,
    ASSETS,
}

private val InlinePanel = Color(0xFF13161B)
private val InlineRaised = Color(0xFF1D2229)
private val InlineBorder = Color(0xFF303741)
private val InlineText = Color(0xFFF0F2F6)
private val InlineMuted = Color(0xFF9AA2AE)
private val InlineAccent = Color(0xFF9B72E4)
private val InlineAccentSoft = Color(0xFF2D2341)

@Composable
internal fun WorldStudioV4InlineDock(
    state: WorkspaceUiState,
    mode: WorldStudioInlineMode,
    surfaceEditing: Boolean,
    onMode: (WorldStudioInlineMode) -> Unit,
    onSurfaceEditing: (Boolean) -> Unit,
    onClose: () -> Unit,
    onSelectObject: (String) -> Unit,
    onCreateLayer: (String, WorldLayerKind) -> Unit,
    onSelectLayer: (String) -> Unit,
    onRenameLayer: (String, String) -> Unit,
    onMoveLayer: (String, Int) -> Unit,
    onToggleLayerVisibility: (String) -> Unit,
    onToggleLayerLock: (String) -> Unit,
    onToggleLayerSolo: (String) -> Unit,
    onAssignSelectedToLayer: (String) -> Unit,
    onAddPrimitive: (PrimitiveMesh) -> Unit,
    onAddSceneObject: (EditorObjectType) -> Unit,
    onCreateFlatTerrain: (Int, Float, Float) -> Unit,
    onCreatePlayableWorld: () -> Unit,
    onCreateEditableMesh: (PrimitiveMesh) -> Unit,
    onConvertSelectedToEditableMesh: () -> Unit,
    onCreateVoxelVolume: (Int, Boolean) -> Unit,
    onConvertMeshToVoxel: (Int) -> Unit,
    onImportAsset: () -> Unit,
    onDiagnostic: (String) -> Unit,
) {
    var tabName by rememberSaveable { mutableStateOf(WorldStudioInlineTab.STRUCTURE.name) }
    val tab = WorldStudioInlineTab.entries.firstOrNull { it.name == tabName }
        ?: WorldStudioInlineTab.STRUCTURE

    Column(
        modifier = Modifier
            .width(286.dp)
            .fillMaxHeight()
            .background(InlinePanel)
            .border(1.dp, InlineBorder),
    ) {
        Row(
            Modifier.fillMaxWidth().height(48.dp).padding(horizontal = 8.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            Column(Modifier.weight(1f)) {
                Text("MUNDO", color = InlineText, fontSize = 11.sp, fontWeight = FontWeight.Bold)
                Text("Um painel, o mesmo viewport e a mesma free cam", color = InlineMuted, fontSize = 6.5.sp)
            }
            TextButton(onClick = onClose, shape = RoundedCornerShape(11.dp)) {
                Text("×", color = InlineMuted, fontSize = 16.sp)
            }
        }

        Row(
            Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()).padding(horizontal = 7.dp, vertical = 4.dp),
            horizontalArrangement = Arrangement.spacedBy(4.dp),
        ) {
            inlineTabChip("Estrutura", tab == WorldStudioInlineTab.STRUCTURE) { tabName = WorldStudioInlineTab.STRUCTURE.name }
            inlineTabChip("Criar", tab == WorldStudioInlineTab.CREATE) { tabName = WorldStudioInlineTab.CREATE.name }
            inlineTabChip("Autor", tab == WorldStudioInlineTab.AUTHOR) { tabName = WorldStudioInlineTab.AUTHOR.name }
            inlineTabChip("Assets", tab == WorldStudioInlineTab.ASSETS) { tabName = WorldStudioInlineTab.ASSETS.name }
        }

        Box(Modifier.weight(1f).fillMaxWidth()) {
            when (tab) {
                WorldStudioInlineTab.STRUCTURE -> WorldStudioV4StructurePanel(
                    state = state,
                    onSelectObject = onSelectObject,
                    onSelectLayer = onSelectLayer,
                    onCreateLayer = onCreateLayer,
                    onRenameLayer = onRenameLayer,
                    onMoveLayer = onMoveLayer,
                    onToggleLayerVisibility = onToggleLayerVisibility,
                    onToggleLayerLock = onToggleLayerLock,
                    onToggleLayerSolo = onToggleLayerSolo,
                    onAssignSelectedToLayer = onAssignSelectedToLayer,
                )
                WorldStudioInlineTab.CREATE -> InlineCreatePanel(
                    onAddPrimitive = onAddPrimitive,
                    onAddSceneObject = onAddSceneObject,
                    onCreateFlatTerrain = onCreateFlatTerrain,
                    onCreateEditableMesh = onCreateEditableMesh,
                    onCreateVoxelVolume = onCreateVoxelVolume,
                )
                WorldStudioInlineTab.AUTHOR -> WorldStudioV4AuthorPanel(
                    state = state,
                    onCreateFlatTerrain = onCreateFlatTerrain,
                    onCreateEditableMesh = onCreateEditableMesh,
                    onCreateVoxelVolume = onCreateVoxelVolume,
                    onCreatePlayableWorld = onCreatePlayableWorld,
                    onConvertSelectedToEditableMesh = onConvertSelectedToEditableMesh,
                    onConvertMeshToVoxel = onConvertMeshToVoxel,
                    onRequestedMode = { requested ->
                        when (requested) {
                            WorldStudioV4RequestedMode.OBJECTS -> onMode(WorldStudioInlineMode.OBJECTS)
                            WorldStudioV4RequestedMode.TERRAIN -> {
                                onMode(WorldStudioInlineMode.TERRAIN)
                                onSurfaceEditing(true)
                            }
                            WorldStudioV4RequestedMode.PAINT -> {
                                onMode(WorldStudioInlineMode.PAINT)
                                onSurfaceEditing(true)
                            }
                            WorldStudioV4RequestedMode.MESH -> onMode(WorldStudioInlineMode.MESH)
                            WorldStudioV4RequestedMode.VOLUME -> onMode(WorldStudioInlineMode.VOLUME)
                        }
                    },
                    onOpenStructure = { tabName = WorldStudioInlineTab.STRUCTURE.name },
                    onDiagnostic = onDiagnostic,
                )
                WorldStudioInlineTab.ASSETS -> InlineAssetsPanel(state, onImportAsset)
            }
        }
    }
}

@Composable
internal fun WorldStudioV4InlineToolbar(
    mode: WorldStudioInlineMode,
    surfaceEditing: Boolean,
    activeTool: EditorTool,
    onMode: (WorldStudioInlineMode) -> Unit,
    onSurfaceEditing: (Boolean) -> Unit,
    onToolSelected: (EditorTool) -> Unit,
) {
    Row(
        Modifier.fillMaxWidth().height(48.dp).background(InlinePanel).border(1.dp, InlineBorder)
            .horizontalScroll(rememberScrollState()).padding(horizontal = 8.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(5.dp),
    ) {
        inlineModeChip("Objetos", mode == WorldStudioInlineMode.OBJECTS) { onMode(WorldStudioInlineMode.OBJECTS) }
        inlineModeChip("Terreno", mode == WorldStudioInlineMode.TERRAIN) { onMode(WorldStudioInlineMode.TERRAIN) }
        inlineModeChip("Textura", mode == WorldStudioInlineMode.PAINT) { onMode(WorldStudioInlineMode.PAINT) }
        inlineModeChip("Malha", mode == WorldStudioInlineMode.MESH) { onMode(WorldStudioInlineMode.MESH) }
        inlineModeChip("Volume", mode == WorldStudioInlineMode.VOLUME) { onMode(WorldStudioInlineMode.VOLUME) }
        Spacer(Modifier.width(6.dp))
        if (mode in setOf(WorldStudioInlineMode.TERRAIN, WorldStudioInlineMode.PAINT)) {
            inlineModeChip("Navegar", !surfaceEditing) { onSurfaceEditing(false) }
            inlineModeChip(if (mode == WorldStudioInlineMode.PAINT) "Pintar" else "Esculpir", surfaceEditing) {
                onSurfaceEditing(true)
            }
        } else if (mode == WorldStudioInlineMode.OBJECTS || mode == WorldStudioInlineMode.MESH) {
            EditorTool.entries.forEach { tool ->
                inlineModeChip(tool.label, activeTool == tool) { onToolSelected(tool) }
            }
        }
    }
}

@Composable
private fun InlineCreatePanel(
    onAddPrimitive: (PrimitiveMesh) -> Unit,
    onAddSceneObject: (EditorObjectType) -> Unit,
    onCreateFlatTerrain: (Int, Float, Float) -> Unit,
    onCreateEditableMesh: (PrimitiveMesh) -> Unit,
    onCreateVoxelVolume: (Int, Boolean) -> Unit,
) {
    LazyColumn(
        Modifier.fillMaxSize().padding(9.dp),
        verticalArrangement = Arrangement.spacedBy(7.dp),
    ) {
        item { inlineHeading("GEOMETRIA", "Crie a fonte; a seleção define as próximas ações.") }
        item { inlineAction("Cubo primitivo", "Objeto simples na camada Geometria") { onAddPrimitive(PrimitiveMesh.CUBE) } }
        item { inlineAction("Plano primitivo", "Base simples na camada Geometria") { onAddPrimitive(PrimitiveMesh.PLANE) } }
        item { inlineAction("Terreno", "Superfície editável 65²") { onCreateFlatTerrain(65, 96f, 20f) } }
        item { inlineAction("Malha editável", "Cubo com topologia editável") { onCreateEditableMesh(PrimitiveMesh.CUBE) } }
        item { inlineAction("Volume vazio", "Campo voxel 24³") { onCreateVoxelVolume(24, false) } }
        item { inlineHeading("CENA", "Objetos técnicos separados da geometria.") }
        item { inlineAction("Jogador", "CharacterController e transformação") { onAddSceneObject(EditorObjectType.PLAYER) } }
        item { inlineAction("Câmera", "Câmera da cena, não a free cam do editor") { onAddSceneObject(EditorObjectType.CAMERA) } }
        item { inlineAction("Luz direcional", "Iluminação e sombras") { onAddSceneObject(EditorObjectType.LIGHT) } }
    }
}

@Composable
private fun InlineAssetsPanel(state: WorkspaceUiState, onImportAsset: () -> Unit) {
    Column(Modifier.fillMaxSize().padding(9.dp), verticalArrangement = Arrangement.spacedBy(7.dp)) {
        inlineHeading("ASSETS", "Importe primeiro; a seleção define onde o asset pode ser usado.")
        inlineAction("Importar recurso", "GLB, PNG, JPG ou WebP", onImportAsset)
        Text("${state.assets.size} recursos", color = InlineMuted, fontSize = 7.sp)
        LazyColumn(Modifier.fillMaxSize(), verticalArrangement = Arrangement.spacedBy(5.dp)) {
            items(state.assets.take(40), key = { it.id }) { asset ->
                Row(
                    Modifier.fillMaxWidth().background(InlineRaised, RoundedCornerShape(11.dp)).padding(8.dp),
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Text("▧", color = InlineAccent, fontSize = 10.sp)
                    Column(Modifier.weight(1f).padding(start = 7.dp)) {
                        Text(asset.displayName, color = InlineText, fontSize = 7.5.sp, maxLines = 1, overflow = TextOverflow.Ellipsis)
                        Text(asset.mediaType, color = InlineMuted, fontSize = 6.sp, maxLines = 1)
                    }
                }
            }
        }
    }
}

@Composable
private fun inlineHeading(title: String, subtitle: String) {
    Column(Modifier.fillMaxWidth().padding(vertical = 4.dp)) {
        Text(title, color = InlineMuted, fontSize = 7.sp, fontWeight = FontWeight.Bold, letterSpacing = 0.7.sp)
        Text(subtitle, color = InlineMuted, fontSize = 6.5.sp)
    }
}

@Composable
private fun inlineAction(title: String, subtitle: String, onClick: () -> Unit) {
    TextButton(
        onClick = onClick,
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(13.dp),
        colors = ButtonDefaults.textButtonColors(containerColor = InlineRaised, contentColor = InlineText),
    ) {
        Column(Modifier.fillMaxWidth(), horizontalAlignment = Alignment.Start) {
            Text(title, fontSize = 8.sp, fontWeight = FontWeight.SemiBold)
            Text(subtitle, color = InlineMuted, fontSize = 6.5.sp)
        }
    }
}

@Composable
private fun inlineTabChip(label: String, active: Boolean, onClick: () -> Unit) {
    TextButton(
        onClick = onClick,
        shape = RoundedCornerShape(11.dp),
        colors = ButtonDefaults.textButtonColors(
            containerColor = if (active) InlineAccentSoft else InlineRaised,
            contentColor = if (active) InlineAccent else InlineMuted,
        ),
    ) { Text(label, fontSize = 7.sp, fontWeight = FontWeight.Bold) }
}

@Composable
private fun inlineModeChip(label: String, active: Boolean, onClick: () -> Unit) {
    TextButton(
        onClick = onClick,
        shape = RoundedCornerShape(12.dp),
        colors = ButtonDefaults.textButtonColors(
            containerColor = if (active) InlineAccentSoft else Color.Transparent,
            contentColor = if (active) InlineAccent else InlineMuted,
        ),
    ) { Text(label, fontSize = 7.sp, fontWeight = if (active) FontWeight.Bold else FontWeight.Normal) }
}
'''
write(inline_path, inline_source)

print("Applied World Studio V4 validation round 2")
