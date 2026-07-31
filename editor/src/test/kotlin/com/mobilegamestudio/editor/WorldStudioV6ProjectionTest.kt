package com.mobilegamestudio.editor

import com.mobilegamestudio.core.model.TerrainBrushMode
import com.mobilegamestudio.editor.domain.EditorToolId
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class WorldStudioV6ProjectionTest {
    @Test
    fun `phone landscape uses overlay panes and keeps viewport priority`() {
        val spec = resolveWorldStudioV6Layout(widthDp = 820, heightDp = 390)

        assertTrue(spec.compact)
        assertFalse(spec.defaultLeadingVisible)
        assertFalse(spec.defaultTrailingVisible)
        assertTrue(spec.compactPaneWidthDp in 276..372)
        assertTrue(spec.assetPaneHeightDp in 180..286)
    }

    @Test
    fun `large landscape may dock outliner and inspector`() {
        val spec = resolveWorldStudioV6Layout(widthDp = 1280, heightDp = 720)

        assertFalse(spec.compact)
        assertTrue(spec.roomy)
        assertTrue(spec.defaultLeadingVisible)
        assertTrue(spec.defaultTrailingVisible)
        assertTrue(spec.leadingPaneWidthDp < 300)
        assertTrue(spec.trailingPaneWidthDp <= 324)
    }

    @Test
    fun `small dimensions are clamped to usable pane sizes`() {
        val spec = resolveWorldStudioV6Layout(widthDp = 120, heightDp = 100)

        assertEquals(276, spec.compactPaneWidthDp)
        assertEquals(180, spec.assetPaneHeightDp)
    }

    @Test
    fun `domain transform tools project to legacy viewport controls`() {
        assertEquals(EditorTool.SELECT, EditorToolId.OBJECT_SELECT.legacyTransformTool())
        assertEquals(EditorTool.MOVE, EditorToolId.OBJECT_MOVE.legacyTransformTool())
        assertEquals(EditorTool.ROTATE, EditorToolId.OBJECT_ROTATE.legacyTransformTool())
        assertEquals(EditorTool.SCALE, EditorToolId.OBJECT_SCALE.legacyTransformTool())
        assertEquals(EditorTool.SELECT, EditorToolId.VOLUME_ADD.legacyTransformTool())
    }

    @Test
    fun `terrain tools project to the correct brush operation`() {
        assertEquals(TerrainBrushMode.RAISE, EditorToolId.TERRAIN_RAISE.terrainBrushMode())
        assertEquals(TerrainBrushMode.LOWER, EditorToolId.TERRAIN_LOWER.terrainBrushMode())
        assertEquals(TerrainBrushMode.SMOOTH, EditorToolId.TERRAIN_SMOOTH.terrainBrushMode())
        assertEquals(TerrainBrushMode.FLATTEN, EditorToolId.TERRAIN_FLATTEN.terrainBrushMode())
        assertEquals(TerrainBrushMode.PAINT, EditorToolId.TERRAIN_PAINT.terrainBrushMode())
        assertEquals(null, EditorToolId.TERRAIN_NAVIGATE.terrainBrushMode())
    }
}
