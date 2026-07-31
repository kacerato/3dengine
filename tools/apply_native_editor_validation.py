from __future__ import annotations

from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
MARKER = ROOT / ".native-editor-validation-v1-applied"


def read(path: str) -> str:
    return (ROOT / path).read_text(encoding="utf-8")


def write(path: str, content: str) -> None:
    (ROOT / path).write_text(content, encoding="utf-8")


def replace_once(text: str, old: str, new: str, label: str) -> str:
    count = text.count(old)
    if count != 1:
        raise RuntimeError(f"{label}: expected one match, found {count}")
    return text.replace(old, new, 1)


def patch_shell() -> None:
    path = "editor/src/main/kotlin/com/mobilegamestudio/editor/GodotCompactEditorShell.kt"
    text = read(path)
    text = replace_once(
        text,
        'var openPanelName by rememberSaveable { mutableStateOf<String?>(StudioPopup.FILES.name) }',
        'var openPanelName by rememberSaveable { mutableStateOf<String?>(null) }',
        path,
    )
    replacements = {
        '.height(42.dp)': '.height(50.dp)',
        '.height(34.dp)': '.height(42.dp)',
        '.height(38.dp)': '.height(46.dp)',
        '.height(32.dp)': '.height(40.dp)',
        '.width(46.dp)': '.width(54.dp)',
        'Modifier.size(40.dp)': 'Modifier.size(44.dp)',
        'RoundedCornerShape(4.dp)': 'RoundedCornerShape(12.dp)',
        'RoundedCornerShape(0.dp)': 'RoundedCornerShape(12.dp)',
        'shape = androidx.compose.foundation.shape.RoundedCornerShape(5.dp)': 'shape = androidx.compose.foundation.shape.RoundedCornerShape(14.dp)',
        '.fillMaxWidth(widthFraction)\n                    .fillMaxHeight(heightFraction)\n                    .background(PanelBackground)\n                    .border(1.dp, WorkspaceBorder)': '.fillMaxWidth(widthFraction)\n                    .fillMaxHeight(heightFraction)\n                    .padding(8.dp)\n                    .background(PanelBackground, RoundedCornerShape(18.dp))\n                    .border(1.dp, WorkspaceBorder, RoundedCornerShape(18.dp))',
        '.height(36.dp)\n            .background(RaisedBackground)\n            .border(1.dp, WorkspaceBorder)': '.height(44.dp)\n            .background(RaisedBackground, RoundedCornerShape(topStart = 18.dp, topEnd = 18.dp))\n            .border(1.dp, WorkspaceBorder, RoundedCornerShape(topStart = 18.dp, topEnd = 18.dp))',
    }
    for old, new in replacements.items():
        text = text.replace(old, new)
    write(path, text)


def patch_world_studio() -> None:
    path = "editor/src/main/kotlin/com/mobilegamestudio/editor/WorldStudioWorkspaceV3.kt"
    text = read(path)
    text = replace_once(
        text,
        'var modeName by rememberSaveable { mutableStateOf(StudioV3Mode.SCULPT.name) }',
        'var modeName by rememberSaveable { mutableStateOf(StudioV3Mode.OBJECTS.name) }',
        path,
    )
    text = text.replace('val treeWidth = if (compact) 176.dp else 218.dp', 'val treeWidth = if (compact) 156.dp else 196.dp')
    text = text.replace('val inspectorWidth = if (compact) 224.dp else 274.dp', 'val inspectorWidth = if (compact) 196.dp else 244.dp')
    text = text.replace(
        'Modifier.fillMaxWidth().height(48.dp).background(StudioV3Panel).border(1.dp, StudioV3Border)',
        'Modifier.fillMaxWidth().height(54.dp).padding(6.dp).background(StudioV3Panel, RoundedCornerShape(16.dp)).border(1.dp, StudioV3Border, RoundedCornerShape(16.dp))',
    )
    write(path, text)


def patch_scene_viewport() -> None:
    path = "editor/src/main/kotlin/com/mobilegamestudio/editor/SceneViewport.kt"
    text = read(path)
    text = text.replace('editorChromeVisible: Boolean = true,', 'editorChromeVisible: Boolean = false,')
    text = replace_once(
        text,
        '''    val sceneMarkers = if (state.isPreviewRunning || terrainAuthoringEnabled || !editorChromeVisible) emptyList() else document.objects.mapNotNull { item ->
        when {
            item.components.any { it is CameraComponent } -> Triple(item.id, "CAM", item.name)
            item.components.any { it is DirectionalLightComponent } -> Triple(item.id, "SUN", item.name)
            else -> null
        }
    }
''',
        '    val sceneMarkers = emptyList<Triple<String, String, String>>()\n',
        path,
    )
    text = replace_once(
        text,
        '''        if (!state.isPreviewRunning && !terrainAuthoringEnabled && selectedObject != null && state.activeTool != EditorTool.SELECT) {
            TransformGizmo(
                tool = state.activeTool,
                onDelta = onTransformChange,
                modifier = Modifier.align(Alignment.Center),
            )
        }
''',
        '''        if (!state.isPreviewRunning && !terrainAuthoringEnabled && selectedObject != null && state.activeTool != EditorTool.SELECT) {
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
''',
        path,
    )
    text += '''

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
                .pointerInput(tool, objectName) {
                    detectDragGestures { change, amount ->
                        change.consume()
                        onFreeDrag(amount.x, amount.y)
                    }
                },
            contentAlignment = Alignment.Center,
        ) {
            Text("ARRASTE", color = Color(0xFFADB3BD), fontSize = 7.sp)
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
'''
    write(path, text)


def patch_runtime_camera() -> None:
    path = "runtime/src/main/kotlin/com/mobilegamestudio/runtime/RuntimeSceneViewport.kt"
    text = read(path)
    text = text.replace(
        'import com.mobilegamestudio.core.model.CharacterCameraMode\n',
        'import com.mobilegamestudio.core.model.CharacterCameraMode\nimport com.mobilegamestudio.core.model.CameraComponent\n',
    )
    text = replace_once(
        text,
        '''    val controlledVehicle = document.objects.firstOrNull {
        it.enabled && "runtime-controlled" in it.tags
    }
''',
        '''    val controlledVehicle = document.objects.firstOrNull {
        it.enabled && "runtime-controlled" in it.tags
    }
    val authoredPlayCamera = document.objects.firstOrNull {
        it.enabled && it.component<CameraComponent>()?.let { camera -> camera.enabled && camera.isMain } == true
    }
''',
        path,
    )
    text = text.replace(
        'if (firstPersonPlay || controlledVehicle != null || terrainTopDownCamera)',
        'if (firstPersonPlay || controlledVehicle != null || (authoredPlayCamera != null && mode == EditorMode.PLAY) || terrainTopDownCamera)',
    )
    text = replace_once(
        text,
        '''    SideEffect {
        if (firstPersonPlay) {
''',
        '''    SideEffect {
        if (mode == EditorMode.PLAY && controlledVehicle == null && playCharacter == null) {
            authoredPlayCamera?.component<TransformComponent>()?.let { transform ->
                val yaw = Math.toRadians(transform.rotationEulerDegrees.y.toDouble())
                val pitch = Math.toRadians(transform.rotationEulerDegrees.x.toDouble())
                val eye = Float3(transform.position.x, transform.position.y, transform.position.z)
                sceneCameraNode.transform = lookAt(
                    eye = eye,
                    target = Float3(
                        eye.x + (sin(yaw) * cos(pitch)).toFloat(),
                        eye.y - sin(pitch).toFloat(),
                        eye.z + (cos(yaw) * cos(pitch)).toFloat(),
                    ),
                    up = Float3(0f, 1f, 0f),
                )
            }
        }
        if (firstPersonPlay) {
''',
        path,
    )
    text = text.replace('val unitsPerPixel = radius / viewportHeight * 1.5f', 'val unitsPerPixel = radius / viewportHeight * 0.9f')
    text = text.replace('yaw -= dx / viewportWidth * 3.2f', 'if (kotlin.math.abs(dx) > 0.35f) yaw -= dx / viewportWidth * 2.1f')
    text = text.replace(
        'pitch = (pitch + dy / viewportHeight * 2.4f).coerceIn(-1.35f, 1.35f)',
        'if (kotlin.math.abs(dy) > 0.35f) pitch = (pitch + dy / viewportHeight * 1.6f).coerceIn(-1.28f, 1.28f)',
    )
    text = text.replace(
        'radius = (radius * (1f + delta / viewportHeight)).coerceIn(0.4f, 600f)',
        'radius = (radius * (1f + delta / viewportHeight * 0.72f)).coerceIn(0.8f, 280f)',
    )
    write(path, text)


def patch_creation_flow() -> None:
    path = "editor/src/main/kotlin/com/mobilegamestudio/editor/WorkspaceViewModel.kt"
    text = read(path)
    text = replace_once(
        text,
        '''    fun addPrimitive(primitive: PrimitiveMesh) {
        if (!canEdit()) return
        val objectNumber = nextObjectNumber++
        val label = if (primitive == PrimitiveMesh.CUBE) "Cube" else "Plane"
''',
        '''    fun addPrimitive(primitive: PrimitiveMesh) {
        if (!canEdit()) return
        val objectNumber = nextObjectNumber++
        val spawnTarget = mutableState.value.sceneDocument?.editorSettings?.cameraTarget ?: Vector3.ZERO
        val label = if (primitive == PrimitiveMesh.CUBE) "Cube" else "Plane"
''',
        path,
    )
    text = replace_once(
        text,
        '''            transform = if (primitive == PrimitiveMesh.PLANE) {
                EditorTransform(
                    position = EditorVector3(y = -1f),
                    scale = EditorVector3(4f, 1f, 4f),
                )
            } else EditorTransform(position = EditorVector3(x = 0.5f * objectNumber)),
''',
        '''            transform = if (primitive == PrimitiveMesh.PLANE) {
                EditorTransform(
                    position = EditorVector3(spawnTarget.x, spawnTarget.y, spawnTarget.z),
                    scale = EditorVector3(4f, 1f, 4f),
                )
            } else EditorTransform(
                position = EditorVector3(spawnTarget.x, spawnTarget.y + 0.5f, spawnTarget.z),
            ),
''',
        path,
    )
    text = replace_once(
        text,
        '''    fun addSceneObject(type: EditorObjectType) {
        if (!canEdit()) return
        require(type != EditorObjectType.MESH)
        val objectNumber = nextObjectNumber++
        val newObject = EditorSceneObject(
''',
        '''    fun addSceneObject(type: EditorObjectType) {
        if (!canEdit()) return
        require(type != EditorObjectType.MESH)
        val objectNumber = nextObjectNumber++
        val editorSettings = mutableState.value.sceneDocument?.editorSettings
        val spawnTarget = editorSettings?.cameraTarget ?: Vector3.ZERO
        val cameraOrbit = editorSettings?.cameraOrbit ?: Vector3(6f, 4f, 8f)
        val newObject = EditorSceneObject(
''',
        path,
    )
    text = text.replace(
        'EditorObjectType.CAMERA -> EditorTransform(position = EditorVector3(6f, 4f, 8f))',
        'EditorObjectType.CAMERA -> EditorTransform(position = EditorVector3(cameraOrbit.x, cameraOrbit.y, cameraOrbit.z))',
    )
    text = text.replace(
        'EditorObjectType.LIGHT -> EditorTransform(rotation = EditorVector3(-45f, -30f, 0f))',
        'EditorObjectType.LIGHT -> EditorTransform(position = EditorVector3(spawnTarget.x, spawnTarget.y + 4f, spawnTarget.z), rotation = EditorVector3(-45f, -30f, 0f))',
    )
    text = text.replace(
        '-> EditorTransform(position = EditorVector3(y = 1f))',
        '-> EditorTransform(position = EditorVector3(spawnTarget.x, spawnTarget.y + 1f, spawnTarget.z))',
    )
    write(path, text)


def main() -> None:
    if MARKER.exists():
        print("native editor validation already applied")
        return
    patch_shell()
    patch_world_studio()
    patch_scene_viewport()
    patch_runtime_camera()
    patch_creation_flow()
    MARKER.write_text("native editor validation v1\n", encoding="utf-8")
    print("native editor validation applied")


if __name__ == "__main__":
    main()
