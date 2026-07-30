package com.mobilegamestudio.editor

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.gestures.awaitEachGesture
import androidx.compose.foundation.gestures.awaitFirstDown
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.StrokeCap
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.input.pointer.pointerInput
import com.mobilegamestudio.core.model.TerrainBrushMode
import kotlin.math.ceil

/**
 * Full viewport authoring layer used only while Terrain mode is active.
 *
 * One finger paints/sculpts. Camera navigation is intentionally a separate
 * mode, which prevents the camera and the brush from competing for the same
 * gesture on mobile. A complete drag becomes one undoable stroke in the view
 * model; this overlay only streams evenly-spaced sample points.
 */
@Composable
internal fun TerrainViewportAuthoringOverlay(
    enabled: Boolean,
    brushMode: TerrainBrushMode,
    normalizedRadius: Float,
    onStrokeBegin: () -> Unit,
    onStrokePoint: (Float, Float) -> Unit,
    onStrokeEnd: (cancelled: Boolean) -> Unit,
    modifier: Modifier = Modifier,
) {
    if (!enabled) return

    var cursor by remember { mutableStateOf<Offset?>(null) }
    var drawing by remember { mutableStateOf(false) }

    Box(
        modifier = modifier
            .fillMaxSize()
            .pointerInput(brushMode, normalizedRadius) {
                awaitEachGesture {
                    val down = awaitFirstDown(requireUnconsumed = false)
                    drawing = true
                    cursor = down.position
                    onStrokeBegin()

                    fun emit(position: Offset) {
                        val nx = (position.x / size.width.toFloat()).coerceIn(0f, 1f)
                        val nz = (position.y / size.height.toFloat()).coerceIn(0f, 1f)
                        onStrokePoint(nx, nz)
                    }

                    emit(down.position)
                    var previous = down.position
                    var cancelled = false
                    while (true) {
                        val event = awaitPointerEvent()
                        val change = event.changes.firstOrNull { it.id == down.id }
                        if (change == null) {
                            cancelled = true
                            break
                        }
                        if (!change.pressed) break

                        val current = change.position
                        cursor = current
                        val delta = current - previous
                        val distance = delta.getDistance()
                        val radiusPixels = minOf(size.width, size.height) * normalizedRadius.coerceIn(0.01f, 0.5f)
                        val spacing = (radiusPixels * 0.18f).coerceIn(2.5f, 24f)
                        val steps = ceil(distance / spacing).toInt().coerceAtLeast(1)
                        for (step in 1..steps) {
                            emit(previous + delta * (step.toFloat() / steps.toFloat()))
                        }
                        previous = current
                        change.consume()
                    }
                    drawing = false
                    onStrokeEnd(cancelled)
                }
            },
    ) {
        Canvas(Modifier.fillMaxSize()) {
            val center = cursor ?: return@Canvas
            val radius = size.minDimension * normalizedRadius.coerceIn(0.01f, 0.5f)
            val color = when (brushMode) {
                TerrainBrushMode.LOWER,
                TerrainBrushMode.CANYON,
                -> Color(0xFFFF6B6B)
                TerrainBrushMode.SMOOTH -> Color(0xFF70D6FF)
                TerrainBrushMode.FLATTEN -> Color(0xFFFFD166)
                TerrainBrushMode.PAINT -> Color(0xFF7BE495)
                else -> Color(0xFFB98AFF)
            }
            drawCircle(
                color = Color.Black.copy(alpha = 0.5f),
                radius = radius + 2f,
                center = center,
                style = Stroke(width = 5f),
            )
            drawCircle(
                color = if (drawing) Color.White else color,
                radius = radius,
                center = center,
                style = Stroke(width = if (drawing) 4f else 3f),
            )
            drawCircle(
                color = color.copy(alpha = 0.22f),
                radius = radius,
                center = center,
            )
            drawLine(
                color = color,
                start = Offset(center.x - 8f, center.y),
                end = Offset(center.x + 8f, center.y),
                strokeWidth = 2f,
                cap = StrokeCap.Round,
            )
            drawLine(
                color = color,
                start = Offset(center.x, center.y - 8f),
                end = Offset(center.x, center.y + 8f),
                strokeWidth = 2f,
                cap = StrokeCap.Round,
            )
        }
    }
}
