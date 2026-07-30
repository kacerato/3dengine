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
import androidx.compose.material3.OutlinedTextField
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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.mobilegamestudio.core.model.AssetRecord
import com.mobilegamestudio.core.model.PrimitiveMesh
import com.mobilegamestudio.core.model.TerrainBrushFalloff
import com.mobilegamestudio.core.model.TerrainBrushMode
import com.mobilegamestudio.core.model.TerrainComponent
import java.io.File

private enum class WorldStudioMode(val label: String, val hint: String) {
    SCULPT("Moldar", "Arraste diretamente no terreno"),
    PAINT("Textura", "Pinte a camada selecionada"),
    OBJECTS("Objetos", "Use as setas para mover, girar e escalar"),
    NAVIGATE("Navegar", "Orbitar, aproximar e inspecionar"),
}

/**
 * World editor rebuilt around one rule: the viewport is the tool.
 *
 * There is no detached 2D heightmap and no generator-first workflow. Terrain
 * strokes, texture strokes and object transforms happen on top of the 3D view,
 * while the side panels only configure the active tool.
 */
@Composable
internal fun WorldStudioWorkspace(
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
    modifier: Modifier = Modifier,
) {
    var modeName by rememberSaveable { mutableStateOf(WorldStudioMode.SCULPT.name) }
    val mode = WorldStudioMode.valueOf(modeName)
    val terrain = state.selectedTerrain
    val directTerrainMode = terrain != null && mode in setOf(WorldStudioMode.SCULPT, WorldStudioMode.PAINT)

    BoxWithConstraints(modifier.fillMaxSize().background(Color(0xFF111319))) {
        val compact = maxWidth < 760.dp
        val outlinerWidth = if (compact) 132.dp else 172.dp
        val inspectorWidth = if (compact) 190.dp else 232.dp

        Column(Modifier.fillMaxSize()) {
            WorldStudioTopBar(
                state = state,
                mode = mode,
                onModeChange = {
                    modeName = it.name
                    when (it) {
                        WorldStudioMode.OBJECTS -> if (state.activeTool == EditorTool.SELECT) onToolSelected(EditorTool.MOVE)
                        WorldStudioMode.SCULPT, WorldStudioMode.PAINT, WorldStudioMode.NAVIGATE -> onToolSelected(EditorTool.SELECT)
                    }
                },
                onExit = onExit,
                onUndo = onUndo,
                onRedo = onRedo,
                onSave = onSave,
            )

            Row(Modifier.weight(1f).fillMaxWidth()) {
                WorldOutliner(
                    state = state,
                    width = outlinerWidth,
                    onSelectObject = onSelectObject,
                    onToggleVisibility = onToggleVisibility,
                    onAddPrimitive = onAddPrimitive,
                    onAddSceneObject = onAddSceneObject,
                )

                Box(Modifier.weight(1f).fillMaxHeight().background(Color(0xFF171A20))) {
                    SceneViewport(
                        state = state,
                        resolveAsset = resolveAsset,
                        onObjectSelected = { id ->
                            if (!directTerrainMode) {
                                onViewportObjectSelected(id)
                                if (id != null) modeName = WorldStudioMode.OBJECTS.name
                            }
                        },
                        onTransformDrag = { _, _ -> },
                        onTransformChange = onTransformChange,
                        onDiagnostic = onDiagnostic,
                        onPreviewAction = {},
                        terrainAuthoringEnabled = directTerrainMode,
                        terrainTopDownCamera = directTerrainMode,
                        terrainBrushRadius = state.terrainTool.radius,
                        onTerrainStrokeBegin = onTerrainStrokeBegin,
                        onTerrainStrokePoint = onTerrainStrokePoint,
                        onTerrainStrokeEnd = onTerrainStrokeEnd,
                        modifier = Modifier.fillMaxSize(),
                    )
                    WorldViewportBadge(mode, terrain, Modifier.align(Alignment.TopStart))
                    if (directTerrainMode) {
                        Text(
                            "1 dedo: ${if (mode == WorldStudioMode.PAINT) "pintar" else "moldar"} · altere para NAVEGAR para orbitar",
                            modifier = Modifier
                                .align(Alignment.BottomStart)
                                .padding(10.dp)
                                .background(Color(0xD90E1015), RoundedCornerShape(4.dp))
                                .padding(horizontal = 8.dp, vertical = 5.dp),
                            color = Color(0xFFD6D9E0),
                            fontSize = 8.sp,
                        )
                    }
                }

                WorldToolInspector(
                    state = state,
                    terrain = terrain,
                    mode = mode,
                    width = inspectorWidth,
                    onModeChange = { modeName = it.name },
                    onToolSelected = onToolSelected,
                    onTransformChange = onTransformChange,
                    onTransformValueChange = onTransformValueChange,
                    onTerrainToolChange = onTerrainToolChange,
                    onTerrainFalloffChange = onTerrainFalloffChange,
                    onCreateFlatTerrain = onCreateFlatTerrain,
                    onImportHeightmap = onImportHeightmap,
                )
            }

            WorldAssetShelf(
                assets = state.assets,
                mode = mode,
                terrain = terrain,
                selectedLayerId = state.terrainTool.materialLayerId,
                onImport = onImportAsset,
                onUse = { asset ->
                    if (mode == WorldStudioMode.PAINT && terrain != null && asset.mediaType.startsWith("image/")) {
                        val layerId = state.terrainTool.materialLayerId ?: terrain.materialLayers.firstOrNull()?.id
                        if (layerId != null) {
                            onAssignTerrainTexture(
                                layerId,
                                asset.id,
                                asset.displayName.contains("normal", ignoreCase = true),
                            )
                        }
                    } else {
                        onAddAsset(asset)
                    }
                },
            )
        }
    }
}

@Composable
private fun WorldStudioTopBar(
    state: WorkspaceUiState,
    mode: WorldStudioMode,
    onModeChange: (WorldStudioMode) -> Unit,
    onExit: () -> Unit,
    onUndo: () -> Unit,
    onRedo: () -> Unit,
    onSave: () -> Unit,
) {
    Row(
        Modifier.fillMaxWidth().height(46.dp).background(Color(0xFF191C22)).border(1.dp, Color(0xFF2A2E36)),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        WorldButton("‹", onExit, width = 42.dp)
        Column(Modifier.width(150.dp).padding(horizontal = 8.dp)) {
            Text("WORLD STUDIO", color = Color.White, fontWeight = FontWeight.Bold, fontSize = 10.sp)
            Text(
                state.selectedObject?.name ?: "Nenhum objeto selecionado",
                color = Color(0xFF949AA6),
                fontSize = 7.sp,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
            )
        }
        Row(Modifier.weight(1f).horizontalScroll(rememberScrollState()), horizontalArrangement = Arrangement.Center) {
            WorldStudioMode.entries.forEach { item ->
                WorldModeButton(item, item == mode) { onModeChange(item) }
            }
        }
        WorldButton("↶", onUndo, enabled = state.canUndo, width = 42.dp)
        WorldButton("↷", onRedo, enabled = state.canRedo, width = 42.dp)
        WorldButton(if (state.isSavingScene) "…" else "Salvar", onSave, enabled = state.isSceneDirty, width = 64.dp, accent = state.isSceneDirty)
    }
}

@Composable
private fun WorldModeButton(mode: WorldStudioMode, selected: Boolean, onClick: () -> Unit) {
    TextButton(
        onClick = onClick,
        modifier = Modifier.height(46.dp),
        shape = RoundedCornerShape(0.dp),
        colors = ButtonDefaults.textButtonColors(
            containerColor = if (selected) Color(0xFF2B253A) else Color.Transparent,
            contentColor = if (selected) Color(0xFFC9A7FF) else Color(0xFFADB2BC),
        ),
    ) {
        Column(horizontalAlignment = Alignment.CenterHorizontally) {
            Text(mode.label, fontSize = 9.sp, fontWeight = if (selected) FontWeight.Bold else FontWeight.Normal)
            Text(mode.hint, fontSize = 5.sp, maxLines = 1)
        }
    }
}

@Composable
private fun WorldOutliner(
    state: WorkspaceUiState,
    width: androidx.compose.ui.unit.Dp,
    onSelectObject: (String) -> Unit,
    onToggleVisibility: (String) -> Unit,
    onAddPrimitive: (PrimitiveMesh) -> Unit,
    onAddSceneObject: (EditorObjectType) -> Unit,
) {
    Column(Modifier.width(width).fillMaxHeight().background(Color(0xFF15181E)).border(1.dp, Color(0xFF2A2E36))) {
        PanelHeading("CENA", "${state.sceneObjects.size}")
        LazyColumn(Modifier.weight(1f).fillMaxWidth()) {
            items(state.sceneObjects, key = EditorSceneObject::id) { item ->
                val selected = item.id == state.selectedObjectId
                Row(
                    Modifier
                        .fillMaxWidth()
                        .height(36.dp)
                        .background(if (selected) Color(0xFF2B253A) else Color.Transparent)
                        .clickable { onSelectObject(item.id) }
                        .padding(horizontal = 6.dp),
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Text(worldObjectGlyph(item.type), color = if (selected) Color(0xFFC9A7FF) else Color(0xFF8D94A0), fontSize = 8.sp, modifier = Modifier.width(24.dp))
                    Text(item.name, modifier = Modifier.weight(1f), color = if (selected) Color.White else Color(0xFFC2C6CE), fontSize = 8.sp, maxLines = 1, overflow = TextOverflow.Ellipsis)
                    Text(
                        if (item.isVisible) "●" else "○",
                        color = if (item.isVisible) Color(0xFF7ED6A7) else Color(0xFF606672),
                        fontSize = 8.sp,
                        modifier = Modifier.clickable { onToggleVisibility(item.id) }.padding(5.dp),
                    )
                }
            }
        }
        PanelHeading("ADICIONAR", null)
        Row(Modifier.fillMaxWidth().padding(5.dp), horizontalArrangement = Arrangement.spacedBy(4.dp)) {
            SmallSquareAction("Cubo") { onAddPrimitive(PrimitiveMesh.CUBE) }
            SmallSquareAction("Plano") { onAddPrimitive(PrimitiveMesh.PLANE) }
        }
        Row(Modifier.fillMaxWidth().padding(horizontal = 5.dp, vertical = 2.dp), horizontalArrangement = Arrangement.spacedBy(4.dp)) {
            SmallSquareAction("Terreno") { onAddSceneObject(EditorObjectType.TERRAIN) }
            SmallSquareAction("Luz") { onAddSceneObject(EditorObjectType.LIGHT) }
        }
        Spacer(Modifier.height(5.dp))
    }
}

@Composable
private fun WorldToolInspector(
    state: WorkspaceUiState,
    terrain: TerrainComponent?,
    mode: WorldStudioMode,
    width: androidx.compose.ui.unit.Dp,
    onModeChange: (WorldStudioMode) -> Unit,
    onToolSelected: (EditorTool) -> Unit,
    onTransformChange: (TransformProperty, TransformAxis, Float) -> Unit,
    onTransformValueChange: (TransformProperty, TransformAxis, Float) -> Unit,
    onTerrainToolChange: (TerrainBrushMode?, Float?, Float?, Float?, String?) -> Unit,
    onTerrainFalloffChange: (TerrainBrushFalloff) -> Unit,
    onCreateFlatTerrain: (Int, Float, Float) -> Unit,
    onImportHeightmap: () -> Unit,
) {
    Column(Modifier.width(width).fillMaxHeight().background(Color(0xFF15181E)).border(1.dp, Color(0xFF2A2E36))) {
        PanelHeading(mode.label.uppercase(), null)
        when (mode) {
            WorldStudioMode.SCULPT -> if (terrain == null) {
                FlatTerrainCreator(onCreateFlatTerrain, onImportHeightmap)
            } else {
                SculptInspector(state, terrain, onTerrainToolChange, onTerrainFalloffChange)
            }
            WorldStudioMode.PAINT -> if (terrain == null) {
                EmptyInspector("Selecione ou crie um terreno para pintar.") { onModeChange(WorldStudioMode.SCULPT) }
            } else {
                PaintInspector(state, terrain, onTerrainToolChange)
            }
            WorldStudioMode.OBJECTS -> ObjectInspector(state, onToolSelected, onTransformChange, onTransformValueChange)
            WorldStudioMode.NAVIGATE -> NavigateInspector()
        }
    }
}

@Composable
private fun SculptInspector(
    state: WorkspaceUiState,
    terrain: TerrainComponent,
    onToolChange: (TerrainBrushMode?, Float?, Float?, Float?, String?) -> Unit,
    onFalloffChange: (TerrainBrushFalloff) -> Unit,
) {
    Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(8.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
        Text("FERRAMENTA", color = Color(0xFF858B96), fontSize = 7.sp, fontWeight = FontWeight.Bold)
        listOf(
            TerrainBrushMode.RAISE to "Elevar",
            TerrainBrushMode.LOWER to "Escavar",
            TerrainBrushMode.SMOOTH to "Suavizar",
            TerrainBrushMode.FLATTEN to "Nivelar",
        ).forEach { (brush, label) ->
            WideToolButton(label, state.terrainTool.mode == brush) { onToolChange(brush, null, null, null, null) }
        }
        InspectorSlider("Raio", state.terrainTool.radius, 0.01f..0.42f) { onToolChange(null, it, null, null, null) }
        InspectorSlider("Força", state.terrainTool.strength, 0.01f..1f) { onToolChange(null, null, it, null, null) }
        if (state.terrainTool.mode == TerrainBrushMode.FLATTEN) {
            InspectorSlider("Altura alvo", state.terrainTool.targetHeight, 0f..1f) { onToolChange(null, null, null, it, null) }
        }
        Text("QUEDA DO PINCEL", color = Color(0xFF858B96), fontSize = 7.sp, fontWeight = FontWeight.Bold)
        Row(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()), horizontalArrangement = Arrangement.spacedBy(4.dp)) {
            TerrainBrushFalloff.entries.forEach { falloff ->
                MiniChoice(falloff.name.lowercase().replaceFirstChar(Char::uppercase), state.terrainTool.falloff == falloff) {
                    onFalloffChange(falloff)
                }
            }
        }
        Text(
            "${terrain.resolution} × ${terrain.resolution} · ${terrain.width.toInt()} m · ${terrain.maxHeight.toInt()} m de altura",
            color = Color(0xFF949AA6),
            fontSize = 7.sp,
            fontFamily = FontFamily.Monospace,
        )
        Text(
            "Cada arrasto é salvo como um único passo de desfazer. O relevo é criado manualmente no viewport, não por botão gerador.",
            color = Color(0xFFB8BDC7),
            fontSize = 8.sp,
        )
    }
}

@Composable
private fun PaintInspector(
    state: WorkspaceUiState,
    terrain: TerrainComponent,
    onToolChange: (TerrainBrushMode?, Float?, Float?, Float?, String?) -> Unit,
) {
    Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(8.dp), verticalArrangement = Arrangement.spacedBy(7.dp)) {
        Text("CAMADA ATIVA", color = Color(0xFF858B96), fontSize = 7.sp, fontWeight = FontWeight.Bold)
        terrain.materialLayers.forEach { layer ->
            val selected = state.terrainTool.materialLayerId == layer.id
            Row(
                Modifier
                    .fillMaxWidth()
                    .height(42.dp)
                    .background(if (selected) Color(0xFF2B253A) else Color(0xFF1B1E25), RoundedCornerShape(4.dp))
                    .border(1.dp, if (selected) Color(0xFF9D6CE8) else Color(0xFF30343D), RoundedCornerShape(4.dp))
                    .clickable { onToolChange(TerrainBrushMode.PAINT, null, null, null, layer.id) }
                    .padding(6.dp),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Box(Modifier.size(25.dp).background(Color(layer.colorArgb), RoundedCornerShape(3.dp)))
                Column(Modifier.weight(1f).padding(start = 7.dp)) {
                    Text(layer.name, color = Color.White, fontSize = 8.sp, maxLines = 1)
                    Text(if (layer.textureAssetId == null) "cor procedural" else "textura aplicada", color = Color(0xFF8F96A1), fontSize = 6.sp)
                }
            }
        }
        InspectorSlider("Raio", state.terrainTool.radius, 0.01f..0.42f) { onToolChange(null, it, null, null, null) }
        InspectorSlider("Opacidade", state.terrainTool.strength, 0.01f..1f) { onToolChange(null, null, it, null, null) }
        Text("Toque em uma imagem na barra inferior para usá-la como textura da camada ativa.", color = Color(0xFFB8BDC7), fontSize = 8.sp)
    }
}

@Composable
private fun ObjectInspector(
    state: WorkspaceUiState,
    onToolSelected: (EditorTool) -> Unit,
    onTransformChange: (TransformProperty, TransformAxis, Float) -> Unit,
    onTransformValueChange: (TransformProperty, TransformAxis, Float) -> Unit,
) {
    val selected = state.selectedObject
    if (selected == null) {
        EmptyInspector("Selecione um cubo, modelo, luz ou câmera no viewport ou na lista.", null)
        return
    }
    Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(8.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
        Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(4.dp)) {
            listOf(EditorTool.MOVE, EditorTool.ROTATE, EditorTool.SCALE).forEach { tool ->
                MiniChoice(tool.label, state.activeTool == tool) { onToolSelected(tool) }
            }
        }
        TransformSection("POSIÇÃO", TransformProperty.POSITION, selected.transform.position, 0.1f, onTransformChange, onTransformValueChange)
        TransformSection("ROTAÇÃO", TransformProperty.ROTATION, selected.transform.rotation, 5f, onTransformChange, onTransformValueChange)
        TransformSection("ESCALA", TransformProperty.SCALE, selected.transform.scale, 0.1f, onTransformChange, onTransformValueChange)
        Text("Arraste as setas coloridas no centro do viewport. Os campos acima permitem ajuste fino por eixo.", color = Color(0xFFB8BDC7), fontSize = 8.sp)
    }
}

@Composable
private fun TransformSection(
    title: String,
    property: TransformProperty,
    value: EditorVector3,
    step: Float,
    onDelta: (TransformProperty, TransformAxis, Float) -> Unit,
    onValue: (TransformProperty, TransformAxis, Float) -> Unit,
) {
    Text(title, color = Color(0xFF858B96), fontSize = 7.sp, fontWeight = FontWeight.Bold)
    listOf(
        Triple(TransformAxis.X, value.x, Color(0xFFE65C5C)),
        Triple(TransformAxis.Y, value.y, Color(0xFF61C77B)),
        Triple(TransformAxis.Z, value.z, Color(0xFF5C91E6)),
    ).forEach { (axis, axisValue, color) ->
        Row(Modifier.fillMaxWidth().height(34.dp), verticalAlignment = Alignment.CenterVertically) {
            Text(axis.name, color = color, fontWeight = FontWeight.Bold, fontSize = 9.sp, modifier = Modifier.width(20.dp))
            WorldButton("−", { onDelta(property, axis, -step) }, width = 32.dp)
            Text(
                "%.2f".format(axisValue),
                modifier = Modifier.weight(1f),
                color = Color(0xFFD9DCE2),
                fontFamily = FontFamily.Monospace,
                fontSize = 8.sp,
            )
            WorldButton("+", { onDelta(property, axis, step) }, width = 32.dp)
            WorldButton("0", { onValue(property, axis, if (property == TransformProperty.SCALE) 1f else 0f) }, width = 32.dp)
        }
    }
}

@Composable
private fun NavigateInspector() {
    Column(Modifier.fillMaxSize().padding(10.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
        Text("NAVEGAÇÃO LIVRE", color = Color.White, fontWeight = FontWeight.Bold, fontSize = 10.sp)
        Text("Arraste para orbitar. Use gesto de pinça para aproximar. A câmera fica separada das ferramentas de edição para não acelerar nem travar.", color = Color(0xFFB8BDC7), fontSize = 8.sp)
        Text("Volte para MOLDAR para editar em vista superior precisa, ou OBJETOS para usar o gizmo de transformação.", color = Color(0xFF8F96A1), fontSize = 8.sp)
    }
}

@Composable
private fun FlatTerrainCreator(onCreate: (Int, Float, Float) -> Unit, onImport: () -> Unit) {
    var resolutionIndex by rememberSaveable { mutableIntStateOf(1) }
    var width by rememberSaveable { mutableFloatStateOf(128f) }
    var height by rememberSaveable { mutableFloatStateOf(32f) }
    val resolutions = listOf(33, 65, 129, 257)
    Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(9.dp), verticalArrangement = Arrangement.spacedBy(9.dp)) {
        Text("NOVO TERRENO PLANO", color = Color.White, fontWeight = FontWeight.Bold, fontSize = 10.sp)
        Text("Comece de uma superfície neutra e construa o relevo com o pincel.", color = Color(0xFFB8BDC7), fontSize = 8.sp)
        Text("RESOLUÇÃO", color = Color(0xFF858B96), fontSize = 7.sp, fontWeight = FontWeight.Bold)
        Row(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()), horizontalArrangement = Arrangement.spacedBy(4.dp)) {
            resolutions.forEachIndexed { index, value ->
                MiniChoice("$value²", resolutionIndex == index) { resolutionIndex = index }
            }
        }
        InspectorSlider("Largura ${width.toInt()} m", width, 32f..1024f) { width = it }
        InspectorSlider("Altura máxima ${height.toInt()} m", height, 4f..256f) { height = it }
        WideToolButton("Criar terreno editável", false, accent = true) { onCreate(resolutions[resolutionIndex], width, height) }
        WideToolButton("Importar heightmap", false) { onImport() }
    }
}

@Composable
private fun WorldAssetShelf(
    assets: List<AssetRecord>,
    mode: WorldStudioMode,
    terrain: TerrainComponent?,
    selectedLayerId: String?,
    onImport: () -> Unit,
    onUse: (AssetRecord) -> Unit,
) {
    Row(
        Modifier.fillMaxWidth().height(66.dp).background(Color(0xFF15181E)).border(1.dp, Color(0xFF2A2E36)).padding(5.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Column(Modifier.width(105.dp)) {
            Text("ASSETS", color = Color.White, fontWeight = FontWeight.Bold, fontSize = 8.sp)
            Text(
                if (mode == WorldStudioMode.PAINT && terrain != null) "camada: ${selectedLayerId ?: "base"}" else "toque para usar",
                color = Color(0xFF8F96A1),
                fontSize = 6.sp,
                maxLines = 1,
            )
            TextButton(onClick = onImport, modifier = Modifier.height(28.dp)) { Text("+ importar", fontSize = 7.sp) }
        }
        Row(Modifier.weight(1f).horizontalScroll(rememberScrollState()), horizontalArrangement = Arrangement.spacedBy(5.dp)) {
            assets.forEach { asset ->
                Column(
                    Modifier
                        .width(112.dp)
                        .height(54.dp)
                        .background(Color(0xFF1D2027), RoundedCornerShape(4.dp))
                        .border(1.dp, Color(0xFF30343D), RoundedCornerShape(4.dp))
                        .clickable { onUse(asset) }
                        .padding(6.dp),
                ) {
                    Text(if (asset.mediaType.startsWith("image/")) "IMG" else "3D", color = if (asset.mediaType.startsWith("image/")) Color(0xFFFFC46B) else Color(0xFF63D6A2), fontSize = 7.sp, fontWeight = FontWeight.Bold)
                    Text(asset.displayName, color = Color(0xFFD5D8DF), fontSize = 7.sp, maxLines = 1, overflow = TextOverflow.Ellipsis)
                    Text(asset.relativePath, color = Color(0xFF777E8A), fontSize = 5.sp, maxLines = 1, overflow = TextOverflow.Ellipsis)
                }
            }
        }
    }
}

@Composable
private fun WorldViewportBadge(mode: WorldStudioMode, terrain: TerrainComponent?, modifier: Modifier = Modifier) {
    Column(
        modifier.padding(9.dp).background(Color(0xD90D0F14), RoundedCornerShape(4.dp)).padding(horizontal = 8.dp, vertical = 5.dp),
    ) {
        Text(mode.label.uppercase(), color = Color(0xFFC9A7FF), fontSize = 8.sp, fontWeight = FontWeight.Bold)
        Text(
            terrain?.let { "${it.resolution}² · ${it.width.toInt()} m" } ?: "sem terreno selecionado",
            color = Color(0xFF9CA2AD),
            fontSize = 6.sp,
        )
    }
}

@Composable
private fun PanelHeading(title: String, trailing: String?) {
    Row(Modifier.fillMaxWidth().height(30.dp).background(Color(0xFF1C1F26)).padding(horizontal = 7.dp), verticalAlignment = Alignment.CenterVertically) {
        Text(title, modifier = Modifier.weight(1f), color = Color(0xFFB9BEC8), fontSize = 7.sp, fontWeight = FontWeight.Bold, letterSpacing = 0.6.sp)
        trailing?.let { Text(it, color = Color(0xFF777E8A), fontSize = 6.sp) }
    }
}

@Composable
private fun WorldButton(
    label: String,
    onClick: () -> Unit,
    enabled: Boolean = true,
    width: androidx.compose.ui.unit.Dp,
    accent: Boolean = false,
) {
    TextButton(
        onClick = onClick,
        enabled = enabled,
        modifier = Modifier.width(width).fillMaxHeight(),
        shape = RoundedCornerShape(0.dp),
        colors = ButtonDefaults.textButtonColors(
            containerColor = if (accent) Color(0xFF5F3D8F) else Color.Transparent,
            contentColor = if (accent) Color.White else Color(0xFFC1C6CF),
            disabledContentColor = Color(0xFF555B66),
        ),
    ) { Text(label, fontSize = 8.sp, maxLines = 1) }
}

@Composable
private fun RowScope.SmallSquareAction(label: String, onClick: () -> Unit) {
    TextButton(
        onClick = onClick,
        modifier = Modifier.weight(1f).height(34.dp),
        shape = RoundedCornerShape(4.dp),
        colors = ButtonDefaults.textButtonColors(containerColor = Color(0xFF20232A), contentColor = Color(0xFFBFC4CD)),
    ) { Text(label, fontSize = 7.sp, maxLines = 1) }
}

@Composable
private fun WideToolButton(label: String, selected: Boolean, accent: Boolean = false, onClick: () -> Unit) {
    TextButton(
        onClick = onClick,
        modifier = Modifier.fillMaxWidth().height(36.dp),
        shape = RoundedCornerShape(4.dp),
        colors = ButtonDefaults.textButtonColors(
            containerColor = when {
                accent -> Color(0xFF5F3D8F)
                selected -> Color(0xFF312641)
                else -> Color(0xFF20232A)
            },
            contentColor = when {
                accent -> Color.White
                selected -> Color(0xFFD4B8FF)
                else -> Color(0xFFBFC4CD)
            },
        ),
    ) { Text(label, fontSize = 8.sp, fontWeight = if (selected || accent) FontWeight.Bold else FontWeight.Normal) }
}

@Composable
private fun MiniChoice(label: String, selected: Boolean, onClick: () -> Unit) {
    TextButton(
        onClick = onClick,
        modifier = Modifier.height(30.dp),
        shape = RoundedCornerShape(4.dp),
        colors = ButtonDefaults.textButtonColors(
            containerColor = if (selected) Color(0xFF312641) else Color(0xFF20232A),
            contentColor = if (selected) Color(0xFFD4B8FF) else Color(0xFFBFC4CD),
        ),
    ) { Text(label, fontSize = 7.sp) }
}

@Composable
private fun InspectorSlider(label: String, value: Float, range: ClosedFloatingPointRange<Float>, onChange: (Float) -> Unit) {
    Column(Modifier.fillMaxWidth()) {
        Row(Modifier.fillMaxWidth()) {
            Text(label, modifier = Modifier.weight(1f), color = Color(0xFFB7BCC5), fontSize = 7.sp)
            Text("%.2f".format(value), color = Color(0xFF7F8793), fontSize = 7.sp, fontFamily = FontFamily.Monospace)
        }
        Slider(value = value.coerceIn(range), onValueChange = onChange, valueRange = range, modifier = Modifier.height(28.dp))
    }
}

@Composable
private fun EmptyInspector(message: String, action: (() -> Unit)?) {
    Column(Modifier.fillMaxSize().padding(10.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
        Text(message, color = Color(0xFFB8BDC7), fontSize = 8.sp)
        action?.let { WideToolButton("Ir para Moldar", false, onClick = it) }
    }
}

private fun worldObjectGlyph(type: EditorObjectType): String = when (type) {
    EditorObjectType.TERRAIN -> "TRN"
    EditorObjectType.CAMERA -> "CAM"
    EditorObjectType.LIGHT -> "SUN"
    EditorObjectType.MESH -> "3D"
    EditorObjectType.PLAYER, EditorObjectType.PLAYER_FIRST_PERSON, EditorObjectType.PLAYER_TOP_DOWN -> "PED"
    EditorObjectType.VEHICLE -> "CAR"
    else -> "OBJ"
}
