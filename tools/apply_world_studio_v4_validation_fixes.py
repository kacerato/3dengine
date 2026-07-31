from pathlib import Path


def read(path: str) -> str:
    return Path(path).read_text(encoding="utf-8")


def write(path: str, text: str) -> None:
    Path(path).write_text(text, encoding="utf-8")


def replace_once(path: str, old: str, new: str, label: str) -> None:
    text = read(path)
    if new in text:
        return
    if old not in text:
        raise RuntimeError(f"{label}: trecho não encontrado em {path}: {old[:180]!r}")
    write(path, text.replace(old, new, 1))


# ---------------------------------------------------------------------------
# Saved-state compatibility: never crash because an enum entry was renamed.
# ---------------------------------------------------------------------------
workspace_path = "editor/src/main/kotlin/com/mobilegamestudio/editor/WorldStudioWorkspaceV3.kt"
replace_once(
    workspace_path,
    """    val mode = StudioV3Mode.valueOf(modeName)
    val drawer = WorldV2Drawer.valueOf(drawerName)
    val terrain = state.selectedTerrain
    val editableMesh = state.selectedEditableMesh
    val voxel = state.selectedVoxelVolume
    val voxelAxis = VoxelSliceAxis.valueOf(voxelAxisName)
    val voxelBrushMode = VoxelBrushMode.valueOf(voxelModeName)
""",
    """    // rememberSaveable can restore names written by an older APK. A renamed
    // enum entry must fall back safely instead of crashing when Mundo opens.
    val mode = StudioV3Mode.entries.firstOrNull { it.name == modeName } ?: StudioV3Mode.OBJECTS
    val drawer = WorldV2Drawer.entries.firstOrNull { it.name == drawerName } ?: WorldV2Drawer.STRUCTURE
    val terrain = state.selectedTerrain
    val editableMesh = state.selectedEditableMesh
    val voxel = state.selectedVoxelVolume
    val voxelAxis = VoxelSliceAxis.entries.firstOrNull { it.name == voxelAxisName } ?: VoxelSliceAxis.Z
    val voxelBrushMode = VoxelBrushMode.entries.firstOrNull { it.name == voxelModeName } ?: VoxelBrushMode.SUBTRACT
""",
    "safe world workspace saved enums",
)

panels_path = "editor/src/main/kotlin/com/mobilegamestudio/editor/WorldStudioV4Panels.kt"
replace_once(
    panels_path,
    """    val selectedGroup = WorldActionGroup.valueOf(selectedGroupName)
""",
    """    val selectedGroup = WorldActionGroup.entries.firstOrNull {
        it.name == selectedGroupName && it in availableGroups
    } ?: availableGroups.firstOrNull() ?: WorldActionGroup.CREATE
""",
    "safe author group saved enum",
)

shell_path = "editor/src/main/kotlin/com/mobilegamestudio/editor/GodotCompactEditorShell.kt"
replace_once(
    shell_path,
    """    val openPanel = openPanelName?.let(StudioPopup::valueOf)
""",
    """    val openPanel = openPanelName?.let { savedName ->
        StudioPopup.entries.firstOrNull { it.name == savedName }
    }
""",
    "safe popup saved enum",
)

# ---------------------------------------------------------------------------
# Runtime viewport: the SceneDocument owns transforms. SceneView node gestures
# must not scale/rotate a node behind the editor's back.
# ---------------------------------------------------------------------------
runtime_path = "runtime/src/main/kotlin/com/mobilegamestudio/runtime/RuntimeSceneViewport.kt"
replace_once(
    runtime_path,
    """/**
 * Filament-backed viewport. SceneDocument remains authoritative; these nodes are
 * a disposable projection and are never persisted by the renderer.
 */
@Composable
fun RuntimeSceneViewport(
""",
    """enum class EditorCameraPreset {
    HOME,
    TOP,
    FRONT,
    RIGHT,
    FOCUS_SELECTION,
}

/**
 * Filament-backed viewport. SceneDocument remains authoritative; these nodes are
 * a disposable projection and are never persisted by the renderer.
 */
@Composable
fun RuntimeSceneViewport(
""",
    "camera preset enum",
)
replace_once(
    runtime_path,
    """    onObjectSelected: (String?) -> Unit,
    transformGesturesEnabled: Boolean = false,
    onTransformDrag: (Float, Float) -> Unit = { _, _ -> },
    terrainTopDownCamera: Boolean = false,
""",
    """    onObjectSelected: (String?) -> Unit,
    transformGesturesEnabled: Boolean = false,
    onTransformDrag: (Float, Float) -> Unit = { _, _ -> },
    editorCameraPreset: EditorCameraPreset? = null,
    editorCameraCommandToken: Int = 0,
    terrainTopDownCamera: Boolean = false,
""",
    "runtime camera command parameters",
)
replace_once(
    runtime_path,
    """            node.applySceneTransform(
                objectValue = objectValue,
                transform = transform,
                mode = mode,
                isSelected = mode == EditorMode.EDITOR && objectValue.id == selectedObjectId,
            )
""",
    """            node.applySceneTransform(
                objectValue = objectValue,
                transform = transform,
                mode = mode,
                isSelected = mode == EditorMode.EDITOR && objectValue.id == selectedObjectId,
                transformGesturesEnabled = transformGesturesEnabled,
            )
""",
    "runtime authoritative transform projection",
)
replace_once(
    runtime_path,
    """    LaunchedEffect(editorCameraManipulator, mode, terrainTopDownCamera, selectedObjectId) {
""",
    """    LaunchedEffect(editorCameraManipulator, mode, terrainTopDownCamera) {
""",
    "do not reset camera effect on selection",
)
replace_once(
    runtime_path,
    """    SideEffect {
        if (mode == EditorMode.PLAY && controlledVehicle == null && playCharacter == null) {
""",
    """    LaunchedEffect(editorCameraCommandToken, editorCameraPreset, selectedObjectId, mode) {
        if (mode != EditorMode.EDITOR || editorCameraPreset == null) return@LaunchedEffect
        val selectedTransform = document.objects
            .firstOrNull { it.id == selectedObjectId }
            ?.component<TransformComponent>()
        val focusTarget = selectedTransform?.position?.let { Position(it.x, it.y, it.z) }
        val focusRadius = selectedTransform?.scale?.let { value ->
            maxOf(kotlin.math.abs(value.x), kotlin.math.abs(value.y), kotlin.math.abs(value.z))
                .coerceAtLeast(0.25f) * 3.4f
        } ?: 4f
        persistentEditorManipulator.applyPreset(editorCameraPreset, focusTarget, focusRadius)
        sceneCameraNode.transform = persistentEditorManipulator.getTransform()
    }

    SideEffect {
        if (mode == EditorMode.PLAY && controlledVehicle == null && playCharacter == null) {
""",
    "runtime camera command effect",
)
replace_once(
    runtime_path,
    """                onGestureListener = rememberOnGestureListener(
                    onSingleTapConfirmed = { _, node -> onObjectSelected(node?.name) },
                ),
""",
    """                onGestureListener = rememberOnGestureListener(
                    onSingleTapConfirmed = { _, node -> onObjectSelected(node?.name) },
                    onDoubleTap = { _, node ->
                        if (mode == EditorMode.EDITOR) {
                            val transform = document.objects
                                .firstOrNull { it.id == node?.name }
                                ?.component<TransformComponent>()
                            if (transform == null) {
                                persistentEditorManipulator.applyPreset(EditorCameraPreset.HOME, null, 4f)
                            } else {
                                val scale = transform.scale
                                val radius = maxOf(
                                    kotlin.math.abs(scale.x),
                                    kotlin.math.abs(scale.y),
                                    kotlin.math.abs(scale.z),
                                ).coerceAtLeast(0.25f) * 3.4f
                                persistentEditorManipulator.applyPreset(
                                    EditorCameraPreset.FOCUS_SELECTION,
                                    Position(transform.position.x, transform.position.y, transform.position.z),
                                    radius,
                                )
                            }
                            sceneCameraNode.transform = persistentEditorManipulator.getTransform()
                        }
                    },
                ),
""",
    "double tap camera focus",
)
replace_once(
    runtime_path,
    """    private var lastX = 0
    private var lastY = 0
    private var strafing = false

    init {
""",
    """    private var lastX = 0
    private var lastY = 0
    private var strafing = false
    private val homeTargetX = target.x
    private val homeTargetY = target.y
    private val homeTargetZ = target.z
    private val homeRadius: Float
    private val homeYaw: Float
    private val homePitch: Float

    init {
""",
    "camera home fields",
)
replace_once(
    runtime_path,
    """        radius = sqrt(dx * dx + dy * dy + dz * dz).coerceAtLeast(0.5f)
        yaw = atan2(dx, dz)
        pitch = asin((dy / radius).coerceIn(-0.98f, 0.98f))
    }

    override fun setViewport(width: Int, height: Int) {
""",
    """        radius = sqrt(dx * dx + dy * dy + dz * dz).coerceAtLeast(0.5f)
        yaw = atan2(dx, dz)
        pitch = asin((dy / radius).coerceIn(-0.98f, 0.98f))
        homeRadius = radius
        homeYaw = yaw
        homePitch = pitch
    }

    fun applyPreset(preset: EditorCameraPreset, focusTarget: Position?, focusRadius: Float) {
        when (preset) {
            EditorCameraPreset.HOME -> {
                targetX = homeTargetX
                targetY = homeTargetY
                targetZ = homeTargetZ
                radius = homeRadius
                yaw = homeYaw
                pitch = homePitch
            }
            EditorCameraPreset.TOP -> {
                pitch = 1.535f
                yaw = 0f
            }
            EditorCameraPreset.FRONT -> {
                pitch = 0f
                yaw = 0f
            }
            EditorCameraPreset.RIGHT -> {
                pitch = 0f
                yaw = (Math.PI / 2.0).toFloat()
            }
            EditorCameraPreset.FOCUS_SELECTION -> if (focusTarget != null) {
                targetX = focusTarget.x
                targetY = focusTarget.y
                targetZ = focusTarget.z
                radius = focusRadius.coerceIn(0.8f, 280f)
            }
        }
    }

    override fun setViewport(width: Int, height: Int) {
""",
    "camera preset implementation",
)
replace_once(
    runtime_path,
    """            if (kotlin.math.abs(dy) > 0.35f) pitch = (pitch + dy / viewportHeight * 1.6f).coerceIn(-1.28f, 1.28f)
""",
    """            if (kotlin.math.abs(dy) > 0.35f) {
                pitch = (pitch + dy / viewportHeight * 1.72f).coerceIn(-1.535f, 1.535f)
            }
""",
    "near top orbit range",
)
replace_once(
    runtime_path,
    """    override fun scrollUpdate(x: Int, y: Int, prevSeparation: Float, currSeparation: Float) {
        val delta = prevSeparation - currSeparation
        radius = (radius * (1f + delta / viewportHeight * 0.72f)).coerceIn(0.8f, 280f)
    }
""",
    """    override fun scrollUpdate(x: Int, y: Int, prevSeparation: Float, currSeparation: Float) {
        if (prevSeparation <= 0f || currSeparation <= 0f) return
        val ratio = (prevSeparation / currSeparation).coerceIn(0.72f, 1.38f)
        radius = (radius * ratio).coerceIn(0.45f, 280f)
    }
""",
    "stable ratio pinch zoom",
)
replace_once(
    runtime_path,
    """private fun Node.applySceneTransform(
    objectValue: GameObject,
    transform: TransformComponent,
    mode: EditorMode,
    isSelected: Boolean,
): Node = apply {
""",
    """private fun Node.applySceneTransform(
    objectValue: GameObject,
    transform: TransformComponent,
    mode: EditorMode,
    isSelected: Boolean,
    transformGesturesEnabled: Boolean = false,
): Node = apply {
""",
    "authoritative transform function parameter",
)
replace_once(
    runtime_path,
    """    isVisible = objectValue.enabled
    isTouchable = true
    isEditable = mode == EditorMode.EDITOR
""",
    """    isVisible = objectValue.enabled
    isTouchable = mode == EditorMode.EDITOR
    // Selection stays touchable, but direct SceneView editing is opt-in. The
    // SceneDocument and editor gizmos are the only authoritative transforms.
    isEditable = mode == EditorMode.EDITOR && transformGesturesEnabled
""",
    "disable transient node transforms",
)
replace_once(
    runtime_path,
    """    val selectionScale = if (isSelected) 1.08f else 1f
""",
    """    // Selection must never change apparent object dimensions. Highlighting
    // belongs to editor chrome/gizmos, not to the render transform.
    val selectionScale = 1f
""",
    "remove selection scale interference",
)

# ---------------------------------------------------------------------------
# Editor viewport: explicit mobile camera presets, independent from object tools.
# ---------------------------------------------------------------------------
scene_viewport_path = "editor/src/main/kotlin/com/mobilegamestudio/editor/SceneViewport.kt"
replace_once(
    scene_viewport_path,
    """import androidx.compose.runtime.mutableStateOf
""",
    """import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
""",
    "camera token state import",
)
replace_once(
    scene_viewport_path,
    """import com.mobilegamestudio.runtime.RuntimeSceneViewport
""",
    """import com.mobilegamestudio.runtime.EditorCameraPreset
import com.mobilegamestudio.runtime.RuntimeSceneViewport
""",
    "camera preset import",
)
replace_once(
    scene_viewport_path,
    """    val sceneMarkers = emptyList<Triple<String, String, String>>()

    Box(modifier = modifier) {
""",
    """    val sceneMarkers = emptyList<Triple<String, String, String>>()
    var editorCameraPreset by remember(document.sceneId) { mutableStateOf<EditorCameraPreset?>(null) }
    var editorCameraCommandToken by remember(document.sceneId) { mutableIntStateOf(0) }
    fun requestCamera(preset: EditorCameraPreset) {
        editorCameraPreset = preset
        editorCameraCommandToken += 1
    }

    Box(modifier = modifier) {
""",
    "scene viewport camera state",
)
replace_once(
    scene_viewport_path,
    """            transformGesturesEnabled = false,
            onTransformDrag = onTransformDrag,
            terrainTopDownCamera = terrainTopDownCamera,
""",
    """            transformGesturesEnabled = false,
            onTransformDrag = onTransformDrag,
            editorCameraPreset = editorCameraPreset,
            editorCameraCommandToken = editorCameraCommandToken,
            terrainTopDownCamera = terrainTopDownCamera,
""",
    "pass camera command to runtime",
)
replace_once(
    scene_viewport_path,
    """        TerrainViewportAuthoringOverlay(
            enabled = !state.isPreviewRunning && terrainAuthoringEnabled,
            brushMode = state.terrainTool.mode,
            normalizedRadius = terrainBrushRadius,
            onStrokeBegin = onTerrainStrokeBegin,
            onStrokePoint = onTerrainStrokePoint,
            onStrokeEnd = onTerrainStrokeEnd,
            modifier = Modifier.matchParentSize(),
        )

        if (editorChromeVisible && !terrainAuthoringEnabled) {
""",
    """        TerrainViewportAuthoringOverlay(
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
""",
    "camera controls overlay",
)
replace_once(
    scene_viewport_path,
    """

@Composable
private fun ViewportTransformDock(
""",
    """

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
""",
    "camera dock composable",
)

# ---------------------------------------------------------------------------
# Terrain authoring: a second finger cancels the transaction instead of
# accidentally sculpting while the user intended to navigate/zoom.
# ---------------------------------------------------------------------------
terrain_overlay_path = "editor/src/main/kotlin/com/mobilegamestudio/editor/TerrainViewportAuthoringOverlay.kt"
replace_once(
    terrain_overlay_path,
    """                        val event = awaitPointerEvent()
                        val change = event.changes.firstOrNull { it.id == down.id }
""",
    """                        val event = awaitPointerEvent()
                        if (event.changes.count { it.pressed } > 1) {
                            cancelled = true
                            event.changes.forEach { it.consume() }
                            break
                        }
                        val change = event.changes.firstOrNull { it.id == down.id }
""",
    "cancel terrain stroke on multi-touch",
)

print("World Studio V4 validation fixes applied")
