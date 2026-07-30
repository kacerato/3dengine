from pathlib import Path
import re


def collapse_consecutive_declarations(text: str) -> str:
    tokens = (
        r"onCreatePlayableWorld: \(\) -> Unit,",
        r"onPlay: \(\) -> Unit,",
    )
    for token in tokens:
        pattern = rf"(?m)^(?P<line>\s*{token}\s*\n)(?:(?P=line))+"
        text = re.sub(pattern, lambda match: match.group("line"), text)
    return text


def dedupe_named_argument_in_call(text: str, call_name: str, argument_name: str) -> str:
    start = text.find(f"{call_name}(")
    if start < 0:
        return text
    cursor = start + len(call_name) + 1
    depth = 1
    while cursor < len(text) and depth > 0:
        char = text[cursor]
        if char == "(":
            depth += 1
        elif char == ")":
            depth -= 1
        cursor += 1
    if depth != 0:
        raise RuntimeError(f"Chamada não fechada: {call_name}")
    block = text[start:cursor]
    lines = block.splitlines(keepends=True)
    seen = False
    normalized = []
    for line in lines:
        if re.match(rf"^\s*{re.escape(argument_name)}\s*=", line):
            if seen:
                continue
            seen = True
        normalized.append(line)
    return text[:start] + "".join(normalized) + text[cursor:]


def normalize_file(path: str) -> None:
    target = Path(path)
    text = target.read_text(encoding="utf-8")
    text = collapse_consecutive_declarations(text)
    if target.name == "GodotCompactEditorShell.kt":
        text = dedupe_named_argument_in_call(text, "WorldStudioWorkspaceV3", "onCreatePlayableWorld")
        text = dedupe_named_argument_in_call(text, "WorldStudioWorkspaceV3", "onPlay")
    elif target.name == "WorkspaceScreen.kt":
        text = dedupe_named_argument_in_call(text, "GodotCompactEditorShell", "onCreatePlayableWorld")
    target.write_text(text, encoding="utf-8")


for source_path in (
    "editor/src/main/kotlin/com/mobilegamestudio/editor/GodotCompactEditorShell.kt",
    "editor/src/main/kotlin/com/mobilegamestudio/editor/WorkspaceScreen.kt",
    "editor/src/main/kotlin/com/mobilegamestudio/editor/WorldStudioWorkspaceV3.kt",
):
    normalize_file(source_path)


test_path = Path("runtime/src/test/kotlin/com/mobilegamestudio/runtime/CharacterCameraRigTest.kt")
if test_path.exists():
    test = test_path.read_text(encoding="utf-8")
    test = test.replace(
        "import kotlin.test.Test\nimport kotlin.test.assertEquals\nimport kotlin.test.assertTrue",
        "import org.junit.Assert.assertEquals\nimport org.junit.Assert.assertTrue\nimport org.junit.Test",
    )
    test_path.write_text(test, encoding="utf-8")

print("Editor Cohesion V3 hotfix applied")
