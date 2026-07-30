package com.mobilegamestudio.editor

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.gestures.detectDragGestures
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.RowScope
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
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Slider
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.StrokeCap
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.mobilegamestudio.core.model.AssetRecord
import com.mobilegamestudio.core.model.EditableMeshComponent
import com.mobilegamestudio.core.model.PrimitiveMesh
import com.mobilegamestudio.core.model.TerrainBrushFalloff
import com.mobilegamestudio.core.model.TerrainBrushMode
import com.mobilegamestudio.core.model.TerrainComponent
import com.mobilegamestudio.core.model.Vector3
import com.mobilegamestudio.core.model.VoxelBrushMode
import com.mobilegamestudio.core.model.VoxelSliceAxis
import com.mobilegamestudio.core.model.VoxelVolumeComponent
import java.io.File
import kotlin.math.abs
import kotlin.math.max
import kotlin.math.min
import kotlin.math.sqrt

private val StudioV3Background = Color(0xFF0E1013)
private val StudioV3Panel = Color(0xFF15181D)
private val StudioV3Raised = Color(0xFF1D2127)
private val StudioV3Border = Color(0xFF2B3038)
private val StudioV3Text = Color(0xFFE8EAF0)
private val StudioV3Muted = Color(0xFF959BA6)
private val StudioV3Accent = Color(0xFF4D9FD1)
private val StudioV3AccentSoft = Color(0xFF213A4B)
private val StudioV3Positive = Color(0xFF67C996)
private val StudioV3Danger = Color(0xFFE26E72)

private enum class StudioV3Mode(val icon: String, val label: String) {
    SCULPT("⌁", "Moldar"),
    PAINT("◐", "Textura"),
    OBJECTS("◇", "Objetos"),
    MESH("△", "Malha"),
    VOLUME("▦", "Volume"),
    NAVIGATE("◎", "Navegar"),
}

@Composable
internal fun WorldStudioWorkspaceV3(
    state: WorkspaceUiState,
    resolveAsset: (String) -> File?,
    onExit: () -> Unit,
    onUndo: () -> Unit,
    onRedo: () -> Unit,
    onSave: () -> Unit,
    onToolSelected: (EditorTool) -> Unit,
    onSelectObject: (String) -> Unit,
    onViewportObjectSelected: (String?) -> Unit,
    onToggleVisibility: (String) -> Unit,
    onAddPrimitive: (PrimitiveMesh) -> Unit,
    onAddSceneObject: (EditorObjectType) -> Unit,
    onAddAsset: (AssetRecord) -> Unit,
    onTransformChange: (TransformProperty, TransformAxis, Float) -> Unit,
    onTransformValueChange: (TransformProperty, TransformAxis, Float) -> Unit,
    onDiagnostic: (String) -> Unit,
    onTerrainToolChange: (TerrainBrushMode?, Float?, Float?, Float?, String?) -> Unit,
    onTerrainFalloffChange: (TerrainBrushFalloff) -> Unit,
    onTerrainStrokeBegin: () -> Unit,
    onTerrainStrokePoint: (Float, Float) -> Unit,
    onTerrainStrokeEnd: (Boolean) -> Unit,
    onCreateFlatTerrain: (Int, Float, Float) -> Unit,
    onAssignTerrainTexture: (String, String, Boolean) -> Unit,
    onImportAsset: () -> Unit,
    onImportHeightmap: () -> Unit,
    onCreateEditableMesh: (PrimitiveMesh) -> Unit,
    onConvertSelectedToEditableMesh: () -> Unit,
    onSelectMeshVertex: (Int, Boolean) -> Unit,
    onSelectMeshFace: (Int) -> Unit,
    onMoveMeshSelection: (TransformAxis, Float) -> Unit,
    onExtrudeMeshFace: (Float) -> Unit,
    onSubdivideMeshFace: () -> Unit,
    onDyntopoMesh: () -> Unit,
    onCreateVoxelVolume: (Int, Boolean) -> Unit,
    onConvertMeshToVoxel: (Int) -> Unit,
    onVoxelBrush: (VoxelSliceAxis, Int, Float, Float, Float, Float, VoxelBrushMode) -> Unit,
    onSmoothVoxel: (Int) -> Unit,
    modifier: Modifier = Modifier,
) {
    var modeName by rememberSaveable { mutableStateOf(StudioV3Mode.SCULPT.name) }
    var assetsExpanded by rememberSaveable { mutableStateOf(false) }
    var voxelAxisName by rememberSaveable { mutableStateOf(VoxelSliceAxis.Z.name) }
    var voxelModeName by rememberSaveable { mutableStateOf(VoxelBrushMode.SUBTRACT.name) }
    var voxelSlice by rememberSaveable { mutableIntStateOf(12) }
    var voxelRadius by rememberSaveable { mutableFloatStateOf(0.08f) }
    var voxelStrength by rememberSaveable { mutableFloatStateOf(0.8f) }
    val mode = StudioV3Mode.valueOf(modeName)
    val voxelAxis = VoxelSliceAxis.valueOf(voxelAxisName)
    val voxelBrushMode = VoxelBrushMode.valueOf(voxelModeName)
    val terrain = state.selectedTerrain
    val editableMesh = state.selectedEditableMesh
    val voxel = state.selectedVoxelVolume
    val terrainEditing = terrain != null && mode in setOf(StudioV3Mode.SCULPT, StudioV3Mode.PAINT)

    BoxWithConstraints(modifier.fillMaxSize().background(StudioV3Background)) {
        val compact = maxWidth < 900.dp
        val treeWidth = if (compact) 176.dp else 218.dp
        val inspectorWidth = if (compact) 224.dp else 274.dp
        Column(Modifier.fillMaxSize()) {
            StudioV3Header(
                state = state,
                mode = mode,
                onMode = { selected ->
                    modeName = selected.name
                    when (selected) {
                        StudioV3Mode.OBJECTS, StudioV3Mode.MESH -> if (state.activeTool == EditorTool.SELECT) onToolSelected(EditorTool.MOVE)
                        else -> onToolSelected(EditorTool.SELECT)
                    }
                },
                onExit = onExit,
                onUndo = onUndo,
                onRedo = onRedo,
                onSave = onSave,
            )
            Row(Modifier.weight(1f).fillMaxWidth()) {
                StudioV3ModeRail(mode, onMode = { modeName = it.name })
                StudioV3SceneTree(
                    state = state,
                    width = treeWidth,
                    onSelect = onSelectObject,
                    onVisibility = onToggleVisibility,
                    onAddPrimitive = onAddPrimitive,
                    onAddSceneObject = onAddSceneObject,
                    onCreateEditableMesh = onCreateEditableMesh,
                    onCreateVoxel = onCreateVoxelVolume,
                )
                Column(Modifier.weight(1f).fillMaxHeight().background(Color(0xFF101318))) {
                    StudioV3ContextBar(mode, state.selectedObject?.name)
                    when {
                        mode == StudioV3Mode.MESH && editableMesh != null -> {
                            SceneViewport(
                                state = state,
                                resolveAsset = resolveAsset,
                                onObjectSelected = onViewportObjectSelected,
                                onTransformDrag = { _, _ -> },
                                onTransformChange = onTransformChange,
                                onDiagnostic = onDiagnostic,
                                onPreviewAction = {},
                                editorChromeVisible = false,
                                modifier = Modifier.weight(0.58f).fillMaxWidth(),
                            )
                            MeshProjectionEditor(
                                mesh = editableMesh,
                                onSelectVertex = onSelectMeshVertex,
                                onMoveSelection = onMoveMeshSelection,
                                modifier = Modifier.weight(0.42f).fillMaxWidth(),
                            )
                        }
                        mode == StudioV3Mode.VOLUME && voxel != null -> {
                            SceneViewport(
                                state = state,
                                resolveAsset = resolveAsset,
                                onObjectSelected = onViewportObjectSelected,
                                onTransformDrag = { _, _ -> },
                                onTransformChange = onTransformChange,
                                onDiagnostic = onDiagnostic,
                                onPreviewAction = {},
                                editorChromeVisible = false,
                                modifier = Modifier.weight(0.55f).fillMaxWidth(),
                            )
                            VoxelSliceEditor(
                                volume = voxel,
                                axis = voxelAxis,
                                slice = voxelSlice.coerceIn(0, voxel.safeResolution - 1),
                                brushRadius = voxelRadius,
                                brushStrength = voxelStrength,
                                brushMode = voxelBrushMode,
                                onBrush = onVoxelBrush,
                                modifier = Modifier.weight(0.45f).fillMaxWidth(),
                            )
                        }
                        else -> SceneViewport(
                            state = state,
                            resolveAsset = resolveAsset,
                            onObjectSelected = { id ->
                                if (!terrainEditing) {
                                    onViewportObjectSelected(id)
                                    if (id != null && mode == StudioV3Mode.NAVIGATE) modeName = StudioV3Mode.OBJECTS.name
                                }
                            },
                            onTransformDrag = { _, _ -> },
                            onTransformChange = onTransformChange,
                            onDiagnostic = onDiagnostic,
                            onPreviewAction = {},
                            terrainAuthoringEnabled = terrainEditing,
                            terrainTopDownCamera = terrainEditing,
                            terrainBrushRadius = state.terrainTool.radius,
                            onTerrainStrokeBegin = onTerrainStrokeBegin,
                            onTerrainStrokePoint = onTerrainStrokePoint,
                            onTerrainStrokeEnd = onTerrainStrokeEnd,
                            editorChromeVisible = false,
                            modifier = Modifier.fillMaxSize(),
                        )
                    }
                }
                StudioV3Inspector(
                    state = state,
                    mode = mode,
                    terrain = terrain,
                    editableMesh = editableMesh,
                    voxel = voxel,
                    width = inspectorWidth,
                    voxelAxis = voxelAxis,
                    voxelBrushMode = voxelBrushMode,
                    voxelSlice = voxelSlice,
                    voxelRadius = voxelRadius,
                    voxelStrength = voxelStrength,
                    onToolSelected = onToolSelected,
                    onTransformChange = onTransformChange,
                    onTransformValueChange = onTransformValueChange,
                    onTerrainToolChange = onTerrainToolChange,
                    onTerrainFalloffChange = onTerrainFalloffChange,
                    onCreateFlatTerrain = onCreateFlatTerrain,
                    onImportHeightmap = onImportHeightmap,
                    onConvertSelectedToEditableMesh = onConvertSelectedToEditableMesh,
                    onSelectMeshFace = onSelectMeshFace,
                    onMoveMeshSelection = onMoveMeshSelection,
                    onExtrudeMeshFace = onExtrudeMeshFace,
                    onSubdivideMeshFace = onSubdivideMeshFace,
                    onDyntopoMesh = onDyntopoMesh,
                    onCreateVoxel = onCreateVoxelVolume,
                    onConvertMeshToVoxel = onConvertMeshToVoxel,
                    onVoxelAxis = { voxelAxisName = it.name },
                    onVoxelMode = { voxelModeName = it.name },
                    onVoxelSlice = { voxelSlice = it },
                    onVoxelRadius = { voxelRadius = it },
                    onVoxelStrength = { voxelStrength = it },
                    onSmoothVoxel = onSmoothVoxel,
                )
            }
            StudioV3AssetDock(
                expanded = assetsExpanded,
                assets = state.assets,
                mode = mode,
                terrain = terrain,
                selectedLayerId = state.terrainTool.materialLayerId,
                onToggle = { assetsExpanded = !assetsExpanded },
                onImport = onImportAsset,
                onUse = { asset ->
                    if (mode == StudioV3Mode.PAINT && terrain != null && asset.mediaType.startsWith("image/")) {
                        val layerId = state.terrainTool.materialLayerId ?: terrain.materialLayers.firstOrNull()?.id
                        if (layerId != null) {
                            onAssignTerrainTexture(layerId, asset.id, asset.displayName.contains("normal", true))
                        }
                    } else onAddAsset(asset)
                },
            )
        }
    }
}

@Composable
private fun StudioV3Header(
    state: WorkspaceUiState,
    mode: StudioV3Mode,
    onMode: (StudioV3Mode) -> Unit,
    onExit: () -> Unit,
    onUndo: () -> Unit,
    onRedo: () -> Unit,
    onSave: () -> Unit,
) {
    Row(
        Modifier.fillMaxWidth().height(48.dp).background(StudioV3Panel).border(1.dp, StudioV3Border),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        V3IconButton("‹", "Voltar", onClick = onExit)
        Text("M", color = StudioV3Accent, fontSize = 15.sp, fontWeight = FontWeight.Black, modifier = Modifier.padding(horizontal = 7.dp))
        Column(Modifier.width(166.dp)) {
            Text("WORLD STUDIO", color = StudioV3Text, fontWeight = FontWeight.Bold, fontSize = 10.sp)
            Text(state.metadata?.name.orEmpty(), color = StudioV3Muted, fontSize = 7.sp, maxLines = 1, overflow = TextOverflow.Ellipsis)
        }
        Row(Modifier.weight(1f).fillMaxHeight().horizontalScroll(rememberScrollState()), horizontalArrangement = Arrangement.Center) {
            StudioV3Mode.entries.forEach { item ->
                V3WorkspaceTab(item.icon, item.label, item == mode) { onMode(item) }
            }
        }
        V3IconButton("↶", "Desfazer", enabled = state.canUndo, onClick = onUndo)
        V3IconButton("↷", "Refazer", enabled = state.canRedo, onClick = onRedo)
        V3IconButton("▣", "Salvar", enabled = state.isSceneDirty, accent = state.isSceneDirty, onClick = onSave)
    }
}

@Composable
private fun StudioV3ModeRail(mode: StudioV3Mode, onMode: (StudioV3Mode) -> Unit) {
    Column(
        Modifier.width(46.dp).fillMaxHeight().background(Color(0xFF111419)).border(1.dp, StudioV3Border),
        horizontalAlignment = Alignment.CenterHorizontally,
    ) {
        StudioV3Mode.entries.forEach { item ->
            V3RailButton(item.icon, item.label, item == mode) { onMode(item) }
        }
    }
}

@Composable
private fun StudioV3SceneTree(
    state: WorkspaceUiState,
    width: Dp,
    onSelect: (String) -> Unit,
    onVisibility: (String) -> Unit,
    onAddPrimitive: (PrimitiveMesh) -> Unit,
    onAddSceneObject: (EditorObjectType) -> Unit,
    onCreateEditableMesh: (PrimitiveMesh) -> Unit,
    onCreateVoxel: (Int, Boolean) -> Unit,
) {
    val groups = remember(state.sceneObjects) {
        listOf(
            "Mundo" to state.sceneObjects.filter { it.type == EditorObjectType.TERRAIN },
            "Geometria" to state.sceneObjects.filter { it.type == EditorObjectType.MESH },
            "Jogabilidade" to state.sceneObjects.filter { it.type in setOf(EditorObjectType.PLAYER, EditorObjectType.PLAYER_FIRST_PERSON, EditorObjectType.PLAYER_TOP_DOWN, EditorObjectType.VEHICLE) },
            "Cena" to state.sceneObjects.filter { it.type in setOf(EditorObjectType.CAMERA, EditorObjectType.LIGHT, EditorObjectType.ENVIRONMENT) },
            "Interface" to state.sceneObjects.filter { it.type in setOf(EditorObjectType.JOYSTICK, EditorObjectType.UI_BUTTON) },
        ).filter { it.second.isNotEmpty() }
    }
    Column(Modifier.width(width).fillMaxHeight().background(StudioV3Panel).border(1.dp, StudioV3Border)) {
        V3PanelTitle("HIERARQUIA", "${state.sceneObjects.size}")
        LazyColumn(Modifier.weight(1f).fillMaxWidth()) {
            groups.forEach { (title, objects) ->
                item("group:$title") { V3GroupHeader(title, objects.size) }
                items(objects, key = EditorSceneObject::id) { item ->
                    val selected = item.id == state.selectedObjectId
                    Row(
                        Modifier.fillMaxWidth().height(34.dp)
                            .background(if (selected) StudioV3AccentSoft else Color.Transparent)
                            .clickable { onSelect(item.id) }
                            .padding(horizontal = 7.dp),
                        verticalAlignment = Alignment.CenterVertically,
                    ) {
                        Text(v3ObjectIcon(item.type), color = if (selected) StudioV3Accent else StudioV3Muted, fontSize = 10.sp, modifier = Modifier.width(25.dp))
                        Text(item.name, color = if (selected) StudioV3Text else Color(0xFFC3C7CF), fontSize = 8.sp, modifier = Modifier.weight(1f), maxLines = 1, overflow = TextOverflow.Ellipsis)
                        Text(if (item.isVisible) "●" else "○", color = if (item.isVisible) StudioV3Positive else StudioV3Muted, fontSize = 7.sp, modifier = Modifier.clickable { onVisibility(item.id) }.padding(5.dp))
                    }
                }
            }
        }
        V3PanelTitle("CRIAR", null)
        Row(Modifier.fillMaxWidth().padding(5.dp), horizontalArrangement = Arrangement.spacedBy(4.dp)) {
            V3CreateTile("□", "Cubo") { onAddPrimitive(PrimitiveMesh.CUBE) }
            V3CreateTile("▱", "Plano") { onAddPrimitive(PrimitiveMesh.PLANE) }
            V3CreateTile("△", "Malha") { onCreateEditableMesh(PrimitiveMesh.CUBE) }
        }
        Row(Modifier.fillMaxWidth().padding(horizontal = 5.dp, vertical = 2.dp), horizontalArrangement = Arrangement.spacedBy(4.dp)) {
            V3CreateTile("⌁", "Terreno") { onAddSceneObject(EditorObjectType.TERRAIN) }
            V3CreateTile("▦", "Voxel") { onCreateVoxel(24, false) }
            V3CreateTile("☼", "Luz") { onAddSceneObject(EditorObjectType.LIGHT) }
        }
        Spacer(Modifier.height(5.dp))
    }
}

@Composable
private fun StudioV3ContextBar(mode: StudioV3Mode, selectedName: String?) {
    Row(
        Modifier.fillMaxWidth().height(34.dp).background(Color(0xFF14171C)).border(1.dp, StudioV3Border).padding(horizontal = 9.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Text(mode.icon, color = StudioV3Accent, fontSize = 11.sp)
        Text(mode.label.uppercase(), color = StudioV3Text, fontSize = 8.sp, fontWeight = FontWeight.Bold, modifier = Modifier.padding(start = 7.dp))
        Spacer(Modifier.weight(1f))
        Text(selectedName ?: "sem seleção", color = StudioV3Muted, fontSize = 7.sp, maxLines = 1, overflow = TextOverflow.Ellipsis)
    }
}

@Composable
private fun StudioV3Inspector(
    state: WorkspaceUiState,
    mode: StudioV3Mode,
    terrain: TerrainComponent?,
    editableMesh: EditableMeshComponent?,
    voxel: VoxelVolumeComponent?,
    width: Dp,
    voxelAxis: VoxelSliceAxis,
    voxelBrushMode: VoxelBrushMode,
    voxelSlice: Int,
    voxelRadius: Float,
    voxelStrength: Float,
    onToolSelected: (EditorTool) -> Unit,
    onTransformChange: (TransformProperty, TransformAxis, Float) -> Unit,
    onTransformValueChange: (TransformProperty, TransformAxis, Float) -> Unit,
    onTerrainToolChange: (TerrainBrushMode?, Float?, Float?, Float?, String?) -> Unit,
    onTerrainFalloffChange: (TerrainBrushFalloff) -> Unit,
    onCreateFlatTerrain: (Int, Float, Float) -> Unit,
    onImportHeightmap: () -> Unit,
    onConvertSelectedToEditableMesh: () -> Unit,
    onSelectMeshFace: (Int) -> Unit,
    onMoveMeshSelection: (TransformAxis, Float) -> Unit,
    onExtrudeMeshFace: (Float) -> Unit,
    onSubdivideMeshFace: () -> Unit,
    onDyntopoMesh: () -> Unit,
    onCreateVoxel: (Int, Boolean) -> Unit,
    onConvertMeshToVoxel: (Int) -> Unit,
    onVoxelAxis: (VoxelSliceAxis) -> Unit,
    onVoxelMode: (VoxelBrushMode) -> Unit,
    onVoxelSlice: (Int) -> Unit,
    onVoxelRadius: (Float) -> Unit,
    onVoxelStrength: (Float) -> Unit,
    onSmoothVoxel: (Int) -> Unit,
) {
    Column(Modifier.width(width).fillMaxHeight().background(StudioV3Panel).border(1.dp, StudioV3Border)) {
        V3PanelTitle("PROPRIEDADES", mode.label)
        when (mode) {
            StudioV3Mode.SCULPT -> V3SculptInspector(state, terrain, onTerrainToolChange, onTerrainFalloffChange, onCreateFlatTerrain, onImportHeightmap)
            StudioV3Mode.PAINT -> V3PaintInspector(state, terrain, onTerrainToolChange)
            StudioV3Mode.OBJECTS -> V3ObjectInspector(state, onToolSelected, onTransformChange, onTransformValueChange)
            StudioV3Mode.MESH -> V3MeshInspector(state, editableMesh, onConvertSelectedToEditableMesh, onSelectMeshFace, onMoveMeshSelection, onExtrudeMeshFace, onSubdivideMeshFace, onDyntopoMesh, onConvertMeshToVoxel)
            StudioV3Mode.VOLUME -> V3VoxelInspector(voxel, voxelAxis, voxelBrushMode, voxelSlice, voxelRadius, voxelStrength, onCreateVoxel, onVoxelAxis, onVoxelMode, onVoxelSlice, onVoxelRadius, onVoxelStrength, onSmoothVoxel)
            StudioV3Mode.NAVIGATE -> V3NavigateInspector()
        }
    }
}

@Composable
private fun V3SculptInspector(
    state: WorkspaceUiState,
    terrain: TerrainComponent?,
    onTool: (TerrainBrushMode?, Float?, Float?, Float?, String?) -> Unit,
    onFalloff: (TerrainBrushFalloff) -> Unit,
    onCreate: (Int, Float, Float) -> Unit,
    onImport: () -> Unit,
) {
    if (terrain == null) {
        var resolution by rememberSaveable { mutableIntStateOf(65) }
        var width by rememberSaveable { mutableFloatStateOf(128f) }
        var maxHeight by rememberSaveable { mutableFloatStateOf(32f) }
        Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(9.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
            V3InspectorSection("⌁", "TERRENO NOVO")
            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(4.dp)) {
                listOf(33, 65, 129, 257).forEach { value -> V3Choice("$value²", resolution == value) { resolution = value } }
            }
            V3Slider("Largura", width, 32f..1024f, "${width.toInt()} m") { width = it }
            V3Slider("Altura", maxHeight, 4f..256f, "${maxHeight.toInt()} m") { maxHeight = it }
            V3WideButton("CRIAR SUPERFÍCIE PLANA", accent = true) { onCreate(resolution, width, maxHeight) }
            V3WideButton("IMPORTAR HEIGHTMAP") { onImport() }
        }
        return
    }
    Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(9.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
        V3InspectorSection("⌁", "PINCEL")
        Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(4.dp)) {
            listOf(
                TerrainBrushMode.RAISE to "↑",
                TerrainBrushMode.LOWER to "↓",
                TerrainBrushMode.SMOOTH to "≈",
                TerrainBrushMode.FLATTEN to "━",
            ).forEach { (brush, icon) -> V3ToolIcon(icon, brush.name, state.terrainTool.mode == brush) { onTool(brush, null, null, null, null) } }
        }
        V3Slider("Raio", state.terrainTool.radius, 0.01f..0.42f, "${(state.terrainTool.radius * terrain.width).toInt()} m") { onTool(null, it, null, null, null) }
        V3Slider("Força", state.terrainTool.strength, 0.01f..1f, "${(state.terrainTool.strength * 100).toInt()}%") { onTool(null, null, it, null, null) }
        if (state.terrainTool.mode == TerrainBrushMode.FLATTEN) V3Slider("Nível", state.terrainTool.targetHeight, 0f..1f, "${(state.terrainTool.targetHeight * terrain.maxHeight).toInt()} m") { onTool(null, null, null, it, null) }
        V3InspectorSection("◔", "QUEDA")
        Row(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()), horizontalArrangement = Arrangement.spacedBy(4.dp)) {
            TerrainBrushFalloff.entries.forEach { item -> V3Choice(item.name.take(3), state.terrainTool.falloff == item) { onFalloff(item) } }
        }
        V3InfoRow("Grade", "${terrain.resolution}²")
        V3InfoRow("Área", "${terrain.width.toInt()} m")
    }
}

@Composable
private fun V3PaintInspector(state: WorkspaceUiState, terrain: TerrainComponent?, onTool: (TerrainBrushMode?, Float?, Float?, Float?, String?) -> Unit) {
    if (terrain == null) { V3Empty("Selecione um terreno."); return }
    Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(9.dp), verticalArrangement = Arrangement.spacedBy(7.dp)) {
        V3InspectorSection("◐", "CAMADAS")
        terrain.materialLayers.forEach { layer ->
            val selected = state.terrainTool.materialLayerId == layer.id
            Row(Modifier.fillMaxWidth().height(40.dp).background(if (selected) StudioV3AccentSoft else StudioV3Raised, RoundedCornerShape(3.dp)).clickable { onTool(TerrainBrushMode.PAINT, null, null, null, layer.id) }.padding(6.dp), verticalAlignment = Alignment.CenterVertically) {
                Box(Modifier.size(24.dp).background(Color(layer.colorArgb), RoundedCornerShape(3.dp)))
                Column(Modifier.weight(1f).padding(start = 7.dp)) {
                    Text(layer.name, color = StudioV3Text, fontSize = 8.sp)
                    Text(if (layer.textureAssetId == null) "sem textura" else "textura vinculada", color = StudioV3Muted, fontSize = 6.sp)
                }
                if (selected) Text("●", color = StudioV3Accent, fontSize = 8.sp)
            }
        }
        V3Slider("Raio", state.terrainTool.radius, 0.01f..0.42f, "${(state.terrainTool.radius * 100).toInt()}%") { onTool(null, it, null, null, null) }
        V3Slider("Opacidade", state.terrainTool.strength, 0.01f..1f, "${(state.terrainTool.strength * 100).toInt()}%") { onTool(null, null, it, null, null) }
    }
}

@Composable
private fun V3ObjectInspector(state: WorkspaceUiState, onTool: (EditorTool) -> Unit, onDelta: (TransformProperty, TransformAxis, Float) -> Unit, onValue: (TransformProperty, TransformAxis, Float) -> Unit) {
    val selected = state.selectedObject ?: run { V3Empty("Selecione um objeto."); return }
    Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(9.dp), verticalArrangement = Arrangement.spacedBy(7.dp)) {
        V3InspectorSection("◇", "TRANSFORM")
        Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(4.dp)) {
            listOf(EditorTool.MOVE to "↔", EditorTool.ROTATE to "⟳", EditorTool.SCALE to "□").forEach { (tool, icon) -> V3ToolIcon(icon, tool.label, state.activeTool == tool) { onTool(tool) } }
        }
        V3TransformGroup("POSIÇÃO", TransformProperty.POSITION, selected.transform.position, 0.1f, onDelta, onValue)
        V3TransformGroup("ROTAÇÃO", TransformProperty.ROTATION, selected.transform.rotation, 5f, onDelta, onValue)
        V3TransformGroup("ESCALA", TransformProperty.SCALE, selected.transform.scale, 0.1f, onDelta, onValue)
    }
}

@Composable
private fun V3MeshInspector(
    state: WorkspaceUiState,
    mesh: EditableMeshComponent?,
    onConvert: () -> Unit,
    onSelectFace: (Int) -> Unit,
    onMove: (TransformAxis, Float) -> Unit,
    onExtrude: (Float) -> Unit,
    onSubdivide: () -> Unit,
    onDyntopo: () -> Unit,
    onVoxelize: (Int) -> Unit,
) {
    if (mesh == null) {
        Column(Modifier.fillMaxSize().padding(9.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
            V3InspectorSection("△", "MALHA EDITÁVEL")
            Text("Selecione um cubo ou plano e converta-o para editar vértices e faces.", color = StudioV3Muted, fontSize = 8.sp)
            V3WideButton("CONVERTER SELEÇÃO", enabled = state.selectedObject != null, accent = true, onClick = onConvert)
        }
        return
    }
    var extrusion by rememberSaveable { mutableFloatStateOf(0.5f) }
    Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(9.dp), verticalArrangement = Arrangement.spacedBy(7.dp)) {
        V3InspectorSection("△", "TOPOLOGIA")
        V3InfoRow("Vértices", mesh.vertices.size.toString())
        V3InfoRow("Faces", mesh.faces.size.toString())
        Text("FACE ATIVA", color = StudioV3Muted, fontSize = 7.sp, fontWeight = FontWeight.Bold)
        Row(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()), horizontalArrangement = Arrangement.spacedBy(4.dp)) {
            mesh.faces.indices.forEach { index -> V3Choice(index.toString(), mesh.selectedFace == index) { onSelectFace(index) } }
        }
        V3InspectorSection("↔", "MOVER SELEÇÃO")
        V3AxisNudges(0.1f, onMove)
        V3Slider("Extrusão", extrusion, -3f..3f, "%.2f".format(extrusion)) { extrusion = it }
        V3WideButton("EXTRUDAR FACE", enabled = mesh.selectedFace != null, accent = true) { onExtrude(extrusion) }
        V3WideButton("SUBDIVIDIR FACE", enabled = mesh.selectedFace != null) { onSubdivide() }
        V3WideButton("DYNTPO · REFINAR LOCAL", enabled = mesh.selectedFace != null) { onDyntopo() }
        V3WideButton("CONVERTER PARA VOXEL") { onVoxelize(24) }
    }
}

@Composable
private fun V3VoxelInspector(
    volume: VoxelVolumeComponent?,
    axis: VoxelSliceAxis,
    brushMode: VoxelBrushMode,
    slice: Int,
    radius: Float,
    strength: Float,
    onCreate: (Int, Boolean) -> Unit,
    onAxis: (VoxelSliceAxis) -> Unit,
    onMode: (VoxelBrushMode) -> Unit,
    onSlice: (Int) -> Unit,
    onRadius: (Float) -> Unit,
    onStrength: (Float) -> Unit,
    onSmooth: (Int) -> Unit,
) {
    if (volume == null) {
        Column(Modifier.fillMaxSize().padding(9.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
            V3InspectorSection("▦", "VOLUME 3D")
            Text("Volumes permitem túneis, cavernas, saliências e destruição, porque não dependem de mapa de altura.", color = StudioV3Muted, fontSize = 8.sp)
            V3WideButton("CRIAR VOLUME SÓLIDO", accent = true) { onCreate(24, false) }
            V3WideButton("CRIAR CAVERNA BASE") { onCreate(28, true) }
        }
        return
    }
    Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(9.dp), verticalArrangement = Arrangement.spacedBy(7.dp)) {
        V3InspectorSection("▦", "ESCULTURA VOLUMÉTRICA")
        Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(4.dp)) {
            VoxelBrushMode.entries.forEach { item -> V3ToolIcon(when (item) { VoxelBrushMode.ADD -> "+"; VoxelBrushMode.SUBTRACT -> "−"; VoxelBrushMode.SMOOTH -> "≈" }, item.name, brushMode == item) { onMode(item) } }
        }
        Text("PLANO DE CORTE", color = StudioV3Muted, fontSize = 7.sp, fontWeight = FontWeight.Bold)
        Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(4.dp)) { VoxelSliceAxis.entries.forEach { item -> V3Choice(item.name, axis == item) { onAxis(item) } } }
        V3Slider("Fatia", slice.toFloat(), 0f..(volume.safeResolution - 1).toFloat(), "$slice/${volume.safeResolution - 1}") { onSlice(it.toInt()) }
        V3Slider("Raio", radius, 0.01f..0.28f, "${(radius * 100).toInt()}%") { onRadius(it) }
        V3Slider("Força", strength, 0.01f..1f, "${(strength * 100).toInt()}%") { onStrength(it) }
        V3WideButton("SUAVIZAR VOLUME") { onSmooth(1) }
        V3InfoRow("Resolução", "${volume.safeResolution}³")
        V3InfoRow("Tamanho", "${volume.size.x.toInt()} × ${volume.size.y.toInt()} × ${volume.size.z.toInt()} m")
    }
}

@Composable
private fun V3NavigateInspector() {
    Column(Modifier.fillMaxSize().padding(10.dp), verticalArrangement = Arrangement.spacedBy(7.dp)) {
        V3InspectorSection("◎", "NAVEGAÇÃO")
        V3InfoRow("1 dedo", "orbitar")
        V3InfoRow("2 dedos", "deslocar")
        V3InfoRow("pinça", "zoom")
        Text("A navegação permanece separada da escultura e da transformação.", color = StudioV3Muted, fontSize = 8.sp)
    }
}

@Composable
private fun MeshProjectionEditor(
    mesh: EditableMeshComponent,
    onSelectVertex: (Int, Boolean) -> Unit,
    onMoveSelection: (TransformAxis, Float) -> Unit,
    modifier: Modifier = Modifier,
) {
    var activeVertex by remember { mutableStateOf<Int?>(null) }
    val bounds = remember(mesh.vertices) { meshBounds(mesh.vertices) }
    Box(modifier.background(Color(0xFF0B0E12)).border(1.dp, StudioV3Border)) {
        Canvas(
            Modifier.fillMaxSize().pointerInput(mesh.vertices, mesh.selectedVertices) {
                fun screen(vertex: Vector3): Offset {
                    val spanX = max(0.001f, bounds.maxX - bounds.minX)
                    val spanZ = max(0.001f, bounds.maxZ - bounds.minZ)
                    return Offset(
                        ((vertex.x - bounds.minX) / spanX * 0.82f + 0.09f) * size.width,
                        ((vertex.z - bounds.minZ) / spanZ * 0.82f + 0.09f) * size.height,
                    )
                }
                detectDragGestures(
                    onDragStart = { point ->
                        activeVertex = mesh.vertices.indices.minByOrNull { (screen(mesh.vertices[it]) - point).getDistance() }
                            ?.takeIf { (screen(mesh.vertices[it]) - point).getDistance() < 34f }
                        activeVertex?.let { onSelectVertex(it, false) }
                    },
                    onDragEnd = { activeVertex = null },
                    onDragCancel = { activeVertex = null },
                ) { change, drag ->
                    if (activeVertex == null) return@detectDragGestures
                    change.consume()
                    val spanX = max(0.001f, bounds.maxX - bounds.minX)
                    val spanZ = max(0.001f, bounds.maxZ - bounds.minZ)
                    onMoveSelection(TransformAxis.X, drag.x / size.width * spanX / 0.82f)
                    onMoveSelection(TransformAxis.Z, drag.y / size.height * spanZ / 0.82f)
                }
            },
        ) {
            val spanX = max(0.001f, bounds.maxX - bounds.minX)
            val spanZ = max(0.001f, bounds.maxZ - bounds.minZ)
            fun screen(vertex: Vector3) = Offset(
                ((vertex.x - bounds.minX) / spanX * 0.82f + 0.09f) * size.width,
                ((vertex.z - bounds.minZ) / spanZ * 0.82f + 0.09f) * size.height,
            )
            for (i in 0..10) {
                val x = size.width * (0.09f + i / 10f * 0.82f)
                val y = size.height * (0.09f + i / 10f * 0.82f)
                drawLine(Color(0xFF202631), Offset(x, size.height * 0.09f), Offset(x, size.height * 0.91f), 1f)
                drawLine(Color(0xFF202631), Offset(size.width * 0.09f, y), Offset(size.width * 0.91f, y), 1f)
            }
            mesh.faces.forEach { face ->
                face.vertexIndices.forEachIndexed { index, vertexIndex ->
                    val next = face.vertexIndices[(index + 1) % face.vertexIndices.size]
                    val a = mesh.vertices.getOrNull(vertexIndex)?.let(::screen) ?: return@forEachIndexed
                    val b = mesh.vertices.getOrNull(next)?.let(::screen) ?: return@forEachIndexed
                    drawLine(Color(0xFF6F7785), a, b, 2f)
                }
            }
            mesh.vertices.forEachIndexed { index, vertex ->
                val selected = index in mesh.selectedVertices
                drawCircle(if (selected) StudioV3Accent else StudioV3Text, if (selected) 9f else 6f, screen(vertex))
                if (selected) drawCircle(Color.White, 12f, screen(vertex), style = Stroke(2f))
            }
        }
        Text("TOPO · arraste os pontos", modifier = Modifier.align(Alignment.TopStart).padding(7.dp), color = StudioV3Muted, fontSize = 7.sp)
    }
}

@Composable
private fun VoxelSliceEditor(
    volume: VoxelVolumeComponent,
    axis: VoxelSliceAxis,
    slice: Int,
    brushRadius: Float,
    brushStrength: Float,
    brushMode: VoxelBrushMode,
    onBrush: (VoxelSliceAxis, Int, Float, Float, Float, Float, VoxelBrushMode) -> Unit,
    modifier: Modifier = Modifier,
) {
    Box(modifier.background(Color(0xFF090C10)).border(1.dp, StudioV3Border)) {
        Canvas(
            Modifier.fillMaxSize().pointerInput(axis, slice, brushRadius, brushStrength, brushMode, volume.density) {
                fun apply(point: Offset) {
                    onBrush(axis, slice, (point.x / size.width).coerceIn(0f, 1f), (point.y / size.height).coerceIn(0f, 1f), brushRadius, brushStrength, brushMode)
                }
                detectTapGestures { apply(it) }
            }.pointerInput(axis, slice, brushRadius, brushStrength, brushMode, volume.density) {
                detectDragGestures { change, _ -> change.consume(); onBrush(axis, slice, (change.position.x / size.width).coerceIn(0f, 1f), (change.position.y / size.height).coerceIn(0f, 1f), brushRadius, brushStrength, brushMode) }
            },
        ) {
            val r = volume.safeResolution
            val cellW = size.width / r
            val cellH = size.height / r
            fun density(u: Int, v: Int): Float = when (axis) {
                VoxelSliceAxis.X -> volume.densityAt(slice, v, u)
                VoxelSliceAxis.Y -> volume.densityAt(u, slice, v)
                VoxelSliceAxis.Z -> volume.densityAt(u, v, slice)
            }
            for (v in 0 until r) for (u in 0 until r) {
                val value = density(u, v)
                if (value > 0.02f) {
                    drawRect(Color(0xFF8490A0).copy(alpha = 0.18f + value * 0.72f), Offset(u * cellW, v * cellH), androidx.compose.ui.geometry.Size(cellW + 1f, cellH + 1f))
                }
            }
            for (i in 0..r step max(1, r / 8)) {
                drawLine(Color(0x332F3845), Offset(i * cellW, 0f), Offset(i * cellW, size.height), 1f)
                drawLine(Color(0x332F3845), Offset(0f, i * cellH), Offset(size.width, i * cellH), 1f)
            }
        }
        Text("FATIA ${axis.name} $slice · ${brushMode.name}", modifier = Modifier.align(Alignment.TopStart).padding(7.dp).background(Color(0xCC0E1116), RoundedCornerShape(3.dp)).padding(horizontal = 6.dp, vertical = 3.dp), color = StudioV3Text, fontSize = 7.sp)
    }
}

@Composable
private fun StudioV3AssetDock(
    expanded: Boolean,
    assets: List<AssetRecord>,
    mode: StudioV3Mode,
    terrain: TerrainComponent?,
    selectedLayerId: String?,
    onToggle: () -> Unit,
    onImport: () -> Unit,
    onUse: (AssetRecord) -> Unit,
) {
    val height = if (expanded) 106.dp else 38.dp
    Column(Modifier.fillMaxWidth().height(height).background(StudioV3Panel).border(1.dp, StudioV3Border)) {
        Row(Modifier.fillMaxWidth().height(38.dp), verticalAlignment = Alignment.CenterVertically) {
            V3IconButton(if (expanded) "⌄" else "⌃", "Assets", onClick = onToggle)
            Text("ASSETS", color = StudioV3Text, fontSize = 8.sp, fontWeight = FontWeight.Bold)
            Text(if (mode == StudioV3Mode.PAINT && terrain != null) "  camada ${selectedLayerId ?: "base"}" else "  ${assets.size} recursos", color = StudioV3Muted, fontSize = 7.sp)
            Spacer(Modifier.weight(1f))
            V3IconButton("＋", "Importar", onClick = onImport)
        }
        if (expanded) Row(Modifier.fillMaxWidth().height(68.dp).horizontalScroll(rememberScrollState()).padding(horizontal = 5.dp, vertical = 4.dp), horizontalArrangement = Arrangement.spacedBy(5.dp)) {
            assets.forEach { asset ->
                Column(Modifier.width(112.dp).fillMaxHeight().background(StudioV3Raised, RoundedCornerShape(3.dp)).border(1.dp, StudioV3Border, RoundedCornerShape(3.dp)).clickable { onUse(asset) }.padding(6.dp)) {
                    Text(if (asset.mediaType.startsWith("image/")) "▧" else "◇", color = if (asset.mediaType.startsWith("image/")) Color(0xFFE2B86F) else StudioV3Positive, fontSize = 11.sp)
                    Text(asset.displayName, color = StudioV3Text, fontSize = 7.sp, maxLines = 1, overflow = TextOverflow.Ellipsis)
                    Text(asset.relativePath.substringBeforeLast('/'), color = StudioV3Muted, fontSize = 6.sp, maxLines = 1, overflow = TextOverflow.Ellipsis)
                }
            }
        }
    }
}

@Composable
private fun V3PanelTitle(title: String, value: String?) {
    Row(Modifier.fillMaxWidth().height(34.dp).background(Color(0xFF111419)).border(1.dp, StudioV3Border).padding(horizontal = 9.dp), verticalAlignment = Alignment.CenterVertically) {
        Text(title, color = StudioV3Muted, fontSize = 7.sp, fontWeight = FontWeight.Bold, letterSpacing = 0.7.sp)
        Spacer(Modifier.weight(1f))
        value?.let { Text(it, color = StudioV3Muted, fontSize = 7.sp) }
    }
}

@Composable
private fun V3GroupHeader(title: String, count: Int) {
    Row(Modifier.fillMaxWidth().height(28.dp).background(Color(0xFF12151A)).padding(horizontal = 8.dp), verticalAlignment = Alignment.CenterVertically) {
        Text("⌄", color = StudioV3Muted, fontSize = 8.sp)
        Text(title.uppercase(), color = StudioV3Muted, fontSize = 7.sp, fontWeight = FontWeight.Bold, modifier = Modifier.padding(start = 6.dp))
        Spacer(Modifier.weight(1f))
        Text(count.toString(), color = StudioV3Muted, fontSize = 6.sp)
    }
}

@Composable
private fun V3WorkspaceTab(icon: String, label: String, selected: Boolean, onClick: () -> Unit) {
    TextButton(onClick = onClick, modifier = Modifier.width(82.dp).fillMaxHeight(), shape = RoundedCornerShape(0.dp), colors = ButtonDefaults.textButtonColors(containerColor = if (selected) StudioV3AccentSoft else Color.Transparent, contentColor = if (selected) StudioV3Accent else StudioV3Muted)) {
        Column(horizontalAlignment = Alignment.CenterHorizontally) {
            Text(icon, fontSize = 12.sp)
            Text(label, fontSize = 6.sp, fontWeight = if (selected) FontWeight.Bold else FontWeight.Normal)
        }
    }
}

@Composable
private fun V3RailButton(icon: String, label: String, selected: Boolean, onClick: () -> Unit) {
    TextButton(onClick = onClick, modifier = Modifier.size(44.dp), shape = RoundedCornerShape(0.dp), contentPadding = androidx.compose.foundation.layout.PaddingValues(0.dp), colors = ButtonDefaults.textButtonColors(containerColor = if (selected) StudioV3AccentSoft else Color.Transparent, contentColor = if (selected) StudioV3Accent else StudioV3Muted)) { Text(icon, fontSize = 14.sp) }
}

@Composable
private fun V3IconButton(icon: String, description: String, enabled: Boolean = true, accent: Boolean = false, onClick: () -> Unit) {
    TextButton(onClick = onClick, enabled = enabled, modifier = Modifier.size(44.dp), contentPadding = androidx.compose.foundation.layout.PaddingValues(0.dp), shape = RoundedCornerShape(0.dp), colors = ButtonDefaults.textButtonColors(containerColor = if (accent) StudioV3AccentSoft else Color.Transparent, contentColor = if (accent) StudioV3Accent else StudioV3Text, disabledContentColor = Color(0xFF555B64))) { Text(icon, fontSize = 13.sp) }
}

@Composable
private fun RowScope.V3CreateTile(icon: String, label: String, onClick: () -> Unit) {
    Column(Modifier.weight(1f).height(49.dp).background(StudioV3Raised, RoundedCornerShape(3.dp)).border(1.dp, StudioV3Border, RoundedCornerShape(3.dp)).clickable(onClick = onClick), horizontalAlignment = Alignment.CenterHorizontally, verticalArrangement = Arrangement.Center) {
        Text(icon, color = StudioV3Accent, fontSize = 12.sp)
        Text(label, color = StudioV3Text, fontSize = 6.sp)
    }
}

@Composable
private fun V3InspectorSection(icon: String, title: String) {
    Row(Modifier.fillMaxWidth().height(30.dp).background(Color(0xFF111419)).padding(horizontal = 7.dp), verticalAlignment = Alignment.CenterVertically) {
        Text(icon, color = StudioV3Accent, fontSize = 10.sp)
        Text(title, color = StudioV3Text, fontSize = 7.sp, fontWeight = FontWeight.Bold, modifier = Modifier.padding(start = 6.dp))
    }
}

@Composable
private fun RowScope.V3ToolIcon(icon: String, description: String, selected: Boolean, onClick: () -> Unit) {
    TextButton(onClick = onClick, modifier = Modifier.weight(1f).height(38.dp), shape = RoundedCornerShape(3.dp), colors = ButtonDefaults.textButtonColors(containerColor = if (selected) StudioV3AccentSoft else StudioV3Raised, contentColor = if (selected) StudioV3Accent else StudioV3Text)) { Text(icon, fontSize = 13.sp) }
}

@Composable
private fun RowScope.V3Choice(label: String, selected: Boolean, onClick: () -> Unit) {
    TextButton(onClick = onClick, modifier = Modifier.weight(1f).height(32.dp), shape = RoundedCornerShape(3.dp), contentPadding = androidx.compose.foundation.layout.PaddingValues(horizontal = 6.dp), colors = ButtonDefaults.textButtonColors(containerColor = if (selected) StudioV3AccentSoft else StudioV3Raised, contentColor = if (selected) StudioV3Accent else StudioV3Text)) { Text(label, fontSize = 7.sp, maxLines = 1) }
}

@Composable
private fun V3Slider(label: String, value: Float, range: ClosedFloatingPointRange<Float>, display: String, onChange: (Float) -> Unit) {
    Column(Modifier.fillMaxWidth()) {
        Row(Modifier.fillMaxWidth(), verticalAlignment = Alignment.CenterVertically) {
            Text(label, color = StudioV3Muted, fontSize = 7.sp, modifier = Modifier.weight(1f))
            Text(display, color = StudioV3Text, fontSize = 7.sp, fontFamily = FontFamily.Monospace)
        }
        Slider(value = value.coerceIn(range.start, range.endInclusive), onValueChange = onChange, valueRange = range, modifier = Modifier.fillMaxWidth().height(28.dp))
    }
}

@Composable
private fun V3WideButton(label: String, enabled: Boolean = true, accent: Boolean = false, onClick: () -> Unit) {
    TextButton(onClick = onClick, enabled = enabled, modifier = Modifier.fillMaxWidth().height(36.dp), shape = RoundedCornerShape(3.dp), colors = ButtonDefaults.textButtonColors(containerColor = if (accent) StudioV3Accent else StudioV3Raised, contentColor = if (accent) Color(0xFF07131B) else StudioV3Text, disabledContentColor = Color(0xFF5E646E))) { Text(label, fontSize = 7.sp, fontWeight = FontWeight.Bold) }
}

@Composable
private fun V3InfoRow(label: String, value: String) {
    Row(Modifier.fillMaxWidth().height(26.dp), verticalAlignment = Alignment.CenterVertically) {
        Text(label, color = StudioV3Muted, fontSize = 7.sp, modifier = Modifier.weight(1f))
        Text(value, color = StudioV3Text, fontSize = 7.sp, fontFamily = FontFamily.Monospace)
    }
}

@Composable
private fun V3TransformGroup(title: String, property: TransformProperty, value: EditorVector3, step: Float, onDelta: (TransformProperty, TransformAxis, Float) -> Unit, onValue: (TransformProperty, TransformAxis, Float) -> Unit) {
    Text(title, color = StudioV3Muted, fontSize = 7.sp, fontWeight = FontWeight.Bold)
    listOf(Triple(TransformAxis.X, value.x, Color(0xFFE16468)), Triple(TransformAxis.Y, value.y, Color(0xFF66C985)), Triple(TransformAxis.Z, value.z, Color(0xFF5A96DF))).forEach { (axis, axisValue, color) ->
        Row(Modifier.fillMaxWidth().height(30.dp), verticalAlignment = Alignment.CenterVertically) {
            Text(axis.name, color = color, fontSize = 8.sp, fontWeight = FontWeight.Bold, modifier = Modifier.width(20.dp))
            TextButton(onClick = { onDelta(property, axis, -step) }, modifier = Modifier.size(28.dp), contentPadding = androidx.compose.foundation.layout.PaddingValues(0.dp)) { Text("−") }
            Text("%.2f".format(axisValue), color = StudioV3Text, fontSize = 7.sp, fontFamily = FontFamily.Monospace, modifier = Modifier.weight(1f))
            TextButton(onClick = { onDelta(property, axis, step) }, modifier = Modifier.size(28.dp), contentPadding = androidx.compose.foundation.layout.PaddingValues(0.dp)) { Text("+") }
            TextButton(onClick = { onValue(property, axis, if (property == TransformProperty.SCALE) 1f else 0f) }, modifier = Modifier.size(28.dp), contentPadding = androidx.compose.foundation.layout.PaddingValues(0.dp)) { Text("↺", fontSize = 8.sp) }
        }
    }
}

@Composable
private fun V3AxisNudges(step: Float, onMove: (TransformAxis, Float) -> Unit) {
    listOf(TransformAxis.X to Color(0xFFE16468), TransformAxis.Y to Color(0xFF66C985), TransformAxis.Z to Color(0xFF5A96DF)).forEach { (axis, color) ->
        Row(Modifier.fillMaxWidth().height(30.dp), verticalAlignment = Alignment.CenterVertically) {
            Text(axis.name, color = color, fontWeight = FontWeight.Bold, modifier = Modifier.width(22.dp), fontSize = 8.sp)
            V3WideButton("− $step", onClick = { onMove(axis, -step) })
            Spacer(Modifier.width(4.dp))
            V3WideButton("+ $step", onClick = { onMove(axis, step) })
        }
    }
}

@Composable
private fun V3Empty(message: String) {
    Box(Modifier.fillMaxSize().padding(12.dp), contentAlignment = Alignment.Center) { Text(message, color = StudioV3Muted, fontSize = 8.sp) }
}

private fun v3ObjectIcon(type: EditorObjectType): String = when (type) {
    EditorObjectType.TERRAIN -> "⌁"
    EditorObjectType.MESH -> "◇"
    EditorObjectType.LIGHT -> "☼"
    EditorObjectType.CAMERA -> "◉"
    EditorObjectType.PLAYER, EditorObjectType.PLAYER_FIRST_PERSON, EditorObjectType.PLAYER_TOP_DOWN -> "♟"
    EditorObjectType.VEHICLE -> "▰"
    EditorObjectType.JOYSTICK -> "⊕"
    EditorObjectType.UI_BUTTON -> "▣"
    EditorObjectType.ENVIRONMENT -> "◌"
}

private data class MeshBounds(val minX: Float, val maxX: Float, val minZ: Float, val maxZ: Float)
private fun meshBounds(vertices: List<Vector3>): MeshBounds = if (vertices.isEmpty()) MeshBounds(-1f, 1f, -1f, 1f) else MeshBounds(vertices.minOf(Vector3::x), vertices.maxOf(Vector3::x), vertices.minOf(Vector3::z), vertices.maxOf(Vector3::z))
