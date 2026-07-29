package com.mobilegamestudio.core.model

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class TerrainEditingTest {
    @Test
    fun semiAridPresetIsValidAndHasMaterialVariation() {
        val terrain = TerrainPresets.semiArid(resolution = 17)
        val scene = SceneDocument(
            sceneId = "terrain-test",
            name = "Terrain test",
            rootObjects = listOf("terrain"),
            objects = listOf(
                GameObject(
                    id = "terrain",
                    name = "Semiárido",
                    components = listOf(TransformComponent(), terrain),
                ),
            ),
        )

        assertTrue(SceneValidator.validate(scene).isEmpty())
        assertTrue(terrain.heights.distinct().size > 10)
        assertTrue(
            (0 until terrain.resolution).flatMap { z ->
                (0 until terrain.resolution).map { x -> terrain.dominantLayerAt(x, z).id }
            }.distinct().size >= 2,
        )
    }

    @Test
    fun sculptPaintAndAutoTileKeepCanonicalData() {
        val base = TerrainPresets.semiArid(resolution = 17)
        val center = (base.resolution / 2) * base.resolution + base.resolution / 2
        val raised = base.applyBrush(
            TerrainBrush(TerrainBrushMode.RAISE, 0.5f, 0.5f, radius = 0.2f, strength = 1f),
        )
        assertTrue(raised.heights[center] > base.heights[center])

        val painted = raised.applyBrush(
            TerrainBrush(
                TerrainBrushMode.PAINT,
                0.5f,
                0.5f,
                radius = 0.2f,
                strength = 1f,
                materialLayerId = "scrub",
            ),
        )
        assertEquals("scrub", painted.dominantLayerAt(base.resolution / 2, base.resolution / 2).id)
        assertNotEquals(painted.materialWeights, painted.applyAutoTile().materialWeights)
    }

    @Test
    fun smoothReducesAnIsolatedPeak() {
        val base = TerrainPresets.semiArid(resolution = 9).copy(
            heights = List(81) { if (it == 40) 1f else 0f },
        )
        val smoothed = base.applyBrush(
            TerrainBrush(TerrainBrushMode.SMOOTH, 0.5f, 0.5f, radius = 0.3f, strength = 1f),
        )
        assertTrue(smoothed.heights[40] < 1f)
        assertTrue(smoothed.heights[39] > 0f)
    }
}
