package com.mobilegamestudio.editor

import androidx.activity.compose.BackHandler
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
import androidx.compose.foundation.layout.imePadding
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.OutlinedTextField
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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.window.Popup
import androidx.compose.ui.window.PopupProperties
import com.mobilegamestudio.core.model.AssetRecord
import com.mobilegamestudio.core.model.PrimitiveMesh
import com.mobilegamestudio.core.model.TerrainBrushMode
import java.io.File

/**
 * Workspace compacto inspirado na organização do Godot.
 *
 * A principal diferença para o shell anterior é que Cena, scripts Lua, grafos
 * NoCode e assets deixam de ser telas isoladas. Todos aparecem em uma única
 * árvore de recursos baseada nos caminhos persistidos pelo projeto. Selecionar
 * um arquivo abre o editor correto e seleciona o objeto dono daquele recurso.
 */
@Composable
internal fun GodotCompactEditorShell(
    state: WorkspaceUiState,
    onBack: () -> Unit,
    onReportDiagnostic: (String) -> Unit,
    onToolSelected: (EditorTool) -> Unit,
    onUndo: () -> Unit,
    onRedo: () -> Unit,
    onTogglePreview: () -> Unit,
    onSaveScene: () -> Unit,
    onSelectSection: (WorkspaceSection) -> Unit,
    onSelectObject: (String) -> Unit,
    onToggleVisibility: (String) -> Unit,
    onAddPrimitive: (PrimitiveMesh) -> Unit,
    onAddSceneObject: (EditorObjectType) -> Unit,
    onDuplicateSelected: () -> Unit,
    onDeleteSelected: () -> Unit,
    onRenameSelected: (String) -> Unit,
    onAddAsset: (AssetRecord) -> Unit,
    onTransformChange: (TransformProperty, TransformAxis, Float) -> Unit,
    onTransformValueChange: (TransformProperty, TransformAxis, Float) -> Unit,
    resolveAsset: (String) -> File?,
    onViewportObjectSelected: (String?) -> Unit,
    onTransformDrag: (Float, Float) -> Unit,
    onPreviewAction: (String) -> Unit,
    onImportAsset: () -> Unit,
    onCreateTouchGraph: () -> Unit,
    onCreateTouchGraphAt: (String, String) -> Unit,
    onOpenGraphResource: (String, String) -> Unit,
    onAddVisualNode: (String) -> Unit,
    onMoveVisualNode: (String, Float, Float) -> Unit,
    onConnectVisualNodes: (String, String, String, String) -> Unit,
    onRemoveLastVisualNode: () -> Unit,
    onSaveGraph: () -> Unit,
    onAddQuickBehavior: (QuickBehavior) -> Unit,
    onCreateScript: () -> Unit,
    onCreateScriptAt: (String, String) -> Unit,
    onOpenScriptResource: (String, String) -> Unit,
    onMoveLogicResource: (String, String, String, String) -> Unit,
    onDeleteLogicResource: (String, String) -> Unit,
    onScriptChange: (String) -> Unit,
    onSaveScript: () -> Unit,
    onProjectNameChange: (String) -> Unit,
    onSaveProject: () -> Unit,
    onTerrainToolChange: (TerrainBrushMode?, Float?, Float?, Float?, String?) -> Unit,
    onTerrainBrush: (Float, Float) -> Unit,
    onTerrainAutoTile: () -> Unit,
    onTerrainProcess: (com.mobilegamestudio.core.model.TerrainProcessMode, Float, Int, Float) -> Unit,
    onImportTerrainHeightmap: () -> Unit,
    onTerrainFalloffChange: (com.mobilegamestudio.core.model.TerrainBrushFalloff) -> Unit,
    onTerrainStrokeBegin: () -> Unit,
    onTerrainStrokePoint: (Float, Float) -> Unit,
    onTerrainStrokeEnd: (Boolean) -> Unit,
    onCreateFlatTerrain: (Int, Float, Float) -> Unit,
    onAssignTerrainTexture: (String, String, Boolean) -> Unit,
) {
    val previewActive = state.isPreviewStarting || state.isPreviewRunning
    var openPanelName by rememberSaveable { mutableStateOf<String?>(StudioPopup.FILES.name) }
    val openPanel = openPanelName?.let(StudioPopup::valueOf)

    fun show(panel: StudioPopup?) {
        openPanelName = panel?.name
        when (panel) {
            StudioPopup.SCENE, StudioPopup.INSPECTOR, StudioPopup.ADD,
            StudioPopup.WORLD, StudioPopup.BEHAVIORS -> onSelectSection(WorkspaceSection.SCENE)
            StudioPopup.ASSETS, StudioPopup.FILES -> onSelectSection(WorkspaceSection.ASSETS)
            StudioPopup.NOCODE, StudioPopup.CODE -> onSelectSection(WorkspaceSection.LOGIC)
            StudioPopup.PROJECT -> onSelectSection(WorkspaceSection.PROJECT)
            StudioPopup.CONSOLE, null -> Unit
        }
    }

    fun toggle(panel: StudioPopup) = show(if (openPanel == panel) null else panel)

    BackHandler(enabled = previewActive) { onTogglePreview() }
    BackHandler(enabled = !previewActive && openPanel != null) { show(null) }
    BackHandler(enabled = !previewActive && openPanel == null && state.isSceneDirty) {
        onReportDiagnostic("Salve a cena antes de sair do workspace.")
    }

    Box(
        modifier = Modifier
            .fillMaxSize()
            .background(WorkspaceBackground),
    ) {
        Column(Modifier.fillMaxSize()) {
            if (openPanel != StudioPopup.WORLD) CompactStudioTopBar(
                state = state,
                onBack = {
                    when {
                        previewActive -> onTogglePreview()
                        openPanel != null -> show(null)
                        state.isSceneDirty -> onReportDiagnostic("Salve a cena antes de sair do workspace.")
                        else -> onBack()
                    }
                },
                onUndo = onUndo,
                onRedo = onRedo,
                onSave = onSaveScene,
                onPlay = onTogglePreview,
                onProject = { toggle(StudioPopup.PROJECT) },
            )

            if (previewActive) {
                SceneViewport(
                    state = state,
                    resolveAsset = resolveAsset,
                    onObjectSelected = onViewportObjectSelected,
                    onTransformDrag = onTransformDrag,
                    onTransformChange = onTransformChange,
                    onDiagnostic = onReportDiagnostic,
                    onPreviewAction = onPreviewAction,
                    modifier = Modifier
                        .weight(1f)
                        .fillMaxWidth(),
                )
            } else {
                if (openPanel == StudioPopup.WORLD) {
                    WorldStudioWorkspace(
                        state = state,
                        resolveAsset = resolveAsset,
                        onExit = { show(null) },
                        onUndo = onUndo,
                        onRedo = onRedo,
                        onSave = onSaveScene,
                        onToolSelected = onToolSelected,
                        onSelectObject = onSelectObject,
                        onViewportObjectSelected = onViewportObjectSelected,
                        onToggleVisibility = onToggleVisibility,
                        onAddPrimitive = onAddPrimitive,
                        onAddSceneObject = onAddSceneObject,
                        onAddAsset = onAddAsset,
                        onTransformChange = onTransformChange,
                        onTransformValueChange = onTransformValueChange,
                        onDiagnostic = onReportDiagnostic,
                        onTerrainToolChange = onTerrainToolChange,
                        onTerrainFalloffChange = onTerrainFalloffChange,
                        onTerrainStrokeBegin = onTerrainStrokeBegin,
                        onTerrainStrokePoint = onTerrainStrokePoint,
                        onTerrainStrokeEnd = onTerrainStrokeEnd,
                        onCreateFlatTerrain = onCreateFlatTerrain,
                        onAssignTerrainTexture = onAssignTerrainTexture,
                        onImportAsset = onImportAsset,
                        onImportHeightmap = onImportTerrainHeightmap,
                        modifier = Modifier.weight(1f).fillMaxWidth(),
                    )
                } else {
                StudioWorkspaceTabs(
                    selected = openPanel,
                    onScene = { show(null) },
                    onCode = { toggle(StudioPopup.CODE) },
                    onNoCode = { toggle(StudioPopup.NOCODE) },
                    onPlay = onTogglePreview,
                    onResources = { toggle(StudioPopup.FILES) },
                )
                Row(
                    modifier = Modifier
                        .weight(1f)
                        .fillMaxWidth(),
                ) {
                    StudioDockRail(
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
                        modifier = Modifier
                            .weight(1f)
                            .fillMaxHeight(),
                    ) {
                        CompactViewportTools(state.activeTool, onToolSelected)
                        SceneViewport(
                            state = state,
                            resolveAsset = resolveAsset,
                            onObjectSelected = { id ->
                                onViewportObjectSelected(id)
                                if (id != null) show(StudioPopup.INSPECTOR)
                            },
                            onTransformDrag = onTransformDrag,
                            onTransformChange = onTransformChange,
                            onDiagnostic = onReportDiagnostic,
                            onPreviewAction = onPreviewAction,
                            modifier = Modifier
                                .weight(1f)
                                .fillMaxWidth(),
                        )
                        StudioBottomDock(
                            state = state,
                            selected = openPanel,
                            onFiles = { toggle(StudioPopup.FILES) },
                            onConsole = { toggle(StudioPopup.CONSOLE) },
                            onAssets = { toggle(StudioPopup.ASSETS) },
                        )
                    }
                    StudioDockRail(
                        panels = listOf(
                            StudioPopup.INSPECTOR,
                            StudioPopup.BEHAVIORS,
                            StudioPopup.NOCODE,
                            StudioPopup.CODE,
                            StudioPopup.PROJECT,
                        ),
                        selected = openPanel,
                        onSelect = ::toggle,
                    )
                }
                }
            }
        }

        if (!previewActive && openPanel != null && openPanel != StudioPopup.WORLD) {
            StudioPopupHost(
                panel = openPanel,
                state = state,
                onClose = { show(null) },
                onOpenPanel = ::show,
                onSelectObject = onSelectObject,
                onToggleVisibility = onToggleVisibility,
                onDuplicateSelected = onDuplicateSelected,
                onDeleteSelected = onDeleteSelected,
                onRenameSelected = onRenameSelected,
                onAddPrimitive = onAddPrimitive,
                onAddSceneObject = onAddSceneObject,
                onAddAsset = onAddAsset,
                onTransformChange = onTransformChange,
                onTransformValueChange = onTransformValueChange,
                onImportAsset = onImportAsset,                 onCreateTouchGraph = onCreateTouchGraph,
                 onCreateTouchGraphAt = onCreateTouchGraphAt,
                 onOpenGraphResource = onOpenGraphResource,
                 onAddVisualNode = onAddVisualNode,
                onMoveVisualNode = onMoveVisualNode,
                onConnectVisualNodes = onConnectVisualNodes,
                onRemoveLastVisualNode = onRemoveLastVisualNode,
                onSaveGraph = onSaveGraph,
                onAddQuickBehavior = onAddQuickBehavior,                 onCreateScript = onCreateScript,
                 onCreateScriptAt = onCreateScriptAt,
                 onOpenScriptResource = onOpenScriptResource,
                 onMoveLogicResource = onMoveLogicResource,
                 onDeleteLogicResource = onDeleteLogicResource,
                 onScriptChange = onScriptChange,
                onSaveScript = onSaveScript,
                onProjectNameChange = onProjectNameChange,
                onSaveProject = onSaveProject,
                onTerrainToolChange = onTerrainToolChange,
                onTerrainBrush = onTerrainBrush,                 onTerrainAutoTile = onTerrainAutoTile,
                 onTerrainProcess = onTerrainProcess,
                 onImportTerrainHeightmap = onImportTerrainHeightmap,
)
        }
    }
}

private enum class StudioPopup(val title: String, val glyph: String, val shortLabel: String) {
    FILES("Arquivos do projeto", "▤", "Arquivos"),
    SCENE("Hierarquia da cena", "◇", "Cena"),
    INSPECTOR("Inspector", "≡", "Inspector"),
    ADD("Criar recurso", "+", "Criar"),
    ASSETS("Biblioteca de assets", "▧", "Assets"),
    NOCODE("Editor NoCode", "⌘", "NoCode"),
    CODE("Editor Lua", "</>", "Código"),
    WORLD("Editor de mundo", "⌁", "Mundo"),
    BEHAVIORS("Ligações do objeto", "∞", "Ligações"),
    PROJECT("Configurações do projeto", "⚙", "Projeto"),
    CONSOLE("Saída e diagnósticos", ">_", "Saída"),
}

@Composable
private fun CompactStudioTopBar(
    state: WorkspaceUiState,
    onBack: () -> Unit,
    onUndo: () -> Unit,
    onRedo: () -> Unit,
    onSave: () -> Unit,
    onPlay: () -> Unit,
    onProject: () -> Unit,
) {
    val preview = state.isPreviewStarting || state.isPreviewRunning
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .height(42.dp)
            .background(PanelBackground)
            .border(1.dp, WorkspaceBorder),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        CompactToolButton("‹", onBack)
        androidx.compose.foundation.Image(
            painter = painterResource(R.drawable.magic_ghost_logo),
            contentDescription = "Magic Engine",
            modifier = Modifier.size(28.dp),
        )
        TextButton(
            onClick = onProject,
            enabled = !preview,
            modifier = Modifier
                .weight(1f)
                .fillMaxHeight(),
            shape = RoundedCornerShape(0.dp),
            colors = ButtonDefaults.textButtonColors(contentColor = PrimaryText),
        ) {
            Column(
                modifier = Modifier.fillMaxWidth(),
                horizontalAlignment = Alignment.Start,
            ) {
                Text(
                    state.metadata?.name.orEmpty(),
                    fontSize = 11.sp,
                    fontWeight = FontWeight.SemiBold,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                )
                Text(
                    when {
                        state.isPreviewStarting -> "iniciando jogo…"
                        state.isPreviewRunning -> "jogo em execução"
                        state.isSceneDirty -> "alterações não salvas"
                        else -> "res://scenes/main.scene"
                    },
                    color = if (preview) Positive else SecondaryText,
                    fontSize = 7.sp,
                    maxLines = 1,
                )
            }
        }
        if (preview) {
            CompactToolButton(if (state.isPreviewStarting) "CANCELAR" else "■ PARAR", onPlay, danger = true)
        } else {
            CompactToolButton("↶", onUndo, state.canUndo)
            CompactToolButton("↷", onRedo, state.canRedo)
            CompactToolButton(
                if (state.isSavingScene) "…" else "SALVAR",
                onSave,
                state.isSceneDirty && !state.isSavingScene,
                accent = state.isSceneDirty,
            )
            CompactToolButton("▶", onPlay, accent = true)
        }
    }
}

@Composable
private fun StudioWorkspaceTabs(
    selected: StudioPopup?,
    onScene: () -> Unit,
    onCode: () -> Unit,
    onNoCode: () -> Unit,
    onPlay: () -> Unit,
    onResources: () -> Unit,
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .height(34.dp)
            .background(RaisedBackground)
            .border(1.dp, WorkspaceBorder)
            .horizontalScroll(rememberScrollState()),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.Center,
    ) {
        StudioTab("3D", selected == null || selected == StudioPopup.SCENE || selected == StudioPopup.INSPECTOR, onScene)
        StudioTab("Código", selected == StudioPopup.CODE, onCode)
        StudioTab("NoCode", selected == StudioPopup.NOCODE, onNoCode)
        StudioTab("Jogo", false, onPlay)
        StudioTab("Recursos", selected == StudioPopup.FILES || selected == StudioPopup.ASSETS, onResources)
    }
}

@Composable
private fun StudioTab(label: String, selected: Boolean, onClick: () -> Unit) {
    TextButton(
        onClick = onClick,
        modifier = Modifier.height(34.dp),
        shape = RoundedCornerShape(0.dp),
        colors = ButtonDefaults.textButtonColors(
            containerColor = if (selected) AccentMuted else Color.Transparent,
            contentColor = if (selected) AccentBright else SecondaryText,
        ),
    ) {
        Text(label, fontSize = 9.sp, fontWeight = if (selected) FontWeight.Bold else FontWeight.Normal)
    }
}

@Composable
private fun StudioDockRail(
    panels: List<StudioPopup>,
    selected: StudioPopup?,
    onSelect: (StudioPopup) -> Unit,
) {
    Column(
        modifier = Modifier
            .width(46.dp)
            .fillMaxHeight()
            .background(PanelBackground)
            .border(1.dp, WorkspaceBorder)
            .padding(vertical = 4.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(3.dp),
    ) {
        panels.forEach { panel ->
            val active = panel == selected
            TextButton(
                onClick = { onSelect(panel) },
                modifier = Modifier.size(40.dp),
                contentPadding = androidx.compose.foundation.layout.PaddingValues(0.dp),
                shape = RoundedCornerShape(4.dp),
                colors = ButtonDefaults.textButtonColors(
                    containerColor = if (active) AccentMuted else Color.Transparent,
                    contentColor = if (active) AccentBright else SecondaryText,
                ),
            ) {
                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                    Text(panel.glyph, fontSize = if (panel.glyph.length > 1) 8.sp else 14.sp, fontWeight = FontWeight.Bold)
                    Text(panel.shortLabel.take(6), fontSize = 5.sp, maxLines = 1)
                }
            }
        }
    }
}

@Composable
private fun CompactViewportTools(selected: EditorTool, onSelected: (EditorTool) -> Unit) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .height(38.dp)
            .background(RaisedBackground)
            .border(1.dp, WorkspaceBorder)
            .horizontalScroll(rememberScrollState()),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.Center,
    ) {
        EditorTool.entries.forEach { tool ->
            val active = tool == selected
            TextButton(
                onClick = { onSelected(tool) },
                modifier = Modifier.height(38.dp),
                shape = RoundedCornerShape(0.dp),
                colors = ButtonDefaults.textButtonColors(
                    containerColor = if (active) AccentMuted else Color.Transparent,
                    contentColor = if (active) AccentBright else SecondaryText,
                ),
            ) {
                Text(
                    when (tool) {
                        EditorTool.SELECT -> "▣ Selecionar"
                        EditorTool.MOVE -> "↔ Mover"
                        EditorTool.ROTATE -> "⟳ Girar"
                        EditorTool.SCALE -> "⤢ Escalar"
                    },
                    fontSize = 8.sp,
                )
            }
        }
    }
}

@Composable
private fun StudioBottomDock(
    state: WorkspaceUiState,
    selected: StudioPopup?,
    onFiles: () -> Unit,
    onConsole: () -> Unit,
    onAssets: () -> Unit,
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .height(32.dp)
            .background(PanelBackground)
            .border(1.dp, WorkspaceBorder),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        BottomDockButton("Arquivos", selected == StudioPopup.FILES, onFiles)
        BottomDockButton("Saída", selected == StudioPopup.CONSOLE, onConsole)
        BottomDockButton("Assets ${state.assets.size}", selected == StudioPopup.ASSETS, onAssets)
        Spacer(Modifier.weight(1f))
        Text(
            state.selectedObject?.name ?: "Nenhum objeto selecionado",
            color = SecondaryText,
            fontSize = 7.sp,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis,
            modifier = Modifier.widthIn(max = 180.dp).padding(horizontal = 8.dp),
        )
    }
}

@Composable
private fun BottomDockButton(label: String, selected: Boolean, onClick: () -> Unit) {
    TextButton(
        onClick = onClick,
        modifier = Modifier.height(32.dp),
        shape = RoundedCornerShape(0.dp),
        colors = ButtonDefaults.textButtonColors(
            containerColor = if (selected) RaisedBackground else Color.Transparent,
            contentColor = if (selected) AccentBright else SecondaryText,
        ),
    ) { Text(label, fontSize = 7.sp) }
}

@Composable
private fun StudioPopupHost(
    panel: StudioPopup,
    state: WorkspaceUiState,
    onClose: () -> Unit,
    onOpenPanel: (StudioPopup?) -> Unit,
    onSelectObject: (String) -> Unit,
    onToggleVisibility: (String) -> Unit,
    onDuplicateSelected: () -> Unit,
    onDeleteSelected: () -> Unit,
    onRenameSelected: (String) -> Unit,
    onAddPrimitive: (PrimitiveMesh) -> Unit,
    onAddSceneObject: (EditorObjectType) -> Unit,
    onAddAsset: (AssetRecord) -> Unit,
    onTransformChange: (TransformProperty, TransformAxis, Float) -> Unit,
    onTransformValueChange: (TransformProperty, TransformAxis, Float) -> Unit,
    onImportAsset: () -> Unit,
    onCreateTouchGraph: () -> Unit,
    onCreateTouchGraphAt: (String, String) -> Unit,
    onOpenGraphResource: (String, String) -> Unit,
    onAddVisualNode: (String) -> Unit,
    onMoveVisualNode: (String, Float, Float) -> Unit,
    onConnectVisualNodes: (String, String, String, String) -> Unit,
    onRemoveLastVisualNode: () -> Unit,
    onSaveGraph: () -> Unit,
    onAddQuickBehavior: (QuickBehavior) -> Unit,
    onCreateScript: () -> Unit,
    onCreateScriptAt: (String, String) -> Unit,
    onOpenScriptResource: (String, String) -> Unit,
    onMoveLogicResource: (String, String, String, String) -> Unit,
    onDeleteLogicResource: (String, String) -> Unit,
    onScriptChange: (String) -> Unit,
    onSaveScript: () -> Unit,
    onProjectNameChange: (String) -> Unit,
    onSaveProject: () -> Unit,
    onTerrainToolChange: (TerrainBrushMode?, Float?, Float?, Float?, String?) -> Unit,
    onTerrainBrush: (Float, Float) -> Unit,
    onTerrainAutoTile: () -> Unit,
    onTerrainProcess: (com.mobilegamestudio.core.model.TerrainProcessMode, Float, Int, Float) -> Unit,
    onImportTerrainHeightmap: () -> Unit,
) {
    val side = panel == StudioPopup.FILES || panel == StudioPopup.SCENE || panel == StudioPopup.INSPECTOR || panel == StudioPopup.WORLD
    val left = panel == StudioPopup.FILES || panel == StudioPopup.SCENE || panel == StudioPopup.WORLD
    Popup(
        alignment = when {
            !side -> Alignment.Center
            left -> Alignment.CenterStart
            else -> Alignment.CenterEnd
        },
        onDismissRequest = onClose,
        properties = PopupProperties(focusable = true),
    ) {
        BoxWithConstraints(
            modifier = Modifier.fillMaxSize(),
            contentAlignment = when {
                !side -> Alignment.Center
                left -> Alignment.CenterStart
                else -> Alignment.CenterEnd
            },
        ) {
            Box(
                Modifier
                    .fillMaxSize()
                    .background(if (side) Color.Transparent else Color.Black.copy(alpha = 0.62f))
                    .clickable(onClick = onClose),
            )
            val widthFraction = if (side) {
                when {
                    panel == StudioPopup.WORLD && maxWidth < 720.dp -> 0.72f
                    panel == StudioPopup.WORLD -> 0.46f
                    maxWidth < 720.dp -> 0.58f
                    else -> 0.34f
                }
            } else {
                if (maxWidth < 720.dp) 0.94f else 0.84f
            }
            val heightFraction = if (side) 1f else if (maxHeight < 440.dp) 0.94f else 0.88f
            Column(
                modifier = Modifier
                    .fillMaxWidth(widthFraction)
                    .fillMaxHeight(heightFraction)
                    .background(PanelBackground)
                    .border(1.dp, WorkspaceBorder)
                    .imePadding(),
            ) {
                PopupTitleBar(panel, onClose)
                Box(Modifier.weight(1f).fillMaxWidth()) {
                    when (panel) {
                        StudioPopup.FILES -> ManagedResourceExplorerPanel(
                            state = state,
                            onSelectObject = onSelectObject,
                            onOpenScript = { owner, resourcePath ->
                                onOpenScriptResource(owner, resourcePath)
                                onOpenPanel(StudioPopup.CODE)
                            },
                            onOpenGraph = { owner, resourcePath ->
                                onOpenGraphResource(owner, resourcePath)
                                onOpenPanel(StudioPopup.NOCODE)
                            },
                            onCreateScriptAt = { folder, name ->
                                onCreateScriptAt(folder, name)
                                onOpenPanel(StudioPopup.CODE)
                            },
                            onCreateGraphAt = { folder, name ->
                                onCreateTouchGraphAt(folder, name)
                                onOpenPanel(StudioPopup.NOCODE)
                            },
                            onMoveLogicResource = onMoveLogicResource,
                            onDeleteLogicResource = onDeleteLogicResource,
                            onImportAsset = onImportAsset,
                            onAddAsset = onAddAsset,
                        )
                        StudioPopup.SCENE -> HierarchyPanel(
                            objects = state.sceneObjects,
                            selectedObjectId = state.selectedObjectId,
                            onSelectObject = onSelectObject,
                            onToggleVisibility = onToggleVisibility,
                            onAddPrimitive = onAddPrimitive,
                            onAddSceneObject = onAddSceneObject,
                            onDuplicateSelected = onDuplicateSelected,
                            onDeleteSelected = onDeleteSelected,
                            showCreationActions = false,
                            showPanelHeader = false,
                            modifier = Modifier.fillMaxSize(),
                        )
                        StudioPopup.INSPECTOR -> InspectorPanel(
                            selectedObject = state.selectedObject,
                            onTransformChange = onTransformChange,
                            onTransformValueChange = onTransformValueChange,
                            onRename = onRenameSelected,
                            showPanelHeader = false,
                            modifier = Modifier.fillMaxSize(),
                        )
                        StudioPopup.ADD -> CompactCreationPanel(
                            state = state,
                            onAddPrimitive = onAddPrimitive,
                            onAddSceneObject = onAddSceneObject,
                            onAddAsset = onAddAsset,
                            onImportAsset = onImportAsset,
                        )
                        StudioPopup.ASSETS -> ConnectedAssetsPanel(
                            state = state,
                            onImportAsset = onImportAsset,
                            onAddAsset = onAddAsset,
                        )
                        StudioPopup.NOCODE -> NoCodeEditorPanel(
                            state,
                            onCreateTouchGraph,
                            onAddVisualNode,
                            onMoveVisualNode,
                            onConnectVisualNodes,
                            onRemoveLastVisualNode,
                            onSaveGraph,
                            onAddQuickBehavior,
                        )
                        StudioPopup.CODE -> ScriptEditorPanel(
                            state = state,
                            onCreateScript = onCreateScript,
                            onSourceChange = onScriptChange,
                            onSaveScript = onSaveScript,
                        )
                        StudioPopup.WORLD -> AdvancedTerrainEditorPanel(
                            terrain = state.selectedTerrain,
                            tool = state.terrainTool,
                            onToolChange = onTerrainToolChange,
                            onBrush = onTerrainBrush,
                            onAutoTile = onTerrainAutoTile,
                            onProcess = onTerrainProcess,
                            onImportHeightmap = onImportTerrainHeightmap,
                            onCreateTerrain = { onAddSceneObject(EditorObjectType.TERRAIN) },
                            modifier = Modifier.fillMaxSize(),
                        )
                        StudioPopup.BEHAVIORS -> BehaviorManagerPanel(
                            state = state,
                            onSelectObject = onSelectObject,
                        )
                        StudioPopup.PROJECT -> ConnectedProjectPanel(
                            state = state,
                            onNameChange = onProjectNameChange,
                            onSave = onSaveProject,
                        )
                        StudioPopup.CONSOLE -> StudioConsolePanel(state)
                    }
                }
            }
        }
    }
}

@Composable
private fun PopupTitleBar(panel: StudioPopup, onClose: () -> Unit) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .height(36.dp)
            .background(RaisedBackground)
            .border(1.dp, WorkspaceBorder)
            .padding(start = 10.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Text(panel.glyph, color = AccentBright, fontSize = 12.sp, fontWeight = FontWeight.Bold)
        Text(
            panel.title.uppercase(),
            modifier = Modifier.weight(1f).padding(horizontal = 8.dp),
            color = PrimaryText,
            fontSize = 8.sp,
            fontWeight = FontWeight.Bold,
            letterSpacing = 0.6.sp,
        )
        CompactToolButton("×", onClose)
    }
}

private enum class ResourceKind { FOLDER, SCENE, LUA, NOCODE, MODEL, TEXTURE, PROJECT, OTHER }

private data class ResourceLeaf(
    val path: String,
    val kind: ResourceKind,
    val ownerObjectId: String? = null,
    val asset: AssetRecord? = null,
)

private data class ResourceNode(
    val name: String,
    val path: String,
    val kind: ResourceKind,
    val ownerObjectId: String? = null,
    val asset: AssetRecord? = null,
    val children: List<ResourceNode> = emptyList(),
)

private class MutableResourceNode(
    val name: String,
    val path: String,
    var kind: ResourceKind = ResourceKind.FOLDER,
    var ownerObjectId: String? = null,
    var asset: AssetRecord? = null,
) {
    val children = linkedMapOf<String, MutableResourceNode>()

    fun freeze(): ResourceNode = ResourceNode(
        name = name,
        path = path,
        kind = kind,
        ownerObjectId = ownerObjectId,
        asset = asset,
        children = children.values
            .sortedWith(compareBy<MutableResourceNode> { it.kind != ResourceKind.FOLDER }.thenBy { it.name.lowercase() })
            .map(MutableResourceNode::freeze),
    )
}

private fun buildResourceTree(state: WorkspaceUiState): ResourceNode {
    val leaves = mutableListOf(
        ResourceLeaf("scenes/main.scene", ResourceKind.SCENE),
        ResourceLeaf("project.json", ResourceKind.PROJECT),
    )
    state.sceneObjects.forEach { sceneObject ->
        sceneObject.luaScriptPaths.forEach { path ->
            leaves += ResourceLeaf(path, ResourceKind.LUA, ownerObjectId = sceneObject.id)
        }
        sceneObject.visualGraphPaths.forEach { path ->
            leaves += ResourceLeaf(path, ResourceKind.NOCODE, ownerObjectId = sceneObject.id)
        }
    }
    state.assets.forEach { asset ->
        leaves += ResourceLeaf(
            path = asset.relativePath,
            kind = if (asset.mediaType.startsWith("image/")) ResourceKind.TEXTURE else ResourceKind.MODEL,
            asset = asset,
        )
    }
    val root = MutableResourceNode("res://", "")
    val defaultFolders = listOf(
        "scenes",
        "scripts/lua",
        "visual-graphs",
        "assets/models",
        "assets/textures",
        "assets/materials",
        "assets/animations",
        "assets/audio",
        "prefabs",
        "ui",
        "plugins",
    )
    (defaultFolders.map { ResourceLeaf(it, ResourceKind.FOLDER) } + leaves)
        .distinctBy(ResourceLeaf::path)
        .forEach { leaf ->
            var current = root
            var currentPath = ""
            leaf.path.split('/').forEachIndexed { index, segment ->
                currentPath = if (currentPath.isEmpty()) segment else "$currentPath/$segment"
                val child = current.children.getOrPut(segment) {
                    MutableResourceNode(segment, currentPath)
                }
                if (index == leaf.path.substringBeforeLast('/', "").count { it == '/' } + 1 || currentPath == leaf.path) {
                    if (currentPath == leaf.path) {
                        child.kind = leaf.kind
                        child.ownerObjectId = leaf.ownerObjectId
                        child.asset = leaf.asset
                    }
                }
                current = child
            }
        }
    return root.freeze()
}

@Composable
private fun ResourceExplorerPanel(
    state: WorkspaceUiState,
    onSelectObject: (String) -> Unit,
    onOpenPanel: (StudioPopup?) -> Unit,
    onCreateScript: () -> Unit,
    onCreateGraph: () -> Unit,
    onImportAsset: () -> Unit,
    onAddAsset: (AssetRecord) -> Unit,
) {
    var query by rememberSaveable { mutableStateOf("") }
    var expanded by remember { mutableStateOf(setOf("", "scenes", "scripts", "scripts/lua", "visual-graphs", "assets")) }
    val tree = remember(state.sceneObjects, state.assets) { buildResourceTree(state) }

    Column(Modifier.fillMaxSize()) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .background(RaisedBackground)
                .padding(5.dp),
            horizontalArrangement = Arrangement.spacedBy(4.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            MiniAction("+ Lua", enabled = state.selectedObject != null) {
                onCreateScript()
                onOpenPanel(StudioPopup.CODE)
            }
            MiniAction("+ NoCode", enabled = state.selectedObject != null) {
                onCreateGraph()
                onOpenPanel(StudioPopup.NOCODE)
            }
            MiniAction("Importar", onClick = onImportAsset)
        }
        OutlinedTextField(
            value = query,
            onValueChange = { query = it.take(64) },
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 6.dp, vertical = 4.dp),
            label = { Text("Filtrar res://", fontSize = 8.sp) },
            singleLine = true,
        )
        LazyColumn(Modifier.fillMaxSize()) {
            item {
                ResourceTreeRow(
                    node = tree,
                    depth = 0,
                    expanded = expanded,
                    query = query,
                    onToggle = { path ->
                        expanded = if (path in expanded) expanded - path else expanded + path
                    },
                    onOpen = { node ->
                        node.ownerObjectId?.let(onSelectObject)
                        when (node.kind) {
                            ResourceKind.SCENE -> onOpenPanel(null)
                            ResourceKind.LUA -> onOpenPanel(StudioPopup.CODE)
                            ResourceKind.NOCODE -> onOpenPanel(StudioPopup.NOCODE)
                            ResourceKind.MODEL, ResourceKind.TEXTURE -> onOpenPanel(StudioPopup.ASSETS)
                            ResourceKind.PROJECT -> onOpenPanel(StudioPopup.PROJECT)
                            ResourceKind.FOLDER, ResourceKind.OTHER -> Unit
                        }
                    },
                    onUseAsset = onAddAsset,
                )
            }
        }
    }
}

@Composable
private fun ResourceTreeRow(
    node: ResourceNode,
    depth: Int,
    expanded: Set<String>,
    query: String,
    onToggle: (String) -> Unit,
    onOpen: (ResourceNode) -> Unit,
    onUseAsset: (AssetRecord) -> Unit,
) {
    val matches = query.isBlank() || node.name.contains(query, ignoreCase = true) ||
        node.children.any { it.name.contains(query, ignoreCase = true) }
    if (!matches && node.kind != ResourceKind.FOLDER) return
    val folder = node.kind == ResourceKind.FOLDER
    val isExpanded = node.path in expanded || query.isNotBlank()
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .height(34.dp)
            .clickable {
                if (folder) onToggle(node.path) else onOpen(node)
            }
            .padding(start = (6 + depth * 12).dp, end = 4.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Text(
            if (folder) if (isExpanded) "▾" else "▸" else resourceGlyph(node.kind),
            modifier = Modifier.width(22.dp),
            color = if (folder) AccentBright else resourceColor(node.kind),
            fontSize = 10.sp,
            fontFamily = FontFamily.Monospace,
        )
        Text(
            node.name,
            modifier = Modifier.weight(1f),
            color = if (node.path.isEmpty()) PrimaryText else SecondaryText,
            fontSize = 9.sp,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis,
        )
        node.asset?.let { asset ->
            TextButton(
                onClick = { onUseAsset(asset) },
                modifier = Modifier.height(30.dp),
                contentPadding = androidx.compose.foundation.layout.PaddingValues(horizontal = 5.dp),
            ) { Text("usar", color = Accent, fontSize = 7.sp) }
        }
    }
    if (folder && isExpanded) {
        node.children.forEach { child ->
            ResourceTreeRow(child, depth + 1, expanded, query, onToggle, onOpen, onUseAsset)
        }
    }
}

private fun resourceGlyph(kind: ResourceKind): String = when (kind) {
    ResourceKind.FOLDER -> "▸"
    ResourceKind.SCENE -> "SCN"
    ResourceKind.LUA -> "LUA"
    ResourceKind.NOCODE -> "NOD"
    ResourceKind.MODEL -> "3D"
    ResourceKind.TEXTURE -> "IMG"
    ResourceKind.PROJECT -> "CFG"
    ResourceKind.OTHER -> "TXT"
}

private fun resourceColor(kind: ResourceKind): Color = when (kind) {
    ResourceKind.LUA -> Color(0xFF73B7FF)
    ResourceKind.NOCODE -> AccentBright
    ResourceKind.MODEL -> Color(0xFF63D6A2)
    ResourceKind.TEXTURE -> Color(0xFFFFC46B)
    ResourceKind.SCENE -> Color(0xFF8BC5FF)
    ResourceKind.PROJECT -> SecondaryText
    else -> SecondaryText
}

@Composable
private fun CompactCreationPanel(
    state: WorkspaceUiState,
    onAddPrimitive: (PrimitiveMesh) -> Unit,
    onAddSceneObject: (EditorObjectType) -> Unit,
    onAddAsset: (AssetRecord) -> Unit,
    onImportAsset: () -> Unit,
) {
    LazyColumn(
        modifier = Modifier
            .fillMaxSize()
            .padding(8.dp),
        verticalArrangement = Arrangement.spacedBy(6.dp),
    ) {
        item { CreationGroupTitle("Objetos 3D") }
        item {
            Row(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                PanelAction("Cubo") { onAddPrimitive(PrimitiveMesh.CUBE) }
                PanelAction("Plano") { onAddPrimitive(PrimitiveMesh.PLANE) }
                PanelAction("Câmera") { onAddSceneObject(EditorObjectType.CAMERA) }
                PanelAction("Luz") { onAddSceneObject(EditorObjectType.LIGHT) }
            }
        }
        item { CreationGroupTitle("Gameplay") }
        item {
            Row(
                modifier = Modifier.horizontalScroll(rememberScrollState()),
                horizontalArrangement = Arrangement.spacedBy(6.dp),
            ) {
                PanelAction("Jogador 3ª pessoa") { onAddSceneObject(EditorObjectType.PLAYER) }
                PanelAction("Jogador 1ª pessoa") { onAddSceneObject(EditorObjectType.PLAYER_FIRST_PERSON) }
                PanelAction("Visão superior") { onAddSceneObject(EditorObjectType.PLAYER_TOP_DOWN) }
                PanelAction("Joystick") { onAddSceneObject(EditorObjectType.JOYSTICK) }
                PanelAction("Botão UI") { onAddSceneObject(EditorObjectType.UI_BUTTON) }
            }
        }
        item { CreationGroupTitle("Mundo e assets") }
        item {
            Row(
                modifier = Modifier.horizontalScroll(rememberScrollState()),
                horizontalArrangement = Arrangement.spacedBy(6.dp),
            ) {
                PanelAction("Terreno") { onAddSceneObject(EditorObjectType.TERRAIN) }
                PanelAction(if (state.isImportingAsset) "Importando…" else "Importar 3D/textura", enabled = !state.isImportingAsset) {
                    onImportAsset()
                }
                state.assets.forEach { asset ->
                    PanelAction(asset.displayName) { onAddAsset(asset) }
                }
            }
        }
    }
}

@Composable
private fun CreationGroupTitle(label: String) {
    Text(label.uppercase(), color = SecondaryText, fontSize = 8.sp, fontWeight = FontWeight.Bold, letterSpacing = 0.6.sp)
}

@Composable
private fun ConnectedAssetsPanel(
    state: WorkspaceUiState,
    onImportAsset: () -> Unit,
    onAddAsset: (AssetRecord) -> Unit,
) {
    Column(Modifier.fillMaxSize()) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .background(RaisedBackground)
                .padding(6.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            Text(
                "res://assets",
                modifier = Modifier.weight(1f),
                color = SecondaryText,
                fontSize = 8.sp,
                fontFamily = FontFamily.Monospace,
            )
            MiniAction(if (state.isImportingAsset) "Importando…" else "+ Importar", enabled = !state.isImportingAsset) {
                onImportAsset()
            }
        }
        if (state.assets.isEmpty()) {
            Box(Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
                Text("Nenhum modelo ou textura importado.", color = SecondaryText, fontSize = 10.sp)
            }
        } else {
            LazyColumn(Modifier.fillMaxSize()) {
                items(state.assets, key = AssetRecord::id) { asset ->
                    Row(
                        modifier = Modifier
                            .fillMaxWidth()
                            .height(48.dp)
                            .border(1.dp, WorkspaceBorder)
                            .padding(horizontal = 8.dp),
                        verticalAlignment = Alignment.CenterVertically,
                    ) {
                        Text(if (asset.mediaType.startsWith("image/")) "IMG" else "3D", color = resourceColor(if (asset.mediaType.startsWith("image/")) ResourceKind.TEXTURE else ResourceKind.MODEL), fontSize = 9.sp)
                        Column(Modifier.weight(1f).padding(horizontal = 8.dp)) {
                            Text(asset.displayName, color = PrimaryText, fontSize = 9.sp, maxLines = 1, overflow = TextOverflow.Ellipsis)
                            Text(asset.relativePath, color = SecondaryText, fontSize = 7.sp, fontFamily = FontFamily.Monospace, maxLines = 1, overflow = TextOverflow.Ellipsis)
                        }
                        MiniAction("Usar") { onAddAsset(asset) }
                    }
                }
            }
        }
    }
}

@Composable
private fun ConnectedProjectPanel(
    state: WorkspaceUiState,
    onNameChange: (String) -> Unit,
    onSave: () -> Unit,
) {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp),
    ) {
        Text("PROJETO", color = SecondaryText, fontSize = 8.sp, fontWeight = FontWeight.Bold)
        OutlinedTextField(
            value = state.editableName,
            onValueChange = onNameChange,
            modifier = Modifier.fillMaxWidth(),
            label = { Text("Nome do projeto") },
            isError = state.nameError != null,
            supportingText = { state.nameError?.let { Text(it) } },
            singleLine = true,
            enabled = !state.isSaving,
        )
        Text("Cena inicial: res://scenes/main.scene", color = SecondaryText, fontSize = 9.sp, fontFamily = FontFamily.Monospace)
        Text("Estrutura: cenas, scripts, NoCode, modelos, texturas, materiais, áudio, UI e plugins.", color = SecondaryText, fontSize = 9.sp)
        PanelAction(
            if (state.isSaving) "Salvando…" else "Salvar projeto",
            enabled = !state.isSaving && state.editableName.trim() != state.metadata?.name,
            onClick = onSave,
        )
    }
}

@Composable
private fun StudioConsolePanel(state: WorkspaceUiState) {
    val entries = buildList {
        add("[engine] Projeto carregado: ${state.metadata?.name.orEmpty()}")
        add("[scene] ${state.sceneObjects.size} objetos · ${state.assets.size} assets")
        state.selectedObject?.let { add("[selection] ${it.name} (${it.type.label})") }
        state.scriptDiagnostics.forEach { add("[lua] $it") }
        state.message?.let { add("[info] $it") }
        if (state.isSceneDirty) add("[scene] Existem alterações pendentes.")
    }
    LazyColumn(
        modifier = Modifier
            .fillMaxSize()
            .background(ViewportBackground)
            .padding(8.dp),
        verticalArrangement = Arrangement.spacedBy(4.dp),
    ) {
        items(entries) { entry ->
            Text(entry, color = if ("[lua]" in entry) ErrorText else SecondaryText, fontSize = 9.sp, fontFamily = FontFamily.Monospace)
        }
    }
}

@Composable
private fun CompactToolButton(
    label: String,
    onClick: () -> Unit,
    enabled: Boolean = true,
    accent: Boolean = false,
    danger: Boolean = false,
) {
    TextButton(
        onClick = onClick,
        enabled = enabled,
        modifier = Modifier
            .height(42.dp)
            .widthIn(min = 38.dp),
        contentPadding = androidx.compose.foundation.layout.PaddingValues(horizontal = 7.dp),
        shape = RoundedCornerShape(0.dp),
        colors = ButtonDefaults.textButtonColors(
            containerColor = when {
                danger -> PlayStopBackground
                accent -> AccentMuted
                else -> Color.Transparent
            },
            contentColor = when {
                danger -> PlayStopText
                accent -> AccentBright
                else -> PrimaryText
            },
            disabledContentColor = SecondaryText.copy(alpha = 0.35f),
        ),
    ) {
        Text(label, fontSize = if (label.length <= 2) 13.sp else 8.sp, maxLines = 1)
    }
}

@Composable
private fun MiniAction(
    label: String,
    enabled: Boolean = true,
    onClick: () -> Unit,
) {
    Button(
        onClick = onClick,
        enabled = enabled,
        modifier = Modifier.height(30.dp),
        shape = RoundedCornerShape(4.dp),
        contentPadding = androidx.compose.foundation.layout.PaddingValues(horizontal = 8.dp),
        colors = ButtonDefaults.buttonColors(
            containerColor = RaisedBackground,
            contentColor = PrimaryText,
        ),
    ) { Text(label, fontSize = 7.sp, maxLines = 1) }
}
