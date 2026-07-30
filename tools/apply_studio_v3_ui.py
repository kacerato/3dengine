from __future__ import annotations

from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
MARKER = ROOT / ".studio-v3-ui-applied"


def read(path: str) -> str:
    return (ROOT / path).read_text(encoding="utf-8")


def write(path: str, text: str) -> None:
    (ROOT / path).write_text(text, encoding="utf-8")


def replace_once(path: str, old: str, new: str) -> None:
    text = read(path)
    if new in text:
        return
    count = text.count(old)
    if count != 1:
        raise RuntimeError(f"{path}: expected one match, found {count}: {old[:140]!r}")
    write(path, text.replace(old, new, 1))


def patch_scene_viewport() -> None:
    path = "editor/src/main/kotlin/com/mobilegamestudio/editor/SceneViewport.kt"
    replace_once(
        path,
        """    onDiagnostic: (String) -> Unit,
    onPreviewAction: (String) -> Unit,
    terrainAuthoringEnabled: Boolean = false,""",
        """    onDiagnostic: (String) -> Unit,
    onPreviewAction: (String) -> Unit,
    editorChromeVisible: Boolean = true,
    terrainAuthoringEnabled: Boolean = false,""",
    )
    replace_once(
        path,
        """    val sceneMarkers = if (state.isPreviewRunning) emptyList() else document.objects.mapNotNull { item ->""",
        """    val sceneMarkers = if (state.isPreviewRunning || !editorChromeVisible) emptyList() else document.objects.mapNotNull { item ->""",
    )
    old = """        Row(
            modifier = Modifier
                .align(Alignment.TopStart)
                .padding(10.dp)
                .background(Color(0xCC181C20), RoundedCornerShape(4.dp))
                .padding(horizontal = 9.dp, vertical = 6.dp),
        ) {
            Text(
                if (state.isPreviewRunning) {
                    "● PLAY ${"%.1f".format(state.previewSeconds)}s"
                } else {
                    "PERSPECTIVA · FILAMENT"
                },
                color = if (state.isPreviewRunning) Positive else SecondaryText,
                fontSize = 9.sp,
                letterSpacing = 0.7.sp,
            )
            if (!state.isPreviewRunning && selectedObject != null) {
                Text(
                    "  ·  SELECIONADO: ${selectedObject.name}",
                    color = Accent,
                    fontSize = 9.sp,
                    maxLines = 1,
                )
            }
        }
"""
    new = """        if (editorChromeVisible) {
            Row(
                modifier = Modifier
                    .align(Alignment.TopStart)
                    .padding(8.dp)
                    .background(Color(0xD912151A), RoundedCornerShape(3.dp))
                    .padding(horizontal = 7.dp, vertical = 4.dp),
            ) {
                Text(
                    if (state.isPreviewRunning) "● PLAY ${"%.1f".format(state.previewSeconds)}s" else "3D",
                    color = if (state.isPreviewRunning) Positive else SecondaryText,
                    fontSize = 7.sp,
                )
                if (!state.isPreviewRunning && selectedObject != null) {
                    Text("  ${selectedObject.name}", color = Accent, fontSize = 7.sp, maxLines = 1)
                }
            }
        }
"""
    replace_once(path, old, new)


def patch_shell() -> None:
    path = "editor/src/main/kotlin/com/mobilegamestudio/editor/GodotCompactEditorShell.kt"
    callback_anchor = """    onCreateFlatTerrain: (Int, Float, Float) -> Unit,
    onAssignTerrainTexture: (String, String, Boolean) -> Unit,
) {"""
    callback_replacement = """    onCreateFlatTerrain: (Int, Float, Float) -> Unit,
    onAssignTerrainTexture: (String, String, Boolean) -> Unit,
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
    onVoxelBrush: (com.mobilegamestudio.core.model.VoxelSliceAxis, Int, Float, Float, Float, Float, com.mobilegamestudio.core.model.VoxelBrushMode) -> Unit,
    onSmoothVoxel: (Int) -> Unit,
) {"""
    replace_once(path, callback_anchor, callback_replacement)
    replace_once(path, "                    WorldStudioWorkspace(\n", "                    WorldStudioWorkspaceV3(\n")
    replace_once(
        path,
        """                        onImportAsset = onImportAsset,
                        onImportHeightmap = onImportTerrainHeightmap,
                        modifier = Modifier.weight(1f).fillMaxWidth(),""",
        """                        onImportAsset = onImportAsset,
                        onImportHeightmap = onImportTerrainHeightmap,
                        onCreateEditableMesh = onCreateEditableMesh,
                        onConvertSelectedToEditableMesh = onConvertSelectedToEditableMesh,
                        onSelectMeshVertex = onSelectMeshVertex,
                        onSelectMeshFace = onSelectMeshFace,
                        onMoveMeshSelection = onMoveMeshSelection,
                        onExtrudeMeshFace = onExtrudeMeshFace,
                        onSubdivideMeshFace = onSubdivideMeshFace,
                        onDyntopoMesh = onDyntopoMesh,
                        onCreateVoxelVolume = onCreateVoxelVolume,
                        onConvertMeshToVoxel = onConvertMeshToVoxel,
                        onVoxelBrush = onVoxelBrush,
                        onSmoothVoxel = onSmoothVoxel,
                        modifier = Modifier.weight(1f).fillMaxWidth(),""",
    )


def patch_workspace_screen() -> None:
    path = "editor/src/main/kotlin/com/mobilegamestudio/editor/WorkspaceScreen.kt"
    replace_once(
        path,
        """                onCreateFlatTerrain = viewModel::createFlatTerrain,
                onAssignTerrainTexture = viewModel::assignTerrainTexture,
            )""",
        """                onCreateFlatTerrain = viewModel::createFlatTerrain,
                onAssignTerrainTexture = viewModel::assignTerrainTexture,
                onCreateEditableMesh = viewModel::createEditableMesh,
                onConvertSelectedToEditableMesh = viewModel::convertSelectedToEditableMesh,
                onSelectMeshVertex = viewModel::selectEditableMeshVertex,
                onSelectMeshFace = viewModel::selectEditableMeshFace,
                onMoveMeshSelection = viewModel::moveEditableMeshSelection,
                onExtrudeMeshFace = viewModel::extrudeEditableMeshFace,
                onSubdivideMeshFace = viewModel::subdivideEditableMeshFace,
                onDyntopoMesh = viewModel::applyEditableMeshDyntopo,
                onCreateVoxelVolume = viewModel::createVoxelVolume,
                onConvertMeshToVoxel = viewModel::convertSelectedMeshToVoxel,
                onVoxelBrush = viewModel::applyVoxelSliceBrush,
                onSmoothVoxel = viewModel::smoothSelectedVoxel,
            )""",
    )


def main() -> None:
    if MARKER.exists():
        return
    patch_scene_viewport()
    patch_shell()
    patch_workspace_screen()
    MARKER.write_text("Studio V3 UI migration applied\n", encoding="utf-8")


if __name__ == "__main__":
    main()
