package com.mobilegamestudio.editor

import com.mobilegamestudio.core.model.CameraComponent
import com.mobilegamestudio.core.model.CharacterControllerComponent
import com.mobilegamestudio.core.model.DirectionalLightComponent
import com.mobilegamestudio.core.model.EditableMeshComponent
import com.mobilegamestudio.core.model.GameObject
import com.mobilegamestudio.core.model.MeshRendererComponent
import com.mobilegamestudio.core.model.PbrMaterialComponent
import com.mobilegamestudio.core.model.SceneDocument
import com.mobilegamestudio.core.model.TerrainComponent
import com.mobilegamestudio.core.model.TouchButtonComponent
import com.mobilegamestudio.core.model.VirtualJoystickComponent
import com.mobilegamestudio.core.model.VoxelVolumeComponent
import com.mobilegamestudio.core.model.WORLD_LAYER_SYSTEM_TAG
import com.mobilegamestudio.core.model.isWorldLayerLockedFor
import com.mobilegamestudio.editor.domain.EditorContextReducer
import com.mobilegamestudio.editor.domain.EditorContextState
import com.mobilegamestudio.editor.domain.EditorIntent
import com.mobilegamestudio.editor.domain.EditorSelection
import com.mobilegamestudio.editor.domain.EditorSelectionKind

/**
 * Boundary between the persistent scene model and the editor state machine.
 *
 * The adapter is deliberately kept inside the Android editor module: core:model
 * does not know about editor toolsets, and editor-domain does not know about
 * Android, Compose, Filament or serialized scene components.
 */
internal fun SceneDocument.toEditorSelection(objectId: String?): EditorSelection {
    val objectValue = objects.firstOrNull { item ->
        item.id == objectId && WORLD_LAYER_SYSTEM_TAG !in item.tags
    } ?: return EditorSelection.None

    return EditorSelection(
        objectId = objectValue.id,
        displayName = objectValue.name,
        kind = objectValue.toEditorSelectionKind(),
        locked = isWorldLayerLockedFor(objectValue.id),
    )
}

internal fun GameObject.toEditorSelectionKind(): EditorSelectionKind = when {
    component<TerrainComponent>() != null -> EditorSelectionKind.TERRAIN
    component<VoxelVolumeComponent>() != null -> EditorSelectionKind.VOXEL_VOLUME
    component<EditableMeshComponent>() != null -> EditorSelectionKind.EDITABLE_MESH
    component<CharacterControllerComponent>() != null -> EditorSelectionKind.PLAYER
    component<CameraComponent>() != null -> EditorSelectionKind.CAMERA
    component<DirectionalLightComponent>() != null -> EditorSelectionKind.LIGHT
    component<TouchButtonComponent>() != null || component<VirtualJoystickComponent>() != null ->
        EditorSelectionKind.UI
    component<MeshRendererComponent>()?.primitive != null -> EditorSelectionKind.PRIMITIVE_MESH
    component<MeshRendererComponent>() != null || component<PbrMaterialComponent>() != null ->
        EditorSelectionKind.RENDERABLE
    else -> EditorSelectionKind.OTHER
}

/**
 * Refreshes selection-derived capabilities after a scene transaction.
 *
 * A scene refresh is not automatically a user selection change. When the same
 * object and data kind remain selected, an outstanding target/conversion choice
 * must survive unrelated transactions such as creating another object or
 * changing a layer. The reducer is still used to refresh lock/capability state;
 * only the pending operation and its diagnostic are restored afterwards.
 */
internal fun EditorContextState.synchronizeSceneSelection(
    document: SceneDocument,
    selectedObjectId: String?,
): EditorContextState {
    val nextSelection = document.toEditorSelection(selectedObjectId)
    val refreshed = EditorContextReducer.reduce(
        this,
        EditorIntent.SelectionChanged(nextSelection),
    ).state
    val sameLogicalSelection =
        selection.objectId == nextSelection.objectId && selection.kind == nextSelection.kind
    return if (sameLogicalSelection && pendingOperation != null) {
        refreshed.copy(
            pendingOperation = pendingOperation,
            diagnostic = diagnostic,
        )
    } else {
        refreshed
    }
}
