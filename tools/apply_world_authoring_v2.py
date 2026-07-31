from pathlib import Path
import re


def read(path: str) -> str:
    return Path(path).read_text(encoding="utf-8")


def write(path: str, content: str) -> None:
    Path(path).write_text(content, encoding="utf-8")


def replace_once(path: str, old: str, new: str) -> None:
    text = read(path)
    if old not in text:
        if new in text:
            return
        raise RuntimeError(f"{path}: trecho não encontrado: {old[:140]!r}")
    write(path, text.replace(old, new, 1))


world_path = "editor/src/main/kotlin/com/mobilegamestudio/editor/WorldStudioWorkspaceV3.kt"
world = read(world_path)
if "import androidx.compose.ui.draw.clip" not in world:
    world = world.replace(
        "import androidx.compose.ui.graphics.Color\n",
        "import androidx.compose.ui.graphics.Color\nimport androidx.compose.ui.draw.clip\n",
        1,
    )

replacement = r'''@Composable
internal fun WorldStudioWorkspaceV3(
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
    onCreatePlayableWorld: () -> Unit,
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
    var modeName by rememberSaveable { mutableStateOf(StudioV3Mode.OBJECTS.name) }
    var drawerName by rememberSaveable { mutableStateOf(WorldV2Drawer.SCENE.name) }
    var surfaceEditing by rememberSaveable { mutableStateOf(false) }
    var inspectorVisible by rememberSaveable { mutableStateOf(true) }
    var assetsExpanded by rememberSaveable { mutableStateOf(false) }
    var voxelAxisName by rememberSaveable { mutableStateOf(VoxelSliceAxis.Z.name) }
    var voxelModeName by rememberSaveable { mutableStateOf(VoxelBrushMode.SUBTRACT.name) }
    var voxelSlice by rememberSaveable { mutableIntStateOf(12) }
    var voxelRadius by rememberSaveable { mutableFloatStateOf(0.08f) }
    var voxelStrength by rememberSaveable { mutableFloatStateOf(0.8f) }

    val mode = StudioV3Mode.valueOf(modeName)
    val drawer = WorldV2Drawer.valueOf(drawerName)
    val terrain = state.selectedTerrain
    val editableMesh = state.selectedEditableMesh
    val voxel = state.selectedVoxelVolume
    val voxelAxis = VoxelSliceAxis.valueOf(voxelAxisName)
    val voxelBrushMode = VoxelBrushMode.valueOf(voxelModeName)
    val isSurfaceMode = mode == StudioV3Mode.SCULPT || mode == StudioV3Mode.PAINT
    val terrainAuthoring = isSurfaceMode && surfaceEditing && terrain != null

    BoxWithConstraints(modifier.fillMaxSize().background(WorldV2Background)) {
        val compact = maxWidth < 940.dp
        val drawerWidth = if (compact) 190.dp else 224.dp
        val inspectorWidth = if (compact) 252.dp else 292.dp

        Column(Modifier.fillMaxSize()) {
            WorldV2Header(
                state = state,
                onExit = onExit,
                onUndo = onUndo,
                onRedo = onRedo,
                onSave = onSave,
                onPlay = onPlay,
                inspectorVisible = inspectorVisible,
                onToggleInspector = { inspectorVisible = !inspectorVisible },
            )

            Row(Modifier.weight(1f).fillMaxWidth()) {
                WorldV2Rail(
                    selected = drawer,
                    onSelect = { selected ->
                        drawerName = if (drawer == selected) WorldV2Drawer.NONE.name else selected.name
                    },
                )

                if (drawer != WorldV2Drawer.NONE) {
                    WorldV2DrawerPanel(
                        drawer = drawer,
                        state = state,
                        width = drawerWidth,
                        onSelectObject = onSelectObject,
                        onToggleVisibility = onToggleVisibility,
                        onAddPrimitive = onAddPrimitive,
                        onAddSceneObject = onAddSceneObject,
                        onCreateFlatTerrain = onCreateFlatTerrain,
                        onCreatePlayableWorld = onCreatePlayableWorld,
                        onCreateEditableMesh = onCreateEditableMesh,
                        onCreateVoxelVolume = onCreateVoxelVolume,
                        onImportAsset = onImportAsset,
                    )
                }

                Column(
                    Modifier
                        .weight(1f)
                        .fillMaxHeight()
                        .background(WorldV2ViewportBackground),
                ) {
                    WorldV2ModeBar(
                        mode = mode,
                        surfaceEditing = surfaceEditing,
                        activeTool = state.activeTool,
                        onMode = { next ->
                            modeName = next.name
                            surfaceEditing = false
                            when (next) {
                                StudioV3Mode.PAINT -> onTerrainToolChange(TerrainBrushMode.PAINT, null, null, null, null)
                                StudioV3Mode.OBJECTS, StudioV3Mode.MESH -> if (state.activeTool == EditorTool.SELECT) onToolSelected(EditorTool.MOVE)
                                else -> onToolSelected(EditorTool.SELECT)
                            }
                        },
                        onSurfaceEditing = { surfaceEditing = it },
                        onToolSelected = onToolSelected,
                    )

                    Box(
                        Modifier
                            .weight(1f)
                            .fillMaxWidth()
                            .padding(8.dp)
                            .clip(RoundedCornerShape(18.dp))
                            .background(Color.Black)
                            .border(1.dp, WorldV2Border, RoundedCornerShape(18.dp)),
                    ) {
                        when {
                            mode == StudioV3Mode.MESH && editableMesh != null -> Column(Modifier.fillMaxSize()) {
                                SceneViewport(
                                    state = state,
                                    resolveAsset = resolveAsset,
                                    onObjectSelected = onViewportObjectSelected,
                                    onTransformDrag = { _, _ -> },
                                    onTransformChange = onTransformChange,
                                    onDiagnostic = onDiagnostic,
                                    onPreviewAction = {},
                                    editorChromeVisible = false,
                                    modifier = Modifier.weight(0.64f).fillMaxWidth(),
                                )
                                MeshProjectionEditor(
                                    mesh = editableMesh,
                                    onSelectVertex = onSelectMeshVertex,
                                    onMoveSelection = onMoveMeshSelection,
                                    modifier = Modifier.weight(0.36f).fillMaxWidth(),
                                )
                            }
                            mode == StudioV3Mode.VOLUME && voxel != null -> Column(Modifier.fillMaxSize()) {
                                SceneViewport(
                                    state = state,
                                    resolveAsset = resolveAsset,
                                    onObjectSelected = onViewportObjectSelected,
                                    onTransformDrag = { _, _ -> },
                                    onTransformChange = onTransformChange,
                                    onDiagnostic = onDiagnostic,
                                    onPreviewAction = {},
                                    editorChromeVisible = false,
                                    modifier = Modifier.weight(0.62f).fillMaxWidth(),
                                )
                                VoxelSliceEditor(
                                    volume = voxel,
                                    axis = voxelAxis,
                                    slice = voxelSlice.coerceIn(0, voxel.safeResolution - 1),
                                    brushRadius = voxelRadius,
                                    brushStrength = voxelStrength,
                                    brushMode = voxelBrushMode,
                                    onBrush = onVoxelBrush,
                                    modifier = Modifier.weight(0.38f).fillMaxWidth(),
                                )
                            }
                            else -> SceneViewport(
                                state = state,
                                resolveAsset = resolveAsset,
                                onObjectSelected = { id -> if (!terrainAuthoring) onViewportObjectSelected(id) },
                                onTransformDrag = { _, _ -> },
                                onTransformChange = onTransformChange,
                                onDiagnostic = onDiagnostic,
                                onPreviewAction = {},
                                terrainAuthoringEnabled = terrainAuthoring,
                                terrainTopDownCamera = false,
                                terrainBrushRadius = state.terrainTool.radius,
                                onTerrainStrokeBegin = onTerrainStrokeBegin,
                                onTerrainStrokePoint = onTerrainStrokePoint,
                                onTerrainStrokeEnd = onTerrainStrokeEnd,
                                editorChromeVisible = false,
                                modifier = Modifier.fillMaxSize(),
                            )
                        }

                        if (isSurfaceMode) {
                            WorldV2ViewportHint(
                                editing = terrainAuthoring,
                                hasTerrain = terrain != null,
                                modifier = Modifier.align(Alignment.TopStart).padding(12.dp),
                            )
                        }
                    }

                    WorldV2StatusBar(
                        state = state,
                        mode = mode,
                        surfaceEditing = terrainAuthoring,
                        onAssets = { assetsExpanded = !assetsExpanded },
                    )
                }

                if (inspectorVisible) {
                    WorldV2Inspector(
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
                        onCreatePlayableWorld = onCreatePlayableWorld,
                        onImportHeightmap = onImportHeightmap,
                        onConvertSelectedToEditableMesh = onConvertSelectedToEditableMesh,
                        onSelectMeshFace = onSelectMeshFace,
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
            }

            WorldV2AssetDock(
                expanded = assetsExpanded,
                assets = state.assets,
                onToggle = { assetsExpanded = !assetsExpanded },
                onImport = onImportAsset,
                onUse = { asset ->
                    if (mode == StudioV3Mode.PAINT && terrain != null && asset.mediaType.startsWith("image/")) {
                        val layerId = state.terrainTool.materialLayerId ?: terrain.materialLayers.firstOrNull()?.id
                        if (layerId != null) onAssignTerrainTexture(layerId, asset.id, asset.displayName.contains("normal", true))
                    } else onAddAsset(asset)
                },
            )
        }
    }
}

private val WorldV2Background = Color(0xFF0B0D11)
private val WorldV2Panel = Color(0xFF13161B)
private val WorldV2Raised = Color(0xFF1B2027)
private val WorldV2ViewportBackground = Color(0xFF090B0E)
private val WorldV2Border = Color(0xFF2B313B)
private val WorldV2Accent = Color(0xFF8D63D7)
private val WorldV2AccentSoft = Color(0xFF2A203C)
private val WorldV2Text = Color(0xFFF0F1F5)
private val WorldV2Muted = Color(0xFF9AA1AD)

private enum class WorldV2Drawer { NONE, SCENE, CREATE, WORLD, ASSETS }

@Composable
private fun WorldV2Header(
    state: WorkspaceUiState,
    onExit: () -> Unit,
    onUndo: () -> Unit,
    onRedo: () -> Unit,
    onSave: () -> Unit,
    onPlay: () -> Unit,
    inspectorVisible: Boolean,
    onToggleInspector: () -> Unit,
) {
    Row(
        Modifier.fillMaxWidth().height(54.dp).background(WorldV2Panel).border(1.dp, WorldV2Border).padding(horizontal = 8.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(6.dp),
    ) {
        WorldV2IconButton("‹", "Voltar", onExit)
        Column(Modifier.weight(1f)) {
            Text(state.metadata?.name ?: "World Studio", color = WorldV2Text, fontSize = 12.sp, fontWeight = FontWeight.Bold)
            Text(
                if (state.isSceneDirty) "Alterações não salvas" else "res://scenes/main.scene",
                color = if (state.isSceneDirty) StudioV3Danger else WorldV2Muted,
                fontSize = 7.sp,
            )
        }
        WorldV2IconButton("↶", "Desfazer", onUndo, state.canUndo)
        WorldV2IconButton("↷", "Refazer", onRedo, state.canRedo)
        WorldV2IconButton("▤", "Inspector", onToggleInspector, active = inspectorVisible)
        WorldV2TextButton("Salvar", onSave, enabled = state.isSceneDirty && !state.isSavingScene)
        WorldV2IconButton("▶", "Jogar", onPlay, active = true)
    }
}

@Composable
private fun WorldV2Rail(selected: WorldV2Drawer, onSelect: (WorldV2Drawer) -> Unit) {
    Column(
        Modifier.width(58.dp).fillMaxHeight().background(WorldV2Panel).border(1.dp, WorldV2Border).padding(vertical = 8.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(7.dp),
    ) {
        listOf(
            Triple(WorldV2Drawer.SCENE, "◇", "Cena"),
            Triple(WorldV2Drawer.CREATE, "+", "Criar"),
            Triple(WorldV2Drawer.WORLD, "⌁", "Mundo"),
            Triple(WorldV2Drawer.ASSETS, "▧", "Assets"),
        ).forEach { (drawer, icon, label) ->
            val active = drawer == selected
            TextButton(
                onClick = { onSelect(drawer) },
                modifier = Modifier.size(46.dp),
                shape = RoundedCornerShape(14.dp),
                contentPadding = androidx.compose.foundation.layout.PaddingValues(0.dp),
                colors = ButtonDefaults.textButtonColors(
                    containerColor = if (active) WorldV2AccentSoft else Color.Transparent,
                    contentColor = if (active) WorldV2Accent else WorldV2Muted,
                ),
            ) {
                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                    Text(icon, fontSize = 15.sp, fontWeight = FontWeight.Bold)
                    Text(label, fontSize = 6.sp)
                }
            }
        }
    }
}

@Composable
private fun WorldV2DrawerPanel(
    drawer: WorldV2Drawer,
    state: WorkspaceUiState,
    width: Dp,
    onSelectObject: (String) -> Unit,
    onToggleVisibility: (String) -> Unit,
    onAddPrimitive: (PrimitiveMesh) -> Unit,
    onAddSceneObject: (EditorObjectType) -> Unit,
    onCreateFlatTerrain: (Int, Float, Float) -> Unit,
    onCreatePlayableWorld: () -> Unit,
    onCreateEditableMesh: (PrimitiveMesh) -> Unit,
    onCreateVoxelVolume: (Int, Boolean) -> Unit,
    onImportAsset: () -> Unit,
) {
    Column(
        Modifier.width(width).fillMaxHeight().background(WorldV2Panel).border(1.dp, WorldV2Border).padding(10.dp),
    ) {
        Text(
            when (drawer) {
                WorldV2Drawer.SCENE -> "CENA"
                WorldV2Drawer.CREATE -> "CRIAR"
                WorldV2Drawer.WORLD -> "MUNDO"
                WorldV2Drawer.ASSETS -> "ASSETS"
                else -> ""
            },
            color = WorldV2Muted,
            fontSize = 8.sp,
            fontWeight = FontWeight.Bold,
            letterSpacing = 0.8.sp,
            modifier = Modifier.padding(horizontal = 4.dp, vertical = 8.dp),
        )
        when (drawer) {
            WorldV2Drawer.SCENE -> LazyColumn(verticalArrangement = Arrangement.spacedBy(4.dp)) {
                items(state.sceneObjects, key = { it.id }) { item ->
                    val selected = item.id == state.selectedObjectId
                    Row(
                        Modifier.fillMaxWidth().height(42.dp)
                            .background(if (selected) WorldV2AccentSoft else WorldV2Raised, RoundedCornerShape(12.dp))
                            .clickable { onSelectObject(item.id) }
                            .padding(horizontal = 8.dp),
                        verticalAlignment = Alignment.CenterVertically,
                    ) {
                        Text(worldObjectGlyph(item.type), color = if (selected) WorldV2Accent else WorldV2Muted, fontSize = 12.sp)
                        Text(item.name, color = WorldV2Text, fontSize = 8.sp, maxLines = 1, overflow = TextOverflow.Ellipsis, modifier = Modifier.weight(1f).padding(horizontal = 7.dp))
                        TextButton(onClick = { onToggleVisibility(item.id) }, contentPadding = androidx.compose.foundation.layout.PaddingValues(0.dp), modifier = Modifier.size(30.dp)) {
                            Text(if (item.isVisible) "●" else "○", color = if (item.isVisible) StudioV3Positive else WorldV2Muted, fontSize = 8.sp)
                        }
                    }
                }
            }
            WorldV2Drawer.CREATE -> Column(verticalArrangement = Arrangement.spacedBy(7.dp)) {
                WorldV2PrimaryAction("Mundo jogável", "Terreno + jogador + câmera + luz + controles", onCreatePlayableWorld)
                WorldV2Action("Cubo", "Malha básica") { onAddPrimitive(PrimitiveMesh.CUBE) }
                WorldV2Action("Plano", "Base plana") { onAddPrimitive(PrimitiveMesh.PLANE) }
                WorldV2Action("Terreno", "Heightfield 65²") { onCreateFlatTerrain(65, 96f, 20f) }
                WorldV2Action("Jogador", "Terceira pessoa") { onAddSceneObject(EditorObjectType.PLAYER) }
                WorldV2Action("Câmera", "Câmera principal") { onAddSceneObject(EditorObjectType.CAMERA) }
                WorldV2Action("Luz", "Luz direcional") { onAddSceneObject(EditorObjectType.LIGHT) }
            }
            WorldV2Drawer.WORLD -> Column(verticalArrangement = Arrangement.spacedBy(7.dp)) {
                WorldV2PrimaryAction("Preparar mundo", "Cria um fluxo jogável completo", onCreatePlayableWorld)
                WorldV2Action("Terreno plano", "Começar do zero") { onCreateFlatTerrain(65, 96f, 20f) }
                WorldV2Action("Malha editável", "Cubo com vértices e faces") { onCreateEditableMesh(PrimitiveMesh.CUBE) }
                WorldV2Action("Volume voxel", "Base para cavernas") { onCreateVoxelVolume(24, true) }
            }
            WorldV2Drawer.ASSETS -> Column(verticalArrangement = Arrangement.spacedBy(7.dp)) {
                WorldV2PrimaryAction("Importar", "GLB, PNG, JPG e WebP", onImportAsset)
                Text("${state.assets.size} assets no projeto", color = WorldV2Muted, fontSize = 8.sp, modifier = Modifier.padding(4.dp))
            }
            else -> Unit
        }
    }
}

@Composable
private fun WorldV2ModeBar(
    mode: StudioV3Mode,
    surfaceEditing: Boolean,
    activeTool: EditorTool,
    onMode: (StudioV3Mode) -> Unit,
    onSurfaceEditing: (Boolean) -> Unit,
    onToolSelected: (EditorTool) -> Unit,
) {
    Row(
        Modifier.fillMaxWidth().height(52.dp).background(WorldV2Panel).border(1.dp, WorldV2Border).horizontalScroll(rememberScrollState()).padding(horizontal = 8.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(5.dp),
    ) {
        listOf(
            StudioV3Mode.OBJECTS to "Objetos",
            StudioV3Mode.SCULPT to "Terreno",
            StudioV3Mode.PAINT to "Textura",
            StudioV3Mode.MESH to "Malha",
            StudioV3Mode.VOLUME to "Volume",
        ).forEach { (candidate, label) ->
            WorldV2Chip(label, mode == candidate) { onMode(candidate) }
        }
        Spacer(Modifier.width(8.dp))
        if (mode == StudioV3Mode.SCULPT || mode == StudioV3Mode.PAINT) {
            WorldV2Chip("◎ Navegar", !surfaceEditing) { onSurfaceEditing(false) }
            WorldV2Chip(if (mode == StudioV3Mode.PAINT) "◐ Pintar" else "⌁ Esculpir", surfaceEditing) { onSurfaceEditing(true) }
        } else if (mode == StudioV3Mode.OBJECTS || mode == StudioV3Mode.MESH) {
            EditorTool.entries.forEach { tool ->
                WorldV2Chip(
                    when (tool) {
                        EditorTool.SELECT -> "Selecionar"
                        EditorTool.MOVE -> "Mover"
                        EditorTool.ROTATE -> "Girar"
                        EditorTool.SCALE -> "Escalar"
                    },
                    activeTool == tool,
                ) { onToolSelected(tool) }
            }
        }
    }
}

@Composable
private fun WorldV2ViewportHint(editing: Boolean, hasTerrain: Boolean, modifier: Modifier = Modifier) {
    val message = when {
        !hasTerrain -> "Selecione ou crie um terreno"
        editing -> "Pincel ativo · arraste para editar"
        else -> "Navegação ativa · orbite, mova e aproxime"
    }
    Text(
        message,
        modifier = modifier.background(Color(0xD916191F), RoundedCornerShape(12.dp)).padding(horizontal = 10.dp, vertical = 7.dp),
        color = if (editing) WorldV2Accent else WorldV2Muted,
        fontSize = 8.sp,
    )
}

@Composable
private fun WorldV2StatusBar(state: WorkspaceUiState, mode: StudioV3Mode, surfaceEditing: Boolean, onAssets: () -> Unit) {
    Row(
        Modifier.fillMaxWidth().height(36.dp).background(WorldV2Panel).border(1.dp, WorldV2Border).padding(horizontal = 10.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Text(state.selectedObject?.name ?: "Nenhum objeto selecionado", color = WorldV2Muted, fontSize = 7.sp, modifier = Modifier.weight(1f), maxLines = 1, overflow = TextOverflow.Ellipsis)
        if (mode == StudioV3Mode.SCULPT || mode == StudioV3Mode.PAINT) {
            Text(if (surfaceEditing) "EDITANDO" else "NAVEGANDO", color = if (surfaceEditing) WorldV2Accent else StudioV3Positive, fontSize = 7.sp, fontWeight = FontWeight.Bold)
        }
        TextButton(onClick = onAssets, shape = RoundedCornerShape(10.dp)) { Text("Assets ${state.assets.size}", fontSize = 7.sp) }
    }
}

@Composable
private fun WorldV2Inspector(
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
    onCreatePlayableWorld: () -> Unit,
    onImportHeightmap: () -> Unit,
    onConvertSelectedToEditableMesh: () -> Unit,
    onSelectMeshFace: (Int) -> Unit,
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
    Column(
        Modifier.width(width).fillMaxHeight().background(WorldV2Panel).border(1.dp, WorldV2Border).verticalScroll(rememberScrollState()).padding(12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp),
    ) {
        Text("PROPRIEDADES", color = WorldV2Muted, fontSize = 8.sp, fontWeight = FontWeight.Bold, letterSpacing = 0.8.sp)
        val selected = state.selectedObject
        if (selected == null) {
            WorldV2PrimaryAction("Criar mundo jogável", "Fluxo mínimo completo para testar", onCreatePlayableWorld)
            Text("Selecione um objeto na cena para editar suas propriedades.", color = WorldV2Muted, fontSize = 8.sp)
            return@Column
        }
        Text(selected.name, color = WorldV2Text, fontSize = 13.sp, fontWeight = FontWeight.Bold, maxLines = 1, overflow = TextOverflow.Ellipsis)
        Text(selected.type.label, color = WorldV2Muted, fontSize = 8.sp)

        WorldV2Section("Transformação") {
            WorldV2VectorRows("Posição", selected.transform.position, TransformProperty.POSITION, 0.1f, onTransformChange, onTransformValueChange)
            WorldV2VectorRows("Rotação", selected.transform.rotation, TransformProperty.ROTATION, 5f, onTransformChange, onTransformValueChange)
            WorldV2VectorRows("Escala", selected.transform.scale, TransformProperty.SCALE, 0.05f, onTransformChange, onTransformValueChange)
        }

        when (mode) {
            StudioV3Mode.SCULPT -> WorldV2Section("Escultura") {
                if (terrain == null) {
                    WorldV2PrimaryAction("Criar terreno", "Heightfield plano 65²", { onCreateFlatTerrain(65, 96f, 20f) })
                    WorldV2Action("Importar heightmap", "PNG, JPG, RAW16 ou R16", onImportHeightmap)
                } else {
                    Row(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()), horizontalArrangement = Arrangement.spacedBy(5.dp)) {
                        listOf(
                            TerrainBrushMode.RAISE to "Elevar",
                            TerrainBrushMode.LOWER to "Escavar",
                            TerrainBrushMode.SMOOTH to "Suavizar",
                            TerrainBrushMode.FLATTEN to "Nivelar",
                        ).forEach { (brush, label) ->
                            WorldV2Chip(label, state.terrainTool.mode == brush) { onTerrainToolChange(brush, null, null, null, null) }
                        }
                    }
                    WorldV2Slider("Raio", state.terrainTool.radius, 0.02f..0.42f) { onTerrainToolChange(null, it, null, null, null) }
                    WorldV2Slider("Força", state.terrainTool.strength, 0.02f..1f) { onTerrainToolChange(null, null, it, null, null) }
                    if (state.terrainTool.mode == TerrainBrushMode.FLATTEN) {
                        WorldV2Slider("Altura alvo", state.terrainTool.targetHeight, 0f..1f) { onTerrainToolChange(null, null, null, it, null) }
                    }
                    Row(horizontalArrangement = Arrangement.spacedBy(5.dp)) {
                        TerrainBrushFalloff.entries.forEach { falloff ->
                            WorldV2Chip(falloff.name.lowercase().replaceFirstChar(Char::uppercase), state.terrainTool.falloff == falloff) { onTerrainFalloffChange(falloff) }
                        }
                    }
                }
            }
            StudioV3Mode.PAINT -> WorldV2Section("Materiais do terreno") {
                if (terrain == null) Text("Selecione um terreno.", color = WorldV2Muted, fontSize = 8.sp)
                else terrain.materialLayers.forEach { layer ->
                    WorldV2Chip(layer.name, state.terrainTool.materialLayerId == layer.id) {
                        onTerrainToolChange(TerrainBrushMode.PAINT, null, null, null, layer.id)
                    }
                }
                Text("Abra o dock de assets e toque em uma textura para ligá-la à camada ativa.", color = WorldV2Muted, fontSize = 7.sp)
            }
            StudioV3Mode.MESH -> WorldV2Section("Malha editável") {
                if (editableMesh == null) {
                    WorldV2Action("Converter seleção", "Transforma o objeto em topologia editável", onConvertSelectedToEditableMesh)
                } else {
                    Text("${editableMesh.vertices.size} vértices · ${editableMesh.faces.size} faces", color = WorldV2Muted, fontSize = 8.sp)
                    WorldV2Action("Próxima face", "Face ${(editableMesh.selectedFace ?: -1) + 1}") {
                        if (editableMesh.faces.isNotEmpty()) onSelectMeshFace(((editableMesh.selectedFace ?: -1) + 1) % editableMesh.faces.size)
                    }
                    WorldV2Action("Extrudar", "0,25 m") { onExtrudeMeshFace(0.25f) }
                    WorldV2Action("Subdividir", "Divide a face selecionada", onSubdivideMeshFace)
                    WorldV2Action("Refinar", "Topologia adaptativa local", onDyntopoMesh)
                    WorldV2Action("Converter para voxel", "Cria volume 24³") { onConvertMeshToVoxel(24) }
                }
            }
            StudioV3Mode.VOLUME -> WorldV2Section("Volume voxel") {
                if (voxel == null) {
                    WorldV2Action("Criar caverna", "Volume 24³ editável") { onCreateVoxel(24, true) }
                } else {
                    Row(horizontalArrangement = Arrangement.spacedBy(5.dp)) {
                        VoxelSliceAxis.entries.forEach { WorldV2Chip(it.name, voxelAxis == it) { onVoxelAxis(it) } }
                    }
                    Row(horizontalArrangement = Arrangement.spacedBy(5.dp)) {
                        VoxelBrushMode.entries.forEach { WorldV2Chip(it.name, voxelBrushMode == it) { onVoxelMode(it) } }
                    }
                    WorldV2Slider("Fatia", voxelSlice.toFloat(), 0f..(voxel.safeResolution - 1).toFloat()) { onVoxelSlice(it.toInt()) }
                    WorldV2Slider("Raio", voxelRadius, 0.02f..0.25f, onVoxelRadius)
                    WorldV2Slider("Força", voxelStrength, 0.05f..1f, onVoxelStrength)
                    WorldV2Action("Suavizar volume", "1 passagem") { onSmoothVoxel(1) }
                }
            }
            else -> WorldV2Section("Ferramenta") {
                Row(horizontalArrangement = Arrangement.spacedBy(5.dp)) {
                    EditorTool.entries.forEach { tool ->
                        WorldV2Chip(tool.label, state.activeTool == tool) { onToolSelected(tool) }
                    }
                }
            }
        }
    }
}

@Composable
private fun WorldV2VectorRows(
    label: String,
    value: EditorVector3,
    property: TransformProperty,
    step: Float,
    onDelta: (TransformProperty, TransformAxis, Float) -> Unit,
    onValue: (TransformProperty, TransformAxis, Float) -> Unit,
) {
    Text(label, color = WorldV2Muted, fontSize = 7.sp, modifier = Modifier.padding(top = 4.dp))
    WorldV2AxisRow("X", value.x, property, TransformAxis.X, step, onDelta, onValue)
    WorldV2AxisRow("Y", value.y, property, TransformAxis.Y, step, onDelta, onValue)
    WorldV2AxisRow("Z", value.z, property, TransformAxis.Z, step, onDelta, onValue)
}

@Composable
private fun WorldV2AxisRow(
    axisLabel: String,
    value: Float,
    property: TransformProperty,
    axis: TransformAxis,
    step: Float,
    onDelta: (TransformProperty, TransformAxis, Float) -> Unit,
    onValue: (TransformProperty, TransformAxis, Float) -> Unit,
) {
    Row(Modifier.fillMaxWidth().height(34.dp), verticalAlignment = Alignment.CenterVertically) {
        Text(axisLabel, color = when (axis) { TransformAxis.X -> Color(0xFFE16F74); TransformAxis.Y -> Color(0xFF6FC78C); TransformAxis.Z -> Color(0xFF69A6E8) }, fontSize = 8.sp, fontWeight = FontWeight.Bold, modifier = Modifier.width(18.dp))
        TextButton(onClick = { onDelta(property, axis, -step) }, modifier = Modifier.size(30.dp), contentPadding = androidx.compose.foundation.layout.PaddingValues(0.dp), shape = RoundedCornerShape(9.dp)) { Text("−") }
        Text(
            "%.2f".format(value),
            color = WorldV2Text,
            fontSize = 8.sp,
            textAlign = androidx.compose.ui.text.style.TextAlign.Center,
            modifier = Modifier.weight(1f).background(WorldV2Raised, RoundedCornerShape(9.dp)).padding(vertical = 8.dp).clickable { onValue(property, axis, value) },
        )
        TextButton(onClick = { onDelta(property, axis, step) }, modifier = Modifier.size(30.dp), contentPadding = androidx.compose.foundation.layout.PaddingValues(0.dp), shape = RoundedCornerShape(9.dp)) { Text("+") }
    }
}

@Composable
private fun WorldV2Section(title: String, content: @Composable () -> Unit) {
    Column(
        Modifier.fillMaxWidth().background(WorldV2Raised, RoundedCornerShape(14.dp)).border(1.dp, WorldV2Border, RoundedCornerShape(14.dp)).padding(10.dp),
        verticalArrangement = Arrangement.spacedBy(7.dp),
    ) {
        Text(title.uppercase(), color = WorldV2Muted, fontSize = 7.sp, fontWeight = FontWeight.Bold, letterSpacing = 0.7.sp)
        content()
    }
}

@Composable
private fun WorldV2Slider(label: String, value: Float, range: ClosedFloatingPointRange<Float>, onChange: (Float) -> Unit) {
    Column {
        Row(Modifier.fillMaxWidth()) {
            Text(label, color = WorldV2Muted, fontSize = 7.sp, modifier = Modifier.weight(1f))
            Text("%.2f".format(value), color = WorldV2Text, fontSize = 7.sp)
        }
        Slider(value = value.coerceIn(range.start, range.endInclusive), onValueChange = onChange, valueRange = range)
    }
}

@Composable
private fun WorldV2AssetDock(
    expanded: Boolean,
    assets: List<AssetRecord>,
    onToggle: () -> Unit,
    onImport: () -> Unit,
    onUse: (AssetRecord) -> Unit,
) {
    Column(Modifier.fillMaxWidth().background(WorldV2Panel).border(1.dp, WorldV2Border)) {
        Row(Modifier.fillMaxWidth().height(38.dp).padding(horizontal = 10.dp), verticalAlignment = Alignment.CenterVertically) {
            TextButton(onClick = onToggle, shape = RoundedCornerShape(10.dp)) { Text(if (expanded) "▾ Assets" else "▴ Assets", fontSize = 8.sp) }
            Text("${assets.size} itens", color = WorldV2Muted, fontSize = 7.sp, modifier = Modifier.weight(1f))
            WorldV2TextButton("Importar", onImport)
        }
        if (expanded) {
            Row(
                Modifier.fillMaxWidth().height(112.dp).horizontalScroll(rememberScrollState()).padding(8.dp),
                horizontalArrangement = Arrangement.spacedBy(8.dp),
            ) {
                assets.forEach { asset ->
                    Column(
                        Modifier.width(116.dp).fillMaxHeight().background(WorldV2Raised, RoundedCornerShape(12.dp)).clickable { onUse(asset) }.padding(8.dp),
                    ) {
                        Text(if (asset.mediaType.startsWith("image/")) "▧" else "◇", color = WorldV2Accent, fontSize = 18.sp)
                        Text(asset.displayName, color = WorldV2Text, fontSize = 7.sp, maxLines = 2, overflow = TextOverflow.Ellipsis)
                        Text(asset.mediaType.substringAfter('/'), color = WorldV2Muted, fontSize = 6.sp)
                    }
                }
            }
        }
    }
}

@Composable
private fun WorldV2PrimaryAction(title: String, subtitle: String, onClick: () -> Unit) {
    TextButton(
        onClick = onClick,
        modifier = Modifier.fillMaxWidth().height(56.dp),
        shape = RoundedCornerShape(14.dp),
        colors = ButtonDefaults.textButtonColors(containerColor = WorldV2AccentSoft, contentColor = WorldV2Text),
    ) {
        Column(Modifier.fillMaxWidth(), horizontalAlignment = Alignment.Start) {
            Text(title, fontSize = 9.sp, fontWeight = FontWeight.Bold)
            Text(subtitle, color = WorldV2Muted, fontSize = 6.sp, maxLines = 1, overflow = TextOverflow.Ellipsis)
        }
    }
}

@Composable
private fun WorldV2Action(title: String, subtitle: String, onClick: () -> Unit) {
    TextButton(
        onClick = onClick,
        modifier = Modifier.fillMaxWidth().height(46.dp),
        shape = RoundedCornerShape(12.dp),
        colors = ButtonDefaults.textButtonColors(containerColor = WorldV2Raised, contentColor = WorldV2Text),
    ) {
        Column(Modifier.fillMaxWidth(), horizontalAlignment = Alignment.Start) {
            Text(title, fontSize = 8.sp, fontWeight = FontWeight.SemiBold)
            Text(subtitle, color = WorldV2Muted, fontSize = 6.sp, maxLines = 1, overflow = TextOverflow.Ellipsis)
        }
    }
}

@Composable
private fun WorldV2Chip(label: String, active: Boolean, onClick: () -> Unit) {
    TextButton(
        onClick = onClick,
        shape = RoundedCornerShape(12.dp),
        colors = ButtonDefaults.textButtonColors(
            containerColor = if (active) WorldV2AccentSoft else WorldV2Raised,
            contentColor = if (active) WorldV2Accent else WorldV2Muted,
        ),
        contentPadding = androidx.compose.foundation.layout.PaddingValues(horizontal = 10.dp, vertical = 3.dp),
    ) { Text(label, fontSize = 7.sp, fontWeight = if (active) FontWeight.Bold else FontWeight.Normal) }
}

@Composable
private fun WorldV2IconButton(glyph: String, description: String, onClick: () -> Unit, enabled: Boolean = true, active: Boolean = false) {
    TextButton(
        onClick = onClick,
        enabled = enabled,
        modifier = Modifier.size(42.dp),
        shape = RoundedCornerShape(13.dp),
        contentPadding = androidx.compose.foundation.layout.PaddingValues(0.dp),
        colors = ButtonDefaults.textButtonColors(
            containerColor = if (active) WorldV2AccentSoft else WorldV2Raised,
            contentColor = if (active) WorldV2Accent else WorldV2Text,
        ),
    ) { Text(glyph, fontSize = 14.sp) }
}

@Composable
private fun WorldV2TextButton(label: String, onClick: () -> Unit, enabled: Boolean = true) {
    TextButton(
        onClick = onClick,
        enabled = enabled,
        shape = RoundedCornerShape(12.dp),
        colors = ButtonDefaults.textButtonColors(containerColor = WorldV2Raised, contentColor = WorldV2Text),
    ) { Text(label, fontSize = 8.sp) }
}

private fun worldObjectGlyph(type: EditorObjectType): String = when (type) {
    EditorObjectType.TERRAIN -> "⌁"
    EditorObjectType.CAMERA -> "◉"
    EditorObjectType.LIGHT -> "☀"
    EditorObjectType.PLAYER, EditorObjectType.PLAYER_FIRST_PERSON, EditorObjectType.PLAYER_TOP_DOWN -> "♟"
    EditorObjectType.MESH -> "◇"
    EditorObjectType.JOYSTICK, EditorObjectType.UI_BUTTON -> "▣"
    EditorObjectType.VEHICLE -> "▰"
    else -> "·"
}

@Composable
private fun StudioV3Header'''

pattern = re.compile(
    r"@Composable\ninternal fun WorldStudioWorkspaceV3\(.*?\n\}\n\n@Composable\nprivate fun StudioV3Header",
    re.DOTALL,
)
world, count = pattern.subn(replacement, world, count=1)
if count != 1 and "WorldV2Header" not in world:
    raise RuntimeError("Não foi possível substituir o workspace V3")
write(world_path, world)

screen = "editor/src/main/kotlin/com/mobilegamestudio/editor/WorkspaceScreen.kt"
replace_once(
    screen,
    "                onCreateFlatTerrain = viewModel::createFlatTerrain,\n",
    "                onCreateFlatTerrain = viewModel::createFlatTerrain,\n                onCreatePlayableWorld = viewModel::createPlayableWorld,\n",
)

shell = "editor/src/main/kotlin/com/mobilegamestudio/editor/GodotCompactEditorShell.kt"
replace_once(
    shell,
    "    onCreateFlatTerrain: (Int, Float, Float) -> Unit,\n",
    "    onCreateFlatTerrain: (Int, Float, Float) -> Unit,\n    onCreatePlayableWorld: () -> Unit,\n",
)
replace_once(
    shell,
    "                        onCreateFlatTerrain = onCreateFlatTerrain,\n",
    "                        onCreateFlatTerrain = onCreateFlatTerrain,\n                        onCreatePlayableWorld = onCreatePlayableWorld,\n                        onPlay = onTogglePreview,\n",
)

view_model = "editor/src/main/kotlin/com/mobilegamestudio/editor/WorkspaceViewModel.kt"
vm = read(view_model)
if "fun createPlayableWorld()" not in vm:
    marker = "    fun updateTerrainTool(\n"
    function = r'''    fun createPlayableWorld() {
        if (!canEdit()) return
        val document = mutableState.value.sceneDocument ?: return
        val normalized = document.objects.map { item ->
            if (item.component<CharacterControllerComponent>() != null && "player" !in item.tags) {
                item.copy(tags = item.tags + "player")
            } else item
        }
        val additions = mutableListOf<GameObject>()

        val terrainId = normalized.firstOrNull { it.component<TerrainComponent>() != null }?.id ?: run {
            var terrain = createFlatTerrainComponent(65, 96f, 20f)
            terrain = terrain.applyBrush(
                TerrainBrush(TerrainBrushMode.RAISE, 0.30f, 0.34f, radius = 0.22f, strength = 0.46f, falloff = TerrainBrushFalloff.SMOOTH),
            ).applyBrush(
                TerrainBrush(TerrainBrushMode.RAISE, 0.70f, 0.63f, radius = 0.27f, strength = 0.34f, falloff = TerrainBrushFalloff.SMOOTH),
            ).applyBrush(
                TerrainBrush(TerrainBrushMode.LOWER, 0.52f, 0.52f, radius = 0.16f, strength = 0.24f, falloff = TerrainBrushFalloff.SMOOTH),
            ).applyBrush(
                TerrainBrush(TerrainBrushMode.SMOOTH, 0.50f, 0.50f, radius = 0.46f, strength = 0.30f, falloff = TerrainBrushFalloff.SMOOTH),
            ).applyAutoTile()
            val id = UUID.randomUUID().toString()
            additions += GameObject(
                id = id,
                name = "Terreno principal",
                tags = setOf("world", "starter-world"),
                components = listOf(TransformComponent(), terrain),
            )
            id
        }

        if (normalized.none { it.component<DirectionalLightComponent>()?.enabled == true }) {
            additions += GameObject(
                id = UUID.randomUUID().toString(),
                name = "Sol",
                tags = setOf("world", "starter-world"),
                components = listOf(
                    TransformComponent(rotationEulerDegrees = Vector3(-48f, -32f, 0f)),
                    DirectionalLightComponent(intensityLux = 78_000f, castShadows = true),
                ),
            )
        }
        if (normalized.none { it.component<CameraComponent>()?.let { camera -> camera.enabled && camera.isMain } == true }) {
            additions += GameObject(
                id = UUID.randomUUID().toString(),
                name = "Câmera principal",
                tags = setOf("world", "starter-world"),
                components = listOf(
                    TransformComponent(position = Vector3(7f, 5f, 9f), rotationEulerDegrees = Vector3(-18f, 218f, 0f)),
                    CameraComponent(isMain = true, fieldOfViewDegrees = 62f),
                ),
            )
        }
        if (normalized.none { it.component<CharacterControllerComponent>()?.enabled == true && "player" in it.tags }) {
            additions += GameObject(
                id = UUID.randomUUID().toString(),
                name = "Jogador",
                tags = setOf("player", "starter-world"),
                components = listOf(
                    TransformComponent(position = Vector3(0f, 2.2f, 5f), scale = Vector3(0.7f, 1.8f, 0.7f)),
                    CharacterControllerComponent(
                        movementSpeed = 5.2f,
                        jumpForce = 6.8f,
                        gravity = 18f,
                        cameraMode = CharacterCameraMode.THIRD_PERSON,
                        cameraDistance = 4.8f,
                        cameraHeight = 1.55f,
                        lookSensitivity = 0.58f,
                    ),
                    MeshRendererComponent(primitive = PrimitiveMesh.CUBE, colorArgb = 0xFF7B5AC8),
                    ColliderComponent(shape = com.mobilegamestudio.core.model.ColliderShape.CAPSULE, size = Vector3(0.7f, 1.8f, 0.7f)),
                ),
            )
        }
        if (normalized.none { it.component<VirtualJoystickComponent>()?.enabled == true }) {
            additions += GameObject(
                id = UUID.randomUUID().toString(),
                name = "Movimento",
                tags = setOf("ui", "starter-world"),
                components = listOf(TransformComponent(), VirtualJoystickComponent(eventPrefix = "move")),
            )
        }
        if (normalized.none { it.component<TouchButtonComponent>()?.eventName == "jump" }) {
            additions += GameObject(
                id = UUID.randomUUID().toString(),
                name = "Pular",
                tags = setOf("ui", "starter-world"),
                components = listOf(
                    TransformComponent(),
                    TouchButtonComponent(label = "PULAR", eventName = "jump", normalizedX = 0.86f, normalizedY = 0.72f),
                ),
            )
        }

        val objects = normalized + additions
        val updated = document.copy(
            objects = objects,
            rootObjects = (document.rootObjects + additions.map(GameObject::id)).distinct(),
            editorSettings = document.editorSettings.copy(
                cameraTarget = Vector3(0f, 1f, 0f),
                cameraOrbit = Vector3(8f, 6f, 10f),
                gridVisible = true,
                selectedObjectId = terrainId,
            ),
        )
        applyDocumentEdit(updated)
        mutableState.update {
            it.copy(
                selectedObjectId = terrainId,
                terrainTool = it.terrainTool.copy(mode = TerrainBrushMode.RAISE, radius = 0.14f, strength = 0.34f),
                message = "Mundo jogável preparado. Molde o terreno, depois toque em Jogar para testar movimento, visão e pulo.",
            )
        }
    }

'''
    if marker not in vm:
        raise RuntimeError("Marcador de updateTerrainTool não encontrado")
    vm = vm.replace(marker, function + marker, 1)

old_return = '''    return GameObject(
        id = id,
        name = name,
        enabled = isVisible,
        parentId = parentId,
        components = listOf(transform) + specificComponents,
    )'''
new_return = '''    return GameObject(
        id = id,
        name = name,
        enabled = isVisible,
        parentId = parentId,
        tags = when (type) {
            EditorObjectType.PLAYER,
            EditorObjectType.PLAYER_FIRST_PERSON,
            EditorObjectType.PLAYER_TOP_DOWN,
            -> setOf("player")
            else -> emptySet()
        },
        components = listOf(transform) + specificComponents,
    )'''
if old_return in vm:
    vm = vm.replace(old_return, new_return, 1)
write(view_model, vm)

runtime_path = "runtime/src/main/kotlin/com/mobilegamestudio/runtime/RuntimeSceneViewport.kt"
runtime = read(runtime_path)
old_camera = r'''    val editorCameraManipulator = if (firstPersonPlay || controlledVehicle != null || (authoredPlayCamera != null && mode == EditorMode.PLAY) || terrainTopDownCamera) {
        null
    } else {
        key(document.sceneId, mode) {
            if (mode == EditorMode.EDITOR) {
                remember(document.sceneId) {
                    StudioOrbitCameraManipulator(
                        eye = Position(
                            selectedTarget.x + cameraOffset.x,
                            selectedTarget.y + cameraOffset.y,
                            selectedTarget.z + cameraOffset.z,
                        ),
                        target = Position(selectedTarget.x, selectedTarget.y, selectedTarget.z),
                    )
                }
            } else {
                rememberCameraManipulator(
                    orbitHomePosition = Position(
                        selectedTarget.x + cameraOffset.x,
                        selectedTarget.y + cameraOffset.y,
                        selectedTarget.z + cameraOffset.z,
                    ),
                    targetPosition = Position(selectedTarget.x, selectedTarget.y, selectedTarget.z),
                )
            }
        }
    }'''
new_camera = r'''    val persistentEditorManipulator = remember(document.sceneId) {
        StudioOrbitCameraManipulator(
            eye = Position(
                document.editorSettings.cameraOrbit.x,
                document.editorSettings.cameraOrbit.y,
                document.editorSettings.cameraOrbit.z,
            ),
            target = Position(
                document.editorSettings.cameraTarget.x,
                document.editorSettings.cameraTarget.y,
                document.editorSettings.cameraTarget.z,
            ),
        )
    }
    val editorCameraManipulator = when {
        firstPersonPlay || controlledVehicle != null || (authoredPlayCamera != null && mode == EditorMode.PLAY) || terrainTopDownCamera -> null
        mode == EditorMode.EDITOR -> persistentEditorManipulator
        else -> rememberCameraManipulator(
            orbitHomePosition = Position(
                selectedTarget.x + cameraOffset.x,
                selectedTarget.y + cameraOffset.y,
                selectedTarget.z + cameraOffset.z,
            ),
            targetPosition = Position(selectedTarget.x, selectedTarget.y, selectedTarget.z),
        )
    }'''
if old_camera in runtime:
    runtime = runtime.replace(old_camera, new_camera, 1)
elif "persistentEditorManipulator" not in runtime:
    raise RuntimeError("Bloco da câmera persistente não encontrado")

if "private fun buildEditorGridNodes" not in runtime:
    helper = r'''
private fun buildEditorGridNodes(
    engine: Engine,
    minorMaterial: MaterialInstance,
    xMaterial: MaterialInstance,
    zMaterial: MaterialInstance,
): List<Node> = buildList {
    val extent = 20
    val span = extent * 2f
    for (index in -extent..extent) {
        val zLineMaterial = if (index == 0) xMaterial else minorMaterial
        add(
            CubeNode(
                engine = engine,
                size = Size(span, 0.004f, if (index == 0) 0.035f else 0.018f),
                materialInstance = zLineMaterial,
            ).apply {
                name = "__editor_grid_x_$index"
                position = Position(0f, 0.004f, index.toFloat())
                isTouchable = false
                isEditable = false
            },
        )
        val xLineMaterial = if (index == 0) zMaterial else minorMaterial
        add(
            CubeNode(
                engine = engine,
                size = Size(if (index == 0) 0.035f else 0.018f, 0.004f, span),
                materialInstance = xLineMaterial,
            ).apply {
                name = "__editor_grid_z_$index"
                position = Position(index.toFloat(), 0.004f, 0f)
                isTouchable = false
                isEditable = false
            },
        )
    }
}

'''
    marker = "private suspend fun buildProjection("
    if marker not in runtime:
        raise RuntimeError("buildProjection não encontrado")
    runtime = runtime.replace(marker, helper + marker, 1)

old_try = '''    try {
        var loadedModels = 0'''
new_try = '''    try {
        if (mode == EditorMode.EDITOR && document.editorSettings.gridVisible) {
            val minorGridMaterial = materialLoader.createColorInstance(
                Color(0xFF252B33), metallic = 0f, roughness = 1f,
            ).also(materials::add)
            val xAxisMaterial = materialLoader.createColorInstance(
                Color(0xFF8B4048), metallic = 0f, roughness = 1f,
            ).also(materials::add)
            val zAxisMaterial = materialLoader.createColorInstance(
                Color(0xFF3F608C), metallic = 0f, roughness = 1f,
            ).also(materials::add)
            nodes += buildEditorGridNodes(engine, minorGridMaterial, xAxisMaterial, zAxisMaterial)
        }
        var loadedModels = 0'''
if old_try in runtime:
    runtime = runtime.replace(old_try, new_try, 1)
write(runtime_path, runtime)

Path("docs/editor/WORLD_AUTHORING_V2.md").write_text(
    """# World Authoring V2\n\n"
    "O fluxo principal foi reorganizado em Cena, Criar, Mundo, Assets, Viewport e Inspector.\n\n"
    "## Fluxo validável\n\n"
    "1. Use **Criar mundo jogável** para preparar terreno, iluminação, câmera, jogador, joystick e botão de pulo.\n"
    "2. Em **Terreno**, mantenha **Navegar** ativo para posicionar a câmera.\n"
    "3. Ative **Esculpir** somente durante o traço.\n"
    "4. Escolha Elevar, Escavar, Suavizar ou Nivelar e ajuste raio/força no Inspector.\n"
    "5. Em **Textura**, selecione uma camada e aplique imagens pelo dock de Assets.\n"
    "6. Toque em **Jogar** para validar movimento, câmera e pulo.\n\n"
    "A câmera orbital do editor é preservada ao entrar e sair do Play. O terreno não força mais visão superior.\n",
    encoding="utf-8",
)
