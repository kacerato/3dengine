from pathlib import Path

SHELL = Path("editor/src/main/kotlin/com/mobilegamestudio/editor/WorldStudioWorkspaceV6.kt")
HOST = Path("editor/src/main/kotlin/com/mobilegamestudio/editor/GodotCompactEditorShell.kt")
ROUTE = Path("editor/src/main/kotlin/com/mobilegamestudio/editor/WorkspaceScreen.kt")
MARKER = "onAuthoringToolsetSelected: (EditorToolset) -> Unit"


def replace_once(source: str, old: str, new: str, label: str) -> str:
    count = source.count(old)
    if count != 1:
        raise RuntimeError(f"{label}: expected one match, found {count}")
    return source.replace(old, new, 1)


def patch_shell_file() -> None:
    source = SHELL.read_text(encoding="utf-8")
    if "import androidx.compose.foundation.layout.ColumnScope" not in source:
        source = replace_once(
            source,
            "import androidx.compose.foundation.layout.Column\n",
            "import androidx.compose.foundation.layout.Column\nimport androidx.compose.foundation.layout.ColumnScope\n",
            "ColumnScope import",
        )
    if "private data class WorldStudioV6PaletteAction" not in source:
        source = replace_once(
            source,
            "private enum class WorldStudioV6OutlinerTab {\n    OBJECTS,\n    LAYERS,\n}\n",
            "private enum class WorldStudioV6OutlinerTab {\n"
            "    OBJECTS,\n"
            "    LAYERS,\n"
            "}\n\n"
            "private data class WorldStudioV6PaletteAction(\n"
            "    val label: String,\n"
            "    val hint: String,\n"
            "    val action: () -> Unit,\n"
            ")\n",
            "palette action model",
        )
    source = source.replace(
        "    data class PaletteAction(val label: String, val hint: String, val action: () -> Unit)\n",
        "",
    )
    source = source.replace("PaletteAction(", "WorldStudioV6PaletteAction(")
    source = source.replace("distinctBy(PaletteAction::label)", "distinctBy(WorldStudioV6PaletteAction::label)")
    source = source.replace(
        "    content: @Composable Column.() -> Unit,\n",
        "    content: @Composable ColumnScope.() -> Unit,\n",
    )
    source = source.replace(
        "filtered.replace(',', '.').toFloatOrNull()?.takeIf(Float::isFinite)?.let(onValue)",
        "filtered.replace(',', '.').toFloatOrNull()?.takeIf { it.isFinite() }?.let(onValue)",
    )
    SHELL.write_text(source, encoding="utf-8")


def patch_host() -> None:
    source = HOST.read_text(encoding="utf-8")
    if MARKER in source:
        return
    source = replace_once(
        source,
        "import com.mobilegamestudio.core.model.WorldLayerKind\n",
        "import com.mobilegamestudio.core.model.WorldLayerKind\n"
        "import com.mobilegamestudio.editor.domain.EditorToolId\n"
        "import com.mobilegamestudio.editor.domain.EditorToolset\n",
        "host domain imports",
    )
    source = replace_once(
        source,
        "    onToolSelected: (EditorTool) -> Unit,\n"
        "    onUndo: () -> Unit,\n",
        "    onToolSelected: (EditorTool) -> Unit,\n"
        "    onAuthoringToolsetSelected: (EditorToolset) -> Unit,\n"
        "    onAuthoringToolSelected: (EditorToolId) -> Unit,\n"
        "    onCancelPendingAuthoringOperation: () -> Unit,\n"
        "    onConfirmPendingAuthoringConversion: (Int) -> Unit,\n"
        "    onUndo: () -> Unit,\n",
        "host callbacks",
    )

    start = source.index("                WorldStudioWorkspaceV5(\n")
    end_marker = "            } else {\n                StudioWorkspaceTabs("
    end = source.index(end_marker, start)
    replacement = """                WorldStudioWorkspaceV6(
                    state = state,
                    resolveAsset = resolveAsset,
                    onExit = { show(null) },
                    onUndo = onUndo,
                    onRedo = onRedo,
                    onSave = onSaveScene,
                    onPlay = onTogglePreview,
                    onActivateToolset = onAuthoringToolsetSelected,
                    onActivateTool = onAuthoringToolSelected,
                    onCancelPendingOperation = onCancelPendingAuthoringOperation,
                    onConfirmPendingConversion = onConfirmPendingAuthoringConversion,
                    onLegacyToolSelected = onToolSelected,
                    onSelectObject = onSelectObject,
                    onViewportObjectSelected = onViewportObjectSelected,
                    onToggleVisibility = onToggleVisibility,
                    onDuplicateSelected = onDuplicateSelected,
                    onDeleteSelected = onDeleteSelected,
                    onRenameSelected = onRenameSelected,
                    onTransformDrag = onTransformDrag,
                    onTransformChange = onTransformChange,
                    onTransformValueChange = onTransformValueChange,
                    onDiagnostic = onReportDiagnostic,
                    onTerrainToolChange = onTerrainToolChange,
                    onTerrainFalloffChange = onTerrainFalloffChange,
                    onTerrainStrokeBegin = onTerrainStrokeBegin,
                    onTerrainStrokePoint = onTerrainStrokePoint,
                    onTerrainStrokeEnd = onTerrainStrokeEnd,
                    onCreateFlatTerrain = onCreateFlatTerrain,
                    onCreateEditableMesh = onCreateEditableMesh,
                    onCreateVoxelVolume = onCreateVoxelVolume,
                    onAddPrimitive = onAddPrimitive,
                    onAddSceneObject = onAddSceneObject,
                    onCreateWorldLayer = onCreateWorldLayer,
                    onSelectWorldLayer = onSelectWorldLayer,
                    onToggleWorldLayerVisibility = onToggleWorldLayerVisibility,
                    onToggleWorldLayerLock = onToggleWorldLayerLock,
                    onToggleWorldLayerSolo = onToggleWorldLayerSolo,
                    onAssignSelectedToWorldLayer = onAssignSelectedToWorldLayer,
                    onImportAsset = onImportAsset,
                    onAddAsset = onAddAsset,
                    onPreviewAction = onPreviewAction,
                )
"""
    source = source[:start] + replacement + source[end:]
    HOST.write_text(source, encoding="utf-8")


def patch_route() -> None:
    source = ROUTE.read_text(encoding="utf-8")
    if "onAuthoringToolsetSelected = viewModel::activateAuthoringToolset" in source:
        return
    source = replace_once(
        source,
        "                onToolSelected = viewModel::selectTool,\n"
        "                onUndo = viewModel::undo,\n",
        "                onToolSelected = viewModel::selectTool,\n"
        "                onAuthoringToolsetSelected = viewModel::activateAuthoringToolset,\n"
        "                onAuthoringToolSelected = viewModel::activateAuthoringTool,\n"
        "                onCancelPendingAuthoringOperation = viewModel::cancelPendingAuthoringOperation,\n"
        "                onConfirmPendingAuthoringConversion = viewModel::confirmPendingAuthoringConversion,\n"
        "                onUndo = viewModel::undo,\n",
        "route callbacks",
    )
    ROUTE.write_text(source, encoding="utf-8")


def main() -> None:
    patch_shell_file()
    patch_host()
    patch_route()
    print("Applied World Studio V6 R2 shell")


if __name__ == "__main__":
    main()
