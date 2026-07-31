package com.mobilegamestudio.editor.domain

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class EditorContextReducerTest {
    @Test
    fun `volume cannot become active over terrain without a pending decision`() {
        val terrainState = EditorContextReducer.reduce(
            EditorContextState.initial(),
            EditorIntent.SelectionChanged(terrain("terrain-1")),
        ).state

        val transition = EditorContextReducer.reduce(
            terrainState,
            EditorIntent.ActivateToolset(EditorToolset.VOLUME),
        )

        assertEquals(EditorToolset.OBJECT, transition.state.activeToolset)
        assertEquals(EditorToolId.OBJECT_SELECT, transition.state.activeTool)
        assertEquals(EditorSelectionKind.TERRAIN, transition.state.selection.kind)
        assertTrue(transition.state.pendingOperation is PendingEditorOperation.SelectOrCreateTarget)
        assertTrue(transition.effect is EditorDomainEffect.RequestTargetPicker)
    }

    @Test
    fun `terrain toolset activates navigate immediately for selected terrain`() {
        val selected = EditorContextReducer.reduce(
            EditorContextState.initial(),
            EditorIntent.SelectionChanged(terrain("terrain-1")),
        ).state

        val state = EditorContextReducer.reduce(
            selected,
            EditorIntent.ActivateToolset(EditorToolset.TERRAIN),
        ).state

        assertEquals(EditorToolset.TERRAIN, state.activeToolset)
        assertEquals(EditorToolId.TERRAIN_NAVIGATE, state.activeTool)
        assertEquals(ViewportInteractionMode.NAVIGATE, state.interactionMode)
        assertNull(state.pendingOperation)
        assertEquals("Terreno / Terreno principal", state.breadcrumb)
    }

    @Test
    fun `primitive mesh requests one explicit conversion`() {
        val selected = EditorContextReducer.reduce(
            EditorContextState.initial(),
            EditorIntent.SelectionChanged(
                EditorSelection("cube-1", "Cubo", EditorSelectionKind.PRIMITIVE_MESH),
            ),
        ).state

        val transition = EditorContextReducer.reduce(
            selected,
            EditorIntent.ActivateToolset(EditorToolset.MESH),
        )

        val pending = transition.state.pendingOperation as PendingEditorOperation.ConfirmConversion
        assertEquals(EditorConversion.PRIMITIVE_TO_EDITABLE_MESH, pending.conversion)
        assertEquals(EditorSelectionKind.EDITABLE_MESH, pending.resultKind)
        assertEquals(EditorToolset.OBJECT, transition.state.activeToolset)
        assertTrue(transition.effect is EditorDomainEffect.RequestConversion)
    }

    @Test
    fun `confirmed conversion changes selection toolset and tool atomically`() {
        val selected = EditorContextReducer.reduce(
            EditorContextState.initial(),
            EditorIntent.SelectionChanged(
                EditorSelection("cube-1", "Cubo", EditorSelectionKind.PRIMITIVE_MESH),
            ),
        ).state
        val pending = EditorContextReducer.reduce(
            selected,
            EditorIntent.ActivateToolset(EditorToolset.MESH),
        ).state

        val state = EditorContextReducer.reduce(
            pending,
            EditorIntent.ConfirmConversion(
                EditorSelection("cube-1", "Cubo", EditorSelectionKind.EDITABLE_MESH),
            ),
        ).state

        assertEquals(EditorSelectionKind.EDITABLE_MESH, state.selection.kind)
        assertEquals(EditorToolset.MESH, state.activeToolset)
        assertEquals(EditorToolId.MESH_VERTEX_SELECT, state.activeTool)
        assertEquals(ViewportInteractionMode.MESH_EDIT, state.interactionMode)
        assertNull(state.pendingOperation)
    }

    @Test
    fun `cancel keeps previous coherent context`() {
        val selected = EditorContextReducer.reduce(
            EditorContextState.initial(),
            EditorIntent.SelectionChanged(terrain("terrain-1")),
        ).state
        val pending = EditorContextReducer.reduce(
            selected,
            EditorIntent.ActivateToolset(EditorToolset.VOLUME),
        ).state

        val state = EditorContextReducer.reduce(
            pending,
            EditorIntent.CancelPendingOperation,
        ).state

        assertEquals(EditorToolset.OBJECT, state.activeToolset)
        assertEquals(EditorToolId.OBJECT_SELECT, state.activeTool)
        assertEquals(EditorSelectionKind.TERRAIN, state.selection.kind)
        assertNull(state.pendingOperation)
    }

    @Test
    fun `incompatible selection resets active specialized toolset to object`() {
        val terrainSelected = EditorContextReducer.reduce(
            EditorContextState.initial(),
            EditorIntent.SelectionChanged(terrain("terrain-1")),
        ).state
        val terrainMode = EditorContextReducer.reduce(
            terrainSelected,
            EditorIntent.ActivateToolset(EditorToolset.TERRAIN),
        ).state

        val state = EditorContextReducer.reduce(
            terrainMode,
            EditorIntent.SelectionChanged(
                EditorSelection("light-1", "Luz", EditorSelectionKind.LIGHT),
            ),
        ).state

        assertEquals(EditorToolset.OBJECT, state.activeToolset)
        assertEquals(EditorToolId.OBJECT_SELECT, state.activeTool)
        assertEquals(EditorSelectionKind.LIGHT, state.selection.kind)
        assertNotNull(state.diagnostic)
    }

    @Test
    fun `invalid tool from another toolset is rejected without changing context`() {
        val selected = EditorContextReducer.reduce(
            EditorContextState.initial(),
            EditorIntent.SelectionChanged(terrain("terrain-1")),
        ).state
        val terrainMode = EditorContextReducer.reduce(
            selected,
            EditorIntent.ActivateToolset(EditorToolset.TERRAIN),
        ).state

        val state = EditorContextReducer.reduce(
            terrainMode,
            EditorIntent.ActivateTool(EditorToolId.VOLUME_ADD),
        ).state

        assertEquals(EditorToolset.TERRAIN, state.activeToolset)
        assertEquals(EditorToolId.TERRAIN_NAVIGATE, state.activeTool)
        assertEquals("tool_wrong_toolset", state.diagnostic?.code)
    }

    @Test
    fun `tool registry exposes only tools supported by current context`() {
        val terrainSelected = EditorContextReducer.reduce(
            EditorContextState.initial(),
            EditorIntent.SelectionChanged(terrain("terrain-1")),
        ).state
        val state = EditorContextReducer.reduce(
            terrainSelected,
            EditorIntent.ActivateToolset(EditorToolset.TERRAIN),
        ).state

        val tools = EditorToolRegistry.availableFor(state).map { it.id }.toSet()

        assertTrue(EditorToolId.TERRAIN_NAVIGATE in tools)
        assertTrue(EditorToolId.TERRAIN_RAISE in tools)
        assertTrue(EditorToolId.TERRAIN_PAINT in tools)
        assertFalse(EditorToolId.VOLUME_ADD in tools)
    }

    @Test
    fun `command registry derives conversions from selection capabilities`() {
        val primitive = EditorContextReducer.reduce(
            EditorContextState.initial(),
            EditorIntent.SelectionChanged(
                EditorSelection("cube-1", "Cubo", EditorSelectionKind.PRIMITIVE_MESH),
            ),
        ).state
        val commands = EditorCommandRegistry.availableFor(primitive).map { it.id }.toSet()

        assertTrue(EditorCommandId.CONVERT_TO_EDITABLE_MESH in commands)
        assertFalse(EditorCommandId.CONVERT_TO_VOLUME in commands)
    }

    @Test(expected = IllegalArgumentException::class)
    fun `invalid contradictory state cannot be constructed`() {
        EditorContextState(
            selection = terrain("terrain-1"),
            activeToolset = EditorToolset.VOLUME,
            activeTool = EditorToolId.VOLUME_ADD,
            interactionMode = ViewportInteractionMode.VOXEL_BRUSH,
            capabilities = capabilitiesFor(terrain("terrain-1")),
        )
    }

    private fun terrain(id: String) = EditorSelection(
        objectId = id,
        displayName = "Terreno principal",
        kind = EditorSelectionKind.TERRAIN,
    )
}
