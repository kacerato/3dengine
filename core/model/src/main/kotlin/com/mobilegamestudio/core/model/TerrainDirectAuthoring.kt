package com.mobilegamestudio.core.model

import kotlinx.serialization.Serializable
import kotlin.math.pow

/**
 * Falloff used by direct viewport sculpting. The value is evaluated from the
 * normalized distance to the brush center, where 1 is the center and 0 is the
 * edge. Keeping this in the model layer makes editor strokes deterministic and
 * testable instead of coupling the result to the Compose UI.
 */
@Serializable
enum class TerrainBrushFalloff {
    SMOOTH,
    LINEAR,
    SHARP,
    CONSTANT,
}

fun TerrainBrushFalloff.evaluate(influence: Float): Float {
    val value = influence.coerceIn(0f, 1f)
    return when (this) {
        TerrainBrushFalloff.SMOOTH -> value * value * (3f - 2f * value)
        TerrainBrushFalloff.LINEAR -> value
        TerrainBrushFalloff.SHARP -> value.pow(3f)
        TerrainBrushFalloff.CONSTANT -> if (value > 0f) 1f else 0f
    }
}

/** Flat, neutral terrain intended to be authored from zero. */
fun createFlatTerrainComponent(
    requestedResolution: Int = 65,
    widthMeters: Float = 128f,
    maxHeightMeters: Float = 32f,
    baseHeight: Float = 0.16f,
): TerrainComponent {
    val resolution = requestedResolution
        .coerceIn(17, 257)
        .let { if (it % 2 == 0) it + 1 else it }
        .coerceAtMost(257)
    val layers = TerrainPresets.openWorldLayers
    val pointCount = resolution * resolution
    return TerrainComponent(
        resolution = resolution,
        width = widthMeters.coerceIn(8f, 8192f),
        maxHeight = maxHeightMeters.coerceIn(1f, 2048f),
        heights = List(pointCount) { baseHeight.coerceIn(0f, 1f) },
        materialLayers = layers,
        materialWeights = List(pointCount * layers.size) { index ->
            if (index % layers.size == 0) 1f else 0f
        },
        autoTileRules = TerrainPresets.openWorldRules,
        authoringMask = emptyList(),
    )
}
