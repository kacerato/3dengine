package com.mobilegamestudio.editor

import com.mobilegamestudio.core.model.CharacterControllerComponent
import com.mobilegamestudio.core.model.EditableMeshPresets
import com.mobilegamestudio.core.model.GameObject
import com.mobilegamestudio.core.model.MeshRendererComponent
import com.mobilegamestudio.core.model.PrimitiveMesh
import com.mobilegamestudio.core.model.SceneDocument
import com.mobilegamestudio.core.model.TerrainPresets
import com.mobilegamestudio.core.model.TransformComponent
import com.mobilegamestudio.core.model.VoxelVolumePresets
import com.mobilegamestudio.editor.domain.EditorSelectionKind
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class EditorDomainAdapterTest {
    @Test
    fun `terrain maps to terrain selection`() {
        val objectValue = GameObject(
            id = "terrain-1",
            name = "Terreno",
            components = listOf(TransformComponent(), TerrainPresets.semiArid()),
        )

        val selection = scene(objectValue).toEditorSelection(objectValue.id)

        assertEquals(EditorSelectionKind.TERRAIN, selection.kind)
        assertEquals(objectValue.id, selection.objectId)
    }

    @Test
    fun `editable mesh wins over primitive renderer`() {
        val objectValue = GameObject(
            id = "mesh-1",
            name = "Malha",
            components = listOf(
                TransformComponent(),
                MeshRendererComponent(primitive = PrimitiveMesh.CUBE),
                EditableMeshPresets.cube(),
            ),
        )

        assertEquals(
            EditorSelectionKind.EDITABLE_MESH,
            scene(objectValue).toEditorSelection(objectValue.id).kind,
        )
    }

    @Test
    fun `voxel volume wins over its preview mesh`() {
        val objectValue = GameObject(
            id = "voxel-1",
            name = "Volume",
            components = listOf(
                TransformComponent(),
                MeshRendererComponent(primitive = PrimitiveMesh.CUBE),
                VoxelVolumePresets.solid(16),
            ),
        )

        assertEquals(
            EditorSelectionKind.VOXEL_VOLUME,
            scene(objectValue).toEditorSelection(objectValue.id).kind,
        )
    }

    @Test
    fun `character is not mistaken for primitive mesh`() {
        val objectValue = GameObject(
            id = "player-1",
            name = "Jogador",
            components = listOf(
                TransformComponent(),
                CharacterControllerComponent(),
                MeshRendererComponent(primitive = PrimitiveMesh.CUBE),
            ),
        )

        assertEquals(
            EditorSelectionKind.PLAYER,
            scene(objectValue).toEditorSelection(objectValue.id).kind,
        )
    }

    @Test
    fun `plain primitive maps to primitive mesh`() {
        val objectValue = GameObject(
            id = "cube-1",
            name = "Cubo",
            components = listOf(
                TransformComponent(),
                MeshRendererComponent(primitive = PrimitiveMesh.CUBE),
            ),
        )

        assertEquals(
            EditorSelectionKind.PRIMITIVE_MESH,
            scene(objectValue).toEditorSelection(objectValue.id).kind,
        )
    }

    @Test
    fun `missing object produces empty selection`() {
        val selection = scene().toEditorSelection("missing")

        assertEquals(EditorSelectionKind.NONE, selection.kind)
        assertNull(selection.objectId)
    }

    private fun scene(vararg objects: GameObject) = SceneDocument(
        sceneId = "scene-1",
        name = "Cena",
        rootObjects = objects.map(GameObject::id),
        objects = objects.toList(),
    )
}
