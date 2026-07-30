package com.mobilegamestudio.core.model

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class AdvancedGeometryTest {
    @Test
    fun `extruding cube face creates cap vertices and side faces`() {
        val cube = EditableMeshPresets.cube().selectFace(0)
        val extruded = cube.extrudeSelectedFace(0.5f)

        assertEquals(cube.vertices.size + 4, extruded.vertices.size)
        assertEquals(cube.faces.size + 4, extruded.faces.size)
        assertEquals(4, extruded.selectedVertices.size)
        assertEquals(0, extruded.selectedFace)
    }

    @Test
    fun `subdivision and local dyntopo increase topology`() {
        val cube = EditableMeshPresets.cube().selectFace(0)
        val subdivided = cube.subdivideSelectedFace()
        val refined = cube.copy(detailSize = 0.1f).applyDynamicTopology()

        assertTrue(subdivided.vertices.size > cube.vertices.size)
        assertTrue(subdivided.faces.size > cube.faces.size)
        assertTrue(refined.dynamicTopology)
        assertTrue(refined.faces.size > cube.faces.size)
    }

    @Test
    fun `voxel subtract brush creates an internal cavity`() {
        val solid = VoxelVolumePresets.solid(resolution = 16)
        val carved = solid.applySphereBrush(
            center = Vector3(0.5f, 0.5f, 0.5f),
            radius = 0.22f,
            strength = 1f,
            mode = VoxelBrushMode.SUBTRACT,
        )

        assertTrue(carved.density.minOrNull()!! < 0.5f)
        assertTrue(carved.density.maxOrNull()!! >= 0.99f)
    }

    @Test
    fun `tunnel crosses a solid voxel volume`() {
        val solid = VoxelVolumePresets.solid(resolution = 18)
        val tunneled = solid.applyTunnel(
            start = Vector3(0.05f, 0.5f, 0.5f),
            end = Vector3(0.95f, 0.5f, 0.5f),
            radius = 0.11f,
        )

        val middle = tunneled.safeResolution / 2
        assertTrue(tunneled.densityAt(middle, middle, middle) < 0.5f)
    }

    @Test
    fun `editable mesh can be voxelized`() {
        val voxel = EditableMeshPresets.cube().toVoxelVolume(12)

        assertEquals(12, voxel.resolution)
        assertEquals(12 * 12 * 12, voxel.density.size)
        assertTrue(voxel.density.all { it == 1f })
    }
}
