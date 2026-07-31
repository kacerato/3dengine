package com.mobilegamestudio.core.model

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test

class WorldLayerModelsTest {
    private fun legacyScene(vararg objects: GameObject) = SceneDocument(
        sceneId = "scene",
        name = "World",
        rootObjects = objects.map(GameObject::id),
        objects = objects.toList(),
    )

    @Test
    fun `legacy objects receive deterministic default layers`() {
        val terrain = GameObject(
            id = "terrain",
            name = "Terrain",
            components = listOf(TransformComponent(), TerrainPresets.semiArid()),
        )
        val cube = GameObject(
            id = "cube",
            name = "Cube",
            components = listOf(TransformComponent(), MeshRendererComponent(primitive = PrimitiveMesh.CUBE)),
        )
        val migrated = legacyScene(terrain, cube).ensureWorldLayerStructure()

        assertNotNull(migrated.worldLayerSet())
        assertEquals(WORLD_LAYER_SURFACE_ID, migrated.objects.first { it.id == "terrain" }.worldLayerMembership()?.layerId)
        assertEquals(WORLD_LAYER_GEOMETRY_ID, migrated.objects.first { it.id == "cube" }.worldLayerMembership()?.layerId)
        assertTrue(migrated.objects.any { WORLD_LAYER_SYSTEM_TAG in it.tags })
    }

    @Test
    fun `objects can live in separate persistent layers`() {
        val first = GameObject(id = "a", name = "A")
        val second = GameObject(id = "b", name = "B")
        val prepared = legacyScene(first, second)
            .ensureWorldLayerStructure()
            .addWorldLayer("Construções", WorldLayerKind.GEOMETRY)
        val custom = prepared.worldLayers().first { it.name == "Construções" }
        val assigned = prepared.assignObjectToWorldLayer("b", custom.id)

        assertEquals(WORLD_LAYER_GEOMETRY_ID, assigned.objects.first { it.id == "a" }.worldLayerMembership()?.layerId)
        assertEquals(custom.id, assigned.objects.first { it.id == "b" }.worldLayerMembership()?.layerId)
        assertEquals("Construções", assigned.worldLayerFor("b")?.name)
    }

    @Test
    fun `visibility lock solo and reorder are transactional document changes`() {
        val terrain = GameObject(
            id = "terrain",
            name = "Terrain",
            components = listOf(TransformComponent(), TerrainPresets.semiArid()),
        )
        val cube = GameObject(
            id = "cube",
            name = "Cube",
            components = listOf(TransformComponent(), MeshRendererComponent(primitive = PrimitiveMesh.CUBE)),
        )
        val prepared = legacyScene(terrain, cube).ensureWorldLayerStructure()
        val hidden = prepared.toggleWorldLayerVisibility(WORLD_LAYER_GEOMETRY_ID)
        val locked = hidden.toggleWorldLayerLock(WORLD_LAYER_SURFACE_ID)
        val solo = locked.toggleWorldLayerSolo(WORLD_LAYER_SURFACE_ID)
        val reordered = solo.reorderWorldLayer(WORLD_LAYER_SURFACE_ID, 1)

        assertFalse(hidden.objects.first { it.id == "cube" }.enabled)
        assertTrue(locked.worldLayer(WORLD_LAYER_SURFACE_ID)?.locked == true)
        assertTrue(solo.worldLayer(WORLD_LAYER_SURFACE_ID)?.solo == true)
        assertFalse(solo.objects.first { it.id == "cube" }.enabled)
        assertEquals(1, reordered.worldLayer(WORLD_LAYER_SURFACE_ID)?.order)
    }

    @Test
    fun `turning layer visibility back on restores local object visibility`() {
        val visibleCube = GameObject(id = "visible", name = "Visible")
        val hiddenCube = GameObject(id = "hidden", name = "Hidden", enabled = false)
        val prepared = legacyScene(visibleCube, hiddenCube).ensureWorldLayerStructure()
        val hiddenLayer = prepared.toggleWorldLayerVisibility(WORLD_LAYER_GEOMETRY_ID)
        val restored = hiddenLayer.toggleWorldLayerVisibility(WORLD_LAYER_GEOMETRY_ID)

        assertFalse(hiddenLayer.objects.first { it.id == "visible" }.enabled)
        assertTrue(restored.objects.first { it.id == "visible" }.enabled)
        assertFalse(restored.objects.first { it.id == "hidden" }.enabled)
    }
}
