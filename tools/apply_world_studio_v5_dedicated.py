from pathlib import Path

path = Path("editor/src/main/kotlin/com/mobilegamestudio/editor/GodotCompactEditorShell.kt")
source = path.read_text(encoding="utf-8")

if "if (openPanel != StudioPopup.WORLD) CompactStudioTopBar(" not in source:
    source = source.replace(
        "            CompactStudioTopBar(\n",
        "            if (openPanel != StudioPopup.WORLD) CompactStudioTopBar(\n",
        1,
    )

marker = """            } else {
                StudioWorkspaceTabs(
"""
replacement = """            } else if (openPanel == StudioPopup.WORLD) {
                WorldStudioWorkspaceV5(
                    state = state,
                    resolveAsset = resolveAsset,
                    onExit = { show(null) },
                    onUndo = onUndo,
                    onRedo = onRedo,
                    onSave = onSaveScene,
                    onPlay = onTogglePreview,
                    onToolSelected = onToolSelected,
                    onSelectObject = onSelectObject,
                    onViewportObjectSelected = onViewportObjectSelected,
                    onTransformDrag = onTransformDrag,
                    onTransformChange = onTransformChange,
                    onDiagnostic = onReportDiagnostic,
                    onTerrainToolChange = onTerrainToolChange,
                    onTerrainFalloffChange = onTerrainFalloffChange,
                    onTerrainStrokeBegin = onTerrainStrokeBegin,
                    onTerrainStrokePoint = onTerrainStrokePoint,
                    onTerrainStrokeEnd = onTerrainStrokeEnd,
                    onCreateFlatTerrain = onCreateFlatTerrain,
                    onCreatePlayableWorld = onCreatePlayableWorld,
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
                    onCreateEditableMesh = onCreateEditableMesh,
                    onConvertSelectedToEditableMesh = onConvertSelectedToEditableMesh,
                    onCreateVoxelVolume = onCreateVoxelVolume,
                    onConvertMeshToVoxel = onConvertMeshToVoxel,
                    onImportAsset = onImportAsset,
                    onPreviewAction = onPreviewAction,
                )
            } else {
                StudioWorkspaceTabs(
"""

if "WorldStudioWorkspaceV5(" not in source:
    if marker not in source:
        raise RuntimeError("normal workspace marker not found")
    source = source.replace(marker, replacement, 1)

path.write_text(source, encoding="utf-8")
print("World Studio V5 dedicated workspace wired")
