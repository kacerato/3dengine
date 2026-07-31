package com.mobilegamestudio.editor

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.gestures.detectDragGestures
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.mobilegamestudio.core.model.CameraComponent
import com.mobilegamestudio.core.model.DirectionalLightComponent
import com.mobilegamestudio.core.model.EditorMode
import com.mobilegamestudio.core.model.TouchButtonComponent
import com.mobilegamestudio.core.model.VirtualJoystickComponent
import com.mobilegamestudio.runtime.EditorCameraPreset
import com.mobilegamestudio.runtime.RuntimeSceneViewport
import java.io.File

@Composable
internal fun SceneViewport(
    state: WorkspaceUiState,
    resolveAsset: (String) -> File?,
    onObjectSelected: (String?) -> Unit,
    onTransformDrag: (Float, Float) -> Unit,
    onTransformChange: (TransformProperty, TransformAxis, Float) -> Unit = { _, _, _ -> },
    onDiagnostic: (String) -> Unit,
    onPreviewAction: (String) -> Unit,
    editorChromeVisible: Boolean = false,
    terrainAuthoringEnabled: Boolean = false,
    terrainTopDownCamera: Boolean = false,
    terrainBrushRadius: Float = 0.12f,
    onTerrainStrokeBegin: () -> Unit = {},
    onTerrainStrokePoint: (Float, Float) -> Unit = { _, _ -> },
    onTerrainStrokeEnd: (Boolean) -> Unit = {},
    modifier: Modifier = Modifier,
) {
    val document = state.playDocument ?: state.sceneDocument ?: return
    val mode = if (state.isPreviewRunning) EditorMode.PLAY else EditorMode.EDITOR
    val selectedObject = state.selectedObject
    val vehicleControlled = document.objects.any { "runtime-controlled" in it.tags }
    val touchButtons = document.objects.flatMap { item ->
        if ("vehicle-only" in item.tags && !vehicleControlled) emptyList()
        else item.components.filterIsInstance<TouchButtonComponent>()
    }
    val joysticks = document.objects.flatMap { item ->
        item.components.filterIsInstance<VirtualJoystickComponent>()
    }
    val sceneMarkers = emptyList<Triple<String, String, String>>()
    var editorCameraPreset by remember(document.sceneId) { mutableStateOf<EditorCameraPreset?>(null) }
    var editorCameraCommandToken by remember(document.sceneId) { mutableIntStateOf(0) }
    fun requestCamera(preset: EditorCameraPreset) {
        editorCameraPreset = preset
        editorCameraCommandToken += 1
    }

    Box(modifier = modifier) {
        RuntimeSceneViewport(
            document = document,
            selectedObjectId = state.selectedObjectId.takeUnless { state.isPreviewRunning },
            mode = mode,
            resolveAsset = resolveAsset,
            onObjectSelected = onObjectSelected,
            transformGesturesEnabled = false,
            onTransformDrag = onTransformDrag,
            editorCameraPreset = editorCameraPreset,
            editorCameraCommandToken = editorCameraCommandToken,
            terrainTopDownCamera = terrainTopDownCamera,
            onDiagnostic = onDiagnostic,
            modifier = Modifier.matchParentSize(),
        )

        TerrainViewportAuthoringOverlay(
            enabled = !state.isPreviewRunning && terrainAuthoringEnabled,
            brushMode = state.terrainTool.mode,
            normalizedRadius = terrainBrushRadius,
            onStrokeBegin = onTerrainStrokeBegin,
            onStrokePoint = onTerrainStrokePoint,
            onStrokeEnd = onTerrainStrokeEnd,
            modifier = Modifier.matchParentSize(),
        )

        if (!state.isPreviewRunning) {
            EditorCameraDock(
                onHome = { requestCamera(EditorCameraPreset.HOME) },
                onTop = { requestCamera(EditorCameraPreset.TOP) },
                onFront = { requestCamera(EditorCameraPreset.FRONT) },
                onRight = { requestCamera(EditorCameraPreset.RIGHT) },
                onFocus = { requestCamera(EditorCameraPreset.FOCUS_SELECTION) },
                focusEnabled = state.selectedObjectId != null,
                modifier = Modifier.align(Alignment.TopEnd).padding(10.dp),
            )
        }

        if (editorChromeVisible && !terrainAuthoringEnabled) {
            Row(
                modifier = Modifier
                    .align(Alignment.TopStart)
                    .padding(10.dp)
                    .background(Color(0xCC181C20), RoundedCornerShape(4.dp))
                    .padding(horizontal = 9.dp, vertical = 6.dp),
            ) {
                Text(
                    if (state.isPreviewRunning) {
                        "● PLAY ${"%.1f".format(state.previewSeconds)}s"
                    } else {
                        "PERSPECTIVA · FILAMENT"
                    },
                    color = if (state.isPreviewRunning) Positive else SecondaryText,
                    fontSize = 9.sp,
                    letterSpacing = 0.7.sp,
                )
                if (!state.isPreviewRunning && selectedObject != null) {
                    Text(
                        "  ·  SELECIONADO: ${selectedObject.name}",
                        color = Accent,
                        fontSize = 9.sp,
                        maxLines = 1,
                    )
                }
            }
        }

        if (sceneMarkers.isNotEmpty()) {
            Row(
                modifier = Modifier
                    .align(Alignment.TopEnd)
                    .padding(10.dp),
            ) {
                sceneMarkers.forEach { (id, glyph, name) ->
                    Button(
                        onClick = { onObjectSelected(id) },
                        modifier = Modifier.padding(start = 5.dp),
                        colors = ButtonDefaults.buttonColors(
                            containerColor = Color(0xD91B1821),
                            contentColor = if (glyph == "SUN") Color(0xFFF0C85A) else Color(0xFF71A7E8),
                        ),
                    ) {
                        Text("$glyph  $name", fontSize = 8.sp, maxLines = 1)
                    }
                }
            }
        }

        if (state.isPreviewRunning && touchButtons.isNotEmpty()) {
            Row(
                modifier = Modifier
                    .align(Alignment.BottomEnd)
                    .padding(18.dp),
            ) {
                touchButtons.forEach { button ->
                    Button(
                        onClick = { onPreviewAction(button.eventName) },
                        colors = ButtonDefaults.buttonColors(
                            containerColor = Accent,
                            contentColor = Color(0xFF241B0C),
                        ),
                    ) {
                        Text(
                            if (button.eventName == "interact.vehicle") {
                                if (vehicleControlled) "SAIR" else "ENTRAR"
                            } else button.label,
                        )
                    }
                }
            }
        }

        if (state.isPreviewRunning) {
            Box(
                Modifier
                    .align(Alignment.CenterEnd)
                    .fillMaxWidth(0.55f)
                    .fillMaxHeight()
                    .padding(bottom = 120.dp)
                    .pointerInput(document.sceneId) {
                        detectDragGestures { change, amount ->
                            change.consume()
                            onPreviewAction("look.delta:${-amount.x * 0.18f}:${amount.y * 0.18f}")
                        }
                    },
            )
        }

        if (state.isPreviewRunning && joysticks.isNotEmpty()) {
            val joystick = joysticks.first()
            var joystickKnob by remember(joystick.componentId) { mutableStateOf(Offset.Zero) }
            Canvas(
                modifier = Modifier
                    .align(Alignment.BottomStart)
                    .padding(18.dp)
                    .size(132.dp)
                    .pointerInput(joystick.componentId) {
                        detectDragGestures(
                            onDragEnd = {
                                joystickKnob = Offset.Zero
                                onPreviewAction("${joystick.eventPrefix}.axis:0:0")
                            },
                            onDragCancel = {
                                joystickKnob = Offset.Zero
                                onPreviewAction("${joystick.eventPrefix}.axis:0:0")
                            },
                        ) { change, _ ->
                            change.consume()
                            val center = Offset(size.width / 2f, size.height / 2f)
                            val delta = change.position - center
                            val radius = minOf(size.width, size.height) / 2f
                            val length = delta.getDistance()
                            val visualRadius = radius * 0.62f
                            joystickKnob = if (length > visualRadius && length > 0f) {
                                delta * (visualRadius / length)
                            } else {
                                delta
                            }
                            onPreviewAction(
                                "${joystick.eventPrefix}.axis:" +
                                    "${(delta.x / radius).coerceIn(-1f, 1f)}:" +
                                    "${(-delta.y / radius).coerceIn(-1f, 1f)}",
                            )
                        }
                    },
            ) {
                drawCircle(Color(0x662D2638), radius = size.minDimension / 2f)
                drawCircle(
                    Color(0xCC9D57F5),
                    radius = size.minDimension / 5f,
                    center = center + joystickKnob,
                )
                drawCircle(
                    Color(0xFFB98AFF),
                    radius = size.minDimension / 2f,
                    style = androidx.compose.ui.graphics.drawscope.Stroke(3f),
                )
            }
        }

        if (!state.isPreviewRunning && !terrainAuthoringEnabled && selectedObject != null && state.activeTool != EditorTool.SELECT) {
            ViewportTransformDock(
                tool = state.activeTool,
                objectName = selectedObject.name,
                onFreeDrag = onTransformDrag,
                onAxisDelta = onTransformChange,
                modifier = Modifier
                    .align(Alignment.BottomCenter)
                    .padding(bottom = 12.dp),
            )
        }
    }
}


@Composable
private fun EditorCameraDock(
    onHome: () -> Unit,
    onTop: () -> Unit,
    onFront: () -> Unit,
    onRight: () -> Unit,
    onFocus: () -> Unit,
    focusEnabled: Boolean,
    modifier: Modifier = Modifier,
) {
    Row(
        modifier = modifier
            .background(Color(0xD916191E), RoundedCornerShape(14.dp))
            .padding(4.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        listOf(
            Triple("⌂", "Início", onHome),
            Triple("T", "Topo", onTop),
            Triple("F", "Frente", onFront),
            Triple("R", "Direita", onRight),
        ).forEach { (label, description, action) ->
            Button(
                onClick = action,
                modifier = Modifier.padding(horizontal = 2.dp).size(34.dp),
                contentPadding = androidx.compose.foundation.layout.PaddingValues(0.dp),
                shape = RoundedCornerShape(10.dp),
                colors = ButtonDefaults.buttonColors(
                    containerColor = Color(0xFF252B33),
                    contentColor = Color(0xFFD9DDE5),
                ),
            ) { Text(label, fontSize = 8.sp) }
        }
        Button(
            onClick = onFocus,
            enabled = focusEnabled,
            modifier = Modifier.padding(horizontal = 2.dp).size(34.dp),
            contentPadding = androidx.compose.foundation.layout.PaddingValues(0.dp),
            shape = RoundedCornerShape(10.dp),
            colors = ButtonDefaults.buttonColors(
                containerColor = Color(0xFF33264A),
                contentColor = Color(0xFFB98AFF),
                disabledContainerColor = Color(0xFF20242A),
                disabledContentColor = Color(0xFF666D77),
            ),
        ) { Text("◎", fontSize = 10.sp) }
    }
}

@Composable
private fun ViewportTransformDock(
    tool: EditorTool,
    objectName: String,
    onFreeDrag: (Float, Float) -> Unit,
    onAxisDelta: (TransformProperty, TransformAxis, Float) -> Unit,
    modifier: Modifier = Modifier,
) {
    var axis by remember(tool, objectName) { mutableStateOf(TransformAxis.X) }
    val property = when (tool) {
        EditorTool.MOVE -> TransformProperty.POSITION
        EditorTool.ROTATE -> TransformProperty.ROTATION
        EditorTool.SCALE -> TransformProperty.SCALE
        EditorTool.SELECT -> TransformProperty.POSITION
    }
    val step = when (tool) {
        EditorTool.MOVE -> 0.1f
        EditorTool.ROTATE -> 5f
        EditorTool.SCALE -> 0.05f
        EditorTool.SELECT -> 0f
    }
    Row(
        modifier = modifier
            .background(Color(0xE616191E), RoundedCornerShape(18.dp))
            .padding(horizontal = 8.dp, vertical = 7.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Text(
            text = objectName.take(18),
            color = Color(0xFFE8EAF0),
            fontSize = 8.sp,
            maxLines = 1,
            modifier = Modifier.padding(horizontal = 5.dp),
        )
        TransformAxis.entries.forEach { candidate ->
            Button(
                onClick = { axis = candidate },
                modifier = Modifier.padding(horizontal = 2.dp).size(36.dp),
                contentPadding = androidx.compose.foundation.layout.PaddingValues(0.dp),
                shape = RoundedCornerShape(12.dp),
                colors = ButtonDefaults.buttonColors(
                    containerColor = if (axis == candidate) Color(0xFF3D5468) else Color(0xFF242931),
                    contentColor = when (candidate) {
                        TransformAxis.X -> Color(0xFFE16F74)
                        TransformAxis.Y -> Color(0xFF6FC78C)
                        TransformAxis.Z -> Color(0xFF69A6E8)
                    },
                ),
            ) { Text(candidate.name, fontSize = 10.sp) }
        }
        Button(
            onClick = { onAxisDelta(property, axis, -step) },
            modifier = Modifier.padding(start = 4.dp).size(36.dp),
            contentPadding = androidx.compose.foundation.layout.PaddingValues(0.dp),
            shape = RoundedCornerShape(12.dp),
            colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF242931)),
        ) { Text("−") }
        Box(
            modifier = Modifier
                .padding(horizontal = 4.dp)
                .size(width = 86.dp, height = 36.dp)
                .background(Color(0xFF20252C), RoundedCornerShape(12.dp))
                .pointerInput(tool, objectName, axis) {
                    detectDragGestures { change, amount ->
                        change.consume()
                        val dominant = if (kotlin.math.abs(amount.x) >= kotlin.math.abs(amount.y)) amount.x else -amount.y
                        val delta = when (tool) {
                            EditorTool.MOVE -> dominant / 120f
                            EditorTool.ROTATE -> dominant / 3.5f
                            EditorTool.SCALE -> dominant / 260f
                            EditorTool.SELECT -> 0f
                        }
                        if (delta != 0f) onAxisDelta(property, axis, delta)
                    }
                },
            contentAlignment = Alignment.Center,
        ) {
            Text("ARRASTE NO EIXO", color = Color(0xFFADB3BD), fontSize = 6.5.sp)
        }
        Button(
            onClick = { onAxisDelta(property, axis, step) },
            modifier = Modifier.size(36.dp),
            contentPadding = androidx.compose.foundation.layout.PaddingValues(0.dp),
            shape = RoundedCornerShape(12.dp),
            colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF242931)),
        ) { Text("+") }
    }
}
