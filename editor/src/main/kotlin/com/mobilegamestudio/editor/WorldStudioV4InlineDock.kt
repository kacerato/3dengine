package com.mobilegamestudio.editor

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
