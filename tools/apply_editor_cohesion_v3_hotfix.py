from pathlib import Path
import re


def normalize_callbacks(path: str) -> None:
    target = Path(path)
    text = target.read_text(encoding="utf-8")
    tokens = (
        r"onCreatePlayableWorld: \(\) -> Unit,",
        r"onCreatePlayableWorld = onCreatePlayableWorld,",
        r"onPlay: \(\) -> Unit,",
        r"onPlay = onTogglePreview,",
    )
    for token in tokens:
        pattern = rf"(?m)^(?P<line>\s*{token}\s*\n)(?:(?P=line))+"
        text = re.sub(pattern, lambda match: match.group("line"), text)
    target.write_text(text, encoding="utf-8")


for source_path in (
    "editor/src/main/kotlin/com/mobilegamestudio/editor/GodotCompactEditorShell.kt",
    "editor/src/main/kotlin/com/mobilegamestudio/editor/WorkspaceScreen.kt",
    "editor/src/main/kotlin/com/mobilegamestudio/editor/WorldStudioWorkspaceV3.kt",
):
    normalize_callbacks(source_path)


test_path = Path("runtime/src/test/kotlin/com/mobilegamestudio/runtime/CharacterCameraRigTest.kt")
if test_path.exists():
    test = test_path.read_text(encoding="utf-8")
    test = test.replace(
        "import kotlin.test.Test\nimport kotlin.test.assertEquals\nimport kotlin.test.assertTrue",
        "import org.junit.Assert.assertEquals\nimport org.junit.Assert.assertTrue\nimport org.junit.Test",
    )
    test_path.write_text(test, encoding="utf-8")

print("Editor Cohesion V3 hotfix applied")
