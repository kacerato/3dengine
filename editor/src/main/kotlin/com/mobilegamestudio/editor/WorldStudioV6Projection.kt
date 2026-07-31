package com.mobilegamestudio.editor

import com.mobilegamestudio.core.model.TerrainBrushMode
import com.mobilegamestudio.editor.domain.EditorToolId
import com.mobilegamestudio.editor.domain.EditorToolset
import com.mobilegamestudio.editor.domain.PendingEditorOperation

internal enum class WorldStudioV6Pane {
    OUTLINER,
    INSPECTOR,
    ASSETS,
    COMMANDS,
}

internal data class WorldStudioV6LayoutSpec(
    val compact: Boolean,
    val roomy: Boolean,
    val leadingPaneWidthDp: Int,
    val trailingPaneWidthDp: Int,
    val compactPaneWidthDp: Int,
    val assetPaneHeightDp: Int,
    val showToolLabels: Boolean,
    val showHeaderSubtitle: Boolean,
    val defaultLeadingVisible: Boolean,
    val defaultTrailingVisible: Boolean,
)

internal fun resolveWorldStudioV6Layout(
    widthDp: Int,
    heightDp: Int,
): WorldStudioV6LayoutSpec {
    val safeWidth = widthDp.coerceAtLeast(320)
    val safeHeight = heightDp.coerceAtLeast(240)
    val compact = safeWidth < 900
    val roomy = safeWidth >= 1180 && safeHeight >= 560
    return WorldStudioV6LayoutSpec(
        compact = compact,
        roomy = roomy,
        leadingPaneWidthDp = when {
            safeWidth >= 1440 -> 292
            safeWidth >= 1180 -> 268
            else -> 244
        },
        trailingPaneWidthDp = when {
            safeWidth >= 1440 -> 324
            safeWidth >= 1180 -> 300
            else -> 276
        },
        compactPaneWidthDp = (safeWidth * 0.78f).toInt().coerceIn(276, 372),
        assetPaneHeightDp = (safeHeight * 0.36f).toInt().coerceIn(180, 286),
        showToolLabels = safeWidth >= 680,
        showHeaderSubtitle = safeWidth >= 760,
        defaultLeadingVisible = roomy,
        defaultTrailingVisible = roomy,
    )
}

internal fun EditorToolId.legacyTransformTool(): EditorTool? = when (this) {
    EditorToolId.OBJECT_SELECT -> EditorTool.SELECT
    EditorToolId.OBJECT_MOVE -> EditorTool.MOVE
    EditorToolId.OBJECT_ROTATE -> EditorTool.ROTATE
    EditorToolId.OBJECT_SCALE -> EditorTool.SCALE
    EditorToolId.TERRAIN_NAVIGATE,
    EditorToolId.TERRAIN_RAISE,
    EditorToolId.TERRAIN_LOWER,
    EditorToolId.TERRAIN_SMOOTH,
    EditorToolId.TERRAIN_FLATTEN,
    EditorToolId.TERRAIN_PAINT,
    EditorToolId.MESH_VERTEX_SELECT,
    EditorToolId.MESH_EDGE_SELECT,
    EditorToolId.MESH_FACE_SELECT,
    EditorToolId.MESH_MOVE,
    EditorToolId.MESH_ROTATE,
    EditorToolId.MESH_SCALE,
    EditorToolId.VOLUME_ADD,
    EditorToolId.VOLUME_SUBTRACT,
    EditorToolId.VOLUME_SMOOTH,
    EditorToolId.VOLUME_SLICE,
    EditorToolId.MATERIAL_INSPECT,
    EditorToolId.MATERIAL_PAINT,
    -> EditorTool.SELECT
}

internal fun EditorToolId.terrainBrushMode(): TerrainBrushMode? = when (this) {
    EditorToolId.TERRAIN_RAISE -> TerrainBrushMode.RAISE
    EditorToolId.TERRAIN_LOWER -> TerrainBrushMode.LOWER
    EditorToolId.TERRAIN_SMOOTH -> TerrainBrushMode.SMOOTH
    EditorToolId.TERRAIN_FLATTEN -> TerrainBrushMode.FLATTEN
    EditorToolId.TERRAIN_PAINT,
    EditorToolId.MATERIAL_PAINT,
    -> TerrainBrushMode.PAINT
    else -> null
}

internal fun PendingEditorOperation.title(): String = when (this) {
    is PendingEditorOperation.ConfirmConversion -> when (requestedToolset) {
        EditorToolset.MESH -> "Preparar malha editável"
        EditorToolset.VOLUME -> "Converter para volume"
        else -> "Confirmar conversão"
    }
    is PendingEditorOperation.SelectOrCreateTarget -> when (requestedToolset) {
        EditorToolset.TERRAIN -> "Escolher um terreno"
        EditorToolset.MESH -> "Escolher uma malha"
        EditorToolset.VOLUME -> "Escolher um volume"
        EditorToolset.MATERIAL -> "Escolher um objeto renderizável"
        EditorToolset.OBJECT -> "Escolher um objeto"
    }
}

internal fun EditorToolset.compactLabel(): String = when (this) {
    EditorToolset.OBJECT -> "Objeto"
    EditorToolset.TERRAIN -> "Terreno"
    EditorToolset.MESH -> "Malha"
    EditorToolset.VOLUME -> "Volume"
    EditorToolset.MATERIAL -> "Material"
}
