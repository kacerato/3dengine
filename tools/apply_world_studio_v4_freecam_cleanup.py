from pathlib import Path


SCENE_VIEWPORT = Path("editor/src/main/kotlin/com/mobilegamestudio/editor/SceneViewport.kt")
RUNTIME_VIEWPORT = Path("runtime/src/main/kotlin/com/mobilegamestudio/runtime/RuntimeSceneViewport.kt")


def remove_exact(text: str, block: str) -> str:
    return text.replace(block, "") if block in text else text


def remove_between(text: str, start: str, end: str) -> str:
    start_index = text.find(start)
    if start_index < 0:
        return text
    end_index = text.find(end, start_index)
    if end_index < 0:
        raise RuntimeError(f"End marker not found after {start!r}")
    return text[:start_index] + "\n" + text[end_index:]


def clean_scene_viewport() -> None:
    text = SCENE_VIEWPORT.read_text(encoding="utf-8")
    text = remove_exact(text, "import androidx.compose.runtime.mutableIntStateOf\n")
    text = remove_exact(text, "import com.mobilegamestudio.runtime.EditorCameraPreset\n")
    text = remove_exact(
        text,
        """    var editorCameraPreset by remember(document.sceneId) { mutableStateOf<EditorCameraPreset?>(null) }
    var editorCameraCommandToken by remember(document.sceneId) { mutableIntStateOf(0) }
    fun requestCamera(preset: EditorCameraPreset) {
        editorCameraPreset = preset
        editorCameraCommandToken += 1
    }
""",
    )
    text = remove_exact(
        text,
        """            editorCameraPreset = editorCameraPreset,
            editorCameraCommandToken = editorCameraCommandToken,
""",
    )
    text = remove_exact(
        text,
        """        if (!state.isPreviewRunning) {
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

""",
    )
    text = remove_between(
        text,
        "\n@Composable\nprivate fun EditorCameraDock(",
        "\n@Composable\nprivate fun ViewportTransformDock(",
    )
    if "EditorCameraDock(" in text or "requestCamera(EditorCameraPreset" in text:
        raise RuntimeError("Camera button dock remains in SceneViewport.kt")
    SCENE_VIEWPORT.write_text(text, encoding="utf-8")


def clean_runtime_viewport() -> None:
    text = RUNTIME_VIEWPORT.read_text(encoding="utf-8")
    double_tap = """                    onDoubleTap = { _, node ->
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
"""
    text = remove_exact(text, double_tap)
    if "onDoubleTap = { _, node ->" in text:
        raise RuntimeError("Automatic double-tap camera framing remains")
    RUNTIME_VIEWPORT.write_text(text, encoding="utf-8")


def main() -> None:
    clean_scene_viewport()
    clean_runtime_viewport()


if __name__ == "__main__":
    main()
