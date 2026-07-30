from __future__ import annotations

from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
MARKER = ROOT / ".studio-v3-geometry-applied"


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
        raise RuntimeError(f"{path}: expected one match, found {count}: {old[:120]!r}")
    write(path, text.replace(old, new, 1))


def patch_view_model() -> None:
    path = "editor/src/main/kotlin/com/mobilegamestudio/editor/WorkspaceViewModel.kt"
    replace_once(
        path,
        "import com.mobilegamestudio.core.model.TerrainComponent\n",
        """import com.mobilegamestudio.core.model.TerrainComponent
import com.mobilegamestudio.core.model.EditableMeshComponent
import com.mobilegamestudio.core.model.EditableMeshPresets
import com.mobilegamestudio.core.model.VoxelVolumeComponent
import com.mobilegamestudio.core.model.VoxelVolumePresets
import com.mobilegamestudio.core.model.VoxelBrushMode
import com.mobilegamestudio.core.model.VoxelSliceAxis
import com.mobilegamestudio.core.model.selectVertex
import com.mobilegamestudio.core.model.selectFace
import com.mobilegamestudio.core.model.moveSelection
import com.mobilegamestudio.core.model.extrudeSelectedFace
import com.mobilegamestudio.core.model.subdivideSelectedFace
import com.mobilegamestudio.core.model.applyDynamicTopology
import com.mobilegamestudio.core.model.toVoxelVolume
import com.mobilegamestudio.core.model.applySphereBrush
import com.mobilegamestudio.core.model.smoothVolume
""",
    )
    replace_once(
        path,
        """    val selectedTerrain: TerrainComponent?
        get() = sceneDocument?.objects
            ?.firstOrNull { it.id == selectedObjectId }
            ?.component<TerrainComponent>()
}""",
        """    val selectedTerrain: TerrainComponent?
        get() = sceneDocument?.objects
            ?.firstOrNull { it.id == selectedObjectId }
            ?.component<TerrainComponent>()

    val selectedEditableMesh: EditableMeshComponent?
        get() = sceneDocument?.objects
            ?.firstOrNull { it.id == selectedObjectId }
            ?.component<EditableMeshComponent>()

    val selectedVoxelVolume: VoxelVolumeComponent?
        get() = sceneDocument?.objects
            ?.firstOrNull { it.id == selectedObjectId }
            ?.component<VoxelVolumeComponent>()
}""",
    )

    geometry_methods = r'''
    fun createEditableMesh(primitive: PrimitiveMesh) {
        if (!canEdit()) return
        val mesh = if (primitive == PrimitiveMesh.PLANE) EditableMeshPresets.plane() else EditableMeshPresets.cube()
        val objectNumber = nextObjectNumber++
        val objectValue = GameObject(
            id = UUID.randomUUID().toString(),
            name = if (primitive == PrimitiveMesh.PLANE) "Malha plana $objectNumber" else "Malha editável $objectNumber",
            components = listOf(
                TransformComponent(),
                MeshRendererComponent(primitive = primitive, colorArgb = 0xFF7A8392),
                PbrMaterialComponent(materialId = "editable-mesh", roughness = 0.78f),
                mesh,
            ),
        )
        val document = mutableState.value.sceneDocument ?: return
        applyDocumentEdit(document.copy(objects = document.objects + objectValue, rootObjects = document.rootObjects + objectValue.id))
        mutableState.update { it.copy(selectedObjectId = objectValue.id, message = "Malha editável criada.") }
    }

    fun convertSelectedToEditableMesh() {
        if (!canEdit()) return
        val selectedId = mutableState.value.selectedObjectId ?: return
        val document = mutableState.value.sceneDocument ?: return
        val selected = document.objects.firstOrNull { it.id == selectedId } ?: return
        if (selected.component<EditableMeshComponent>() != null) return
        val primitive = selected.component<MeshRendererComponent>()?.primitive ?: PrimitiveMesh.CUBE
        val editable = if (primitive == PrimitiveMesh.PLANE) EditableMeshPresets.plane() else EditableMeshPresets.cube()
        applyDocumentEdit(document.copy(objects = document.objects.map { item ->
            if (item.id != selectedId) item else item.copy(components = item.components + editable)
        }))
        mutableState.update { it.copy(message = "Objeto convertido para edição de vértices e faces.") }
    }

    fun selectEditableMeshVertex(index: Int, additive: Boolean = false) = updateSelectedEditableMesh {
        it.selectVertex(index, additive)
    }

    fun selectEditableMeshFace(index: Int) = updateSelectedEditableMesh { it.selectFace(index) }

    fun moveEditableMeshSelection(axis: TransformAxis, delta: Float) = updateSelectedEditableMesh { mesh ->
        mesh.moveSelection(
            when (axis) {
                TransformAxis.X -> Vector3(delta, 0f, 0f)
                TransformAxis.Y -> Vector3(0f, delta, 0f)
                TransformAxis.Z -> Vector3(0f, 0f, delta)
            },
        )
    }

    fun extrudeEditableMeshFace(distance: Float) = updateSelectedEditableMesh {
        it.extrudeSelectedFace(distance.coerceIn(-20f, 20f))
    }

    fun subdivideEditableMeshFace() = updateSelectedEditableMesh { it.subdivideSelectedFace() }

    fun applyEditableMeshDyntopo() = updateSelectedEditableMesh { it.applyDynamicTopology() }

    fun createVoxelVolume(resolution: Int = 24, cave: Boolean = false) {
        if (!canEdit()) return
        val objectNumber = nextObjectNumber++
        val volume = if (cave) VoxelVolumePresets.cave(resolution.coerceAtLeast(24)) else VoxelVolumePresets.solid(resolution)
        val objectValue = GameObject(
            id = UUID.randomUUID().toString(),
            name = if (cave) "Caverna voxel $objectNumber" else "Volume voxel $objectNumber",
            components = listOf(
                TransformComponent(position = Vector3(0f, volume.size.y * 0.5f - 1f, 0f)),
                MeshRendererComponent(primitive = PrimitiveMesh.CUBE, colorArgb = volume.colorArgb),
                PbrMaterialComponent(materialId = "voxel-volume", roughness = 0.9f),
                volume,
            ),
        )
        val document = mutableState.value.sceneDocument ?: return
        applyDocumentEdit(document.copy(objects = document.objects + objectValue, rootObjects = document.rootObjects + objectValue.id))
        mutableState.update { it.copy(selectedObjectId = objectValue.id, message = if (cave) "Caverna voxel criada." else "Volume voxel criado.") }
    }

    fun convertSelectedMeshToVoxel(resolution: Int = 24) {
        if (!canEdit()) return
        val selectedId = mutableState.value.selectedObjectId ?: return
        val document = mutableState.value.sceneDocument ?: return
        val selected = document.objects.firstOrNull { it.id == selectedId } ?: return
        val mesh = selected.component<EditableMeshComponent>() ?: run {
            mutableState.update { it.copy(message = "Converta o objeto para malha editável antes de voxelizar.") }
            return
        }
        val volume = mesh.toVoxelVolume(resolution)
        applyDocumentEdit(document.copy(objects = document.objects.map { item ->
            if (item.id != selectedId) item else item.copy(
                components = item.components.filterNot { it is EditableMeshComponent } + volume,
            )
        }))
        mutableState.update { it.copy(message = "Malha convertida para volume voxel editável.") }
    }

    fun applyVoxelSliceBrush(
        axis: VoxelSliceAxis,
        slice: Int,
        u: Float,
        v: Float,
        radius: Float,
        strength: Float,
        mode: VoxelBrushMode,
    ) = updateSelectedVoxel { volume ->
        val normalizedSlice = slice.coerceIn(0, volume.safeResolution - 1).toFloat() / (volume.safeResolution - 1)
        val center = when (axis) {
            VoxelSliceAxis.X -> Vector3(normalizedSlice, v.coerceIn(0f, 1f), u.coerceIn(0f, 1f))
            VoxelSliceAxis.Y -> Vector3(u.coerceIn(0f, 1f), normalizedSlice, v.coerceIn(0f, 1f))
            VoxelSliceAxis.Z -> Vector3(u.coerceIn(0f, 1f), v.coerceIn(0f, 1f), normalizedSlice)
        }
        volume.applySphereBrush(center, radius, strength, mode)
    }

    fun smoothSelectedVoxel(iterations: Int = 1) = updateSelectedVoxel { it.smoothVolume(iterations) }

    private fun updateSelectedEditableMesh(transform: (EditableMeshComponent) -> EditableMeshComponent) {
        if (!canEdit()) return
        val selectedId = mutableState.value.selectedObjectId ?: return
        val document = mutableState.value.sceneDocument ?: return
        var changed = false
        val updated = document.copy(objects = document.objects.map { item ->
            if (item.id != selectedId) item else item.copy(components = item.components.map { component ->
                if (component is EditableMeshComponent) {
                    changed = true
                    transform(component)
                } else component
            })
        })
        if (changed) applyDocumentEdit(updated)
    }

    private fun updateSelectedVoxel(transform: (VoxelVolumeComponent) -> VoxelVolumeComponent) {
        if (!canEdit()) return
        val selectedId = mutableState.value.selectedObjectId ?: return
        val document = mutableState.value.sceneDocument ?: return
        var changed = false
        val updated = document.copy(objects = document.objects.map { item ->
            if (item.id != selectedId) item else item.copy(components = item.components.map { component ->
                if (component is VoxelVolumeComponent) {
                    changed = true
                    transform(component)
                } else component
            })
        })
        if (changed) applyDocumentEdit(updated)
    }

'''
    replace_once(path, "    fun renameSelected(name: String) {", geometry_methods + "    fun renameSelected(name: String) {")

    replace_once(
        path,
        """private fun GameObject.toEditorType(): EditorObjectType = when {
    components.any { it is TerrainComponent } -> EditorObjectType.TERRAIN""",
        """private fun GameObject.toEditorType(): EditorObjectType = when {
    components.any { it is TerrainComponent } -> EditorObjectType.TERRAIN
    components.any { it is EditableMeshComponent || it is VoxelVolumeComponent } -> EditorObjectType.MESH""",
    )


def patch_runtime() -> None:
    path = "runtime/src/main/kotlin/com/mobilegamestudio/runtime/RuntimeSceneViewport.kt"
    replace_once(
        path,
        "import com.mobilegamestudio.core.model.MeshRendererComponent\n",
        """import com.mobilegamestudio.core.model.MeshRendererComponent
import com.mobilegamestudio.core.model.EditableMeshComponent
import com.mobilegamestudio.core.model.VoxelVolumeComponent
""",
    )
    replace_once(
        path,
        """                objectValue.component<MeshRendererComponent>(),
                objectValue.component<TerrainComponent>(),""",
        """                objectValue.component<MeshRendererComponent>(),
                objectValue.component<EditableMeshComponent>(),
                objectValue.component<VoxelVolumeComponent>(),
                objectValue.component<TerrainComponent>(),""",
    )
    replace_once(
        path,
        """            try {
            val node = when (renderer.primitive) {
                PrimitiveMesh.CUBE -> CubeNode(""",
        """            try {
            val editableMesh = objectValue.component<EditableMeshComponent>()?.takeIf { it.enabled }
            val voxelVolume = objectValue.component<VoxelVolumeComponent>()?.takeIf { it.enabled }
            val customMaterial = if (editableMesh != null || voxelVolume != null) {
                materialLoader.createColorInstance(
                    Color(pbr?.baseColorArgb ?: voxelVolume?.colorArgb ?: renderer.colorArgb),
                    metallic = pbr?.metallic ?: 0.02f,
                    roughness = pbr?.roughness ?: 0.84f,
                ).also(materials::add)
            } else null
            val node = when {
                editableMesh != null -> buildEditableMeshNode(engine, editableMesh, requireNotNull(customMaterial))
                voxelVolume != null -> buildVoxelVolumeNode(engine, voxelVolume, requireNotNull(customMaterial))
                renderer.primitive == PrimitiveMesh.CUBE -> CubeNode(""",
    )
    replace_once(path, "                PrimitiveMesh.PLANE -> PlaneNode(", "                renderer.primitive == PrimitiveMesh.PLANE -> PlaneNode(")
    replace_once(path, "                null -> {\n                    if (loadedModels", "                else -> {\n                    if (loadedModels")


def main() -> None:
    if MARKER.exists():
        return
    patch_view_model()
    patch_runtime()
    MARKER.write_text("Studio V3 geometry migration applied\n", encoding="utf-8")


if __name__ == "__main__":
    main()
