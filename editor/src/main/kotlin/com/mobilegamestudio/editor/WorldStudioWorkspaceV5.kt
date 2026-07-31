package com.mobilegamestudio.editor

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Slider
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.mobilegamestudio.core.model.PrimitiveMesh
import com.mobilegamestudio.core.model.TerrainBrushFalloff
import com.mobilegamestudio.core.model.TerrainBrushMode
import com.mobilegamestudio.core.model.WORLD_LAYER_SYSTEM_TAG
import com.mobilegamestudio.core.model.WorldActionDescriptor
import com.mobilegamestudio.core.model.WorldActionId
import com.mobilegamestudio.core.model.WorldLayer
import com.mobilegamestudio.core.model.WorldLayerKind
import com.mobilegamestudio.core.model.displayName
import com.mobilegamestudio.core.model.resolveWorldAuthoringContext
import com.mobilegamestudio.core.model.worldLayerMembership
import com.mobilegamestudio.core.model.worldLayerSet
import com.mobilegamestudio.core.model.worldLayers
import java.io.File

private val WorldV5Background = Color(0xFF0D0F13)
private val WorldV5Panel = Color(0xFF14171C)
private val WorldV5Raised = Color(0xFF1B1F26)
private val WorldV5RaisedStrong = Color(0xFF222730)
private val WorldV5Border = Color(0xFF303741)
private val WorldV5Text = Color(0xFFF1F3F7)
private val WorldV5Muted = Color(0xFF9CA4B0)
private val WorldV5Accent = Color(0xFFA77BE8)
private val WorldV5AccentSoft = Color(0xFF302441)
private val WorldV5Positive = Color(0xFF72D1A1)
private val WorldV5Warning = Color(0xFFE9BE68)
private val WorldV5Danger = Color(0xFFE37A80)

private enum class WorldV5Mode {
    OBJECTS,
    TERRAIN,
    PAINT,
    MESH,
    VOLUME,
}

private enum class WorldV5Panel {
    NONE,
    SCENE,
    CREATE,
    AUTHOR,
    ASSETS,
    TOOLS,
}

private enum class WorldV5SceneTab {
    LAYERS,
    OBJECTS,
}

/**
 * Dedicated World Studio workspace.
 *
 * The viewport is always the main region. Panels are secondary, scrollable and
 * dismissible. On compact landscape devices they float above the viewport so
 * editing never becomes a narrow strip between fixed columns.
 */
@Composable
internal fun WorldStudioWorkspaceV5(
    state: WorkspaceUiState,
    resolveAsset: (String) -> File?,
    onExit: () -> Unit,
    onUndo: () -> Unit,
    onRedo: () -> Unit,
    onSave: () -> Unit,
    onPlay: () -> Unit,
    onToolSelected: (EditorTool) -> Unit,
    onSelectObject: (String) -> Unit,
    onViewportObjectSelected: (String?) -> Unit,
    onTransformDrag: (Float, Float) -> Unit,
    onTransformChange: (TransformProperty, TransformAxis, Float) -> Unit,
    onDiagnostic: (String) -> Unit,
    onTerrainToolChange: (TerrainBrushMode?, Float?, Float?, Float?, String?) -> Unit,
    onTerrainFalloffChange: (TerrainBrushFalloff) -> Unit,
    onTerrainStrokeBegin: () -> Unit,
    onTerrainStrokePoint: (Float, Float) -> Unit,
    onTerrainStrokeEnd: (Boolean) -> Unit,
    onCreateFlatTerrain: (Int, Float, Float) -> Unit,
    onCreatePlayableWorld: () -> Unit,
    onCreateWorldLayer: (String, WorldLayerKind) -> Unit,
    onSelectWorldLayer: (String) -> Unit,
    onRenameWorldLayer: (String, String) -> Unit,
    onMoveWorldLayer: (String, Int) -> Unit,
    onToggleWorldLayerVisibility: (String) -> Unit,
    onToggleWorldLayerLock: (String) -> Unit,
    onToggleWorldLayerSolo: (String) -> Unit,
    onAssignSelectedToWorldLayer: (String) -> Unit,
    onAddPrimitive: (PrimitiveMesh) -> Unit,
    onAddSceneObject: (EditorObjectType) -> Unit,
    onCreateEditableMesh: (PrimitiveMesh) -> Unit,
    onConvertSelectedToEditableMesh: () -> Unit,
    onCreateVoxelVolume: (Int, Boolean) -> Unit,
    onConvertMeshToVoxel: (Int) -> Unit,
    onImportAsset: () -> Unit,
    onPreviewAction: (String) -> Unit,
) {
    var modeName by rememberSaveable { mutableStateOf(WorldV5Mode.OBJECTS.name) }
    var leftPanelName by rememberSaveable { mutableStateOf(WorldV5Panel.NONE.name) }
    var rightPanelName by rememberSaveable { mutableStateOf(WorldV5Panel.NONE.name) }
    var surfaceEditing by rememberSaveable { mutableStateOf(false) }

    val mode = WorldV5Mode.entries.firstOrNull { it.name == modeName } ?: WorldV5Mode.OBJECTS
    val leftPanel = WorldV5Panel.entries.firstOrNull { it.name == leftPanelName } ?: WorldV5Panel.NONE
    val rightPanel = WorldV5Panel.entries.firstOrNull { it.name == rightPanelName } ?: WorldV5Panel.NONE
    val terrainAuthoring = surfaceEditing &&
        state.selectedTerrain != null &&
        mode in setOf(WorldV5Mode.TERRAIN, WorldV5Mode.PAINT)

    fun openLeft(panel: WorldV5Panel) {
        leftPanelName = if (leftPanel == panel) WorldV5Panel.NONE.name else panel.name
        if (panel != WorldV5Panel.NONE) rightPanelName = WorldV5Panel.NONE.name
    }

    fun openRight(panel: WorldV5Panel) {
        rightPanelName = if (rightPanel == panel) WorldV5Panel.NONE.name else panel.name
        if (panel != WorldV5Panel.NONE) leftPanelName = WorldV5Panel.NONE.name
    }

    fun selectMode(next: WorldV5Mode) {
        modeName = next.name
        surfaceEditing = false
        when (next) {
            WorldV5Mode.OBJECTS -> if (state.activeTool == EditorTool.SELECT) onToolSelected(EditorTool.MOVE)
            WorldV5Mode.PAINT -> {
                onToolSelected(EditorTool.SELECT)
                onTerrainToolChange(TerrainBrushMode.PAINT, null, null, null, null)
            }
            WorldV5Mode.TERRAIN -> {
                onToolSelected(EditorTool.SELECT)
                if (state.terrainTool.mode == TerrainBrushMode.PAINT) {
                    val raise = TerrainBrushMode.entries.firstOrNull { it.name == "RAISE" }
                    onTerrainToolChange(raise, null, null, null, null)
                }
            }
            WorldV5Mode.MESH, WorldV5Mode.VOLUME -> onToolSelected(EditorTool.SELECT)
        }
    }

    BoxWithConstraints(
        modifier = Modifier.fillMaxSize().background(WorldV5Background),
    ) {
        val compact = maxWidth < 960.dp
        val panelWidth = if (compact) minOf(maxWidth * 0.78f, 360.dp) else 292.dp

        Column(Modifier.fillMaxSize()) {
            WorldV5Header(
                state = state,
                compact = compact,
                onExit = onExit,
                onUndo = onUndo,
                onRedo = onRedo,
                onSave = onSave,
                onPlay = onPlay,
            )
            WorldV5ModeBar(
                mode = mode,
                leftPanel = leftPanel,
                rightPanel = rightPanel,
                onMode = ::selectMode,
                onScene = { openLeft(WorldV5Panel.SCENE) },
                onCreate = { openLeft(WorldV5Panel.CREATE) },
                onAuthor = { openRight(WorldV5Panel.AUTHOR) },
                onTools = { openRight(WorldV5Panel.TOOLS) },
                onAssets = { openLeft(WorldV5Panel.ASSETS) },
            )

            Box(Modifier.weight(1f).fillMaxWidth()) {
                Row(Modifier.fillMaxSize()) {
                    if (!compact && leftPanel != WorldV5Panel.NONE) {
                        WorldV5PanelHost(
                            panel = leftPanel,
                            width = panelWidth,
                            state = state,
                            mode = mode,
                            surfaceEditing = surfaceEditing,
                            onClose = { leftPanelName = WorldV5Panel.NONE.name },
                            onSelectObject = onSelectObject,
                            onCreateWorldLayer = onCreateWorldLayer,
                            onSelectWorldLayer = onSelectWorldLayer,
                            onRenameWorldLayer = onRenameWorldLayer,
                            onMoveWorldLayer = onMoveWorldLayer,
                            onToggleWorldLayerVisibility = onToggleWorldLayerVisibility,
                            onToggleWorldLayerLock = onToggleWorldLayerLock,
                            onToggleWorldLayerSolo = onToggleWorldLayerSolo,
                            onAssignSelectedToWorldLayer = onAssignSelectedToWorldLayer,
                            onAddPrimitive = onAddPrimitive,
                            onAddSceneObject = onAddSceneObject,
                            onCreateFlatTerrain = onCreateFlatTerrain,
                            onCreateEditableMesh = onCreateEditableMesh,
                            onCreateVoxelVolume = onCreateVoxelVolume,
                            onCreatePlayableWorld = onCreatePlayableWorld,
                            onConvertSelectedToEditableMesh = onConvertSelectedToEditableMesh,
                            onConvertMeshToVoxel = onConvertMeshToVoxel,
                            onMode = ::selectMode,
                            onSurfaceEditing = { surfaceEditing = it },
                            onImportAsset = onImportAsset,
                            onDiagnostic = onDiagnostic,
                            onToolSelected = onToolSelected,
                            onTerrainToolChange = onTerrainToolChange,
                            onTerrainFalloffChange = onTerrainFalloffChange,
                        )
                    }

                    Column(Modifier.weight(1f).fillMaxHeight()) {
                        WorldV5ContextBar(state = state, mode = mode)
                        SceneViewport(
                            state = state,
                            resolveAsset = resolveAsset,
                            onObjectSelected = { id ->
                                if (!terrainAuthoring) onViewportObjectSelected(id)
                            },
                            onTransformDrag = onTransformDrag,
                            onTransformChange = onTransformChange,
                            onDiagnostic = onDiagnostic,
                            onPreviewAction = onPreviewAction,
                            terrainAuthoringEnabled = terrainAuthoring,
                            terrainTopDownCamera = false,
                            terrainBrushRadius = state.terrainTool.radius,
                            onTerrainStrokeBegin = onTerrainStrokeBegin,
                            onTerrainStrokePoint = onTerrainStrokePoint,
                            onTerrainStrokeEnd = onTerrainStrokeEnd,
                            modifier = Modifier
                                .weight(1f)
                                .fillMaxWidth()
                                .padding(horizontal = 8.dp, vertical = 7.dp)
                                .clip(RoundedCornerShape(18.dp))
                                .background(Color.Black)
                                .border(1.dp, WorldV5Border, RoundedCornerShape(18.dp)),
                        )
                        WorldV5StatusBar(
                            state = state,
                            mode = mode,
                            surfaceEditing = surfaceEditing,
                        )
                    }

                    if (!compact && rightPanel != WorldV5Panel.NONE) {
                        WorldV5PanelHost(
                            panel = rightPanel,
                            width = panelWidth,
                            state = state,
                            mode = mode,
                            surfaceEditing = surfaceEditing,
                            onClose = { rightPanelName = WorldV5Panel.NONE.name },
                            onSelectObject = onSelectObject,
                            onCreateWorldLayer = onCreateWorldLayer,
                            onSelectWorldLayer = onSelectWorldLayer,
                            onRenameWorldLayer = onRenameWorldLayer,
                            onMoveWorldLayer = onMoveWorldLayer,
                            onToggleWorldLayerVisibility = onToggleWorldLayerVisibility,
                            onToggleWorldLayerLock = onToggleWorldLayerLock,
                            onToggleWorldLayerSolo = onToggleWorldLayerSolo,
                            onAssignSelectedToWorldLayer = onAssignSelectedToWorldLayer,
                            onAddPrimitive = onAddPrimitive,
                            onAddSceneObject = onAddSceneObject,
                            onCreateFlatTerrain = onCreateFlatTerrain,
                            onCreateEditableMesh = onCreateEditableMesh,
                            onCreateVoxelVolume = onCreateVoxelVolume,
                            onCreatePlayableWorld = onCreatePlayableWorld,
                            onConvertSelectedToEditableMesh = onConvertSelectedToEditableMesh,
                            onConvertMeshToVoxel = onConvertMeshToVoxel,
                            onMode = ::selectMode,
                            onSurfaceEditing = { surfaceEditing = it },
                            onImportAsset = onImportAsset,
                            onDiagnostic = onDiagnostic,
                            onToolSelected = onToolSelected,
                            onTerrainToolChange = onTerrainToolChange,
                            onTerrainFalloffChange = onTerrainFalloffChange,
                        )
                    }
                }

                if (compact && leftPanel != WorldV5Panel.NONE) {
                    Box(
                        Modifier.fillMaxSize().background(Color(0x66000000)).clickable {
                            leftPanelName = WorldV5Panel.NONE.name
                        },
                    )
                    WorldV5PanelHost(
                        panel = leftPanel,
                        width = panelWidth,
                        state = state,
                        mode = mode,
                        surfaceEditing = surfaceEditing,
                        onClose = { leftPanelName = WorldV5Panel.NONE.name },
                        onSelectObject = onSelectObject,
                        onCreateWorldLayer = onCreateWorldLayer,
                        onSelectWorldLayer = onSelectWorldLayer,
                        onRenameWorldLayer = onRenameWorldLayer,
                        onMoveWorldLayer = onMoveWorldLayer,
                        onToggleWorldLayerVisibility = onToggleWorldLayerVisibility,
                        onToggleWorldLayerLock = onToggleWorldLayerLock,
                        onToggleWorldLayerSolo = onToggleWorldLayerSolo,
                        onAssignSelectedToWorldLayer = onAssignSelectedToWorldLayer,
                        onAddPrimitive = onAddPrimitive,
                        onAddSceneObject = onAddSceneObject,
                        onCreateFlatTerrain = onCreateFlatTerrain,
                        onCreateEditableMesh = onCreateEditableMesh,
                        onCreateVoxelVolume = onCreateVoxelVolume,
                        onCreatePlayableWorld = onCreatePlayableWorld,
                        onConvertSelectedToEditableMesh = onConvertSelectedToEditableMesh,
                        onConvertMeshToVoxel = onConvertMeshToVoxel,
                        onMode = ::selectMode,
                        onSurfaceEditing = { surfaceEditing = it },
                        onImportAsset = onImportAsset,
                        onDiagnostic = onDiagnostic,
                        onToolSelected = onToolSelected,
                        onTerrainToolChange = onTerrainToolChange,
                        onTerrainFalloffChange = onTerrainFalloffChange,
                        modifier = Modifier.align(Alignment.CenterStart),
                    )
                }

                if (compact && rightPanel != WorldV5Panel.NONE) {
                    Box(
                        Modifier.fillMaxSize().background(Color(0x66000000)).clickable {
                            rightPanelName = WorldV5Panel.NONE.name
                        },
                    )
                    WorldV5PanelHost(
                        panel = rightPanel,
                        width = panelWidth,
                        state = state,
                        mode = mode,
                        surfaceEditing = surfaceEditing,
                        onClose = { rightPanelName = WorldV5Panel.NONE.name },
                        onSelectObject = onSelectObject,
                        onCreateWorldLayer = onCreateWorldLayer,
                        onSelectWorldLayer = onSelectWorldLayer,
                        onRenameWorldLayer = onRenameWorldLayer,
                        onMoveWorldLayer = onMoveWorldLayer,
                        onToggleWorldLayerVisibility = onToggleWorldLayerVisibility,
                        onToggleWorldLayerLock = onToggleWorldLayerLock,
                        onToggleWorldLayerSolo = onToggleWorldLayerSolo,
                        onAssignSelectedToWorldLayer = onAssignSelectedToWorldLayer,
                        onAddPrimitive = onAddPrimitive,
                        onAddSceneObject = onAddSceneObject,
                        onCreateFlatTerrain = onCreateFlatTerrain,
                        onCreateEditableMesh = onCreateEditableMesh,
                        onCreateVoxelVolume = onCreateVoxelVolume,
                        onCreatePlayableWorld = onCreatePlayableWorld,
                        onConvertSelectedToEditableMesh = onConvertSelectedToEditableMesh,
                        onConvertMeshToVoxel = onConvertMeshToVoxel,
                        onMode = ::selectMode,
                        onSurfaceEditing = { surfaceEditing = it },
                        onImportAsset = onImportAsset,
                        onDiagnostic = onDiagnostic,
                        onToolSelected = onToolSelected,
                        onTerrainToolChange = onTerrainToolChange,
                        onTerrainFalloffChange = onTerrainFalloffChange,
                        modifier = Modifier.align(Alignment.CenterEnd),
                    )
                }
            }
        }
    }
}

@Composable
private fun WorldV5Header(
    state: WorkspaceUiState,
    compact: Boolean,
    onExit: () -> Unit,
    onUndo: () -> Unit,
    onRedo: () -> Unit,
    onSave: () -> Unit,
    onPlay: () -> Unit,
) {
    Row(
        Modifier.fillMaxWidth().height(58.dp).background(WorldV5Panel)
            .border(1.dp, WorldV5Border).padding(horizontal = 10.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(6.dp),
    ) {
        WorldV5TextButton("Voltar", onClick = onExit)
        Column(Modifier.weight(1f).padding(horizontal = 6.dp)) {
            Text("WORLD STUDIO", color = WorldV5Text, fontSize = 11.sp, fontWeight = FontWeight.Bold)
            if (!compact) {
                Text(
                    state.metadata?.name ?: "Cena atual",
                    color = WorldV5Muted,
                    fontSize = 6.5.sp,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                )
            }
        }
        WorldV5TextButton("Desfazer", enabled = state.canUndo, onClick = onUndo)
        WorldV5TextButton("Refazer", enabled = state.canRedo, onClick = onRedo)
        WorldV5TextButton("Salvar", enabled = state.isSceneDirty && !state.isSavingScene, onClick = onSave)
        WorldV5PrimaryButton(if (state.isPreviewRunning) "Parar" else "Jogar", onClick = onPlay)
    }
}

@Composable
private fun WorldV5ModeBar(
    mode: WorldV5Mode,
    leftPanel: WorldV5Panel,
    rightPanel: WorldV5Panel,
    onMode: (WorldV5Mode) -> Unit,
    onScene: () -> Unit,
    onCreate: () -> Unit,
    onAuthor: () -> Unit,
    onTools: () -> Unit,
    onAssets: () -> Unit,
) {
    Row(
        Modifier.fillMaxWidth().height(50.dp).background(WorldV5Background)
            .horizontalScroll(rememberScrollState()).padding(horizontal = 8.dp, vertical = 6.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(5.dp),
    ) {
        WorldV5Segment("Objetos", mode == WorldV5Mode.OBJECTS) { onMode(WorldV5Mode.OBJECTS) }
        WorldV5Segment("Terreno", mode == WorldV5Mode.TERRAIN) { onMode(WorldV5Mode.TERRAIN) }
        WorldV5Segment("Materiais", mode == WorldV5Mode.PAINT) { onMode(WorldV5Mode.PAINT) }
        WorldV5Segment("Malha", mode == WorldV5Mode.MESH) { onMode(WorldV5Mode.MESH) }
        WorldV5Segment("Volume", mode == WorldV5Mode.VOLUME) { onMode(WorldV5Mode.VOLUME) }
        Box(Modifier.width(1.dp).height(24.dp).background(WorldV5Border).padding(horizontal = 3.dp))
        WorldV5PanelButton("Estrutura", leftPanel == WorldV5Panel.SCENE, onScene)
        WorldV5PanelButton("Criar", leftPanel == WorldV5Panel.CREATE, onCreate)
        WorldV5PanelButton("Ações", rightPanel == WorldV5Panel.AUTHOR, onAuthor)
        WorldV5PanelButton("Ferramentas", rightPanel == WorldV5Panel.TOOLS, onTools)
        WorldV5PanelButton("Assets", leftPanel == WorldV5Panel.ASSETS, onAssets)
    }
}

@Composable
private fun WorldV5ContextBar(state: WorkspaceUiState, mode: WorldV5Mode) {
    val document = state.sceneDocument
    val context = remember(document, state.selectedObjectId) {
        document?.resolveWorldAuthoringContext(state.selectedObjectId)
    }
    Row(
        Modifier.fillMaxWidth().height(36.dp).background(WorldV5Panel)
            .border(1.dp, WorldV5Border).padding(horizontal = 10.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(8.dp),
    ) {
        Text(mode.label().uppercase(), color = WorldV5Accent, fontSize = 6.5.sp, fontWeight = FontWeight.Bold)
        Text(
            context?.selectedName ?: "Nenhum objeto selecionado",
            color = WorldV5Text,
            fontSize = 7.5.sp,
            fontWeight = FontWeight.SemiBold,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis,
        )
        context?.selectedLayer?.let { layer ->
            Text(
                layer.name,
                color = if (layer.locked) WorldV5Warning else WorldV5Muted,
                fontSize = 6.5.sp,
                modifier = Modifier.background(WorldV5Raised, RoundedCornerShape(8.dp))
                    .padding(horizontal = 7.dp, vertical = 3.dp),
            )
        }
        Spacer(Modifier.weight(1f))
        context?.actions?.firstOrNull { it.id == context.suggestedActionId }?.let { suggested ->
            Text(
                "Próximo: ${suggested.title}",
                color = if (suggested.enabled) WorldV5Positive else WorldV5Muted,
                fontSize = 6.5.sp,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
            )
        }
    }
}

@Composable
private fun WorldV5StatusBar(
    state: WorkspaceUiState,
    mode: WorldV5Mode,
    surfaceEditing: Boolean,
) {
    Row(
        Modifier.fillMaxWidth().height(34.dp).background(WorldV5Panel)
            .border(1.dp, WorldV5Border).padding(horizontal = 10.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Text(
            when {
                mode in setOf(WorldV5Mode.TERRAIN, WorldV5Mode.PAINT) && surfaceEditing ->
                    "Pincel ativo · um dedo aplica · segundo dedo cancela o traço"
                else -> "Free cam · arraste para orbitar · dois dedos para mover · pinça para aproximar"
            },
            color = WorldV5Muted,
            fontSize = 6.2.sp,
            modifier = Modifier.weight(1f),
            maxLines = 1,
            overflow = TextOverflow.Ellipsis,
        )
        Text(
            state.selectedObject?.name ?: "Sem seleção",
            color = WorldV5Text,
            fontSize = 6.5.sp,
            maxLines = 1,
        )
    }
}

@Composable
private fun WorldV5PanelHost(
    panel: WorldV5Panel,
    width: Dp,
    state: WorkspaceUiState,
    mode: WorldV5Mode,
    surfaceEditing: Boolean,
    onClose: () -> Unit,
    onSelectObject: (String) -> Unit,
    onCreateWorldLayer: (String, WorldLayerKind) -> Unit,
    onSelectWorldLayer: (String) -> Unit,
    onRenameWorldLayer: (String, String) -> Unit,
    onMoveWorldLayer: (String, Int) -> Unit,
    onToggleWorldLayerVisibility: (String) -> Unit,
    onToggleWorldLayerLock: (String) -> Unit,
    onToggleWorldLayerSolo: (String) -> Unit,
    onAssignSelectedToWorldLayer: (String) -> Unit,
    onAddPrimitive: (PrimitiveMesh) -> Unit,
    onAddSceneObject: (EditorObjectType) -> Unit,
    onCreateFlatTerrain: (Int, Float, Float) -> Unit,
    onCreateEditableMesh: (PrimitiveMesh) -> Unit,
    onCreateVoxelVolume: (Int, Boolean) -> Unit,
    onCreatePlayableWorld: () -> Unit,
    onConvertSelectedToEditableMesh: () -> Unit,
    onConvertMeshToVoxel: (Int) -> Unit,
    onMode: (WorldV5Mode) -> Unit,
    onSurfaceEditing: (Boolean) -> Unit,
    onImportAsset: () -> Unit,
    onDiagnostic: (String) -> Unit,
    onToolSelected: (EditorTool) -> Unit,
    onTerrainToolChange: (TerrainBrushMode?, Float?, Float?, Float?, String?) -> Unit,
    onTerrainFalloffChange: (TerrainBrushFalloff) -> Unit,
    modifier: Modifier = Modifier,
) {
    Column(
        modifier.width(width).fillMaxHeight().shadow(16.dp, RoundedCornerShape(18.dp))
            .background(WorldV5Panel, RoundedCornerShape(18.dp))
            .border(1.dp, WorldV5Border, RoundedCornerShape(18.dp)),
    ) {
        val title = when (panel) {
            WorldV5Panel.SCENE -> "Estrutura"
            WorldV5Panel.CREATE -> "Criar"
            WorldV5Panel.AUTHOR -> "Ações contextuais"
            WorldV5Panel.ASSETS -> "Assets"
            WorldV5Panel.TOOLS -> "Ferramentas"
            WorldV5Panel.NONE -> ""
        }
        Row(
            Modifier.fillMaxWidth().height(48.dp).padding(horizontal = 10.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            Text(title, color = WorldV5Text, fontSize = 9.5.sp, fontWeight = FontWeight.Bold, modifier = Modifier.weight(1f))
            WorldV5TextButton("Fechar", onClick = onClose)
        }
        Box(Modifier.fillMaxWidth().height(1.dp).background(WorldV5Border))
        when (panel) {
            WorldV5Panel.SCENE -> WorldV5ScenePanel(
                state = state,
                onSelectObject = onSelectObject,
                onCreateWorldLayer = onCreateWorldLayer,
                onSelectWorldLayer = onSelectWorldLayer,
                onRenameWorldLayer = onRenameWorldLayer,
                onMoveWorldLayer = onMoveWorldLayer,
                onToggleWorldLayerVisibility = onToggleWorldLayerVisibility,
                onToggleWorldLayerLock = onToggleWorldLayerLock,
                onToggleWorldLayerSolo = onToggleWorldLayerSolo,
                onAssignSelectedToWorldLayer = onAssignSelectedToWorldLayer,
            )
            WorldV5Panel.CREATE -> WorldV5CreatePanel(
                onAddPrimitive = onAddPrimitive,
                onAddSceneObject = onAddSceneObject,
                onCreateFlatTerrain = onCreateFlatTerrain,
                onCreateEditableMesh = onCreateEditableMesh,
                onCreateVoxelVolume = onCreateVoxelVolume,
                onCreatePlayableWorld = onCreatePlayableWorld,
            )
            WorldV5Panel.AUTHOR -> WorldV5AuthorPanel(
                state = state,
                onCreateFlatTerrain = onCreateFlatTerrain,
                onCreateEditableMesh = onCreateEditableMesh,
                onCreateVoxelVolume = onCreateVoxelVolume,
                onCreatePlayableWorld = onCreatePlayableWorld,
                onConvertSelectedToEditableMesh = onConvertSelectedToEditableMesh,
                onConvertMeshToVoxel = onConvertMeshToVoxel,
                onMode = onMode,
                onSurfaceEditing = onSurfaceEditing,
                onDiagnostic = onDiagnostic,
            )
            WorldV5Panel.ASSETS -> WorldV5AssetsPanel(state, onImportAsset)
            WorldV5Panel.TOOLS -> WorldV5ToolsPanel(
                state = state,
                mode = mode,
                surfaceEditing = surfaceEditing,
                onSurfaceEditing = onSurfaceEditing,
                onToolSelected = onToolSelected,
                onTerrainToolChange = onTerrainToolChange,
                onTerrainFalloffChange = onTerrainFalloffChange,
            )
            WorldV5Panel.NONE -> Unit
        }
    }
}

@Composable
private fun WorldV5ScenePanel(
    state: WorkspaceUiState,
    onSelectObject: (String) -> Unit,
    onCreateWorldLayer: (String, WorldLayerKind) -> Unit,
    onSelectWorldLayer: (String) -> Unit,
    onRenameWorldLayer: (String, String) -> Unit,
    onMoveWorldLayer: (String, Int) -> Unit,
    onToggleWorldLayerVisibility: (String) -> Unit,
    onToggleWorldLayerLock: (String) -> Unit,
    onToggleWorldLayerSolo: (String) -> Unit,
    onAssignSelectedToWorldLayer: (String) -> Unit,
) {
    val document = state.sceneDocument ?: return
    val layers = document.worldLayers()
    val selectedLayerId = document.worldLayerSet()?.selectedLayerId ?: layers.firstOrNull()?.id
    var tabName by rememberSaveable { mutableStateOf(WorldV5SceneTab.LAYERS.name) }
    var addingLayer by rememberSaveable { mutableStateOf(false) }
    var layerName by rememberSaveable { mutableStateOf("") }
    val tab = WorldV5SceneTab.entries.firstOrNull { it.name == tabName } ?: WorldV5SceneTab.LAYERS

    Column(Modifier.fillMaxSize()) {
        Row(
            Modifier.fillMaxWidth().padding(8.dp),
            horizontalArrangement = Arrangement.spacedBy(5.dp),
        ) {
            WorldV5Segment("Camadas", tab == WorldV5SceneTab.LAYERS, Modifier.weight(1f)) {
                tabName = WorldV5SceneTab.LAYERS.name
            }
            WorldV5Segment("Objetos", tab == WorldV5SceneTab.OBJECTS, Modifier.weight(1f)) {
                tabName = WorldV5SceneTab.OBJECTS.name
            }
        }
        if (tab == WorldV5SceneTab.LAYERS) {
            Row(
                Modifier.fillMaxWidth().padding(horizontal = 8.dp),
                horizontalArrangement = Arrangement.spacedBy(5.dp),
            ) {
                WorldV5TextButton(if (addingLayer) "Cancelar" else "Nova camada", Modifier.weight(1f)) {
                    addingLayer = !addingLayer
                    layerName = ""
                }
                WorldV5TextButton(
                    "Mover seleção para cá",
                    modifier = Modifier.weight(1.35f),
                    enabled = state.selectedObjectId != null && selectedLayerId != null,
                ) {
                    selectedLayerId?.let(onAssignSelectedToWorldLayer)
                }
            }
            if (addingLayer) {
                Column(
                    Modifier.fillMaxWidth().padding(8.dp).background(WorldV5Raised, RoundedCornerShape(14.dp))
                        .border(1.dp, WorldV5Border, RoundedCornerShape(14.dp)).padding(8.dp),
                    verticalArrangement = Arrangement.spacedBy(6.dp),
                ) {
                    OutlinedTextField(
                        value = layerName,
                        onValueChange = { layerName = it.take(48) },
                        label = { Text("Nome da camada", fontSize = 7.sp) },
                        singleLine = true,
                        modifier = Modifier.fillMaxWidth(),
                    )
                    Row(
                        Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()),
                        horizontalArrangement = Arrangement.spacedBy(4.dp),
                    ) {
                        listOf(
                            WorldLayerKind.SURFACE,
                            WorldLayerKind.GEOMETRY,
                            WorldLayerKind.VOLUME,
                            WorldLayerKind.GAMEPLAY,
                            WorldLayerKind.CUSTOM,
                        ).forEach { kind ->
                            WorldV5PanelButton(kind.label(), false) {
                                if (layerName.isNotBlank()) {
                                    onCreateWorldLayer(layerName, kind)
                                    addingLayer = false
                                    layerName = ""
                                }
                            }
                        }
                    }
                }
            }
            LazyColumn(
                Modifier.fillMaxSize().padding(8.dp),
                verticalArrangement = Arrangement.spacedBy(7.dp),
            ) {
                items(layers, key = WorldLayer::id) { layer ->
                    val objectCount = document.objects.count { objectValue ->
                        WORLD_LAYER_SYSTEM_TAG !in objectValue.tags &&
                            objectValue.worldLayerMembership()?.layerId == layer.id
                    }
                    WorldV5LayerRow(
                        layer = layer,
                        selected = layer.id == selectedLayerId,
                        objectCount = objectCount,
                        onSelect = { onSelectWorldLayer(layer.id) },
                        onRename = { onRenameWorldLayer(layer.id, it) },
                        onMoveUp = { onMoveWorldLayer(layer.id, -1) },
                        onMoveDown = { onMoveWorldLayer(layer.id, 1) },
                        onVisibility = { onToggleWorldLayerVisibility(layer.id) },
                        onLock = { onToggleWorldLayerLock(layer.id) },
                        onSolo = { onToggleWorldLayerSolo(layer.id) },
                    )
                }
            }
        } else {
            LazyColumn(
                Modifier.fillMaxSize().padding(8.dp),
                verticalArrangement = Arrangement.spacedBy(5.dp),
            ) {
                layers.forEach { layer ->
                    item(key = "layer-${layer.id}") {
                        Row(
                            Modifier.fillMaxWidth().padding(top = 5.dp, bottom = 2.dp),
                            verticalAlignment = Alignment.CenterVertically,
                        ) {
                            Box(Modifier.size(8.dp).background(layer.safeColor(), RoundedCornerShape(4.dp)))
                            Text(
                                layer.name.uppercase(),
                                color = if (layer.locked) WorldV5Warning else WorldV5Muted,
                                fontSize = 6.5.sp,
                                fontWeight = FontWeight.Bold,
                                modifier = Modifier.padding(start = 6.dp),
                            )
                        }
                    }
                    val objects = document.objects.filter { objectValue ->
                        WORLD_LAYER_SYSTEM_TAG !in objectValue.tags &&
                            objectValue.worldLayerMembership()?.layerId == layer.id
                    }
                    items(objects, key = { "${layer.id}-${it.id}" }) { objectValue ->
                        Column(
                            Modifier.fillMaxWidth().background(
                                if (objectValue.id == state.selectedObjectId) WorldV5AccentSoft else WorldV5Raised,
                                RoundedCornerShape(12.dp),
                            ).clickable(enabled = !layer.locked) { onSelectObject(objectValue.id) }
                                .padding(horizontal = 10.dp, vertical = 8.dp),
                        ) {
                            Text(
                                objectValue.name,
                                color = if (objectValue.enabled) WorldV5Text else WorldV5Muted,
                                fontSize = 8.sp,
                                fontWeight = FontWeight.SemiBold,
                                maxLines = 1,
                                overflow = TextOverflow.Ellipsis,
                            )
                            Text(
                                state.sceneObjects.firstOrNull { it.id == objectValue.id }?.type?.label ?: layer.kind.label(),
                                color = WorldV5Muted,
                                fontSize = 6.sp,
                                maxLines = 1,
                            )
                        }
                    }
                }
            }
        }
    }
}

@Composable
private fun WorldV5LayerRow(
    layer: WorldLayer,
    selected: Boolean,
    objectCount: Int,
    onSelect: () -> Unit,
    onRename: (String) -> Unit,
    onMoveUp: () -> Unit,
    onMoveDown: () -> Unit,
    onVisibility: () -> Unit,
    onLock: () -> Unit,
    onSolo: () -> Unit,
) {
    var renaming by remember(layer.id) { mutableStateOf(false) }
    var name by remember(layer.id, layer.name) { mutableStateOf(layer.name) }
    Column(
        Modifier.fillMaxWidth().background(
            if (selected) WorldV5AccentSoft else WorldV5Raised,
            RoundedCornerShape(14.dp),
        ).border(1.dp, if (selected) WorldV5Accent else WorldV5Border, RoundedCornerShape(14.dp))
            .clickable { onSelect() }.padding(9.dp),
        verticalArrangement = Arrangement.spacedBy(7.dp),
    ) {
        Row(verticalAlignment = Alignment.CenterVertically) {
            Box(Modifier.width(4.dp).height(34.dp).background(layer.safeColor(), RoundedCornerShape(4.dp)))
            if (renaming) {
                OutlinedTextField(
                    value = name,
                    onValueChange = { name = it.take(48) },
                    singleLine = true,
                    modifier = Modifier.weight(1f).padding(horizontal = 7.dp),
                )
                WorldV5TextButton("Aplicar") {
                    onRename(name)
                    renaming = false
                }
            } else {
                Column(Modifier.weight(1f).padding(horizontal = 8.dp)) {
                    Text(layer.name, color = WorldV5Text, fontSize = 8.5.sp, fontWeight = FontWeight.Bold, maxLines = 1)
                    Text("${layer.kind.label()} · $objectCount objetos", color = WorldV5Muted, fontSize = 6.sp)
                }
                WorldV5TextButton("Renomear") { renaming = true }
            }
        }
        Row(
            Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()),
            horizontalArrangement = Arrangement.spacedBy(4.dp),
        ) {
            WorldV5PanelButton(if (layer.visible) "Visível" else "Oculta", layer.visible, onVisibility)
            WorldV5PanelButton(if (layer.locked) "Bloqueada" else "Editável", layer.locked, onLock)
            WorldV5PanelButton("Solo", layer.solo, onSolo)
            WorldV5PanelButton("Subir", false, onMoveUp)
            WorldV5PanelButton("Descer", false, onMoveDown)
        }
    }
}

@Composable
private fun WorldV5CreatePanel(
    onAddPrimitive: (PrimitiveMesh) -> Unit,
    onAddSceneObject: (EditorObjectType) -> Unit,
    onCreateFlatTerrain: (Int, Float, Float) -> Unit,
    onCreateEditableMesh: (PrimitiveMesh) -> Unit,
    onCreateVoxelVolume: (Int, Boolean) -> Unit,
    onCreatePlayableWorld: () -> Unit,
) {
    LazyColumn(
        Modifier.fillMaxSize().padding(9.dp),
        verticalArrangement = Arrangement.spacedBy(7.dp),
    ) {
        item { WorldV5SectionTitle("FONTES DE GEOMETRIA", "Crie a origem; a seleção libera as próximas etapas.") }
        item { WorldV5ActionRow("Cubo primitivo", "Forma simples para posicionar, escalar ou converter") { onAddPrimitive(PrimitiveMesh.CUBE) } }
        item { WorldV5ActionRow("Plano primitivo", "Base simples para composição e materiais") { onAddPrimitive(PrimitiveMesh.PLANE) } }
        item { WorldV5ActionRow("Terreno editável", "Superfície 65 × 65 pronta para relevo") { onCreateFlatTerrain(65, 96f, 20f) } }
        item { WorldV5ActionRow("Malha editável", "Cubo com topologia para faces e vértices") { onCreateEditableMesh(PrimitiveMesh.CUBE) } }
        item { WorldV5ActionRow("Volume vazio", "Campo voxel 24³ para escultura volumétrica") { onCreateVoxelVolume(24, false) } }
        item { WorldV5SectionTitle("GAMEPLAY E CENA", "Objetos técnicos ficam separados das fontes de mundo.") }
        item { WorldV5ActionRow("Jogador", "CharacterController sem montar o mundo inteiro") { onAddSceneObject(EditorObjectType.PLAYER) } }
        item { WorldV5ActionRow("Câmera da cena", "Câmera de jogo, independente da free cam") { onAddSceneObject(EditorObjectType.CAMERA) } }
        item { WorldV5ActionRow("Luz direcional", "Iluminação principal com sombras") { onAddSceneObject(EditorObjectType.LIGHT) } }
        item { WorldV5ActionRow("Mundo jogável inicial", "Terreno, jogador, câmera e controles conectados") { onCreatePlayableWorld() } }
    }
}

@Composable
private fun WorldV5AuthorPanel(
    state: WorkspaceUiState,
    onCreateFlatTerrain: (Int, Float, Float) -> Unit,
    onCreateEditableMesh: (PrimitiveMesh) -> Unit,
    onCreateVoxelVolume: (Int, Boolean) -> Unit,
    onCreatePlayableWorld: () -> Unit,
    onConvertSelectedToEditableMesh: () -> Unit,
    onConvertMeshToVoxel: (Int) -> Unit,
    onMode: (WorldV5Mode) -> Unit,
    onSurfaceEditing: (Boolean) -> Unit,
    onDiagnostic: (String) -> Unit,
) {
    val document = state.sceneDocument ?: return
    val context = remember(document, state.selectedObjectId) {
        document.resolveWorldAuthoringContext(state.selectedObjectId)
    }
    LazyColumn(
        Modifier.fillMaxSize().padding(9.dp),
        verticalArrangement = Arrangement.spacedBy(7.dp),
    ) {
        item {
            WorldV5SectionTitle(context.selectedName, context.summary)
            if (context.layerLocked) {
                Text(
                    "A camada está bloqueada. Desbloqueie-a em Estrutura para editar.",
                    color = WorldV5Warning,
                    fontSize = 6.5.sp,
                    modifier = Modifier.fillMaxWidth().background(Color(0xFF332A1B), RoundedCornerShape(11.dp)).padding(8.dp),
                )
            }
        }
        items(context.actions, key = WorldActionDescriptor::id) { action ->
            WorldV5ActionRow(
                title = action.title,
                subtitle = buildString {
                    append(action.effect)
                    action.nextStep?.let { append("\nDepois: $it") }
                    action.disabledReason?.let { append("\n$it") }
                },
                enabled = action.enabled,
                highlighted = action.id == context.suggestedActionId,
            ) {
                when (action.id) {
                    WorldActionId.CREATE_TERRAIN -> onCreateFlatTerrain(65, 96f, 20f)
                    WorldActionId.CREATE_EDITABLE_CUBE -> onCreateEditableMesh(PrimitiveMesh.CUBE)
                    WorldActionId.CREATE_EMPTY_VOLUME -> onCreateVoxelVolume(24, false)
                    WorldActionId.CREATE_PLAYABLE_WORLD -> onCreatePlayableWorld()
                    WorldActionId.CONVERT_PRIMITIVE_TO_EDITABLE -> onConvertSelectedToEditableMesh()
                    WorldActionId.CONVERT_EDITABLE_TO_VOLUME -> onConvertMeshToVoxel(24)
                    WorldActionId.OPEN_SCULPT -> {
                        onMode(WorldV5Mode.TERRAIN)
                        onSurfaceEditing(true)
                    }
                    WorldActionId.OPEN_MATERIAL_PAINT -> {
                        onMode(WorldV5Mode.PAINT)
                        onSurfaceEditing(true)
                    }
                    WorldActionId.OPEN_MESH_EDIT -> onMode(WorldV5Mode.MESH)
                    WorldActionId.OPEN_VOLUME_EDIT -> onMode(WorldV5Mode.VOLUME)
                    WorldActionId.VALIDATE_WORLD -> onDiagnostic(
                        "Mundo: ${document.worldLayers().size} camadas, ${document.objects.count { WORLD_LAYER_SYSTEM_TAG !in it.tags }} objetos.",
                    )
                    else -> Unit
                }
            }
        }
    }
}

@Composable
private fun WorldV5ToolsPanel(
    state: WorkspaceUiState,
    mode: WorldV5Mode,
    surfaceEditing: Boolean,
    onSurfaceEditing: (Boolean) -> Unit,
    onToolSelected: (EditorTool) -> Unit,
    onTerrainToolChange: (TerrainBrushMode?, Float?, Float?, Float?, String?) -> Unit,
    onTerrainFalloffChange: (TerrainBrushFalloff) -> Unit,
) {
    if (mode in setOf(WorldV5Mode.TERRAIN, WorldV5Mode.PAINT)) {
        LazyColumn(
            Modifier.fillMaxSize().padding(9.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp),
        ) {
            item { WorldV5SectionTitle("Ferramenta de superfície", "Navegação e edição nunca usam o mesmo gesto ao mesmo tempo.") }
            item {
                Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(5.dp)) {
                    WorldV5Segment("Navegar", !surfaceEditing, Modifier.weight(1f)) { onSurfaceEditing(false) }
                    WorldV5Segment(if (mode == WorldV5Mode.PAINT) "Pintar" else "Esculpir", surfaceEditing, Modifier.weight(1f)) {
                        onSurfaceEditing(true)
                    }
                }
            }
            item { WorldV5SectionTitle("Operação", "A operação ativa define o efeito do pincel.") }
            item {
                Row(
                    Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()),
                    horizontalArrangement = Arrangement.spacedBy(4.dp),
                ) {
                    TerrainBrushMode.entries
                        .filter { candidate -> mode == WorldV5Mode.PAINT || candidate != TerrainBrushMode.PAINT }
                        .forEach { candidate ->
                            WorldV5PanelButton(candidate.label(), state.terrainTool.mode == candidate) {
                                onTerrainToolChange(candidate, null, null, null, null)
                            }
                        }
                }
            }
            item {
                WorldV5Slider(
                    label = "Raio",
                    value = state.terrainTool.radius,
                    range = 0.03f..0.45f,
                    valueText = "${(state.terrainTool.radius * 100).toInt()}%",
                ) { onTerrainToolChange(null, it, null, null, null) }
            }
            item {
                WorldV5Slider(
                    label = "Força",
                    value = state.terrainTool.strength,
                    range = 0.02f..1f,
                    valueText = "${(state.terrainTool.strength * 100).toInt()}%",
                ) { onTerrainToolChange(null, null, it, null, null) }
            }
            item {
                WorldV5Slider(
                    label = "Altura-alvo",
                    value = state.terrainTool.targetHeight,
                    range = 0f..1f,
                    valueText = "${(state.terrainTool.targetHeight * 100).toInt()}%",
                ) { onTerrainToolChange(null, null, null, it, null) }
            }
            item { WorldV5SectionTitle("Falloff", "Define como a força desaparece nas bordas do pincel.") }
            item {
                Row(
                    Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()),
                    horizontalArrangement = Arrangement.spacedBy(4.dp),
                ) {
                    TerrainBrushFalloff.entries.forEach { falloff ->
                        WorldV5PanelButton(falloff.label(), state.terrainTool.falloff == falloff) {
                            onTerrainFalloffChange(falloff)
                        }
                    }
                }
            }
        }
    } else {
        Column(Modifier.fillMaxSize().padding(9.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
            WorldV5SectionTitle("Transformação", "A free cam continua ativa fora do controle de transformação.")
            Row(
                Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()),
                horizontalArrangement = Arrangement.spacedBy(5.dp),
            ) {
                EditorTool.entries.forEach { tool ->
                    WorldV5PanelButton(tool.label, state.activeTool == tool) { onToolSelected(tool) }
                }
            }
            state.selectedObject?.let { selected ->
                WorldV5SectionTitle(selected.name, selected.type.label)
                Text(
                    "Use o controle inferior do viewport para escolher eixo e aplicar a transformação. Pinça e órbita continuam reservadas para a câmera.",
                    color = WorldV5Muted,
                    fontSize = 6.8.sp,
                    modifier = Modifier.background(WorldV5Raised, RoundedCornerShape(12.dp)).padding(9.dp),
                )
            } ?: Text(
                "Selecione um objeto para liberar as ferramentas contextuais.",
                color = WorldV5Muted,
                fontSize = 7.sp,
            )
        }
    }
}

@Composable
private fun WorldV5AssetsPanel(state: WorkspaceUiState, onImportAsset: () -> Unit) {
    Column(Modifier.fillMaxSize().padding(9.dp), verticalArrangement = Arrangement.spacedBy(7.dp)) {
        WorldV5ActionRow("Importar recurso", "GLB, PNG, JPG ou WebP", onClick = onImportAsset)
        Text("${state.assets.size} recursos no projeto", color = WorldV5Muted, fontSize = 6.5.sp)
        LazyColumn(Modifier.fillMaxSize(), verticalArrangement = Arrangement.spacedBy(5.dp)) {
            items(state.assets.take(80), key = { it.id }) { asset ->
                Column(
                    Modifier.fillMaxWidth().background(WorldV5Raised, RoundedCornerShape(12.dp)).padding(9.dp),
                ) {
                    Text(asset.displayName, color = WorldV5Text, fontSize = 7.5.sp, fontWeight = FontWeight.SemiBold, maxLines = 1, overflow = TextOverflow.Ellipsis)
                    Text(asset.mediaType, color = WorldV5Muted, fontSize = 6.sp, maxLines = 1)
                }
            }
        }
    }
}

@Composable
private fun WorldV5ActionRow(
    title: String,
    subtitle: String,
    enabled: Boolean = true,
    highlighted: Boolean = false,
    onClick: () -> Unit,
) {
    Column(
        Modifier.fillMaxWidth().background(
            if (highlighted && enabled) WorldV5AccentSoft else WorldV5Raised,
            RoundedCornerShape(14.dp),
        ).border(
            1.dp,
            if (highlighted && enabled) WorldV5Accent else WorldV5Border,
            RoundedCornerShape(14.dp),
        ).clickable(enabled = enabled, onClick = onClick).padding(horizontal = 11.dp, vertical = 10.dp),
        verticalArrangement = Arrangement.spacedBy(4.dp),
    ) {
        Text(
            title,
            color = if (enabled) WorldV5Text else WorldV5Muted,
            fontSize = 8.3.sp,
            fontWeight = FontWeight.Bold,
        )
        Text(
            subtitle,
            color = WorldV5Muted,
            fontSize = 6.5.sp,
            lineHeight = 9.sp,
        )
    }
}

@Composable
private fun WorldV5SectionTitle(title: String, subtitle: String) {
    Column(Modifier.fillMaxWidth().padding(top = 3.dp, bottom = 2.dp)) {
        Text(title, color = WorldV5Text, fontSize = 8.5.sp, fontWeight = FontWeight.Bold)
        Text(subtitle, color = WorldV5Muted, fontSize = 6.4.sp, lineHeight = 8.5.sp)
    }
}

@Composable
private fun WorldV5Slider(
    label: String,
    value: Float,
    range: ClosedFloatingPointRange<Float>,
    valueText: String,
    onValueChange: (Float) -> Unit,
) {
    Column(
        Modifier.fillMaxWidth().background(WorldV5Raised, RoundedCornerShape(13.dp)).padding(horizontal = 10.dp, vertical = 8.dp),
    ) {
        Row(Modifier.fillMaxWidth()) {
            Text(label, color = WorldV5Text, fontSize = 7.sp, fontWeight = FontWeight.SemiBold, modifier = Modifier.weight(1f))
            Text(valueText, color = WorldV5Accent, fontSize = 6.5.sp)
        }
        Slider(value = value.coerceIn(range), onValueChange = onValueChange, valueRange = range)
    }
}

@Composable
private fun WorldV5Segment(
    label: String,
    active: Boolean,
    modifier: Modifier = Modifier,
    onClick: () -> Unit,
) {
    TextButton(
        onClick = onClick,
        modifier = modifier.height(34.dp),
        shape = RoundedCornerShape(12.dp),
        colors = ButtonDefaults.textButtonColors(
            containerColor = if (active) WorldV5AccentSoft else WorldV5Raised,
            contentColor = if (active) WorldV5Accent else WorldV5Muted,
        ),
    ) { Text(label, fontSize = 6.8.sp, fontWeight = if (active) FontWeight.Bold else FontWeight.Normal) }
}

@Composable
private fun WorldV5PanelButton(
    label: String,
    active: Boolean,
    onClick: () -> Unit,
) {
    TextButton(
        onClick = onClick,
        shape = RoundedCornerShape(11.dp),
        colors = ButtonDefaults.textButtonColors(
            containerColor = if (active) WorldV5AccentSoft else Color.Transparent,
            contentColor = if (active) WorldV5Accent else WorldV5Muted,
        ),
    ) { Text(label, fontSize = 6.7.sp, fontWeight = if (active) FontWeight.Bold else FontWeight.Normal) }
}

@Composable
private fun WorldV5TextButton(
    label: String,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    onClick: () -> Unit,
) {
    TextButton(
        onClick = onClick,
        enabled = enabled,
        modifier = modifier,
        shape = RoundedCornerShape(11.dp),
        colors = ButtonDefaults.textButtonColors(
            containerColor = WorldV5Raised,
            contentColor = WorldV5Text,
            disabledContainerColor = WorldV5Raised.copy(alpha = 0.5f),
            disabledContentColor = WorldV5Muted.copy(alpha = 0.5f),
        ),
    ) { Text(label, fontSize = 6.7.sp, fontWeight = FontWeight.SemiBold) }
}

@Composable
private fun WorldV5PrimaryButton(label: String, onClick: () -> Unit) {
    TextButton(
        onClick = onClick,
        shape = RoundedCornerShape(13.dp),
        colors = ButtonDefaults.textButtonColors(
            containerColor = WorldV5AccentSoft,
            contentColor = WorldV5Accent,
        ),
    ) { Text(label, fontSize = 7.sp, fontWeight = FontWeight.Bold) }
}

private fun WorldV5Mode.label(): String = when (this) {
    WorldV5Mode.OBJECTS -> "Objetos"
    WorldV5Mode.TERRAIN -> "Terreno"
    WorldV5Mode.PAINT -> "Materiais"
    WorldV5Mode.MESH -> "Malha"
    WorldV5Mode.VOLUME -> "Volume"
}

private fun WorldLayerKind.label(): String = when (this) {
    WorldLayerKind.SURFACE -> "Superfície"
    WorldLayerKind.GEOMETRY -> "Geometria"
    WorldLayerKind.VOLUME -> "Volume"
    WorldLayerKind.GAMEPLAY -> "Gameplay"
    WorldLayerKind.LIGHTING -> "Iluminação"
    WorldLayerKind.UI -> "Interface"
    WorldLayerKind.CUSTOM -> "Personalizada"
}

private fun TerrainBrushMode.label(): String = when (name) {
    "RAISE" -> "Elevar"
    "LOWER" -> "Escavar"
    "SMOOTH" -> "Suavizar"
    "FLATTEN" -> "Nivelar"
    "PAINT" -> "Pintar"
    else -> name.lowercase().replaceFirstChar { it.uppercase() }
}

private fun TerrainBrushFalloff.label(): String = name.lowercase().replace('_', ' ').replaceFirstChar { it.uppercase() }

private fun WorldLayer.safeColor(): Color = Color((colorArgb and 0xFFFF_FFFFL).toInt())
