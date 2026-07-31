from pathlib import Path


EDITOR_ROOT = Path("editor/src/main/kotlin")
PANELS_PATH = EDITOR_ROOT / "com/mobilegamestudio/editor/WorldStudioV4Panels.kt"


def main() -> None:
    source = PANELS_PATH.read_text(encoding="utf-8")
    replacements = {
        "private fun WorldLayer.color(): Color = Color(colorArgb.toULong())": (
            "// WorldLayer persists a conventional 32-bit ARGB value inside a Long.\n"
            "// Compose's Color(ULong) expects its internal 64-bit packed color format,\n"
            "// including a valid color-space index, and must not receive this value.\n"
            "private fun WorldLayer.color(): Color = Color((colorArgb and 0xFFFF_FFFFL).toInt())"
        ),
        "Color(layer.colorArgb.toULong())": "Color((layer.colorArgb and 0xFFFF_FFFFL).toInt())",
        "Color(worldLayer.colorArgb.toULong())": "Color((worldLayer.colorArgb and 0xFFFF_FFFFL).toInt())",
    }

    changed = False
    for old, new in replacements.items():
        if old in source:
            source = source.replace(old, new)
            changed = True

    if "colorArgb.toULong()" in source:
        raise RuntimeError("Unsafe WorldLayer ARGB conversion remains in WorldStudioV4Panels.kt")

    if changed:
        PANELS_PATH.write_text(source, encoding="utf-8")

    unsafe = []
    for path in EDITOR_ROOT.rglob("*.kt"):
        text = path.read_text(encoding="utf-8")
        if "colorArgb.toULong()" in text:
            unsafe.append(str(path))
    if unsafe:
        raise RuntimeError("Unsafe colorArgb.toULong() usage: " + ", ".join(unsafe))


if __name__ == "__main__":
    main()
