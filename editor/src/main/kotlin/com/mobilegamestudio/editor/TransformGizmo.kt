package com.mobilegamestudio.editor

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.gestures.detectDragGestures
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.size
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Path
import androidx.compose.ui.graphics.StrokeCap
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.unit.dp
import kotlin.math.abs
import kotlin.math.hypot

/**
 * Touch-first transform gizmo. The handles deliberately live in a bounded
 * overlay so orbit/pan gestures continue to work in the rest of the viewport.
 */
@Composable
internal fun TransformGizmo(
    tool: EditorTool,
    onDelta: (TransformProperty, TransformAxis, Float) -> Unit,
    modifier: Modifier = Modifier,
) {
    var activeAxis by remember(tool) { mutableStateOf<TransformAxis?>(null) }
    val property = when (tool) {
        EditorTool.MOVE -> TransformProperty.POSITION
        EditorTool.ROTATE -> TransformProperty.ROTATION
        EditorTool.SCALE -> TransformProperty.SCALE
        EditorTool.SELECT -> return
    }
    Box(
        modifier = modifier
            .size(190.dp)
            .pointerInput(tool) {
                detectDragGestures(
                    onDragStart = { point ->
                        val center = Offset(size.width / 2f, size.height / 2f)
                        activeAxis = if (tool == EditorTool.ROTATE) {
                            val radius = hypot(point.x - center.x, point.y - center.y)
                            listOf(
                                TransformAxis.X to size.width * 0.19f,
                                TransformAxis.Y to size.width * 0.27f,
                                TransformAxis.Z to size.width * 0.35f,
                            ).minByOrNull { (_, ring) -> abs(radius - ring) }
                                ?.takeIf { (_, ring) -> abs(radius - ring) < 22f }
                                ?.first
                        } else {
                            pickLinearAxis(point, center, size.width.toFloat())
                        }
                    },
                    onDragCancel = { activeAxis = null },
                    onDragEnd = { activeAxis = null },
                    onDrag = { change, drag ->
                        val axis = activeAxis ?: return@detectDragGestures
                        change.consume()
                        val raw = when (axis) {
                            TransformAxis.X -> drag.x
                            TransformAxis.Y -> -drag.y
                            TransformAxis.Z -> (-drag.x + drag.y) * 0.5f
                        }
                        val factor = when (property) {
                            TransformProperty.POSITION -> 1f / 54f
                            TransformProperty.ROTATION -> 1f / 2.4f
                            TransformProperty.SCALE -> 1f / 120f
                            else -> 1f
                        }
                        onDelta(property, axis, raw * factor)
                    },
                )
            },
        contentAlignment = Alignment.Center,
    ) {
        Canvas(Modifier.matchParentSize()) {
            val center = Offset(size.width / 2f, size.height / 2f)
            when (tool) {
                EditorTool.MOVE -> drawMoveGizmo(center, activeAxis)
                EditorTool.SCALE -> drawScaleGizmo(center, activeAxis)
                EditorTool.ROTATE -> drawRotateGizmo(center, activeAxis)
                EditorTool.SELECT -> Unit
            }
        }
    }
}

private fun androidx.compose.ui.graphics.drawscope.DrawScope.drawMoveGizmo(
    center: Offset,
    activeAxis: TransformAxis?,
) {
    drawAxisLine(center, Offset(center.x + size.width * 0.31f, center.y), AxisX, activeAxis == TransformAxis.X)
    drawAxisLine(center, Offset(center.x, center.y - size.width * 0.31f), AxisY, activeAxis == TransformAxis.Y)
    drawAxisLine(
        center,
        Offset(center.x - size.width * 0.23f, center.y + size.width * 0.23f),
        AxisZ,
        activeAxis == TransformAxis.Z,
    )
    listOf(
        Triple(TransformAxis.X, Offset(center.x + size.width * 0.31f, center.y), AxisX),
        Triple(TransformAxis.Y, Offset(center.x, center.y - size.width * 0.31f), AxisY),
        Triple(TransformAxis.Z, Offset(center.x - size.width * 0.23f, center.y + size.width * 0.23f), AxisZ),
    ).forEach { (axis, tip, color) ->
        val direction = (tip - center)
        val length = hypot(direction.x, direction.y).coerceAtLeast(1f)
        val unit = Offset(direction.x / length, direction.y / length)
        val normal = Offset(-unit.y, unit.x)
        val path = Path().apply {
            moveTo(tip.x, tip.y)
            lineTo(tip.x - unit.x * 19f + normal.x * 9f, tip.y - unit.y * 19f + normal.y * 9f)
            lineTo(tip.x - unit.x * 19f - normal.x * 9f, tip.y - unit.y * 19f - normal.y * 9f)
            close()
        }
        drawPath(path, if (axis == activeAxis) Color.White else color)
    }
    drawCircle(AccentBright, radius = 7f, center = center)
}

private fun androidx.compose.ui.graphics.drawscope.DrawScope.drawScaleGizmo(
    center: Offset,
    activeAxis: TransformAxis?,
) {
    val handles = listOf(
        Triple(TransformAxis.X, Offset(center.x + size.width * 0.30f, center.y), AxisX),
        Triple(TransformAxis.Y, Offset(center.x, center.y - size.width * 0.30f), AxisY),
        Triple(TransformAxis.Z, Offset(center.x - size.width * 0.22f, center.y + size.width * 0.22f), AxisZ),
    )
    handles.forEach { (axis, tip, color) ->
        drawAxisLine(center, tip, color, activeAxis == axis)
        drawRect(
            color = if (activeAxis == axis) Color.White else color,
            topLeft = tip - Offset(9f, 9f),
            size = Size(18f, 18f),
        )
    }
    drawRect(AccentBright, center - Offset(7f, 7f), Size(14f, 14f))
}

private fun androidx.compose.ui.graphics.drawscope.DrawScope.drawRotateGizmo(
    center: Offset,
    activeAxis: TransformAxis?,
) {
    listOf(
        Triple(TransformAxis.X, size.width * 0.19f, AxisX),
        Triple(TransformAxis.Y, size.width * 0.27f, AxisY),
        Triple(TransformAxis.Z, size.width * 0.35f, AxisZ),
    ).forEach { (axis, radius, color) ->
        drawCircle(
            color = if (activeAxis == axis) Color.White else color,
            radius = radius,
            center = center,
            style = Stroke(width = if (activeAxis == axis) 7f else 5f),
        )
    }
    drawCircle(AccentBright, radius = 6f, center = center)
}

private fun androidx.compose.ui.graphics.drawscope.DrawScope.drawAxisLine(
    start: Offset,
    end: Offset,
    color: Color,
    active: Boolean,
) {
    drawLine(
        color = if (active) Color.White else color,
        start = start,
        end = end,
        strokeWidth = if (active) 8f else 6f,
        cap = StrokeCap.Round,
    )
}

private fun pickLinearAxis(point: Offset, center: Offset, width: Float): TransformAxis? {
    val candidates = listOf(
        TransformAxis.X to distanceToSegment(point, center, Offset(center.x + width * 0.31f, center.y)),
        TransformAxis.Y to distanceToSegment(point, center, Offset(center.x, center.y - width * 0.31f)),
        TransformAxis.Z to distanceToSegment(
            point,
            center,
            Offset(center.x - width * 0.23f, center.y + width * 0.23f),
        ),
    )
    return candidates.minByOrNull { it.second }?.takeIf { it.second < 24f }?.first
}

private fun distanceToSegment(point: Offset, start: Offset, end: Offset): Float {
    val segment = end - start
    val lengthSquared = segment.x * segment.x + segment.y * segment.y
    if (lengthSquared == 0f) return hypot(point.x - start.x, point.y - start.y)
    val projection = (
        ((point.x - start.x) * segment.x + (point.y - start.y) * segment.y) / lengthSquared
        ).coerceIn(0f, 1f)
    val nearest = start + segment * projection
    return hypot(point.x - nearest.x, point.y - nearest.y)
}
