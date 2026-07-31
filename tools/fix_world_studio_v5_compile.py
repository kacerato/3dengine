from pathlib import Path

path = Path("editor/src/main/kotlin/com/mobilegamestudio/editor/WorldStudioWorkspaceV5.kt")
source = path.read_text(encoding="utf-8")
source = source.replace(
    "private val WorldV5Panel = Color(0xFF14171C)",
    "private val WorldV5PanelColor = Color(0xFF14171C)",
)
source = source.replace("background(WorldV5Panel)", "background(WorldV5PanelColor)")
source = source.replace("background(WorldV5Panel,", "background(WorldV5PanelColor,")
path.write_text(source, encoding="utf-8")
print("World Studio V5 compile naming fixed")
