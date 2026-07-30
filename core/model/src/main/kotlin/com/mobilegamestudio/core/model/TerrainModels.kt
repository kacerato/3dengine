package com.mobilegamestudio.core.model

import java.util.UUID
import kotlin.math.abs
import kotlin.math.cos
import kotlin.math.exp
import kotlin.math.floor
import kotlin.math.max
import kotlin.math.sin
import kotlin.math.sqrt
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
@SerialName("terrain")
data class TerrainComponent(
    override val componentId: String = UUID.randomUUID().toString(),
    override val enabled: Boolean = true,
    val resolution: Int = 33,
    val width: Float = 48f,
    val maxHeight: Float = 14f,
    val heights: List<Float> = List(33 * 33) { 0f },
    val materialLayers: List<TerrainMaterialLayer> = TerrainPresets.semiAridLayers,
    val materialWeights: List<Float> = List(33 * 33 * TerrainPresets.semiAridLayers.size) { index ->
        if (index % TerrainPresets.semiAridLayers.size == 0) 1f else 0f
    },
    val autoTileRules: List<TerrainAutoTileRule> = TerrainPresets.semiAridRules,
    val authoringMask: List<Float> = emptyList(),
    val seed: Int = 73021,
) : SceneComponent {
    fun heightAt(x: Int, z: Int): Float =
        heights[z.coerceIn(0, resolution - 1) * resolution + x.coerceIn(0, resolution - 1)]

    fun dominantLayerAt(x: Int, z: Int): TerrainMaterialLayer {
        val point = z.coerceIn(0, resolution - 1) * resolution + x.coerceIn(0, resolution - 1)
        val layerIndex = materialLayers.indices.maxByOrNull { layer ->
            materialWeights.getOrElse(point * materialLayers.size + layer) { 0f }
        } ?: 0
        return materialLayers.getOrElse(layerIndex) { TerrainPresets.semiAridLayers.first() }
    }
}

@Serializable
data class TerrainMaterialLayer(
    val id: String,
    val name: String,
    val colorArgb: Long,
    val textureAssetId: String? = null,
    val normalAssetId: String? = null,
    val roughness: Float = 0.9f,
    val metallic: Float = 0f,
    val textureScale: Float = 4f,
    val textureRotationDegrees: Float = 0f,
    val textureOffsetX: Float = 0f,
    val textureOffsetY: Float = 0f,
)

@Serializable
data class TerrainAutoTileRule(
    val id: String,
    val name: String,
    val materialLayerId: String,
    val minNormalizedHeight: Float = 0f,
    val maxNormalizedHeight: Float = 1f,
    val minSlopeDegrees: Float = 0f,
    val maxSlopeDegrees: Float = 90f,
    val priority: Int = 0,
    val tileAssetId: String? = null,
    val density: Float = 0f,
    val scaleMin: Float = 0.9f,
    val scaleMax: Float = 1.1f,
)

@Serializable
enum class TerrainBrushMode {
    RAISE,
    LOWER,
    SMOOTH,
    FLATTEN,
    NOISE,
    PAINT,
    STAMP,
    TERRACE,
    RIDGE,
    CANYON,
    ERODE,
    MASK_PAINT,
    MASK_ERASE,
}

data class TerrainBrush(
    val mode: TerrainBrushMode,
    val normalizedX: Float,
    val normalizedZ: Float,
    val radius: Float = 0.12f,
    val strength: Float = 0.35f,
    val targetHeight: Float = 0.5f,
    val materialLayerId: String? = null,
    val falloff: TerrainBrushFalloff = TerrainBrushFalloff.SMOOTH,
)

object TerrainPresets {
    val openWorldLayers = listOf(
        TerrainMaterialLayer("meadow", "Grama natural", 0xFF526B3D, roughness = 0.9f, textureScale = 9f),
        TerrainMaterialLayer("earth", "Terra úmida", 0xFF70543A, roughness = 0.96f, textureScale = 7f),
        TerrainMaterialLayer("stone", "Rocha", 0xFF65635E, roughness = 0.82f, textureScale = 4f),
        TerrainMaterialLayer("dry-grass", "Capim seco", 0xFF848050, roughness = 0.94f, textureScale = 8f),
    )

    val openWorldRules = listOf(
        TerrainAutoTileRule("rock-slopes", "Rocha em encostas", "stone", minSlopeDegrees = 36f, priority = 50),
        TerrainAutoTileRule("dry-ridges", "Capim seco elevado", "dry-grass", minNormalizedHeight = 0.62f, priority = 30),
        TerrainAutoTileRule("damp-soil", "Terra em baixadas", "earth", maxNormalizedHeight = 0.2f, maxSlopeDegrees = 14f, priority = 20),
        TerrainAutoTileRule("meadow-base", "Prado base", "meadow", priority = 1, density = 0.36f),
    )

    val semiAridLayers = listOf(
        TerrainMaterialLayer("dry-soil", "Terra seca", 0xFF9A6844, roughness = 0.96f, textureScale = 7f),
        TerrainMaterialLayer("sand", "Areia", 0xFFC59A63, roughness = 0.92f, textureScale = 5f),
        TerrainMaterialLayer("rock", "Rocha", 0xFF665A50, roughness = 0.86f, textureScale = 3f),
        TerrainMaterialLayer("scrub", "Caatinga", 0xFF667044, roughness = 0.94f, textureScale = 6f),
    )

    val semiAridRules = listOf(
        TerrainAutoTileRule("cliffs", "Rocha em encostas", "rock", minSlopeDegrees = 38f, priority = 40),
        TerrainAutoTileRule("high-dry", "Solo seco elevado", "dry-soil", minNormalizedHeight = 0.58f, priority = 30),
        TerrainAutoTileRule("valley-scrub", "Vegetação de vale", "scrub", maxNormalizedHeight = 0.32f, maxSlopeDegrees = 18f, priority = 20, density = 0.22f),
        TerrainAutoTileRule("sand-base", "Areia base", "sand", priority = 1),
    )

    fun semiArid(resolution: Int = 33, seed: Int = 73021): TerrainComponent {
        val safeResolution = resolution.coerceIn(9, 129).let { if (it % 2 == 0) it + 1 else it }
        val heights = List(safeResolution * safeResolution) { index ->
            val x = index % safeResolution
            val z = index / safeResolution
            val nx = x.toFloat() / (safeResolution - 1)
            val nz = z.toFloat() / (safeResolution - 1)
            val ridge = abs(sin((nx * 2.8f + nz * 1.2f) * Math.PI)).toFloat() * 0.18f
            val hills = (
                sin((nx * 2.1f + seed * 0.0001f) * Math.PI * 2).toFloat() +
                    cos((nz * 1.7f - seed * 0.00013f) * Math.PI * 2).toFloat()
                ) * 0.09f
            val mesa = exp(-((nx - 0.68f) * (nx - 0.68f) + (nz - 0.42f) * (nz - 0.42f)) / 0.035f) * 0.42f
            (0.08f + ridge + hills + mesa).coerceIn(0f, 1f)
        }
        val emptyWeights = List(safeResolution * safeResolution * semiAridLayers.size) { index ->
            if (index % semiAridLayers.size == 0) 1f else 0f
        }
        return TerrainComponent(
            resolution = safeResolution,
            heights = heights,
            materialLayers = semiAridLayers,
            materialWeights = emptyWeights,
            autoTileRules = semiAridRules,
            seed = seed,
        ).applyAutoTile()
    }

    fun openWorld(resolution: Int = 65, seed: Int = 2048): TerrainComponent {
        val safeResolution = resolution.coerceIn(17, 129).let { if (it % 2 == 0) it + 1 else it }
        val heights = List(safeResolution * safeResolution) { index ->
            val x = index % safeResolution
            val z = index / safeResolution
            val nx = x.toFloat() / (safeResolution - 1)
            val nz = z.toFloat() / (safeResolution - 1)
            val broad = (
                sin((nx * 1.15f + seed * 0.00007f) * Math.PI * 2).toFloat() +
                    cos((nz * 1.05f - seed * 0.00009f) * Math.PI * 2).toFloat()
                ) * 0.105f
            val diagonal = sin((nx * 2.2f + nz * 1.65f) * Math.PI * 2).toFloat() * 0.035f
            val detail = (
                sin((nx * 5.1f + nz * 2.7f + seed * 0.001f) * Math.PI).toFloat() *
                    cos((nz * 4.6f - nx * 1.8f) * Math.PI).toFloat()
                ) * 0.014f
            (0.34f + broad + diagonal + detail).coerceIn(0.08f, 0.72f)
        }
        return TerrainComponent(
            resolution = safeResolution,
            width = 180f,
            maxHeight = 10f,
            heights = heights,
            materialLayers = openWorldLayers,
            materialWeights = List(safeResolution * safeResolution * openWorldLayers.size) { point ->
                if (point % openWorldLayers.size == 0) 1f else 0f
            },
            autoTileRules = openWorldRules,
            seed = seed,
        ).applyAutoTile()
    }
}

fun TerrainComponent.applyBrush(brush: TerrainBrush): TerrainComponent {
    if (!brush.normalizedX.isFinite() || !brush.normalizedZ.isFinite()) return this
    val radius = brush.radius.coerceIn(0.005f, 1f)
    val strength = brush.strength.coerceIn(0f, 1f)
    val cx = brush.normalizedX.coerceIn(0f, 1f) * (resolution - 1)
    val cz = brush.normalizedZ.coerceIn(0f, 1f) * (resolution - 1)
    val radiusCells = max(1f, radius * (resolution - 1))
    val before = heights
    val updatedHeights = heights.toMutableList()
    val updatedWeights = materialWeights.toMutableList()
    val updatedMask = if (authoringMask.size == heights.size) {
        authoringMask.toMutableList()
    } else {
        MutableList(heights.size) { 1f }
    }
    val paintLayer = materialLayers.indexOfFirst { it.id == brush.materialLayerId }

    for (z in 0 until resolution) for (x in 0 until resolution) {
        val distance = sqrt((x - cx) * (x - cx) + (z - cz) * (z - cz))
        if (distance > radiusCells) continue
        val normalizedInfluence = (1f - distance / radiusCells).coerceIn(0f, 1f)
        val falloff = brush.falloff.evaluate(normalizedInfluence)
        val index = z * resolution + x
        val ignoresMask = brush.mode == TerrainBrushMode.MASK_PAINT || brush.mode == TerrainBrushMode.MASK_ERASE
        val amount = strength * falloff * if (ignoresMask) 1f else updatedMask[index]
        when (brush.mode) {
            TerrainBrushMode.RAISE -> updatedHeights[index] = (before[index] + amount * 0.08f).coerceIn(0f, 1f)
            TerrainBrushMode.LOWER -> updatedHeights[index] = (before[index] - amount * 0.08f).coerceIn(0f, 1f)
            TerrainBrushMode.FLATTEN -> updatedHeights[index] =
                before[index] + (brush.targetHeight.coerceIn(0f, 1f) - before[index]) * amount
            TerrainBrushMode.STAMP -> {
                val target = brush.targetHeight.coerceIn(0f, 1f)
                val stamp = target + (falloff - 0.5f) * strength * 0.18f
                updatedHeights[index] = before[index] + (stamp.coerceIn(0f, 1f) - before[index]) * amount
            }
            TerrainBrushMode.TERRACE -> {
                val steps = (5 + strength * 35f).toInt().coerceIn(5, 40)
                val snapped = floor(before[index] * steps + 0.5f) / steps
                updatedHeights[index] = before[index] + (snapped - before[index]) * amount
            }
            TerrainBrushMode.RIDGE -> {
                val ridge = (1f - distance / radiusCells).coerceIn(0f, 1f)
                updatedHeights[index] = (before[index] + ridge * ridge * amount * 0.12f).coerceIn(0f, 1f)
            }
            TerrainBrushMode.CANYON -> {
                val core = (1f - distance / radiusCells).coerceIn(0f, 1f)
                val cut = core * core * amount * 0.14f
                val rim = if (core in 0.08f..0.35f) amount * 0.018f else 0f
                updatedHeights[index] = (before[index] - cut + rim).coerceIn(0f, 1f)
            }
            TerrainBrushMode.ERODE -> {
                var total = 0f
                var count = 0
                for (oz in -1..1) for (ox in -1..1) {
                    val sx = (x + ox).coerceIn(0, resolution - 1)
                    val sz = (z + oz).coerceIn(0, resolution - 1)
                    total += before[sz * resolution + sx]
                    count++
                }
                val average = total / count
                val downhill = (before[index] - average).coerceAtLeast(0f)
                updatedHeights[index] = (before[index] + (average - before[index]) * amount * 0.55f - downhill * amount * 0.18f).coerceIn(0f, 1f)
            }
            TerrainBrushMode.SMOOTH -> {
                var total = 0f
                var count = 0
                for (oz in -1..1) for (ox in -1..1) {
                    val sx = (x + ox).coerceIn(0, resolution - 1)
                    val sz = (z + oz).coerceIn(0, resolution - 1)
                    total += before[sz * resolution + sx]
                    count++
                }
                updatedHeights[index] = before[index] + (total / count - before[index]) * amount
            }
            TerrainBrushMode.NOISE -> {
                val hash = sin((x * 12.9898 + z * 78.233 + seed) * 43758.5453).toFloat()
                val noise = (hash - floor(hash)) * 2f - 1f
                updatedHeights[index] = (before[index] + noise * amount * 0.045f).coerceIn(0f, 1f)
            }
            TerrainBrushMode.PAINT -> if (paintLayer >= 0) {
                val offset = index * materialLayers.size
                for (layer in materialLayers.indices) {
                    val target = if (layer == paintLayer) 1f else 0f
                    val old = updatedWeights.getOrElse(offset + layer) { if (layer == 0) 1f else 0f }
                    updatedWeights[offset + layer] = old + (target - old) * amount
                }
                normalizeWeights(updatedWeights, offset, materialLayers.size)
            }
            TerrainBrushMode.MASK_PAINT -> updatedMask[index] = (updatedMask[index] - strength * falloff).coerceIn(0f, 1f)
            TerrainBrushMode.MASK_ERASE -> updatedMask[index] = (updatedMask[index] + strength * falloff).coerceIn(0f, 1f)
        }
    }
    val persistedMask = if (updatedMask.all { it >= 0.999f }) emptyList() else updatedMask
    return copy(heights = updatedHeights, materialWeights = updatedWeights, authoringMask = persistedMask)
}

fun TerrainComponent.applyAutoTile(): TerrainComponent {
    val weights = MutableList(resolution * resolution * materialLayers.size) { 0f }
    for (z in 0 until resolution) for (x in 0 until resolution) {
        val height = heightAt(x, z)
        val dx = (heightAt(x + 1, z) - heightAt(x - 1, z)) * maxHeight
        val dz = (heightAt(x, z + 1) - heightAt(x, z - 1)) * maxHeight
        val cellSize = width / (resolution - 1)
        val slope = Math.toDegrees(kotlin.math.atan(sqrt(dx * dx + dz * dz) / (2f * cellSize)).toDouble()).toFloat()
        val rule = autoTileRules
            .filter { height in it.minNormalizedHeight..it.maxNormalizedHeight && slope in it.minSlopeDegrees..it.maxSlopeDegrees }
            .maxByOrNull(TerrainAutoTileRule::priority)
        val layer = materialLayers.indexOfFirst { it.id == rule?.materialLayerId }.coerceAtLeast(0)
        weights[(z * resolution + x) * materialLayers.size + layer] = 1f
    }
    return copy(materialWeights = weights)
}

private fun normalizeWeights(values: MutableList<Float>, offset: Int, count: Int) {
    val total = (0 until count).sumOf { values.getOrElse(offset + it) { 0f }.toDouble() }.toFloat()
    if (total <= 0f) return
    for (index in 0 until count) values[offset + index] = values[offset + index] / total
}
