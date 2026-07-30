package com.mobilegamestudio.core.model

import kotlin.math.abs
import kotlin.math.floor
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.min
import kotlin.math.pow
import kotlin.math.sin
import kotlin.math.sqrt
import kotlinx.serialization.Serializable

/**
 * Non-destructive authoring operations used by the mobile world editor.
 *
 * The implementation deliberately stays CPU-only and deterministic so the same
 * scene produces the same terrain on every supported Android device. Operations
 * are baked into the persisted heightfield only when the user applies them.
 */
@Serializable
enum class TerrainProcessMode {
    CONTINENT,
    MOUNTAIN_RANGES,
    HYDRAULIC_EROSION,
    THERMAL_EROSION,
    RIVER_NETWORK,
    TERRACE,
    GEOLOGICAL_STRATA,
    NORMALIZE,
    SMOOTH,
    INVERT,
}

data class TerrainProcessSettings(
    val strength: Float = 0.5f,
    val iterations: Int = 12,
    val scale: Float = 0.5f,
    val seed: Int = 73021,
)

data class TerrainHeightmapData(
    val resolution: Int,
    val heights: List<Float>,
)

fun TerrainComponent.authoringMaskAt(x: Int, z: Int): Float {
    if (authoringMask.isEmpty()) return 1f
    val index = z.coerceIn(0, resolution - 1) * resolution + x.coerceIn(0, resolution - 1)
    return authoringMask.getOrElse(index) { 1f }.coerceIn(0f, 1f)
}

fun TerrainComponent.withImportedHeightmap(data: TerrainHeightmapData): TerrainComponent {
    val safeResolution = data.resolution.coerceIn(9, 257)
    if (data.heights.size != safeResolution * safeResolution) return this
    val normalized = normalizeValues(data.heights)
    val weights = List(normalized.size * materialLayers.size) { index ->
        if (index % materialLayers.size == 0) 1f else 0f
    }
    return copy(
        resolution = safeResolution,
        heights = normalized,
        materialWeights = weights,
        authoringMask = emptyList(),
    ).applyAutoTile()
}

fun TerrainComponent.applyTerrainProcess(
    mode: TerrainProcessMode,
    settings: TerrainProcessSettings,
): TerrainComponent {
    val strength = settings.strength.coerceIn(0.01f, 1f)
    val iterations = settings.iterations.coerceIn(1, 96)
    val scale = settings.scale.coerceIn(0.01f, 1f)
    val source = heights.toFloatArray()
    val processed = when (mode) {
        TerrainProcessMode.CONTINENT -> generateContinent(source, resolution, strength, scale, settings.seed)
        TerrainProcessMode.MOUNTAIN_RANGES -> generateMountainRanges(source, resolution, strength, scale, settings.seed)
        TerrainProcessMode.HYDRAULIC_EROSION -> hydraulicErosion(source, resolution, strength, iterations, ::maskByIndex)
        TerrainProcessMode.THERMAL_EROSION -> thermalErosion(source, resolution, strength, iterations, ::maskByIndex)
        TerrainProcessMode.RIVER_NETWORK -> carveRiverNetwork(source, resolution, strength, scale, ::maskByIndex)
        TerrainProcessMode.TERRACE -> terrace(source, strength, scale, ::maskByIndex)
        TerrainProcessMode.GEOLOGICAL_STRATA -> geologicalStrata(source, resolution, strength, scale, settings.seed, ::maskByIndex)
        TerrainProcessMode.NORMALIZE -> normalizeValues(source.asList()).toFloatArray()
        TerrainProcessMode.SMOOTH -> smooth(source, resolution, strength, iterations, ::maskByIndex)
        TerrainProcessMode.INVERT -> FloatArray(source.size) { index ->
            val mask = maskByIndex(index)
            source[index] + ((1f - source[index]) - source[index]) * strength * mask
        }
    }
    return copy(heights = processed.map { it.coerceIn(0f, 1f) }).applyAutoTile()
}

private fun TerrainComponent.maskByIndex(index: Int): Float =
    if (authoringMask.isEmpty()) 1f else authoringMask.getOrElse(index) { 1f }.coerceIn(0f, 1f)

private fun generateContinent(
    source: FloatArray,
    resolution: Int,
    strength: Float,
    scale: Float,
    seed: Int,
): FloatArray = FloatArray(source.size) { index ->
    val x = index % resolution
    val z = index / resolution
    val nx = x.toFloat() / (resolution - 1)
    val nz = z.toFloat() / (resolution - 1)
    val dx = nx * 2f - 1f
    val dz = nz * 2f - 1f
    val radial = (1f - sqrt(dx * dx + dz * dz).coerceIn(0f, 1.35f) / 1.35f)
        .coerceIn(0f, 1f)
        .pow(0.75f + scale * 1.8f)
    val broad = fractalNoise(nx * (1.2f + scale * 3f), nz * (1.2f + scale * 3f), seed, 5)
    val ridged = 1f - abs(fractalNoise(nx * 7f, nz * 7f, seed xor 0x51A3, 3) * 2f - 1f)
    val generated = (radial * 0.72f + broad * 0.22f + ridged * radial * 0.16f).coerceIn(0f, 1f)
    source[index] + (generated - source[index]) * strength
}

private fun generateMountainRanges(
    source: FloatArray,
    resolution: Int,
    strength: Float,
    scale: Float,
    seed: Int,
): FloatArray = FloatArray(source.size) { index ->
    val x = index % resolution
    val z = index / resolution
    val nx = x.toFloat() / (resolution - 1)
    val nz = z.toFloat() / (resolution - 1)
    val frequency = 2.5f + scale * 11f
    val warpX = fractalNoise(nx * 2.1f, nz * 2.1f, seed xor 0x2231, 3) - 0.5f
    val warpZ = fractalNoise(nx * 2.1f, nz * 2.1f, seed xor 0x779B, 3) - 0.5f
    val n = fractalNoise((nx + warpX * 0.24f) * frequency, (nz + warpZ * 0.24f) * frequency, seed, 5)
    val ridge = (1f - abs(n * 2f - 1f)).pow(2.2f)
    val secondary = (1f - abs(fractalNoise(nx * frequency * 2f, nz * frequency * 2f, seed + 91, 3) * 2f - 1f))
    val generated = (source[index] * 0.58f + ridge * 0.34f + secondary * 0.08f).coerceIn(0f, 1f)
    source[index] + (generated - source[index]) * strength
}

private fun hydraulicErosion(
    source: FloatArray,
    resolution: Int,
    strength: Float,
    iterations: Int,
    mask: (Int) -> Float,
): FloatArray {
    var current = source.copyOf()
    repeat(iterations) {
        val delta = FloatArray(current.size)
        for (z in 1 until resolution - 1) for (x in 1 until resolution - 1) {
            val index = z * resolution + x
            var lowest = index
            var lowestHeight = current[index]
            for (oz in -1..1) for (ox in -1..1) {
                if (ox == 0 && oz == 0) continue
                val candidate = (z + oz) * resolution + x + ox
                if (current[candidate] < lowestHeight) {
                    lowest = candidate
                    lowestHeight = current[candidate]
                }
            }
            if (lowest == index) continue
            val slope = current[index] - lowestHeight
            val transport = min(slope * 0.34f, 0.025f + strength * 0.035f) * mask(index)
            val eroded = transport * (0.35f + strength * 0.55f)
            delta[index] -= eroded
            delta[lowest] += eroded * 0.72f
        }
        current = FloatArray(current.size) { i -> (current[i] + delta[i]).coerceIn(0f, 1f) }
    }
    return current
}

private fun thermalErosion(
    source: FloatArray,
    resolution: Int,
    strength: Float,
    iterations: Int,
    mask: (Int) -> Float,
): FloatArray {
    var current = source.copyOf()
    val talus = 0.012f + (1f - strength) * 0.05f
    repeat(iterations) {
        val delta = FloatArray(current.size)
        for (z in 1 until resolution - 1) for (x in 1 until resolution - 1) {
            val index = z * resolution + x
            val neighbors = intArrayOf(index - 1, index + 1, index - resolution, index + resolution)
            val lowest = neighbors.minByOrNull { current[it] } ?: continue
            val difference = current[index] - current[lowest]
            if (difference <= talus) continue
            val moved = (difference - talus) * 0.22f * strength * mask(index)
            delta[index] -= moved
            delta[lowest] += moved
        }
        current = FloatArray(current.size) { i -> (current[i] + delta[i]).coerceIn(0f, 1f) }
    }
    return current
}

private fun carveRiverNetwork(
    source: FloatArray,
    resolution: Int,
    strength: Float,
    scale: Float,
    mask: (Int) -> Float,
): FloatArray {
    val accumulation = FloatArray(source.size) { 1f }
    val order = source.indices.sortedByDescending { source[it] }
    val downstream = IntArray(source.size) { it }
    for (index in source.indices) {
        val x = index % resolution
        val z = index / resolution
        var lowest = index
        var lowestHeight = source[index]
        for (oz in -1..1) for (ox in -1..1) {
            if (ox == 0 && oz == 0) continue
            val sx = x + ox
            val sz = z + oz
            if (sx !in 0 until resolution || sz !in 0 until resolution) continue
            val candidate = sz * resolution + sx
            if (source[candidate] < lowestHeight) {
                lowest = candidate
                lowestHeight = source[candidate]
            }
        }
        downstream[index] = lowest
    }
    order.forEach { index ->
        val target = downstream[index]
        if (target != index) accumulation[target] += accumulation[index]
    }
    val maximum = accumulation.maxOrNull()?.coerceAtLeast(2f) ?: 2f
    val threshold = 0.06f + (1f - scale) * 0.18f
    return FloatArray(source.size) { index ->
        val flow = (ln(accumulation[index] + 1f) / ln(maximum + 1f)).coerceIn(0f, 1f)
        val channel = ((flow - threshold) / (1f - threshold)).coerceIn(0f, 1f).pow(1.6f)
        (source[index] - channel * (0.025f + strength * 0.11f) * mask(index)).coerceIn(0f, 1f)
    }
}

private fun terrace(
    source: FloatArray,
    strength: Float,
    scale: Float,
    mask: (Int) -> Float,
): FloatArray {
    val steps = (4 + scale * 44).toInt().coerceIn(4, 48)
    return FloatArray(source.size) { index ->
        val value = source[index]
        val snapped = floor(value * steps + 0.5f) / steps
        value + (snapped - value) * strength * mask(index)
    }
}

private fun geologicalStrata(
    source: FloatArray,
    resolution: Int,
    strength: Float,
    scale: Float,
    seed: Int,
    mask: (Int) -> Float,
): FloatArray = FloatArray(source.size) { index ->
    val x = index % resolution
    val z = index / resolution
    val nx = x.toFloat() / (resolution - 1)
    val nz = z.toFloat() / (resolution - 1)
    val bands = 8f + scale * 56f
    val distortion = fractalNoise(nx * 5f, nz * 5f, seed, 3) * 1.8f
    val layer = sin((source[index] * bands + distortion) * Math.PI).toFloat()
    (source[index] + layer * 0.018f * strength * mask(index)).coerceIn(0f, 1f)
}

private fun smooth(
    source: FloatArray,
    resolution: Int,
    strength: Float,
    iterations: Int,
    mask: (Int) -> Float,
): FloatArray {
    var current = source.copyOf()
    repeat(iterations.coerceAtMost(32)) {
        val next = current.copyOf()
        for (z in 1 until resolution - 1) for (x in 1 until resolution - 1) {
            val index = z * resolution + x
            var total = 0f
            var count = 0
            for (oz in -1..1) for (ox in -1..1) {
                total += current[(z + oz) * resolution + x + ox]
                count++
            }
            next[index] = current[index] + (total / count - current[index]) * strength * 0.55f * mask(index)
        }
        current = next
    }
    return current
}

private fun normalizeValues(values: List<Float>): List<Float> {
    if (values.isEmpty()) return values
    val minimum = values.minOrNull() ?: 0f
    val maximum = values.maxOrNull() ?: 1f
    val range = (maximum - minimum).coerceAtLeast(0.000001f)
    return values.map { ((it - minimum) / range).coerceIn(0f, 1f) }
}

private fun fractalNoise(x: Float, z: Float, seed: Int, octaves: Int): Float {
    var frequency = 1f
    var amplitude = 1f
    var total = 0f
    var normalization = 0f
    repeat(octaves) {
        total += valueNoise(x * frequency, z * frequency, seed + it * 977) * amplitude
        normalization += amplitude
        frequency *= 2.03f
        amplitude *= 0.5f
    }
    return (total / normalization.coerceAtLeast(0.0001f)).coerceIn(0f, 1f)
}

private fun valueNoise(x: Float, z: Float, seed: Int): Float {
    val x0 = floor(x).toInt()
    val z0 = floor(z).toInt()
    val tx = smoothStep(x - x0)
    val tz = smoothStep(z - z0)
    val a = hash01(x0, z0, seed)
    val b = hash01(x0 + 1, z0, seed)
    val c = hash01(x0, z0 + 1, seed)
    val d = hash01(x0 + 1, z0 + 1, seed)
    val top = a + (b - a) * tx
    val bottom = c + (d - c) * tx
    return top + (bottom - top) * tz
}

private fun smoothStep(value: Float): Float = value * value * (3f - 2f * value)

private fun hash01(x: Int, z: Int, seed: Int): Float {
    var value = x * 374761393 + z * 668265263 + seed * -1640531527
    value = (value xor (value ushr 13)) * 1274126177
    value = value xor (value ushr 16)
    return (value and 0x7FFFFFFF) / Int.MAX_VALUE.toFloat()
}
