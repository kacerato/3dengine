from pathlib import Path

root = Path(__file__).resolve().parents[1]
path = root / "editor/src/main/kotlin/com/mobilegamestudio/editor/WorkspaceViewModel.kt"
source = path.read_text(encoding="utf-8")
old = "folder.trim().replace('\\', '/').trimEnd('/')"
new = "folder.trim().replace('\\\\', '/').trimEnd('/')"
if old in source:
    source = source.replace(old, new, 1)
    path.write_text(source, encoding="utf-8")
    print("Corrected Kotlin backslash character literal")
else:
    print("Kotlin backslash character literal already corrected")
