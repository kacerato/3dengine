from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
path = ROOT / "editor/src/main/kotlin/com/mobilegamestudio/editor/WorldStudioWorkspace.kt"
source = path.read_text(encoding="utf-8")

if "import androidx.compose.foundation.layout.RowScope" not in source:
    source = source.replace(
        "import androidx.compose.foundation.layout.Row\n",
        "import androidx.compose.foundation.layout.Row\nimport androidx.compose.foundation.layout.RowScope\n",
        1,
    )

source = source.replace("objectGlyph(item.type)", "worldObjectGlyph(item.type)")
source = source.replace("private fun objectGlyph(type: EditorObjectType)", "private fun worldObjectGlyph(type: EditorObjectType)")
source = source.replace("private fun SmallSquareAction(", "private fun RowScope.SmallSquareAction(")

path.write_text(source, encoding="utf-8")
print("Applied World Studio compile hotfixes")
