package com.mobilegamestudio.core.model

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class WorldAuthoringContextTest {
    private fun scene(objectValue: GameObject) = SceneDocument(
        sceneId = "scene",
        name = "World",
        rootObjects = listOf(objectValue.id),
        objects = listOf(objectValue),
    ).ensureWorldLayerStructure()

    @Test
    fun `terrain selection suggests sculpt and exposes surface capabilities`() {
        val terrain = GameObject(
            id = "terrain",
            name = "Terrain",
            components = listOf(TransformComponent(), TerrainPresets.semiArid()),
        )
        val context = scene(terrain).resolveWorldAuthoringContext("terrain")

        assertEquals(WorldSelectionKind.TERRAIN, context.selectionKind)
        assertEquals(WorldActionId.OPEN_SCULPT, context.suggestedActionId)
        assertTrue(WorldCapability.SCULPT_SURFACE in context.capabilities)
        assertTrue(context.actions.first { it.id == WorldActionId.OPEN_SCULPT }.enabled)
        assertFalse(context.actions.first { it.id == WorldActionId.OPEN_MESH_EDIT }.enabled)
    }

    @Test
    fun `primitive suggests becoming editable`() {
        val cube = GameObject(
            id = "cube",
            name = "Cube",
            components = listOf(TransformComponent(), MeshRendererComponent(primitive = PrimitiveMesh.CUBE)),
        )
        val context = scene(cube).resolveWorldAuthoringContext("cube")

        assertEquals(WorldSelectionKind.PRIMITIVE_MESH, context.selectionKind)
        assertEquals(WorldActionId.CONVERT_PRIMITIVE_TO_EDITABLE, context.suggestedActionId)
        assertTrue(context.actions.first { it.id == WorldActionId.CONVERT_PRIMITIVE_TO_EDITABLE }.enabled)
    }

    @Test
    fun `locked layer blocks shape actions with an explicit reason`() {
        val mesh = GameObject(
            id = "mesh",
            name = "Mesh",
            components = listOf(TransformComponent(), EditableMeshPresets.cube()),
        )
        val document = scene(mesh).toggleWorldLayerLock(WORLD_LAYER_GEOMETRY_ID)
        val context = document.resolveWorldAuthoringContext("mesh")
        val editAction = context.actions.first { it.id == WorldActionId.OPEN_MESH_EDIT }

        assertTrue(context.layerLocked)
        assertFalse(editAction.enabled)
        assertTrue(editAction.disabledReason.orEmpty().contains("bloqueada", ignoreCase = true))
    }

    @Test
    fun `future conversions explain their dependency instead of doing nothing`() {
        val terrain = GameObject(
            id = "terrain",
            name = "Terrain",
            components = listOf(TransformComponent(), TerrainPresets.semiArid()),
        )
        val action = scene(terrain)
            .resolveWorldAuthoringContext("terrain")
            .actions
            .first { it.id == WorldActionId.CONVERT_TERRAIN_TO_MESH }

        assertFalse(action.enabled)
        assertTrue(action.disabledReason.orEmpty().contains("Fase 5"))
    }
}
