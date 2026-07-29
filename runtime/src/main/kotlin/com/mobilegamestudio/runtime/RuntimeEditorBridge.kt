package com.mobilegamestudio.runtime

import com.mobilegamestudio.core.model.ProjectId
import kotlinx.coroutines.flow.Flow

/**
 * Boundary owned by the editor. A concrete graphics runtime can be replaced
 * without exposing Godot, native handles, or Android views to feature modules.
 */
interface RuntimeEditorBridge {
    val events: Flow<RuntimeEvent>

    suspend fun loadProject(projectId: ProjectId): RuntimeResult
    suspend fun pause(): RuntimeResult
    suspend fun resume(): RuntimeResult
    suspend fun unload(): RuntimeResult
}

sealed interface RuntimeEvent {
    data object Ready : RuntimeEvent
    data class Failed(val message: String) : RuntimeEvent
}

sealed interface RuntimeResult {
    data object Success : RuntimeResult
    data class Failure(val message: String) : RuntimeResult
}

