#!/usr/bin/env python3
"""Verify Mobile Game Studio branding without sacrificing Godot compatibility."""

from __future__ import annotations

import argparse
import subprocess
from pathlib import Path

CRITICAL_EDITOR_FILES = (
    "editor/editor_node.cpp",
    "editor/docks/scene_tree_dock.cpp",
    "editor/docks/filesystem_dock.cpp",
    "editor/inspector/editor_inspector.cpp",
    "editor/script/script_editor_plugin.cpp",
    "editor/scene/canvas_item_editor_plugin.cpp",
    "editor/scene/3d/node_3d_editor_plugin.cpp",
    "editor/debugger/editor_debugger_node.cpp",
    "editor/gui/touch_actions_panel.cpp",
    "platform/android/java/editor/src/main/java/org/godotengine/editor/BaseGodotEditor.kt",
)

ALLOWED_PATCHES = {
    "MOBILE_GAME_STUDIO_DERIVATIVE.txt",
    "icon.svg",
    "editor/icons/Godot.svg",
    "editor/icons/GodotMonochrome.svg",
    "editor/icons/TitleBarLogo.svg",
    "editor/icons/Logo.svg",
    "editor/icons/DefaultProjectIcon.svg",
    "editor/editor_node.cpp",
    "editor/project_manager/project_manager.cpp",
    "platform/android/java/editor/build.gradle",
    "platform/android/java/editor/src/main/AndroidManifest.xml",
    "platform/android/java/editor/src/main/res/values/themes.xml",
    "platform/android/java/editor/src/main/res/drawable/mobile_game_studio_logo.xml",
}


def git(godot_dir: Path, *args: str) -> str:
    return subprocess.check_output(["git", "-C", str(godot_dir), *args], text=True).strip()


def require(source: str, expected: str, label: str) -> None:
    if expected not in source:
        raise SystemExit(f"{label} ausente: {expected}")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--godot-dir", type=Path, required=True)
    parser.add_argument("--expected-commit", required=True)
    args = parser.parse_args()
    godot_dir = args.godot_dir.resolve()

    actual_commit = git(godot_dir, "rev-parse", "HEAD")
    if actual_commit != args.expected_commit:
        raise SystemExit(f"Commit upstream incorreto: esperado {args.expected_commit}, atual {actual_commit}")

    missing = [path for path in CRITICAL_EDITOR_FILES if not (godot_dir / path).is_file()]
    if missing:
        raise SystemExit("Arquitetura do editor incompleta; arquivos ausentes:\n- " + "\n- ".join(missing))

    changed = {line for line in git(godot_dir, "diff", "--name-only").splitlines() if line}
    untracked = {line for line in git(godot_dir, "ls-files", "--others", "--exclude-standard").splitlines() if line}
    modified = changed | untracked
    unexpected = modified - ALLOWED_PATCHES
    if unexpected:
        raise SystemExit("Patch alterou arquivos upstream fora da fronteira aprovada:\n- " + "\n- ".join(sorted(unexpected)))

    version_source = (godot_dir / "version.py").read_text(encoding="utf-8")
    for expected in ('short_name = "godot"', 'name = "Godot Engine"', 'website = "https://godotengine.org"', 'docs = "4.6"'):
        require(version_source, expected, "Fronteira de compatibilidade em version.py")

    build_source = (godot_dir / "platform/android/java/editor/build.gradle").read_text(encoding="utf-8")
    for expected in ('namespace = "org.godotengine.editor"', 'applicationId "com.mobilegamestudio.editor"', 'editorAppName: "Mobile Game Studio"', 'archivesName = "android_editor"'):
        require(build_source, expected, "Fronteira Android")
    for forbidden in ('archivesName = "mobile_game_studio_editor"', 'applicationIdSuffix ".debug"', 'editorBuildSuffix: " (debug)"'):
        if forbidden in build_source:
            raise SystemExit(f"Identidade pública Android incorreta: {forbidden}")

    manager_source = (godot_dir / "editor/project_manager/project_manager.cpp").read_text(encoding="utf-8")
    for expected in ('String("Mobile Game Studio - ") + TTR("Project Manager", "Application")', 'title_bar_logo->set_text("Mobile Game Studio")', 'TTR("About Mobile Game Studio")'):
        require(manager_source, expected, "Identidade do Project Manager")

    editor_source = (godot_dir / "editor/editor_node.cpp").read_text(encoding="utf-8")
    for expected in ('String(" - Mobile Game Studio")', 'TTRC("About Mobile Game Studio...")'):
        require(editor_source, expected, "Identidade principal do editor")

    manifest = (godot_dir / "platform/android/java/editor/src/main/AndroidManifest.xml").read_text(encoding="utf-8")
    if manifest.count('@drawable/mobile_game_studio_logo') != 3:
        raise SystemExit("Launcher/editor/Project Manager não usam todos a logo do produto")

    themes = (godot_dir / "platform/android/java/editor/src/main/res/values/themes.xml").read_text(encoding="utf-8")
    for expected in ("windowSplashScreenAnimatedIcon", "@drawable/mobile_game_studio_logo", "windowSplashScreenBackground", "#0A0710"):
        require(themes, expected, "Splash Android")

    branding_assets = (
        "icon.svg", "editor/icons/Godot.svg", "editor/icons/GodotMonochrome.svg",
        "editor/icons/TitleBarLogo.svg", "editor/icons/Logo.svg", "editor/icons/DefaultProjectIcon.svg",
        "platform/android/java/editor/src/main/res/drawable/mobile_game_studio_logo.xml",
    )
    for path in branding_assets:
        asset = godot_dir / path
        if not asset.is_file() or asset.stat().st_size < 100:
            raise SystemExit(f"Asset de identidade ausente ou inválido: {path}")
        source = asset.read_text(encoding="utf-8")
        if path != "editor/icons/GodotMonochrome.svg" and not any(color in source for color in ("#7C3AED", "#8B5CF6", "#A855F7")):
            raise SystemExit(f"Asset não contém identidade roxa Mobile Game Studio: {path}")

    if not (godot_dir / "MOBILE_GAME_STUDIO_DERIVATIVE.txt").is_file():
        raise SystemExit("Aviso de derivação não foi criado")

    print("Godot editor compatibility and product branding verified")
    print(f"Upstream commit: {actual_commit}")
    print("Internal identity: Godot Engine / godot / android_editor")
    print("Public identity: Mobile Game Studio / com.mobilegamestudio.editor")
    print("Branding surfaces: launcher, splash, project manager, editor title, title bar and default icons")
    print("Approved upstream patches:")
    for path in sorted(modified):
        print(f"  - {path}")


if __name__ == "__main__":
    main()
