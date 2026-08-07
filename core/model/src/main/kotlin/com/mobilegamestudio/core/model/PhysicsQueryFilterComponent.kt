package com.mobilegamestudio.core.model

import java.util.UUID
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

/**
 * Query metadata kept separate from ColliderComponent for backwards-compatible
 * scene serialization. Objects without this component behave as Layer 0 and
 * non-trigger, matching common engine defaults.
 */
@Serializable
@SerialName("physics-query-filter")
data class PhysicsQueryFilterComponent(
    override val componentId: String = UUID.randomUUID().toString(),
    override val enabled: Boolean = true,
    val layer: Int = DEFAULT_LAYER,
    val isTrigger: Boolean = false,
) : SceneComponent {
    init {
        require(layer in MIN_LAYER..MAX_LAYER) {
            "Physics query layer must be within $MIN_LAYER..$MAX_LAYER."
        }
    }

    companion object {
        const val MIN_LAYER = 0
        const val MAX_LAYER = 63
        const val DEFAULT_LAYER = 0
    }
}
