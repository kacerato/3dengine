package com.mobilegamestudio.editor

import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.animation.core.withInfiniteAnimationFrameMillis
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.widthIn
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle

@Composable
fun WorkspaceRoute(
    viewModel: WorkspaceViewModel,
    onBack: () -> Unit,
) {
    val state by viewModel.state.collectAsStateWithLifecycle()
    val snackbarHostState = remember { SnackbarHostState() }
    val context = androidx.compose.ui.platform.LocalContext.current
    val importLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.OpenDocument(),
    ) { uri ->
        uri?.let {
            val sourceName = it.lastPathSegment
                ?.substringAfterLast('/')
                ?.substringAfterLast(':')
                ?.takeIf(String::isNotBlank)
                ?: "model.glb"
            viewModel.importModel(sourceName) {
                context.contentResolver.openInputStream(it)
            }
        }
    }
    val heightmapLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.OpenDocument(),
    ) { uri ->
        uri?.let {
            val sourceName = it.lastPathSegment
                ?.substringAfterLast('/')
                ?.substringAfterLast(':')
                ?.takeIf(String::isNotBlank)
                ?: "terrain-heightmap.png"
            viewModel.importTerrainHeightmap(sourceName) {
                context.contentResolver.openInputStream(it)
            }
        }
    }

    LaunchedEffect(state.message) {
        state.message?.let {
            snackbarHostState.showSnackbar(it)
            viewModel.clearMessage()
        }
    }

    LaunchedEffect(state.isPreviewRunning) {
        if (!state.isPreviewRunning) return@LaunchedEffect
        var previousFrame = 0L
        while (true) {
            withInfiniteAnimationFrameMillis { frameTime ->
                if (previousFrame != 0L) {
                    viewModel.advancePreview((frameTime - previousFrame) / 1_000f)
                }
                previousFrame = frameTime
            }
        }
    }

    Box(
        modifier = Modifier
            .fillMaxSize()
            .background(WorkspaceBackground),
    ) {
        when {
            state.isLoading -> CircularProgressIndicator(
                modifier = Modifier.align(Alignment.Center),
                color = Accent,
            )
            state.metadata == null -> WorkspaceLoadError(onBack)
            else -> GodotCompactEditorShell(
                state = state,
                onBack = onBack,
                onReportDiagnostic = viewModel::reportDiagnostic,
                onToolSelected = viewModel::selectTool,
                onUndo = viewModel::undo,
                onRedo = viewModel::redo,
                onTogglePreview = viewModel::togglePreview,
                onSaveScene = viewModel::saveScene,
                onSelectSection = viewModel::selectSection,
                onSelectObject = viewModel::selectObject,
                onToggleVisibility = viewModel::toggleObjectVisibility,
                onAddPrimitive = viewModel::addPrimitive,
                onAddSceneObject = viewModel::addSceneObject,
                onDuplicateSelected = viewModel::duplicateSelected,
                onDeleteSelected = viewModel::deleteSelected,
                onRenameSelected = viewModel::renameSelected,
                onAddAsset = viewModel::addAsset,
                onTransformChange = viewModel::updateSelectedTransform,
                onTransformValueChange = viewModel::setSelectedTransformValue,
                resolveAsset = viewModel::resolveAsset,
                onViewportObjectSelected = viewModel::onViewportObjectSelected,
                onTransformDrag = viewModel::applyViewportDrag,
                onPreviewAction = viewModel::emitPreviewAction,
                onImportAsset = {
                    importLauncher.launch(
                        arrayOf("model/gltf-binary", "image/png", "image/jpeg", "image/webp"),
                    )
                },
                onCreateTouchGraph = { viewModel.createTouchGraph() },
                onCreateTouchGraphAt = { folder, name -> viewModel.createTouchGraph(folder, name, true) },
                onOpenGraphResource = viewModel::openGraphResource,
                onAddVisualNode = viewModel::addCatalogNode,
                onMoveVisualNode = viewModel::moveVisualNode,
                onConnectVisualNodes = viewModel::connectVisualNodes,
                onRemoveLastVisualNode = viewModel::removeLastVisualNode,
                onSaveGraph = viewModel::saveVisualGraph,
                onAddQuickBehavior = viewModel::addQuickBehavior,
                onCreateScript = { viewModel.createScriptForSelected() },
                onCreateScriptAt = { folder, name -> viewModel.createScriptForSelected(folder, name, true) },
                onOpenScriptResource = viewModel::openScriptResource,
                onMoveLogicResource = viewModel::moveLogicResource,
                onDeleteLogicResource = viewModel::deleteLogicResource,
                onScriptChange = viewModel::updateScriptSource,
                onSaveScript = viewModel::saveLuaScript,
                onProjectNameChange = viewModel::updateName,
                onSaveProject = viewModel::save,
                onTerrainToolChange = viewModel::updateTerrainTool,
                onTerrainBrush = viewModel::applyTerrainBrush,
                onTerrainAutoTile = viewModel::applyTerrainAutoTile,
                onTerrainProcess = viewModel::applyTerrainProcess,
                onImportTerrainHeightmap = {
                    heightmapLauncher.launch(arrayOf("image/png", "image/jpeg", "application/octet-stream", "*/*"))
                },
            )
        }
        SnackbarHost(
            hostState = snackbarHostState,
            modifier = Modifier
                .align(Alignment.TopEnd)
                .padding(10.dp)
                .widthIn(max = 270.dp),
        ) { data ->
            Surface(
                color = RaisedBackground,
                contentColor = PrimaryText,
                shape = androidx.compose.foundation.shape.RoundedCornerShape(5.dp),
                border = androidx.compose.foundation.BorderStroke(1.dp, AccentMuted),
                shadowElevation = 8.dp,
            ) {
                Text(
                    data.visuals.message,
                    modifier = Modifier.padding(horizontal = 10.dp, vertical = 7.dp),
                    fontSize = 9.sp,
                    maxLines = 2,
                    overflow = TextOverflow.Ellipsis,
                )
            }
        }
    }
}

@Composable
private fun WorkspaceLoadError(onBack: () -> Unit) {
    androidx.compose.foundation.layout.Column(
        modifier = Modifier
            .fillMaxSize()
            .background(WorkspaceBackground),
        verticalArrangement = androidx.compose.foundation.layout.Arrangement.Center,
        horizontalAlignment = Alignment.CenterHorizontally,
    ) {
        androidx.compose.material3.Text(
            "Não foi possível abrir os metadados deste projeto.",
            color = ErrorText,
        )
        androidx.compose.material3.TextButton(onClick = onBack) {
            androidx.compose.material3.Text("Voltar aos projetos")
        }
    }
}
