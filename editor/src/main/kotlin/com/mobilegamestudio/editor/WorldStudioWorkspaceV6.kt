package com.mobilegamestudio.editor

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.imePadding
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Slider
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.mobilegamestudio.core.model.AssetRecord
import com.mobilegamestudio.core.model.PrimitiveMesh
import com.mobilegamestudio.core.model.TerrainBrushFalloff
import com.mobilegamestudio.core.model.TerrainBrushMode
import com.mobilegamestudio.core.model.WORLD_LAYER_SYSTEM_TAG
import com.mobilegamestudio.core.model.WorldLayer
import com.mobilegamestudio.core.model.WorldLayerKind
import com.mobilegamestudio.core.model.worldLayerMembership
import com.mobilegamestudio.core.model.worldLayerSet
import com.mobilegamestudio.core.model.worldLayers
import com.mobilegamestudio.editor.domain.EditorCommandId
import com.mobilegamestudio.editor.domain.EditorCommandRegistry
import com.mobilegamestudio.editor.domain.EditorSelectionKind
import com.mobilegamestudio.editor.domain.EditorToolId
import com.mobilegamestudio.editor.domain.EditorToolRegistry
import com.mobilegamestudio.editor.domain.EditorToolset
import com.mobilegamestudio.editor.domain.PendingEditorOperation
import com.mobilegamestudio.editor.domain.ViewportInteractionMode
import java.io.File
import java.util.Locale

private enum class WorldStudioV6OutlinerTab {
    OBJECTS,
    LAYERS,
}

private data class WorldStudioV6WorldStudioV6PaletteAction(
    val label: String,
    val hint: String,
    val action: () -> Unit,
)

@Composable
internal fun WorldStudioWorkspaceV6(
    state: WorkspaceUiState,
    resolveAsset: (String) -> File?,
    onExit: () -> Unit,
    onUndo: () -> Unit,
    onRedo: () -> Unit,
    onSave: () -> Unit,
    onPlay: () -> Unit,
    onActivateToolset: (EditorToolset) -> Unit,
    onActivateTool: (EditorToolId) -> Unit,
    onCancelPendingOperation: () -> Unit,
    onConfirmPendingConversion: (Int) -> Unit,
    onLegacyToolSelected: (EditorTool) -> Unit,
    onSelectObject: (String) -> Unit,
    onViewportObjectSelected: (String?) -> Unit,
    onToggleVisibility: (String) -> Unit,
    onDuplicateSelected: () -> Unit,
    onDeleteSelected: () -> Unit,
    onRenameSelected: (String) -> Unit,
    onTransformDrag: (Float, Float) -> Unit,
    onTransformChange: (TransformProperty, TransformAxis, Float) -> Unit,
    onTransformValueChange: (TransformProperty, TransformAxis, Float) -> Unit,
    onDiagnostic: (String) -> Unit,
    onTerrainToolChange: (TerrainBrushMode?, Float?, Float?, Float?, String?) -> Unit,
    onTerrainFalloffChange: (TerrainBrushFalloff) -> Unit,
    onTerrainStrokeBegin: () -> Unit,
    onTerrainStrokePoint: (Float, Float) -> Unit,
    onTerrainStrokeEnd: (Boolean) -> Unit,
    onCreateFlatTerrain: (Int, Float, Float) -> Unit,
    onCreateEditableMesh: (PrimitiveMesh) -> Unit,
    onCreateVoxelVolume: (Int, Boolean) -> Unit,
    onAddPrimitive: (PrimitiveMesh) -> Unit,
    onAddSceneObject: (EditorObjectType) -> Unit,
    onCreateWorldLayer: (String, WorldLayerKind) -> Unit,
    onSelectWorldLayer: (String) -> Unit,
    onToggleWorldLayerVisibility: (String) -> Unit,
    onToggleWorldLayerLock: (String) -> Unit,
    onToggleWorldLayerSolo: (String) -> Unit,
    onAssignSelectedToWorldLayer: (String) -> Unit,
    onImportAsset: () -> Unit,
    onAddAsset: (AssetRecord) -> Unit,
    onPreviewAction: (String) -> Unit,
) {
    val context = state.editorContext
    val activeTool = context.activeTool
    val terrainAuthoring = context.selection.kind == EditorSelectionKind.TERRAIN &&
        activeTool.interactionMode in setOf(
            ViewportInteractionMode.TERRAIN_BRUSH,
            ViewportInteractionMode.MATERIAL_PAINT,
        )

    LaunchedEffect(activeTool) {
        onLegacyToolSelected(activeTool.legacyTransformTool() ?: EditorTool.SELECT)
        activeTool.terrainBrushMode()?.let { mode ->
            onTerrainToolChange(mode, null, null, null, null)
        }
    }

    BoxWithConstraints(
        modifier = Modifier
            .fillMaxSize()
            .background(WorldStudioV6Design.background),
    ) {
        val spec = remember(maxWidth, maxHeight) {
            resolveWorldStudioV6Layout(maxWidth.value.toInt(), maxHeight.value.toInt())
        }
        var leadingVisible by rememberSaveable { mutableStateOf(spec.defaultLeadingVisible) }
        var trailingVisible by rememberSaveable { mutableStateOf(spec.defaultTrailingVisible) }
        var bottomVisible by rememberSaveable { mutableStateOf(false) }
        var compactPaneName by rememberSaveable { mutableStateOf<String?>(null) }
        var commandsVisible by rememberSaveable { mutableStateOf(false) }

        fun togglePane(pane: WorldStudioV6Pane) {
            when {
                pane == WorldStudioV6Pane.COMMANDS -> commandsVisible = !commandsVisible
                pane == WorldStudioV6Pane.ASSETS -> bottomVisible = !bottomVisible
                spec.compact -> {
                    compactPaneName = if (compactPaneName == pane.name) null else pane.name
                }
                pane == WorldStudioV6Pane.OUTLINER -> leadingVisible = !leadingVisible
                pane == WorldStudioV6Pane.INSPECTOR -> trailingVisible = !trailingVisible
            }
        }

        Column(Modifier.fillMaxSize()) {
            WorldStudioV6Header(
                state = state,
                showSubtitle = spec.showHeaderSubtitle,
                onExit = onExit,
                onUndo = onUndo,
                onRedo = onRedo,
                onSave = onSave,
                onPlay = onPlay,
            )
            WorldStudioV6ContextBar(
                state = state,
                compact = spec.compact,
                leadingVisible = if (spec.compact) compactPaneName == WorldStudioV6Pane.OUTLINER.name else leadingVisible,
                trailingVisible = if (spec.compact) compactPaneName == WorldStudioV6Pane.INSPECTOR.name else trailingVisible,
                assetsVisible = bottomVisible,
                commandsVisible = commandsVisible,
                onToolset = onActivateToolset,
                onPane = ::togglePane,
            )
            WorldStudioV6ToolShelf(
                state = state,
                showLabels = spec.showToolLabels,
                onActivateTool = onActivateTool,
                onTerrainToolChange = onTerrainToolChange,
            )

            Box(Modifier.weight(1f).fillMaxWidth()) {
                Row(Modifier.fillMaxSize()) {
                    if (!spec.compact && leadingVisible) {
                        WorldStudioV6Outliner(
                            state = state,
                            width = spec.leadingPaneWidthDp.dp,
                            onClose = { leadingVisible = false },
                            onSelectObject = onSelectObject,
                            onToggleVisibility = onToggleVisibility,
                            onCreateLayer = onCreateWorldLayer,
                            onSelectLayer = onSelectWorldLayer,
                            onToggleLayerVisibility = onToggleWorldLayerVisibility,
                            onToggleLayerLock = onToggleWorldLayerLock,
                            onToggleLayerSolo = onToggleWorldLayerSolo,
                            onAssignSelectedToLayer = onAssignSelectedToWorldLayer,
                        )
                    }

                    Column(Modifier.weight(1f).fillMaxHeight()) {
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
                                .padding(8.dp)
                                .clip(WorldStudioV6Design.paneShape)
                                .background(WorldStudioV6Design.viewport)
                                .border(WorldStudioV6Design.paneBorder, WorldStudioV6Design.paneShape),
                        )
                        WorldStudioV6StatusBar(state)
                    }

                    if (!spec.compact && trailingVisible) {
                        WorldStudioV6Inspector(
                            state = state,
                            width = spec.trailingPaneWidthDp.dp,
                            onClose = { trailingVisible = false },
                            onRename = onRenameSelected,
                            onDuplicate = onDuplicateSelected,
                            onDelete = onDeleteSelected,
                            onTransformValueChange = onTransformValueChange,
                            onTerrainToolChange = onTerrainToolChange,
                            onTerrainFalloffChange = onTerrainFalloffChange,
                        )
                    }
                }

                if (spec.compact) {
                    val compactPane = compactPaneName?.let { name ->
                        WorldStudioV6Pane.entries.firstOrNull { it.name == name }
                    }
                    if (compactPane == WorldStudioV6Pane.OUTLINER || compactPane == WorldStudioV6Pane.INSPECTOR) {
                        Box(
                            Modifier
                                .fillMaxSize()
                                .background(WorldStudioV6Design.scrim)
                                .clickable { compactPaneName = null },
                        )
                        when (compactPane) {
                            WorldStudioV6Pane.OUTLINER -> WorldStudioV6Outliner(
                                state = state,
                                width = spec.compactPaneWidthDp.dp,
                                onClose = { compactPaneName = null },
                                onSelectObject = { id ->
                                    onSelectObject(id)
                                    compactPaneName = null
                                },
                                onToggleVisibility = onToggleVisibility,
                                onCreateLayer = onCreateWorldLayer,
                                onSelectLayer = onSelectWorldLayer,
                                onToggleLayerVisibility = onToggleWorldLayerVisibility,
                                onToggleLayerLock = onToggleWorldLayerLock,
                                onToggleLayerSolo = onToggleWorldLayerSolo,
                                onAssignSelectedToLayer = onAssignSelectedToWorldLayer,
                                modifier = Modifier.align(Alignment.CenterStart),
                            )
                            WorldStudioV6Pane.INSPECTOR -> WorldStudioV6Inspector(
                                state = state,
                                width = spec.compactPaneWidthDp.dp,
                                onClose = { compactPaneName = null },
                                onRename = onRenameSelected,
                                onDuplicate = onDuplicateSelected,
                                onDelete = onDeleteSelected,
                                onTransformValueChange = onTransformValueChange,
                                onTerrainToolChange = onTerrainToolChange,
                                onTerrainFalloffChange = onTerrainFalloffChange,
                                modifier = Modifier.align(Alignment.CenterEnd),
                            )
                            else -> Unit
                        }
                    }
                }

                if (bottomVisible) {
                    WorldStudioV6Assets(
                        state = state,
                        height = spec.assetPaneHeightDp.dp,
                        onClose = { bottomVisible = false },
                        onImport = onImportAsset,
                        onAddAsset = onAddAsset,
                        modifier = Modifier.align(Alignment.BottomCenter),
                    )
                }

                if (commandsVisible) {
                    WorldStudioV6CommandPalette(
                        state = state,
                        onClose = { commandsVisible = false },
                        onCreateTerrain = {
                            commandsVisible = false
                            onCreateFlatTerrain(65, 96f, 20f)
                        },
                        onCreateMesh = {
                            commandsVisible = false
                            onCreateEditableMesh(PrimitiveMesh.CUBE)
                        },
                        onCreateVolume = {
                            commandsVisible = false
                            onCreateVoxelVolume(24, false)
                        },
                        onAddCube = {
                            commandsVisible = false
                            onAddPrimitive(PrimitiveMesh.CUBE)
                        },
                        onAddCamera = {
                            commandsVisible = false
                            onAddSceneObject(EditorObjectType.CAMERA)
                        },
                        onAddLight = {
                            commandsVisible = false
                            onAddSceneObject(EditorObjectType.LIGHT)
                        },
                        onActivateToolset = { toolset ->
                            commandsVisible = false
                            onActivateToolset(toolset)
                        },
                        onDuplicate = {
                            commandsVisible = false
                            onDuplicateSelected()
                        },
                        onDelete = {
                            commandsVisible = false
                            onDeleteSelected()
                        },
                    )
                }

                context.pendingOperation?.let { pending ->
                    WorldStudioV6PendingOperation(
                        state = state,
                        pending = pending,
                        onCancel = onCancelPendingOperation,
                        onSelectObject = onSelectObject,
                        onCreateTerrain = { onCreateFlatTerrain(65, 96f, 20f) },
                        onCreateMesh = { onCreateEditableMesh(PrimitiveMesh.CUBE) },
                        onCreateVolume = { onCreateVoxelVolume(24, false) },
                        onConfirmConversion = onConfirmPendingConversion,
                    )
                }
            }
        }
    }
}

@Composable
private fun WorldStudioV6Header(
    state: WorkspaceUiState,
    showSubtitle: Boolean,
    onExit: () -> Unit,
    onUndo: () -> Unit,
    onRedo: () -> Unit,
    onSave: () -> Unit,
    onPlay: () -> Unit,
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .height(56.dp)
            .background(WorldStudioV6Design.header)
            .border(1.dp, WorldStudioV6Design.border)
            .padding(horizontal = 8.dp, vertical = 6.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(6.dp),
    ) {
        WorldStudioV6Button("Voltar", onExit)
        Column(Modifier.weight(1f)) {
            Text(
                "WORLD STUDIO",
                color = WorldStudioV6Design.text,
                fontSize = 13.sp,
                fontWeight = FontWeight.Bold,
                maxLines = 1,
            )
            if (showSubtitle) {
                Text(
                    buildString {
                        append(state.sceneDocument?.name ?: state.metadata?.name.orEmpty())
                        append("  ·  ")
                        append(if (state.isSceneDirty) "Alterações não salvas" else "Cena salva")
                    },
                    color = if (state.isSceneDirty) WorldStudioV6Design.warning else WorldStudioV6Design.textMuted,
                    fontSize = 8.sp,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                )
            }
        }
        WorldStudioV6Button("Desfazer", onUndo, enabled = state.canUndo)
        WorldStudioV6Button("Refazer", onRedo, enabled = state.canRedo)
        WorldStudioV6Button(
            if (state.isSavingScene) "Salvando…" else "Salvar",
            onSave,
            enabled = state.isSceneDirty && !state.isSavingScene,
            selected = state.isSceneDirty,
        )
        WorldStudioV6Button(
            if (state.isPreviewRunning || state.isPreviewStarting) "Parar" else "Jogar",
            onPlay,
            selected = !state.isPreviewRunning && !state.isPreviewStarting,
            danger = state.isPreviewRunning || state.isPreviewStarting,
        )
    }
}

@Composable
private fun WorldStudioV6ContextBar(
    state: WorkspaceUiState,
    compact: Boolean,
    leadingVisible: Boolean,
    trailingVisible: Boolean,
    assetsVisible: Boolean,
    commandsVisible: Boolean,
    onToolset: (EditorToolset) -> Unit,
    onPane: (WorldStudioV6Pane) -> Unit,
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .height(50.dp)
            .background(WorldStudioV6Design.surface)
            .border(1.dp, WorldStudioV6Design.border)
            .horizontalScroll(rememberScrollState())
            .padding(horizontal = 8.dp, vertical = 5.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(5.dp),
    ) {
        EditorToolset.entries.forEach { toolset ->
            WorldStudioV6Button(
                label = toolset.compactLabel(),
                onClick = { onToolset(toolset) },
                selected = state.editorContext.activeToolset == toolset,
            )
        }
        Box(
            Modifier
                .height(28.dp)
                .width(1.dp)
                .background(WorldStudioV6Design.border),
        )
        WorldStudioV6Button(
            if (compact) "Estrutura" else "Estrutura da cena",
            { onPane(WorldStudioV6Pane.OUTLINER) },
            selected = leadingVisible,
        )
        WorldStudioV6Button(
            "Inspector",
            { onPane(WorldStudioV6Pane.INSPECTOR) },
            selected = trailingVisible,
        )
        WorldStudioV6Button(
            "Assets",
            { onPane(WorldStudioV6Pane.ASSETS) },
            selected = assetsVisible,
        )
        WorldStudioV6Button(
            "Comandos",
            { onPane(WorldStudioV6Pane.COMMANDS) },
            selected = commandsVisible,
        )
    }
}

@Composable
private fun WorldStudioV6ToolShelf(
    state: WorkspaceUiState,
    showLabels: Boolean,
    onActivateTool: (EditorToolId) -> Unit,
    onTerrainToolChange: (TerrainBrushMode?, Float?, Float?, Float?, String?) -> Unit,
) {
    val context = state.editorContext
    val tools = EditorToolRegistry.availableFor(context)
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .height(58.dp)
            .background(WorldStudioV6Design.header)
            .border(1.dp, WorldStudioV6Design.border)
            .padding(horizontal = 8.dp, vertical = 6.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(5.dp),
    ) {
        Row(
            modifier = Modifier
                .weight(1f)
                .horizontalScroll(rememberScrollState()),
            horizontalArrangement = Arrangement.spacedBy(5.dp),
        ) {
            tools.forEach { descriptor ->
                WorldStudioV6Button(
                    label = if (showLabels) descriptor.label else descriptor.label.take(5),
                    onClick = {
                        onActivateTool(descriptor.id)
                        descriptor.id.terrainBrushMode()?.let { mode ->
                            onTerrainToolChange(mode, null, null, null, null)
                        }
                    },
                    selected = context.activeTool == descriptor.id,
                    enabled = !context.selection.locked || !descriptor.mutatesScene,
                )
            }
        }
        if (
            showLabels &&
            context.activeTool.interactionMode in setOf(
                ViewportInteractionMode.TERRAIN_BRUSH,
                ViewportInteractionMode.MATERIAL_PAINT,
            )
        ) {
            WorldStudioV6MiniSlider(
                label = "Raio",
                value = state.terrainTool.radius,
                range = 0.01f..0.5f,
                onValue = { onTerrainToolChange(null, it, null, null, null) },
            )
            WorldStudioV6MiniSlider(
                label = "Força",
                value = state.terrainTool.strength,
                range = 0.01f..1f,
                onValue = { onTerrainToolChange(null, null, it, null, null) },
            )
        }
    }
}

@Composable
private fun WorldStudioV6MiniSlider(
    label: String,
    value: Float,
    range: ClosedFloatingPointRange<Float>,
    onValue: (Float) -> Unit,
) {
    Column(Modifier.width(112.dp)) {
        Text(
            "$label ${formatFloat(value)}",
            color = WorldStudioV6Design.textMuted,
            fontSize = 7.sp,
            maxLines = 1,
        )
        Slider(
            value = value.coerceIn(range.start, range.endInclusive),
            onValueChange = onValue,
            valueRange = range,
            modifier = Modifier.height(28.dp),
        )
    }
}

@Composable
private fun WorldStudioV6Outliner(
    state: WorkspaceUiState,
    width: Dp,
    onClose: () -> Unit,
    onSelectObject: (String) -> Unit,
    onToggleVisibility: (String) -> Unit,
    onCreateLayer: (String, WorldLayerKind) -> Unit,
    onSelectLayer: (String) -> Unit,
    onToggleLayerVisibility: (String) -> Unit,
    onToggleLayerLock: (String) -> Unit,
    onToggleLayerSolo: (String) -> Unit,
    onAssignSelectedToLayer: (String) -> Unit,
    modifier: Modifier = Modifier,
) {
    var tabName by rememberSaveable { mutableStateOf(WorldStudioV6OutlinerTab.OBJECTS.name) }
    var search by rememberSaveable { mutableStateOf("") }
    var newLayerName by rememberSaveable { mutableStateOf("") }
    val tab = WorldStudioV6OutlinerTab.entries.firstOrNull { it.name == tabName }
        ?: WorldStudioV6OutlinerTab.OBJECTS
    val selectedLayerId = state.sceneDocument?.worldLayerSet()?.selectedLayerId

    WorldStudioV6PaneFrame(
        title = "Estrutura",
        width = width,
        onClose = onClose,
        modifier = modifier,
    ) {
        Row(
            Modifier.fillMaxWidth().padding(horizontal = 8.dp, vertical = 6.dp),
            horizontalArrangement = Arrangement.spacedBy(5.dp),
        ) {
            WorldStudioV6Button(
                "Objetos",
                { tabName = WorldStudioV6OutlinerTab.OBJECTS.name },
                selected = tab == WorldStudioV6OutlinerTab.OBJECTS,
                modifier = Modifier.weight(1f),
            )
            WorldStudioV6Button(
                "Camadas",
                { tabName = WorldStudioV6OutlinerTab.LAYERS.name },
                selected = tab == WorldStudioV6OutlinerTab.LAYERS,
                modifier = Modifier.weight(1f),
            )
        }
        when (tab) {
            WorldStudioV6OutlinerTab.OBJECTS -> {
                OutlinedTextField(
                    value = search,
                    onValueChange = { search = it.take(48) },
                    label = { Text("Buscar objeto") },
                    singleLine = true,
                    modifier = Modifier.fillMaxWidth().padding(horizontal = 8.dp),
                )
                val objects = state.sceneObjects.filter { item ->
                    search.isBlank() || item.name.contains(search, ignoreCase = true) ||
                        item.type.label.contains(search, ignoreCase = true)
                }
                LazyColumn(
                    modifier = Modifier.weight(1f).fillMaxWidth().padding(8.dp),
                    verticalArrangement = Arrangement.spacedBy(4.dp),
                ) {
                    items(objects, key = { it.id }) { item ->
                        val selected = item.id == state.selectedObjectId
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .heightIn(min = 46.dp)
                                .background(
                                    if (selected) WorldStudioV6Design.accentContainer else WorldStudioV6Design.surfaceRaised,
                                    WorldStudioV6Design.smallShape,
                                )
                                .border(
                                    1.dp,
                                    if (selected) WorldStudioV6Design.accent else WorldStudioV6Design.border,
                                    WorldStudioV6Design.smallShape,
                                )
                                .clickable { onSelectObject(item.id) }
                                .padding(start = if (item.parentId == null) 10.dp else 22.dp, end = 5.dp),
                            verticalAlignment = Alignment.CenterVertically,
                        ) {
                            Column(Modifier.weight(1f)) {
                                Text(
                                    item.name,
                                    color = WorldStudioV6Design.text,
                                    fontSize = 10.sp,
                                    fontWeight = if (selected) FontWeight.SemiBold else FontWeight.Normal,
                                    maxLines = 1,
                                    overflow = TextOverflow.Ellipsis,
                                )
                                Text(
                                    item.type.label,
                                    color = WorldStudioV6Design.textFaint,
                                    fontSize = 7.sp,
                                    maxLines = 1,
                                )
                            }
                            WorldStudioV6Button(
                                if (item.isVisible) "Visível" else "Oculto",
                                { onToggleVisibility(item.id) },
                                selected = item.isVisible,
                                compact = true,
                            )
                        }
                    }
                }
            }
            WorldStudioV6OutlinerTab.LAYERS -> {
                Row(
                    Modifier.fillMaxWidth().padding(horizontal = 8.dp, vertical = 6.dp),
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(5.dp),
                ) {
                    OutlinedTextField(
                        value = newLayerName,
                        onValueChange = { newLayerName = it.take(36) },
                        label = { Text("Nova camada") },
                        singleLine = true,
                        modifier = Modifier.weight(1f),
                    )
                    WorldStudioV6Button(
                        "Criar",
                        {
                            val name = newLayerName.trim()
                            if (name.isNotBlank()) {
                                onCreateLayer(name, WorldLayerKind.CUSTOM)
                                newLayerName = ""
                            }
                        },
                        enabled = newLayerName.isNotBlank(),
                    )
                }
                LazyColumn(
                    modifier = Modifier.weight(1f).fillMaxWidth().padding(8.dp),
                    verticalArrangement = Arrangement.spacedBy(5.dp),
                ) {
                    items(state.sceneDocument?.worldLayers().orEmpty(), key = WorldLayer::id) { layer ->
                        val selected = layer.id == selectedLayerId
                        Column(
                            modifier = Modifier
                                .fillMaxWidth()
                                .background(
                                    if (selected) WorldStudioV6Design.accentContainer else WorldStudioV6Design.surfaceRaised,
                                    WorldStudioV6Design.smallShape,
                                )
                                .border(
                                    1.dp,
                                    if (selected) WorldStudioV6Design.accent else WorldStudioV6Design.border,
                                    WorldStudioV6Design.smallShape,
                                )
                                .clickable { onSelectLayer(layer.id) }
                                .padding(8.dp),
                        ) {
                            Row(verticalAlignment = Alignment.CenterVertically) {
                                Box(
                                    Modifier
                                        .size(8.dp)
                                        .background(Color(layer.colorArgb.toInt()), RoundedCornerShape(2.dp)),
                                )
                                Text(
                                    layer.name,
                                    color = WorldStudioV6Design.text,
                                    fontSize = 10.sp,
                                    fontWeight = FontWeight.SemiBold,
                                    modifier = Modifier.weight(1f).padding(start = 7.dp),
                                    maxLines = 1,
                                    overflow = TextOverflow.Ellipsis,
                                )
                                Text(
                                    layer.kind.name.lowercase().replaceFirstChar { it.uppercase() },
                                    color = WorldStudioV6Design.textFaint,
                                    fontSize = 7.sp,
                                )
                            }
                            Row(
                                Modifier.fillMaxWidth().padding(top = 6.dp),
                                horizontalArrangement = Arrangement.spacedBy(4.dp),
                            ) {
                                WorldStudioV6Button(
                                    if (layer.visible) "Visível" else "Oculta",
                                    { onToggleLayerVisibility(layer.id) },
                                    selected = layer.visible,
                                    compact = true,
                                )
                                WorldStudioV6Button(
                                    if (layer.locked) "Bloqueada" else "Editar",
                                    { onToggleLayerLock(layer.id) },
                                    selected = layer.locked,
                                    compact = true,
                                )
                                WorldStudioV6Button(
                                    "Solo",
                                    { onToggleLayerSolo(layer.id) },
                                    selected = layer.solo,
                                    compact = true,
                                )
                            }
                            if (selected && state.selectedObjectId != null && !layer.locked) {
                                WorldStudioV6Button(
                                    "Mover seleção para esta camada",
                                    { onAssignSelectedToLayer(layer.id) },
                                    modifier = Modifier.fillMaxWidth().padding(top = 6.dp),
                                )
                            }
                        }
                    }
                }
            }
        }
    }
}

@Composable
private fun WorldStudioV6Inspector(
    state: WorkspaceUiState,
    width: Dp,
    onClose: () -> Unit,
    onRename: (String) -> Unit,
    onDuplicate: () -> Unit,
    onDelete: () -> Unit,
    onTransformValueChange: (TransformProperty, TransformAxis, Float) -> Unit,
    onTerrainToolChange: (TerrainBrushMode?, Float?, Float?, Float?, String?) -> Unit,
    onTerrainFalloffChange: (TerrainBrushFalloff) -> Unit,
    modifier: Modifier = Modifier,
) {
    val selected = state.selectedObject
    var renameValue by rememberSaveable(selected?.id) { mutableStateOf(selected?.name.orEmpty()) }

    WorldStudioV6PaneFrame(
        title = "Inspector",
        width = width,
        onClose = onClose,
        modifier = modifier,
    ) {
        if (selected == null) {
            Box(Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
                Text(
                    "Selecione um objeto para inspecionar.",
                    color = WorldStudioV6Design.textMuted,
                    fontSize = 10.sp,
                )
            }
            return@WorldStudioV6PaneFrame
        }

        LazyColumn(
            modifier = Modifier.fillMaxSize().padding(8.dp).imePadding(),
            verticalArrangement = Arrangement.spacedBy(8.dp),
        ) {
            item {
                WorldStudioV6Section("Objeto") {
                    OutlinedTextField(
                        value = renameValue,
                        onValueChange = { renameValue = it.take(64) },
                        label = { Text("Nome") },
                        singleLine = true,
                        modifier = Modifier.fillMaxWidth(),
                    )
                    Row(
                        Modifier.fillMaxWidth().padding(top = 6.dp),
                        horizontalArrangement = Arrangement.spacedBy(5.dp),
                    ) {
                        WorldStudioV6Button(
                            "Aplicar nome",
                            { onRename(renameValue.trim()) },
                            enabled = renameValue.isNotBlank() && renameValue.trim() != selected.name,
                            modifier = Modifier.weight(1f),
                        )
                        WorldStudioV6Button("Duplicar", onDuplicate)
                        WorldStudioV6Button("Excluir", onDelete, danger = true)
                    }
                    Text(
                        "${selected.type.label}  ·  ${selected.id.take(8)}",
                        color = WorldStudioV6Design.textFaint,
                        fontSize = 7.sp,
                        modifier = Modifier.padding(top = 6.dp),
                    )
                    if (state.editorContext.selection.locked) {
                        Text(
                            "A camada deste objeto está bloqueada.",
                            color = WorldStudioV6Design.warning,
                            fontSize = 8.sp,
                            modifier = Modifier.padding(top = 5.dp),
                        )
                    }
                }
            }
            item {
                WorldStudioV6Section("Transform") {
                    WorldStudioV6VectorFields(
                        label = "Posição",
                        value = selected.transform.position,
                        property = TransformProperty.POSITION,
                        enabled = !state.editorContext.selection.locked,
                        onValue = onTransformValueChange,
                    )
                    WorldStudioV6VectorFields(
                        label = "Rotação",
                        value = selected.transform.rotation,
                        property = TransformProperty.ROTATION,
                        enabled = !state.editorContext.selection.locked,
                        onValue = onTransformValueChange,
                    )
                    WorldStudioV6VectorFields(
                        label = "Escala",
                        value = selected.transform.scale,
                        property = TransformProperty.SCALE,
                        enabled = !state.editorContext.selection.locked,
                        onValue = onTransformValueChange,
                    )
                }
            }
            if (state.selectedTerrain != null) {
                item {
                    WorldStudioV6Section("Pincel de terreno") {
                        WorldStudioV6LabeledSlider(
                            "Raio",
                            state.terrainTool.radius,
                            0.01f..0.5f,
                        ) { onTerrainToolChange(null, it, null, null, null) }
                        WorldStudioV6LabeledSlider(
                            "Força",
                            state.terrainTool.strength,
                            0.01f..1f,
                        ) { onTerrainToolChange(null, null, it, null, null) }
                        if (state.terrainTool.mode == TerrainBrushMode.FLATTEN) {
                            WorldStudioV6LabeledSlider(
                                "Altura alvo",
                                state.terrainTool.targetHeight,
                                0f..1f,
                            ) { onTerrainToolChange(null, null, null, it, null) }
                        }
                        Text(
                            "Falloff",
                            color = WorldStudioV6Design.textMuted,
                            fontSize = 8.sp,
                            modifier = Modifier.padding(top = 5.dp),
                        )
                        Row(
                            Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()),
                            horizontalArrangement = Arrangement.spacedBy(4.dp),
                        ) {
                            TerrainBrushFalloff.entries.forEach { falloff ->
                                WorldStudioV6Button(
                                    falloff.name.lowercase().replaceFirstChar { it.uppercase() },
                                    { onTerrainFalloffChange(falloff) },
                                    selected = state.terrainTool.falloff == falloff,
                                    compact = true,
                                )
                            }
                        }
                    }
                }
            }
            item {
                WorldStudioV6Section("Contexto") {
                    Text(
                        state.editorContext.breadcrumb,
                        color = WorldStudioV6Design.text,
                        fontSize = 9.sp,
                    )
                    Text(
                        "Ferramenta: ${EditorToolRegistry.descriptor(state.editorContext.activeTool).label}",
                        color = WorldStudioV6Design.textMuted,
                        fontSize = 8.sp,
                        modifier = Modifier.padding(top = 4.dp),
                    )
                    Text(
                        "Interação: ${state.editorContext.interactionMode.name.lowercase().replace('_', ' ')}",
                        color = WorldStudioV6Design.textFaint,
                        fontSize = 7.sp,
                        modifier = Modifier.padding(top = 3.dp),
                    )
                }
            }
        }
    }
}

@Composable
private fun WorldStudioV6Assets(
    state: WorkspaceUiState,
    height: Dp,
    onClose: () -> Unit,
    onImport: () -> Unit,
    onAddAsset: (AssetRecord) -> Unit,
    modifier: Modifier = Modifier,
) {
    var search by rememberSaveable { mutableStateOf("") }
    Column(
        modifier = modifier
            .fillMaxWidth()
            .height(height)
            .background(WorldStudioV6Design.surface, WorldStudioV6Design.paneShape)
            .border(WorldStudioV6Design.strongBorder, WorldStudioV6Design.paneShape),
    ) {
        WorldStudioV6PaneTitle("Assets", onClose)
        Row(
            Modifier.fillMaxWidth().padding(horizontal = 8.dp, vertical = 5.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(6.dp),
        ) {
            OutlinedTextField(
                value = search,
                onValueChange = { search = it.take(48) },
                label = { Text("Buscar asset") },
                singleLine = true,
                modifier = Modifier.weight(1f),
            )
            WorldStudioV6Button("Importar", onImport, selected = true)
        }
        val assets = state.assets.filter { asset ->
            search.isBlank() || asset.displayName.contains(search, ignoreCase = true) ||
                asset.mediaType.contains(search, ignoreCase = true)
        }
        LazyColumn(
            modifier = Modifier.weight(1f).fillMaxWidth().padding(horizontal = 8.dp, vertical = 5.dp),
            verticalArrangement = Arrangement.spacedBy(4.dp),
        ) {
            items(assets, key = AssetRecord::id) { asset ->
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .heightIn(min = 44.dp)
                        .background(WorldStudioV6Design.surfaceRaised, WorldStudioV6Design.smallShape)
                        .border(1.dp, WorldStudioV6Design.border, WorldStudioV6Design.smallShape)
                        .padding(horizontal = 9.dp),
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Column(Modifier.weight(1f)) {
                        Text(
                            asset.displayName,
                            color = WorldStudioV6Design.text,
                            fontSize = 9.sp,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis,
                        )
                        Text(
                            asset.mediaType,
                            color = WorldStudioV6Design.textFaint,
                            fontSize = 7.sp,
                            maxLines = 1,
                        )
                    }
                    WorldStudioV6Button(
                        if (asset.mediaType.startsWith("image/")) "Aplicar" else "Adicionar",
                        { onAddAsset(asset) },
                        compact = true,
                    )
                }
            }
        }
    }
}

@Composable
private fun WorldStudioV6CommandPalette(
    state: WorkspaceUiState,
    onClose: () -> Unit,
    onCreateTerrain: () -> Unit,
    onCreateMesh: () -> Unit,
    onCreateVolume: () -> Unit,
    onAddCube: () -> Unit,
    onAddCamera: () -> Unit,
    onAddLight: () -> Unit,
    onActivateToolset: (EditorToolset) -> Unit,
    onDuplicate: () -> Unit,
    onDelete: () -> Unit,
) {
    var search by rememberSaveable { mutableStateOf("") }
    val contextual = EditorCommandRegistry.availableFor(state.editorContext).map { command ->
        when (command.id) {
            EditorCommandId.CREATE_TERRAIN -> WorldStudioV6PaletteAction(command.label, "Nova superfície editável", onCreateTerrain)
            EditorCommandId.CREATE_EDITABLE_MESH -> WorldStudioV6PaletteAction(command.label, "Nova malha com topologia", onCreateMesh)
            EditorCommandId.CREATE_VOLUME -> WorldStudioV6PaletteAction(command.label, "Novo volume voxel", onCreateVolume)
            EditorCommandId.CONVERT_TO_EDITABLE_MESH -> WorldStudioV6PaletteAction(command.label, "Conversão transacional") {
                onActivateToolset(EditorToolset.MESH)
            }
            EditorCommandId.CONVERT_TO_VOLUME -> WorldStudioV6PaletteAction(command.label, "Conversão transacional") {
                onActivateToolset(EditorToolset.VOLUME)
            }
            EditorCommandId.DUPLICATE_SELECTION -> WorldStudioV6PaletteAction(command.label, "Duplica o objeto selecionado", onDuplicate)
            EditorCommandId.DELETE_SELECTION -> WorldStudioV6PaletteAction(command.label, "Exclui com suporte a Undo", onDelete)
        }
    }
    val fixed = listOf(
        WorldStudioV6PaletteAction("Criar cubo", "Primitiva renderizável", onAddCube),
        WorldStudioV6PaletteAction("Criar terreno", "65 × 65 · 96 m", onCreateTerrain),
        WorldStudioV6PaletteAction("Criar malha editável", "Cubo com topologia", onCreateMesh),
        WorldStudioV6PaletteAction("Criar volume voxel", "Resolução inicial 24", onCreateVolume),
        WorldStudioV6PaletteAction("Adicionar câmera", "Objeto técnico de cena", onAddCamera),
        WorldStudioV6PaletteAction("Adicionar luz direcional", "Iluminação principal", onAddLight),
    )
    val actions = (contextual + fixed)
        .distinctBy(WorldStudioV6PaletteAction::label)
        .filter { search.isBlank() || it.label.contains(search, true) || it.hint.contains(search, true) }

    Box(
        Modifier
            .fillMaxSize()
            .background(WorldStudioV6Design.scrim)
            .clickable(onClick = onClose),
        contentAlignment = Alignment.TopCenter,
    ) {
        Column(
            modifier = Modifier
                .padding(top = 70.dp, start = 16.dp, end = 16.dp)
                .widthIn(max = 620.dp)
                .fillMaxWidth()
                .heightIn(max = 480.dp)
                .background(WorldStudioV6Design.surface, WorldStudioV6Design.paneShape)
                .border(WorldStudioV6Design.strongBorder, WorldStudioV6Design.paneShape)
                .clickable(enabled = false) {},
        ) {
            WorldStudioV6PaneTitle("Comandos", onClose)
            OutlinedTextField(
                value = search,
                onValueChange = { search = it.take(64) },
                label = { Text("Buscar ação") },
                singleLine = true,
                modifier = Modifier.fillMaxWidth().padding(10.dp),
            )
            LazyColumn(
                Modifier.weight(1f).fillMaxWidth().padding(horizontal = 10.dp, vertical = 4.dp),
                verticalArrangement = Arrangement.spacedBy(5.dp),
            ) {
                items(actions, key = PaletteAction::label) { item ->
                    Row(
                        modifier = Modifier
                            .fillMaxWidth()
                            .heightIn(min = 50.dp)
                            .background(WorldStudioV6Design.surfaceRaised, WorldStudioV6Design.smallShape)
                            .border(1.dp, WorldStudioV6Design.border, WorldStudioV6Design.smallShape)
                            .clickable { item.action() }
                            .padding(horizontal = 12.dp, vertical = 7.dp),
                        verticalAlignment = Alignment.CenterVertically,
                    ) {
                        Column(Modifier.weight(1f)) {
                            Text(item.label, color = WorldStudioV6Design.text, fontSize = 10.sp, fontWeight = FontWeight.Medium)
                            Text(item.hint, color = WorldStudioV6Design.textFaint, fontSize = 7.sp, modifier = Modifier.padding(top = 2.dp))
                        }
                        Text("Executar", color = WorldStudioV6Design.accent, fontSize = 8.sp)
                    }
                }
            }
        }
    }
}

@Composable
private fun WorldStudioV6PendingOperation(
    state: WorkspaceUiState,
    pending: PendingEditorOperation,
    onCancel: () -> Unit,
    onSelectObject: (String) -> Unit,
    onCreateTerrain: () -> Unit,
    onCreateMesh: () -> Unit,
    onCreateVolume: () -> Unit,
    onConfirmConversion: (Int) -> Unit,
) {
    var resolution by rememberSaveable { mutableFloatStateOf(24f) }
    Box(
        Modifier.fillMaxSize().background(WorldStudioV6Design.scrim),
        contentAlignment = Alignment.Center,
    ) {
        Column(
            modifier = Modifier
                .padding(16.dp)
                .widthIn(max = 520.dp)
                .fillMaxWidth()
                .heightIn(max = 480.dp)
                .background(WorldStudioV6Design.surface, WorldStudioV6Design.paneShape)
                .border(WorldStudioV6Design.strongBorder, WorldStudioV6Design.paneShape)
                .imePadding(),
        ) {
            WorldStudioV6PaneTitle(pending.title(), onCancel)
            Text(
                when (pending) {
                    is PendingEditorOperation.ConfirmConversion -> pending.prompt
                    is PendingEditorOperation.SelectOrCreateTarget -> pending.prompt
                },
                color = WorldStudioV6Design.text,
                fontSize = 11.sp,
                modifier = Modifier.padding(horizontal = 12.dp, vertical = 10.dp),
            )
            when (pending) {
                is PendingEditorOperation.ConfirmConversion -> {
                    if (pending.requestedToolset == EditorToolset.VOLUME) {
                        Column(Modifier.padding(horizontal = 12.dp)) {
                            Text(
                                "Resolução voxel: ${resolution.toInt()}",
                                color = WorldStudioV6Design.textMuted,
                                fontSize = 9.sp,
                            )
                            Slider(
                                value = resolution,
                                onValueChange = { resolution = it },
                                valueRange = 8f..64f,
                                steps = 13,
                            )
                            Text(
                                "Resoluções maiores usam mais memória e tornam o Undo mais pesado.",
                                color = WorldStudioV6Design.textFaint,
                                fontSize = 7.sp,
                            )
                        }
                    }
                    Spacer(Modifier.weight(1f))
                    Row(
                        Modifier.fillMaxWidth().padding(12.dp),
                        horizontalArrangement = Arrangement.End,
                    ) {
                        WorldStudioV6Button("Cancelar", onCancel)
                        Spacer(Modifier.width(6.dp))
                        WorldStudioV6Button(
                            "Confirmar conversão",
                            { onConfirmConversion(resolution.toInt()) },
                            selected = true,
                        )
                    }
                }
                is PendingEditorOperation.SelectOrCreateTarget -> {
                    val candidates = state.sceneDocument?.objects.orEmpty()
                        .filter { WORLD_LAYER_SYSTEM_TAG !in it.tags }
                        .filter { it.toEditorSelectionKind() in pending.acceptedKinds }
                    Text(
                        "Alvos compatíveis",
                        color = WorldStudioV6Design.textMuted,
                        fontSize = 8.sp,
                        modifier = Modifier.padding(horizontal = 12.dp),
                    )
                    LazyColumn(
                        modifier = Modifier.weight(1f).fillMaxWidth().padding(12.dp),
                        verticalArrangement = Arrangement.spacedBy(5.dp),
                    ) {
                        if (candidates.isEmpty()) {
                            item {
                                Text(
                                    "Nenhum alvo compatível existe nesta cena.",
                                    color = WorldStudioV6Design.textFaint,
                                    fontSize = 9.sp,
                                    modifier = Modifier.padding(vertical = 10.dp),
                                )
                            }
                        }
                        items(candidates, key = { it.id }) { objectValue ->
                            Row(
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .heightIn(min = 48.dp)
                                    .background(WorldStudioV6Design.surfaceRaised, WorldStudioV6Design.smallShape)
                                    .border(1.dp, WorldStudioV6Design.border, WorldStudioV6Design.smallShape)
                                    .clickable { onSelectObject(objectValue.id) }
                                    .padding(horizontal = 11.dp),
                                verticalAlignment = Alignment.CenterVertically,
                            ) {
                                Column(Modifier.weight(1f)) {
                                    Text(objectValue.name, color = WorldStudioV6Design.text, fontSize = 10.sp)
                                    Text(
                                        objectValue.toEditorSelectionKind().name.lowercase().replace('_', ' '),
                                        color = WorldStudioV6Design.textFaint,
                                        fontSize = 7.sp,
                                    )
                                }
                                Text("Selecionar", color = WorldStudioV6Design.accent, fontSize = 8.sp)
                            }
                        }
                    }
                    Row(
                        Modifier.fillMaxWidth().padding(12.dp),
                        horizontalArrangement = Arrangement.End,
                        verticalAlignment = Alignment.CenterVertically,
                    ) {
                        if (pending.allowCreate) {
                            val createAction: (() -> Unit)? = when (pending.requestedToolset) {
                                EditorToolset.TERRAIN -> onCreateTerrain
                                EditorToolset.MESH -> onCreateMesh
                                EditorToolset.VOLUME -> onCreateVolume
                                EditorToolset.OBJECT,
                                EditorToolset.MATERIAL,
                                -> null
                            }
                            if (createAction != null) {
                                WorldStudioV6Button(
                                    when (pending.requestedToolset) {
                                        EditorToolset.TERRAIN -> "Criar terreno"
                                        EditorToolset.MESH -> "Criar malha"
                                        EditorToolset.VOLUME -> "Criar volume"
                                        else -> "Criar alvo"
                                    },
                                    createAction,
                                    selected = true,
                                )
                                Spacer(Modifier.width(6.dp))
                            }
                        }
                        WorldStudioV6Button("Cancelar", onCancel)
                    }
                }
            }
        }
    }
}

@Composable
private fun WorldStudioV6StatusBar(state: WorkspaceUiState) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .height(30.dp)
            .background(WorldStudioV6Design.header)
            .border(1.dp, WorldStudioV6Design.border)
            .padding(horizontal = 10.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Text(
            state.editorContext.breadcrumb,
            color = WorldStudioV6Design.textMuted,
            fontSize = 8.sp,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis,
            modifier = Modifier.weight(1f),
        )
        if (state.editorContext.selection.locked) {
            Text("CAMADA BLOQUEADA", color = WorldStudioV6Design.warning, fontSize = 7.sp)
            Spacer(Modifier.width(10.dp))
        }
        Text(
            when (state.editorContext.interactionMode) {
                ViewportInteractionMode.NAVIGATE -> "Arraste: orbitar · dois dedos: mover · pinça: zoom"
                ViewportInteractionMode.SELECT -> "Toque: selecionar · arraste vazio: orbitar · pinça: zoom"
                ViewportInteractionMode.GIZMO -> "Arraste o gizmo para transformar · fora dele: câmera"
                ViewportInteractionMode.TERRAIN_BRUSH -> "Arraste no terreno para editar · segundo dedo cancela o stroke"
                ViewportInteractionMode.MESH_EDIT -> "Seleção de topologia ativa"
                ViewportInteractionMode.VOXEL_BRUSH -> "Pincel voxel ativo"
                ViewportInteractionMode.MATERIAL_PAINT -> "Pintura de material ativa"
            },
            color = WorldStudioV6Design.textFaint,
            fontSize = 7.sp,
            maxLines = 1,
        )
    }
}

@Composable
private fun WorldStudioV6PaneFrame(
    title: String,
    width: Dp,
    onClose: () -> Unit,
    modifier: Modifier = Modifier,
    content: @Composable ColumnScope.() -> Unit,
) {
    Column(
        modifier = modifier
            .width(width)
            .fillMaxHeight()
            .background(WorldStudioV6Design.surface)
            .border(WorldStudioV6Design.paneBorder),
    ) {
        WorldStudioV6PaneTitle(title, onClose)
        content()
    }
}

@Composable
private fun WorldStudioV6PaneTitle(title: String, onClose: () -> Unit) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .height(44.dp)
            .background(WorldStudioV6Design.header)
            .border(1.dp, WorldStudioV6Design.border)
            .padding(horizontal = 9.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Text(
            title,
            color = WorldStudioV6Design.text,
            fontSize = 10.sp,
            fontWeight = FontWeight.SemiBold,
            modifier = Modifier.weight(1f),
            maxLines = 1,
            overflow = TextOverflow.Ellipsis,
        )
        WorldStudioV6Button("Fechar", onClose, compact = true)
    }
}

@Composable
private fun WorldStudioV6Section(
    title: String,
    content: @Composable ColumnScope.() -> Unit,
) {
    Column(
        modifier = Modifier
            .fillMaxWidth()
            .background(WorldStudioV6Design.surfaceRaised, WorldStudioV6Design.mediumShape)
            .border(1.dp, WorldStudioV6Design.border, WorldStudioV6Design.mediumShape)
            .padding(9.dp),
    ) {
        Text(
            title,
            color = WorldStudioV6Design.text,
            fontSize = 9.sp,
            fontWeight = FontWeight.SemiBold,
            modifier = Modifier.padding(bottom = 7.dp),
        )
        content()
    }
}

@Composable
private fun WorldStudioV6VectorFields(
    label: String,
    value: EditorVector3,
    property: TransformProperty,
    enabled: Boolean,
    onValue: (TransformProperty, TransformAxis, Float) -> Unit,
) {
    Text(
        label,
        color = WorldStudioV6Design.textMuted,
        fontSize = 8.sp,
        modifier = Modifier.padding(top = 4.dp, bottom = 4.dp),
    )
    Row(
        Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.spacedBy(5.dp),
    ) {
        WorldStudioV6NumberField("X", value.x, enabled, Modifier.weight(1f)) {
            onValue(property, TransformAxis.X, it)
        }
        WorldStudioV6NumberField("Y", value.y, enabled, Modifier.weight(1f)) {
            onValue(property, TransformAxis.Y, it)
        }
        WorldStudioV6NumberField("Z", value.z, enabled, Modifier.weight(1f)) {
            onValue(property, TransformAxis.Z, it)
        }
    }
}

@Composable
private fun WorldStudioV6NumberField(
    axis: String,
    value: Float,
    enabled: Boolean,
    modifier: Modifier = Modifier,
    onValue: (Float) -> Unit,
) {
    var focused by remember { mutableStateOf(false) }
    var text by remember(value, focused) {
        mutableStateOf(if (focused) value.toString() else formatFloat(value))
    }
    OutlinedTextField(
        value = text,
        onValueChange = { next ->
            val filtered = next.take(12)
            text = filtered
            filtered.replace(',', '.').toFloatOrNull()?.takeIf { it.isFinite() }?.let(onValue)
        },
        label = { Text(axis) },
        enabled = enabled,
        singleLine = true,
        keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Decimal),
        modifier = modifier.onFocusChanged { focus ->
            focused = focus.isFocused
            if (!focus.isFocused) text = formatFloat(value)
        },
    )
}

@Composable
private fun WorldStudioV6LabeledSlider(
    label: String,
    value: Float,
    range: ClosedFloatingPointRange<Float>,
    onValue: (Float) -> Unit,
) {
    Row(
        Modifier.fillMaxWidth(),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Text(
            "$label ${formatFloat(value)}",
            color = WorldStudioV6Design.textMuted,
            fontSize = 8.sp,
            modifier = Modifier.width(86.dp),
        )
        Slider(
            value = value.coerceIn(range.start, range.endInclusive),
            onValueChange = onValue,
            valueRange = range,
            modifier = Modifier.weight(1f),
        )
    }
}

@Composable
private fun WorldStudioV6Button(
    label: String,
    onClick: () -> Unit,
    enabled: Boolean = true,
    selected: Boolean = false,
    danger: Boolean = false,
    compact: Boolean = false,
    modifier: Modifier = Modifier,
) {
    TextButton(
        onClick = onClick,
        enabled = enabled,
        modifier = modifier.heightIn(min = 44.dp),
        shape = WorldStudioV6Design.smallShape,
        colors = worldStudioV6ButtonColors(selected = selected, danger = danger),
        contentPadding = if (compact) {
            PaddingValues(horizontal = 8.dp, vertical = 4.dp)
        } else {
            WorldStudioV6Design.controlPadding
        },
    ) {
        Text(
            label,
            fontSize = if (compact) 7.sp else 8.5.sp,
            fontWeight = if (selected) FontWeight.SemiBold else FontWeight.Normal,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis,
        )
    }
}

private fun formatFloat(value: Float): String = String.format(Locale.US, "%.2f", value)
