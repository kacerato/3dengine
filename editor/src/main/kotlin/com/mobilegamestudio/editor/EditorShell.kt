package com.mobilegamestudio.editor

import androidx.activity.compose.BackHandler
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.Image
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
import androidx.compose.ui.platform.testTag
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

internal enum class EditorPanelDestination(val label: String) {
    HIERARCHY("Cena"),
    INSPECTOR("Inspector"),
    ASSETS("Assets"),
    LOGIC("Lógica"),
    SCRIPT("Código"),
    PROJECT("Projeto"),
    CREATION("Adicionar"),
    TERRAIN("Mundo"),
    BEHAVIORS("Comportamentos"),
}

internal object EditorTestTags {
    const val SHELL = "editor_shell"
    const val TOP_BAR = "editor_top_bar"
    const val VIEWPORT = "editor_viewport"
    const val VIEWPORT_TOOLS = "editor_viewport_tools"
    const val BOTTOM_NAVIGATION = "editor_bottom_navigation"
    const val ACTIVE_PANEL = "editor_active_panel"
    const val ADD_OBJECT = "editor_add_object"
    const val PLAY = "editor_play"
    const val STOP = "editor_stop"
}

@Composable
internal fun EditorShell(
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
    onAddVisualNode: (String) -> Unit,
    onMoveVisualNode: (String, Float, Float) -> Unit,
    onConnectVisualNodes: (String, String, String, String) -> Unit,
    onRemoveLastVisualNode: () -> Unit,
    onSaveGraph: () -> Unit,
    onAddQuickBehavior: (QuickBehavior) -> Unit,
    onCreateScript: () -> Unit,
    onScriptChange: (String) -> Unit,
    onSaveScript: () -> Unit,
    onProjectNameChange: (String) -> Unit,
    onSaveProject: () -> Unit,
    onTerrainToolChange: (TerrainBrushMode?, Float?, Float?, Float?, String?) -> Unit,
    onTerrainBrush: (Float, Float) -> Unit,
    onTerrainAutoTile: () -> Unit,
) {
    val previewActive = state.isPreviewStarting || state.isPreviewRunning
    var activePanelName by rememberSaveable { mutableStateOf<String?>(null) }
    val activePanel = activePanelName?.let(EditorPanelDestination::valueOf)
    fun setPanel(destination: EditorPanelDestination?) {
        activePanelName = destination?.name
    }
    fun togglePanel(destination: EditorPanelDestination) {
        setPanel(if (activePanel == destination) null else destination)
    }

    BackHandler(enabled = previewActive) { onTogglePreview() }
    BackHandler(enabled = !previewActive && activePanel != null) { setPanel(null) }
    BackHandler(enabled = !previewActive && activePanel == null && state.isSceneDirty) {
        onReportDiagnostic("Salve a cena antes de sair do workspace.")
    }

    BoxWithConstraints(
        modifier = Modifier
            .fillMaxSize()
            .background(WorkspaceBackground)
            .testTag(EditorTestTags.SHELL),
    ) {
        val expanded = EditorLayoutPolicy.forUsableSize(
            widthDp = maxWidth.value,
            heightDp = maxHeight.value,
        ) == EditorLayoutMode.EXPANDED
        Column(Modifier.fillMaxSize()) {
            EditorTopBar(
                state = state,
                onBack = {
                    when {
                        previewActive -> onTogglePreview()
                        activePanel != null -> setPanel(null)
                        state.isSceneDirty -> onReportDiagnostic("Salve a cena antes de sair do workspace.")
                        else -> onBack()
                    }
                },
                onUndo = onUndo,
                onRedo = onRedo,
                onSaveScene = onSaveScene,
                onTogglePreview = onTogglePreview,
                onOpenProject = {
                    togglePanel(EditorPanelDestination.PROJECT)
                    onSelectSection(WorkspaceSection.PROJECT)
                },
                onOpenLogic = {
                    togglePanel(EditorPanelDestination.LOGIC)
                    onSelectSection(WorkspaceSection.LOGIC)
                },
                onOpenScript = {
                    togglePanel(EditorPanelDestination.SCRIPT)
                    onSelectSection(WorkspaceSection.LOGIC)
                },
                onAdd = {
                    setPanel(EditorPanelDestination.CREATION)
                    onSelectSection(WorkspaceSection.SCENE)
                },
                onOpenTerrain = {
                    togglePanel(EditorPanelDestination.TERRAIN)
                    onSelectSection(WorkspaceSection.SCENE)
                },
            )
            if (previewActive) {
                ViewportContainer(
                    state = state,
                    showTools = false,
                    onToolSelected = onToolSelected,
                    resolveAsset = resolveAsset,
                    onObjectSelected = onViewportObjectSelected,
                    onTransformDrag = onTransformDrag,
                    onTransformChange = onTransformChange,
                    onDiagnostic = onReportDiagnostic,
                    onPreviewAction = onPreviewAction,
                    modifier = Modifier.weight(1f),
                )
            } else if (expanded) {
                ExpandedEditorLayout(
                    state = state,
                    bottomDestination = activePanel,
                    onCloseBottom = { setPanel(null) },
                    onToolSelected = onToolSelected,
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
                    resolveAsset = resolveAsset,
                    onViewportObjectSelected = onViewportObjectSelected,
                    onTransformDrag = onTransformDrag,
                    onDiagnostic = onReportDiagnostic,
                    onPreviewAction = onPreviewAction,
                    onImportAsset = onImportAsset,
                    onCreateTouchGraph = onCreateTouchGraph,
                    onAddVisualNode = onAddVisualNode,
                    onMoveVisualNode = onMoveVisualNode,
                    onConnectVisualNodes = onConnectVisualNodes,
                    onRemoveLastVisualNode = onRemoveLastVisualNode,
                    onSaveGraph = onSaveGraph,
                    onAddQuickBehavior = onAddQuickBehavior,
                    onCreateScript = onCreateScript,
                    onScriptChange = onScriptChange,
                    onSaveScript = onSaveScript,
                    onProjectNameChange = onProjectNameChange,
                    onSaveProject = onSaveProject,
                    onTerrainToolChange = onTerrainToolChange,
                    onTerrainBrush = onTerrainBrush,
                    onTerrainAutoTile = onTerrainAutoTile,
                    modifier = Modifier.weight(1f),
                )
            } else {
                CompactEditorLayout(
                    state = state,
                    activePanel = activePanel,
                    onPanelSelected = { destination ->
                        togglePanel(destination)
                        onSelectSection(destination.toWorkspaceSection())
                    },
                    onClosePanel = { setPanel(null) },
                    onToolSelected = onToolSelected,
                    onSelectObject = {
                        onSelectObject(it)
                        setPanel(EditorPanelDestination.INSPECTOR)
                    },
                    onToggleVisibility = onToggleVisibility,
                    onDuplicateSelected = onDuplicateSelected,
                    onDeleteSelected = onDeleteSelected,
                    onRenameSelected = onRenameSelected,
                    onAddPrimitive = {
                        onAddPrimitive(it)
                        setPanel(EditorPanelDestination.INSPECTOR)
                    },
                    onAddSceneObject = {
                        onAddSceneObject(it)
                        setPanel(EditorPanelDestination.INSPECTOR)
                    },
                    onAddAsset = {
                        onAddAsset(it)
                        setPanel(EditorPanelDestination.INSPECTOR)
                    },
                    onTransformChange = onTransformChange,
                    onTransformValueChange = onTransformValueChange,
                    resolveAsset = resolveAsset,
                    onViewportObjectSelected = {
                        onViewportObjectSelected(it)
                        if (it != null) setPanel(EditorPanelDestination.INSPECTOR)
                    },
                    onTransformDrag = onTransformDrag,
                    onDiagnostic = onReportDiagnostic,
                    onPreviewAction = onPreviewAction,
                    onImportAsset = onImportAsset,
                    onCreateTouchGraph = onCreateTouchGraph,
                    onAddVisualNode = onAddVisualNode,
                    onMoveVisualNode = onMoveVisualNode,
                    onConnectVisualNodes = onConnectVisualNodes,
                    onRemoveLastVisualNode = onRemoveLastVisualNode,
                    onSaveGraph = onSaveGraph,
                    onAddQuickBehavior = onAddQuickBehavior,
                    onCreateScript = onCreateScript,
                    onScriptChange = onScriptChange,
                    onSaveScript = onSaveScript,
                    onProjectNameChange = onProjectNameChange,
                    onSaveProject = onSaveProject,
                    onTerrainToolChange = onTerrainToolChange,
                    onTerrainBrush = onTerrainBrush,
                    onTerrainAutoTile = onTerrainAutoTile,
                    modifier = Modifier.weight(1f),
                )
            }
        }
    }
}

@Composable
private fun EditorTopBar(
    state: WorkspaceUiState,
    onBack: () -> Unit,
    onUndo: () -> Unit,
    onRedo: () -> Unit,
    onSaveScene: () -> Unit,
    onTogglePreview: () -> Unit,
    onOpenProject: () -> Unit,
    onOpenLogic: () -> Unit,
    onOpenScript: () -> Unit,
    onAdd: () -> Unit,
    onOpenTerrain: () -> Unit,
) {
    val previewActive = state.isPreviewStarting || state.isPreviewRunning
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .height(EditorPanelSizes.TopBarHeight)
            .background(PanelBackground)
            .border(EditorBorders.Hairline, WorkspaceBorder)
            .testTag(EditorTestTags.TOP_BAR),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        StudioTextButton("‹", onBack)
        Image(
            painter = painterResource(com.mobilegamestudio.editor.R.drawable.magic_ghost_logo),
            contentDescription = "Magic Engine",
            modifier = Modifier
                .width(34.dp)
                .height(34.dp),
        )
        TextButton(
            onClick = onOpenProject,
            enabled = !previewActive,
            modifier = Modifier
                .weight(1f)
                .fillMaxHeight(),
            shape = RoundedCornerShape(0.dp),
        ) {
            Column(horizontalAlignment = Alignment.Start) {
                Text(
                    state.metadata?.name.orEmpty(),
                    color = PrimaryText,
                    fontWeight = FontWeight.SemiBold,
                    fontSize = 12.sp,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                )
                Text(
                    when {
                        state.isPreviewStarting -> "INICIANDO PLAY…"
                        state.isPreviewRunning -> "EXECUTANDO"
                        state.isSceneDirty -> "ALTERAÇÕES PENDENTES"
                        else -> "CENA SALVA"
                    },
                    color = if (previewActive) Positive else SecondaryText,
                    fontSize = 8.sp,
                    maxLines = 1,
                )
            }
        }
        if (previewActive) {
            TextButton(
                onClick = onTogglePreview,
                modifier = Modifier
                    .height(EditorTouchTargets.Primary)
                    .testTag(EditorTestTags.STOP),
                colors = ButtonDefaults.textButtonColors(
                    containerColor = PlayStopBackground,
                    contentColor = PlayStopText,
                ),
            ) {
                Text(if (state.isPreviewStarting) "■ CANCELAR" else "■ PARAR", fontSize = 11.sp)
            }
        } else {
            StudioTextButton("↶", onUndo, enabled = state.canUndo)
            StudioTextButton("↷", onRedo, enabled = state.canRedo)
            TextButton(
                onClick = onAdd,
                modifier = Modifier
                    .height(EditorTouchTargets.Primary)
                    .testTag(EditorTestTags.ADD_OBJECT),
                colors = ButtonDefaults.textButtonColors(contentColor = PrimaryText),
            ) {
                Text("+ ADICIONAR", fontSize = 10.sp)
            }
            StudioTextButton("MUNDO", onOpenTerrain, enabled = state.selectedTerrain != null)
            TextButton(
                onClick = onOpenLogic,
                modifier = Modifier.height(EditorTouchTargets.Primary),
                colors = ButtonDefaults.textButtonColors(contentColor = SecondaryText),
            ) {
                Text("LÓGICA", fontSize = 9.sp)
            }
            TextButton(
                onClick = onOpenScript,
                modifier = Modifier.height(EditorTouchTargets.Primary),
                colors = ButtonDefaults.textButtonColors(contentColor = SecondaryText),
            ) {
                Text("CÓDIGO", fontSize = 9.sp)
            }
            TextButton(
                onClick = onSaveScene,
                enabled = state.isSceneDirty && !state.isSavingScene,
                modifier = Modifier.height(EditorTouchTargets.Primary),
                colors = ButtonDefaults.textButtonColors(
                    containerColor = if (state.isSceneDirty) AccentMuted else Color.Transparent,
                    contentColor = Accent,
                ),
            ) {
                Text(if (state.isSavingScene) "SALVANDO…" else "SALVAR", fontSize = 10.sp)
            }
            TextButton(
                onClick = onTogglePreview,
                modifier = Modifier
                    .height(EditorTouchTargets.Primary)
                    .testTag(EditorTestTags.PLAY),
                colors = ButtonDefaults.textButtonColors(
                    containerColor = AccentMuted,
                    contentColor = Accent,
                ),
            ) {
                Text("▶ PLAY", fontSize = 10.sp)
            }
        }
    }
}

@Composable
private fun CompactEditorLayout(
    state: WorkspaceUiState,
    activePanel: EditorPanelDestination?,
    onPanelSelected: (EditorPanelDestination) -> Unit,
    onClosePanel: () -> Unit,
    onToolSelected: (EditorTool) -> Unit,
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
    resolveAsset: (String) -> File?,
    onViewportObjectSelected: (String?) -> Unit,
    onTransformDrag: (Float, Float) -> Unit,
    onDiagnostic: (String) -> Unit,
    onPreviewAction: (String) -> Unit,
    onImportAsset: () -> Unit,
    onCreateTouchGraph: () -> Unit,
    onAddVisualNode: (String) -> Unit,
    onMoveVisualNode: (String, Float, Float) -> Unit,
    onConnectVisualNodes: (String, String, String, String) -> Unit,
    onRemoveLastVisualNode: () -> Unit,
    onSaveGraph: () -> Unit,
    onAddQuickBehavior: (QuickBehavior) -> Unit,
    onCreateScript: () -> Unit,
    onScriptChange: (String) -> Unit,
    onSaveScript: () -> Unit,
    onProjectNameChange: (String) -> Unit,
    onSaveProject: () -> Unit,
    onTerrainToolChange: (TerrainBrushMode?, Float?, Float?, Float?, String?) -> Unit,
    onTerrainBrush: (Float, Float) -> Unit,
    onTerrainAutoTile: () -> Unit,
    modifier: Modifier = Modifier,
) {
    Box(modifier.imePadding()) {
        Row(Modifier.fillMaxSize()) {
            EditorSideDock(
                destinations = listOf(
                    EditorPanelDestination.HIERARCHY,
                    EditorPanelDestination.CREATION,
                    EditorPanelDestination.ASSETS,
                    EditorPanelDestination.TERRAIN,
                ),
                selected = activePanel,
                onSelect = onPanelSelected,
            )
            ViewportContainer(
                state = state,
                showTools = true,
                onToolSelected = onToolSelected,
                resolveAsset = resolveAsset,
                onObjectSelected = onViewportObjectSelected,
                onTransformDrag = onTransformDrag,
                onTransformChange = onTransformChange,
                onDiagnostic = onDiagnostic,
                onPreviewAction = onPreviewAction,
                modifier = Modifier.weight(1f).fillMaxHeight(),
            )
            EditorSideDock(
                destinations = listOf(
                    EditorPanelDestination.INSPECTOR,
                    EditorPanelDestination.BEHAVIORS,
                    EditorPanelDestination.LOGIC,
                    EditorPanelDestination.SCRIPT,
                    EditorPanelDestination.PROJECT,
                ),
                selected = activePanel,
                onSelect = onPanelSelected,
            )
        }
        if (activePanel != null) {
            val sideInspector = activePanel == EditorPanelDestination.INSPECTOR
            Popup(
                alignment = if (sideInspector) Alignment.CenterEnd else Alignment.Center,
                onDismissRequest = onClosePanel,
                properties = PopupProperties(focusable = true),
            ) {
                Box(
                    Modifier
                        .fillMaxSize()
                        .background(
                            if (sideInspector) Color.Transparent else Color.Black.copy(alpha = 0.58f),
                        ),
                    contentAlignment = if (sideInspector) Alignment.CenterEnd else Alignment.Center,
                ) {
                    Box(
                        Modifier
                            .fillMaxWidth(
                                if (sideInspector) 0.34f else 0.84f,
                            )
                            .fillMaxHeight(if (sideInspector) 1f else 0.86f),
                    ) {
                        EditorPanelHost(
                            destination = activePanel,
                            state = state,
                            onClose = onClosePanel,
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
                            onImportAsset = onImportAsset,
                            onCreateTouchGraph = onCreateTouchGraph,
                            onAddVisualNode = onAddVisualNode,
                            onMoveVisualNode = onMoveVisualNode,
                            onConnectVisualNodes = onConnectVisualNodes,
                            onRemoveLastVisualNode = onRemoveLastVisualNode,
                            onSaveGraph = onSaveGraph,
                            onAddQuickBehavior = onAddQuickBehavior,
                            onCreateScript = onCreateScript,
                            onScriptChange = onScriptChange,
                            onSaveScript = onSaveScript,
                            onProjectNameChange = onProjectNameChange,
                            onSaveProject = onSaveProject,
                            onTerrainToolChange = onTerrainToolChange,
                            onTerrainBrush = onTerrainBrush,
                            onTerrainAutoTile = onTerrainAutoTile,
                                showHeader = true,
                                modifier = Modifier.fillMaxSize(),
                        )
                        }
                    }
                }
            }
        }
    }
@Composable
private fun EditorSideDock(
    destinations: List<EditorPanelDestination>,
    selected: EditorPanelDestination?,
    onSelect: (EditorPanelDestination) -> Unit,
) {
    Column(
        modifier = Modifier
            .width(58.dp)
            .fillMaxHeight()
            .background(PanelBackground)
            .border(EditorBorders.Hairline, WorkspaceBorder)
            .padding(vertical = 6.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(5.dp),
    ) {
        destinations.forEach { destination ->
            val active = selected == destination
            TextButton(
                onClick = { onSelect(destination) },
                modifier = Modifier.size(48.dp),
                shape = RoundedCornerShape(5.dp),
                colors = ButtonDefaults.textButtonColors(
                    containerColor = if (active) AccentMuted else RaisedBackground,
                    contentColor = if (active) AccentBright else SecondaryText,
                ),
            ) {
                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                    Text(
                        destination.dockGlyph(),
                        fontSize = 9.sp,
                        fontWeight = FontWeight.Black,
                        fontFamily = androidx.compose.ui.text.font.FontFamily.Monospace,
                    )
                    Text(destination.dockLabel(), fontSize = 6.sp, maxLines = 1)
                }
            }
        }
    }
}

private fun EditorPanelDestination.dockGlyph(): String = when (this) {
    EditorPanelDestination.HIERARCHY -> "SCN"
    EditorPanelDestination.INSPECTOR -> "INS"
    EditorPanelDestination.ASSETS -> "AST"
    EditorPanelDestination.LOGIC -> "NOD"
    EditorPanelDestination.SCRIPT -> "COD"
    EditorPanelDestination.PROJECT -> "PRJ"
    EditorPanelDestination.CREATION -> "ADD"
    EditorPanelDestination.TERRAIN -> "WRD"
    EditorPanelDestination.BEHAVIORS -> "BHV"
}

private fun EditorPanelDestination.dockLabel(): String = when (this) {
    EditorPanelDestination.HIERARCHY -> "Cena"
    EditorPanelDestination.INSPECTOR -> "Props"
    EditorPanelDestination.ASSETS -> "Assets"
    EditorPanelDestination.LOGIC -> "NoCode"
    EditorPanelDestination.SCRIPT -> "Código"
    EditorPanelDestination.PROJECT -> "Projeto"
    EditorPanelDestination.CREATION -> "Criar"
    EditorPanelDestination.TERRAIN -> "Mundo"
    EditorPanelDestination.BEHAVIORS -> "Ligações"
}

@Composable
private fun ExpandedEditorLayout(
    state: WorkspaceUiState,
    bottomDestination: EditorPanelDestination?,
    onCloseBottom: () -> Unit,
    onToolSelected: (EditorTool) -> Unit,
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
    resolveAsset: (String) -> File?,
    onViewportObjectSelected: (String?) -> Unit,
    onTransformDrag: (Float, Float) -> Unit,
    onDiagnostic: (String) -> Unit,
    onPreviewAction: (String) -> Unit,
    onImportAsset: () -> Unit,
    onCreateTouchGraph: () -> Unit,
    onAddVisualNode: (String) -> Unit,
    onMoveVisualNode: (String, Float, Float) -> Unit,
    onConnectVisualNodes: (String, String, String, String) -> Unit,
    onRemoveLastVisualNode: () -> Unit,
    onSaveGraph: () -> Unit,
    onAddQuickBehavior: (QuickBehavior) -> Unit,
    onCreateScript: () -> Unit,
    onScriptChange: (String) -> Unit,
    onSaveScript: () -> Unit,
    onProjectNameChange: (String) -> Unit,
    onSaveProject: () -> Unit,
    onTerrainToolChange: (TerrainBrushMode?, Float?, Float?, Float?, String?) -> Unit,
    onTerrainBrush: (Float, Float) -> Unit,
    onTerrainAutoTile: () -> Unit,
    modifier: Modifier = Modifier,
) {
    BoxWithConstraints(modifier) {
        val hierarchyWidth = (maxWidth * 0.18f).coerceIn(
            EditorPanelSizes.HierarchyMinWidth,
            EditorPanelSizes.HierarchyMaxWidth,
        )
        val inspectorWidth = (maxWidth * 0.23f).coerceIn(
            EditorPanelSizes.InspectorMinWidth,
            EditorPanelSizes.InspectorMaxWidth,
        )
        Row(Modifier.fillMaxSize()) {
            HierarchyPanel(
                objects = state.sceneObjects,
                selectedObjectId = state.selectedObjectId,
                onSelectObject = onSelectObject,
                onToggleVisibility = onToggleVisibility,
                onAddPrimitive = onAddPrimitive,
                onAddSceneObject = onAddSceneObject,
                onDuplicateSelected = onDuplicateSelected,
                onDeleteSelected = onDeleteSelected,
                showCreationActions = false,
                showPanelHeader = true,
                modifier = Modifier.width(hierarchyWidth),
            )
            Column(
                modifier = Modifier
                    .weight(1f)
                    .fillMaxHeight(),
            ) {
                ViewportContainer(
                    state = state,
                    showTools = true,
                    onToolSelected = onToolSelected,
                    resolveAsset = resolveAsset,
                    onObjectSelected = onViewportObjectSelected,
                    onTransformDrag = onTransformDrag,
                    onTransformChange = onTransformChange,
                    onDiagnostic = onDiagnostic,
                    onPreviewAction = onPreviewAction,
                    modifier = Modifier.weight(1f),
                )
                if (bottomDestination == null) {
                    QuickAssetsPanel(
                        assets = state.assets,
                        isImporting = state.isImportingAsset,
                        onAddAsset = onAddAsset,
                        onImportAsset = onImportAsset,
                    )
                } else {
                    EditorPanelHost(
                        destination = bottomDestination,
                        state = state,
                        onClose = onCloseBottom,
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
                        onImportAsset = onImportAsset,
                        onCreateTouchGraph = onCreateTouchGraph,
                        onAddVisualNode = onAddVisualNode,
                        onMoveVisualNode = onMoveVisualNode,
                        onConnectVisualNodes = onConnectVisualNodes,
                        onRemoveLastVisualNode = onRemoveLastVisualNode,
                        onSaveGraph = onSaveGraph,
                        onAddQuickBehavior = onAddQuickBehavior,
                        onCreateScript = onCreateScript,
                        onScriptChange = onScriptChange,
                        onSaveScript = onSaveScript,
                        onProjectNameChange = onProjectNameChange,
                        onSaveProject = onSaveProject,
                        onTerrainToolChange = onTerrainToolChange,
                        onTerrainBrush = onTerrainBrush,
                        onTerrainAutoTile = onTerrainAutoTile,
                        showHeader = true,
                        modifier = Modifier.height(EditorPanelSizes.ExpandedBottomPanelHeight),
                    )
                }
            }
            InspectorPanel(
                selectedObject = state.selectedObject,
                onTransformChange = onTransformChange,
                onTransformValueChange = onTransformValueChange,
                onRename = onRenameSelected,
                showPanelHeader = true,
                modifier = Modifier
                    .width(inspectorWidth)
                    .imePadding(),
            )
        }
    }
}

@Composable
private fun ViewportContainer(
    state: WorkspaceUiState,
    showTools: Boolean,
    onToolSelected: (EditorTool) -> Unit,
    resolveAsset: (String) -> File?,
    onObjectSelected: (String?) -> Unit,
    onTransformDrag: (Float, Float) -> Unit,
    onTransformChange: (TransformProperty, TransformAxis, Float) -> Unit,
    onDiagnostic: (String) -> Unit,
    onPreviewAction: (String) -> Unit,
    modifier: Modifier = Modifier,
    allowMaximize: Boolean = true,
) {
    var maximized by remember { mutableStateOf(false) }
    Column(
        modifier = modifier
            .background(ViewportBackground)
            .testTag(EditorTestTags.VIEWPORT),
    ) {
        if (showTools) {
            ViewportToolBar(
                selectedTool = state.activeTool,
                onToolSelected = onToolSelected,
                onMaximize = { maximized = true },
                allowMaximize = allowMaximize,
            )
        }
        SceneViewport(
            state = state,
            resolveAsset = resolveAsset,
            onObjectSelected = onObjectSelected,
            onTransformDrag = onTransformDrag,
            onTransformChange = onTransformChange,
            onDiagnostic = onDiagnostic,
            onPreviewAction = onPreviewAction,
            modifier = Modifier
                .weight(1f)
                .fillMaxWidth(),
        )
    }
    if (maximized) {
        Popup(
            alignment = Alignment.Center,
            onDismissRequest = { maximized = false },
            properties = PopupProperties(focusable = true),
        ) {
            Column(Modifier.fillMaxSize().background(ViewportBackground)) {
                Row(
                    Modifier.fillMaxWidth().height(EditorPanelSizes.PanelHeaderHeight).background(RaisedBackground),
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Text(
                        "EDITOR 3D",
                        modifier = Modifier.weight(1f).padding(horizontal = EditorSpacing.Medium),
                        color = PrimaryText,
                        fontSize = 10.sp,
                        fontWeight = FontWeight.Bold,
                    )
                    StudioTextButton("RESTAURAR", onClick = { maximized = false })
                }
                ViewportContainer(
                    state = state,
                    showTools = true,
                    onToolSelected = onToolSelected,
                    resolveAsset = resolveAsset,
                    onObjectSelected = onObjectSelected,
                    onTransformDrag = onTransformDrag,
                    onTransformChange = onTransformChange,
                    onDiagnostic = onDiagnostic,
                    onPreviewAction = onPreviewAction,
                    modifier = Modifier.weight(1f),
                    allowMaximize = false,
                )
            }
        }
    }
}

@Composable
private fun ViewportToolBar(
    selectedTool: EditorTool,
    onToolSelected: (EditorTool) -> Unit,
    onMaximize: () -> Unit,
    allowMaximize: Boolean,
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .height(EditorPanelSizes.ViewportToolBarHeight)
            .background(RaisedBackground)
            .border(EditorBorders.Hairline, WorkspaceBorder)
            .horizontalScroll(rememberScrollState())
            .testTag(EditorTestTags.VIEWPORT_TOOLS),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.Center,
    ) {
        EditorTool.entries.forEach { tool ->
            val selected = tool == selectedTool
            TextButton(
                onClick = { onToolSelected(tool) },
                modifier = Modifier.height(EditorTouchTargets.Primary),
                shape = RoundedCornerShape(0.dp),
                colors = ButtonDefaults.textButtonColors(
                    containerColor = if (selected) AccentMuted else Color.Transparent,
                    contentColor = if (selected) Accent else SecondaryText,
                ),
            ) {
                Text("${tool.viewportIcon()}  ${tool.label}", fontSize = 10.sp)
            }
        }
        if (allowMaximize) {
            StudioTextButton("AMPLIAR", onMaximize)
        }
    }
}

private fun EditorTool.viewportIcon(): String = when (this) {
    EditorTool.SELECT -> "SEL"
    EditorTool.MOVE -> "MOV"
    EditorTool.ROTATE -> "ROT"
    EditorTool.SCALE -> "SCL"
}

@Composable
private fun EditorBottomNavigation(
    selected: EditorPanelDestination?,
    onSelect: (EditorPanelDestination) -> Unit,
) {
    val destinations = listOf(
        EditorPanelDestination.HIERARCHY,
        EditorPanelDestination.INSPECTOR,
        EditorPanelDestination.ASSETS,
        EditorPanelDestination.LOGIC,
        EditorPanelDestination.SCRIPT,
    )
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .height(EditorPanelSizes.BottomNavigationHeight)
            .background(PanelBackground)
            .border(EditorBorders.Hairline, WorkspaceBorder)
            .testTag(EditorTestTags.BOTTOM_NAVIGATION),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        destinations.forEach { destination ->
            val active = selected == destination
            TextButton(
                onClick = { onSelect(destination) },
                modifier = Modifier
                    .weight(1f)
                    .fillMaxHeight(),
                shape = RoundedCornerShape(0.dp),
                colors = ButtonDefaults.textButtonColors(
                    containerColor = if (active) RaisedBackground else Color.Transparent,
                    contentColor = if (active) Accent else SecondaryText,
                ),
            ) {
                Text(destination.label.uppercase(), fontSize = 9.sp, maxLines = 1)
            }
        }
    }
}

@Composable
private fun EditorPanelHost(
    destination: EditorPanelDestination,
    state: WorkspaceUiState,
    onClose: () -> Unit,
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
    onAddVisualNode: (String) -> Unit,
    onMoveVisualNode: (String, Float, Float) -> Unit,
    onConnectVisualNodes: (String, String, String, String) -> Unit,
    onRemoveLastVisualNode: () -> Unit,
    onSaveGraph: () -> Unit,
    onAddQuickBehavior: (QuickBehavior) -> Unit,
    onCreateScript: () -> Unit,
    onScriptChange: (String) -> Unit,
    onSaveScript: () -> Unit,
    onProjectNameChange: (String) -> Unit,
    onSaveProject: () -> Unit,
    onTerrainToolChange: (TerrainBrushMode?, Float?, Float?, Float?, String?) -> Unit,
    onTerrainBrush: (Float, Float) -> Unit,
    onTerrainAutoTile: () -> Unit,
    showHeader: Boolean,
    modifier: Modifier = Modifier,
    allowMaximize: Boolean = true,
) {
    var maximized by remember(destination) { mutableStateOf(false) }
    Column(
        modifier = modifier
            .fillMaxWidth()
            .background(PanelBackground)
            .border(EditorBorders.Hairline, WorkspaceBorder)
            .testTag(EditorTestTags.ACTIVE_PANEL),
    ) {
        if (showHeader) {
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(EditorPanelSizes.PanelHeaderHeight)
                    .background(RaisedBackground),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Text(
                    destination.label.uppercase(),
                    modifier = Modifier
                        .weight(1f)
                        .padding(horizontal = EditorSpacing.Medium),
                    color = PrimaryText,
                    fontSize = 10.sp,
                    fontWeight = FontWeight.Bold,
                )
                StudioTextButton(
                    if (allowMaximize) "AMPLIAR" else "RESTAURAR",
                    if (allowMaximize) ({ maximized = true }) else onClose,
                )
                StudioTextButton("X", onClose)
            }
        }
        Box(Modifier.weight(1f)) {
            when (destination) {
                EditorPanelDestination.HIERARCHY -> HierarchyPanel(
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
                EditorPanelDestination.INSPECTOR -> InspectorPanel(
                    selectedObject = state.selectedObject,
                    onTransformChange = onTransformChange,
                    onTransformValueChange = onTransformValueChange,
                    onRename = onRenameSelected,
                    showPanelHeader = false,
                    modifier = Modifier.fillMaxSize(),
                )
                EditorPanelDestination.ASSETS -> CompactAssetsPanel(
                    state.assets,
                    state.isImportingAsset,
                    onImportAsset,
                    onAddAsset,
                )
                EditorPanelDestination.LOGIC -> NoCodeEditorPanel(
                    state,
                    onCreateTouchGraph,
                    onAddVisualNode,
                    onMoveVisualNode,
                    onConnectVisualNodes,
                    onRemoveLastVisualNode,
                    onSaveGraph,
                    onAddQuickBehavior,
                )
                EditorPanelDestination.SCRIPT -> ScriptEditorPanel(
                    state = state,
                    onCreateScript = onCreateScript,
                    onSourceChange = onScriptChange,
                    onSaveScript = onSaveScript,
                )
                EditorPanelDestination.PROJECT -> CompactProjectPanel(
                    state,
                    onProjectNameChange,
                    onSaveProject,
                )
                EditorPanelDestination.CREATION -> ObjectCreationPanel(
                    assets = state.assets,
                    isImporting = state.isImportingAsset,
                    onAddPrimitive = onAddPrimitive,
                    onAddSceneObject = onAddSceneObject,
                    onAddAsset = onAddAsset,
                    onImportAsset = onImportAsset,
                )
                EditorPanelDestination.TERRAIN -> TerrainEditorPanel(
                    terrain = state.selectedTerrain,
                    tool = state.terrainTool,
                    onToolChange = onTerrainToolChange,
                    onBrush = onTerrainBrush,
                    onAutoTile = onTerrainAutoTile,
                    modifier = Modifier.fillMaxSize(),
                )
                EditorPanelDestination.BEHAVIORS -> BehaviorManagerPanel(
                    state = state,
                    onSelectObject = onSelectObject,
                )
            }
        }
    }
    if (maximized) {
        Popup(
            alignment = Alignment.Center,
            onDismissRequest = { maximized = false },
            properties = PopupProperties(focusable = true),
        ) {
            EditorPanelHost(
                destination = destination,
                state = state,
                onClose = { maximized = false },
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
                onImportAsset = onImportAsset,
                onCreateTouchGraph = onCreateTouchGraph,
                onAddVisualNode = onAddVisualNode,
                onMoveVisualNode = onMoveVisualNode,
                onConnectVisualNodes = onConnectVisualNodes,
                onRemoveLastVisualNode = onRemoveLastVisualNode,
                onSaveGraph = onSaveGraph,
                onAddQuickBehavior = onAddQuickBehavior,
                onCreateScript = onCreateScript,
                onScriptChange = onScriptChange,
                onSaveScript = onSaveScript,
                onProjectNameChange = onProjectNameChange,
                onSaveProject = onSaveProject,
                onTerrainToolChange = onTerrainToolChange,
                onTerrainBrush = onTerrainBrush,
                onTerrainAutoTile = onTerrainAutoTile,
                showHeader = true,
                modifier = Modifier.fillMaxSize(),
                allowMaximize = false,
            )
        }
    }
}

@Composable
private fun ObjectCreationPanel(
    assets: List<AssetRecord>,
    isImporting: Boolean,
    onAddPrimitive: (PrimitiveMesh) -> Unit,
    onAddSceneObject: (EditorObjectType) -> Unit,
    onAddAsset: (AssetRecord) -> Unit,
    onImportAsset: () -> Unit,
) {
    var category by remember { mutableStateOf(CreationCategory.BASIC) }
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(horizontal = EditorSpacing.Medium, vertical = EditorSpacing.Small),
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .horizontalScroll(rememberScrollState()),
            horizontalArrangement = Arrangement.spacedBy(EditorSpacing.Small),
        ) {
            CreationCategory.entries.forEach { item ->
                PanelAction(
                    label = item.label,
                    selected = category == item,
                    onClick = { category = item },
                )
            }
        }
        Spacer(Modifier.height(EditorSpacing.Small))
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .horizontalScroll(rememberScrollState()),
            horizontalArrangement = Arrangement.spacedBy(EditorSpacing.Small),
        ) {
            when (category) {
                CreationCategory.BASIC -> {
                    PanelAction("BOX  Cubo") { onAddPrimitive(PrimitiveMesh.CUBE) }
                    PanelAction("PLN  Plano") { onAddPrimitive(PrimitiveMesh.PLANE) }
                }
                CreationCategory.MODELS -> {
                    PanelAction(if (isImporting) "Importando…" else "IMP  Importar GLB", enabled = !isImporting) {
                        onImportAsset()
                    }
                    assets.forEach { asset ->
                        PanelAction(asset.displayName) { onAddAsset(asset) }
                    }
                }
                CreationCategory.LIGHTS -> PanelAction("LT  Luz direcional") {
                    onAddSceneObject(EditorObjectType.LIGHT)
                }
                CreationCategory.CAMERAS -> PanelAction("CAM  Câmera") {
                    onAddSceneObject(EditorObjectType.CAMERA)
                }
                CreationCategory.WORLD -> {
                    PanelAction("TRN  Mundo semiárido") { onAddSceneObject(EditorObjectType.TERRAIN) }
                    PanelAction("CHR  Terceira pessoa") { onAddSceneObject(EditorObjectType.PLAYER) }
                    PanelAction("FPS  Primeira pessoa") { onAddSceneObject(EditorObjectType.PLAYER_FIRST_PERSON) }
                    PanelAction("TOP  Visão superior") { onAddSceneObject(EditorObjectType.PLAYER_TOP_DOWN) }
                    PanelAction("JOY  Joystick virtual") { onAddSceneObject(EditorObjectType.JOYSTICK) }
                    PanelAction("BTN  Botão de ação") { onAddSceneObject(EditorObjectType.UI_BUTTON) }
                }
            }
        }
    }
}

private enum class CreationCategory(val label: String) {
    BASIC("Objetos básicos"),
    MODELS("Modelos"),
    LIGHTS("Luzes"),
    CAMERAS("Câmeras"),
    WORLD("Mundo e gameplay"),
}

@Composable
private fun CompactAssetsPanel(
    assets: List<AssetRecord>,
    isImporting: Boolean,
    onImportAsset: () -> Unit,
    onAddAsset: (AssetRecord) -> Unit,
) {
    Row(
        modifier = Modifier
            .fillMaxSize()
            .padding(EditorSpacing.Small)
            .horizontalScroll(rememberScrollState()),
        horizontalArrangement = Arrangement.spacedBy(EditorSpacing.Small),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        PanelAction(if (isImporting) "Importando…" else "Importar GLB", enabled = !isImporting) {
            onImportAsset()
        }
        assets.forEach { asset ->
            PanelAction("${asset.displayName} · adicionar") { onAddAsset(asset) }
        }
        if (assets.isEmpty() && !isImporting) {
            Text("Nenhum modelo importado", color = SecondaryText, fontSize = 10.sp)
        }
    }
}

@Composable
private fun CompactLogicPanel(
    state: WorkspaceUiState,
    onCreateTouchGraph: () -> Unit,
    onAddNode: (String) -> Unit,
    onRemoveLastNode: () -> Unit,
    onSaveGraph: () -> Unit,
    onAddQuickBehavior: (QuickBehavior) -> Unit,
) {
    Row(
        modifier = Modifier
            .fillMaxSize()
            .padding(EditorSpacing.Small)
            .horizontalScroll(rememberScrollState()),
        horizontalArrangement = Arrangement.spacedBy(EditorSpacing.Small),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Text(
            state.selectedObject?.name ?: "Selecione um objeto",
            color = PrimaryText,
            fontSize = 11.sp,
            maxLines = 1,
        )
        PanelAction(
            "Girar ao tocar · rápido",
            enabled = !state.isLoadingGraph && !state.isSavingGraph,
        ) {
            onAddQuickBehavior(QuickBehavior.ROTATE_ON_TOUCH)
        }
        PanelAction(
            "Aumentar ao tocar · rápido",
            enabled = !state.isLoadingGraph && !state.isSavingGraph,
        ) {
            onAddQuickBehavior(QuickBehavior.SCALE_ON_TOUCH)
        }
        PanelAction(
            if (state.isLoadingGraph) "Carregando…" else if (state.visualGraph == null) "Criar toque" else "Reiniciar toque",
            enabled = !state.isLoadingGraph && !state.isSavingGraph,
            onClick = onCreateTouchGraph,
        )
        PanelAction("Rotacionar", enabled = !state.isLoadingGraph && !state.isSavingGraph) {
            onAddNode("transform.rotate.y")
        }
        PanelAction("Escala", enabled = !state.isLoadingGraph && !state.isSavingGraph) {
            onAddNode("transform.scale.uniform")
        }
        PanelAction("Log", enabled = !state.isLoadingGraph && !state.isSavingGraph) {
            onAddNode("debug.log.info")
        }
        PanelAction(
            "Remover último",
            enabled = !state.isLoadingGraph &&
                !state.isSavingGraph &&
                (state.visualGraph?.nodes?.size ?: 0) > 1,
            onClick = onRemoveLastNode,
        )
        PanelAction(
            if (state.isSavingGraph) "Salvando…" else "Salvar grafo",
            enabled = state.visualGraph != null && !state.isSavingGraph,
            onClick = onSaveGraph,
        )
    }
}

@Composable
private fun CompactProjectPanel(
    state: WorkspaceUiState,
    onNameChange: (String) -> Unit,
    onSave: () -> Unit,
) {
    Row(
        modifier = Modifier
            .fillMaxSize()
            .padding(EditorSpacing.Small),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(EditorSpacing.Medium),
    ) {
        OutlinedTextField(
            value = state.editableName,
            onValueChange = onNameChange,
            modifier = Modifier.weight(1f),
            label = { Text("Nome do projeto") },
            isError = state.nameError != null,
            supportingText = { state.nameError?.let { Text(it) } },
            singleLine = true,
            enabled = !state.isSaving,
        )
        PanelAction(
            if (state.isSaving) "Salvando…" else "Salvar projeto",
            enabled = !state.isSaving && state.editableName.trim() != state.metadata?.name,
            onClick = onSave,
        )
    }
}

@Composable
internal fun PanelAction(
    label: String,
    selected: Boolean = false,
    enabled: Boolean = true,
    onClick: () -> Unit,
) {
    Button(
        onClick = onClick,
        enabled = enabled,
        modifier = Modifier.height(EditorTouchTargets.Primary),
        shape = RoundedCornerShape(EditorBorders.ControlRadius),
        colors = ButtonDefaults.buttonColors(
            containerColor = if (selected) AccentMuted else RaisedBackground,
            contentColor = if (selected) Accent else PrimaryText,
        ),
    ) {
        Text(label, fontSize = 10.sp, maxLines = 1)
    }
}

private fun EditorPanelDestination.toWorkspaceSection(): WorkspaceSection = when (this) {
    EditorPanelDestination.HIERARCHY,
    EditorPanelDestination.INSPECTOR,
    EditorPanelDestination.CREATION,
    EditorPanelDestination.TERRAIN,
    EditorPanelDestination.BEHAVIORS,
    -> WorkspaceSection.SCENE
    EditorPanelDestination.ASSETS -> WorkspaceSection.ASSETS
    EditorPanelDestination.LOGIC -> WorkspaceSection.LOGIC
    EditorPanelDestination.SCRIPT -> WorkspaceSection.LOGIC
    EditorPanelDestination.PROJECT -> WorkspaceSection.PROJECT
}
