#!/usr/bin/env python3
"""Verify that product patches preserve the real Godot editor architecture."""

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

ALLOWED_TRACKED_PATCHES = {
    "platform/android/java/editor/build.gradle",
}


def git(godot_dir: Path, *args: str) -> str:
    return subprocess.check_output(
        ["git", "-C", str(godot_dir), *args],
        text=True,
    ).strip()


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--godot-dir", type=Path, required=True)
    parser.add_argument("--expected-commit", required=True)
    args = parser.parse_args()

    godot_dir = args.godot_dir.resolve()
    actual_commit = git(godot_dir, "rev-parse", "HEAD")
    if actual_commit != args.expected_commit:
        raise SystemExit(
            f"Commit upstream incorreto: esperado {args.expected_commit}, atual {actual_commit}"
        )

    missing = [path for path in CRITICAL_EDITOR_FILES if not (godot_dir / path).is_file()]
    if missing:
        raise SystemExit("Arquitetura do editor incompleta; arquivos ausentes:\n- " + "\n- ".join(missing))

    changed = {
        line.strip()
        for line in git(godot_dir, "diff", "--name-only").splitlines()
        if line.strip()
    }
    unexpected = changed - ALLOWED_TRACKED_PATCHES
    if unexpected:
        raise SystemExit(
            "Patch alterou arquivos upstream fora da fronteira aprovada:\n- "
            + "\n- ".join(sorted(unexpected))
        )

    version_source = (godot_dir / "version.py").read_text(encoding="utf-8")
    required_version_lines = (
        'short_name = "godot"',
        'name = "Godot Engine"',
        'website = "https://godotengine.org"',
        'docs = "4.6"',
    )
    for expected in required_version_lines:
        if expected not in version_source:
            raise SystemExit(f"Fronteira de compatibilidade ausente em version.py: {expected}")

    build_source = (
        godot_dir / "platform/android/java/editor/build.gradle"
    ).read_text(encoding="utf-8")
    required_build_lines = (
        'namespace = "org.godotengine.editor"',
        'applicationId "com.mobilegamestudio.editor"',
        'editorAppName: "Mobile Game Studio"',
        'archivesName = "android_editor"',
    )
    for expected in required_build_lines:
        if expected not in build_source:
            raise SystemExit(f"Fronteira Android ausente: {expected}")

    forbidden_build_lines = (
        'archivesName = "mobile_game_studio_editor"',
    )
    for forbidden in forbidden_build_lines:
        if forbidden in build_source:
            raise SystemExit(f"Interno Android renomeado indevidamente: {forbidden}")

    if not (godot_dir / "MOBILE_GAME_STUDIO_DERIVATIVE.txt").is_file():
        raise SystemExit("Aviso de derivação não foi criado")

    print("Godot editor parity boundary verified")
    print(f"Upstream commit: {actual_commit}")
    print("Internal identity: Godot Engine / godot / android_editor")
    print("Tracked product patches:")
    for path in sorted(changed):
        print(f"  - {path}")
    print(f"Critical upstream editor files: {len(CRITICAL_EDITOR_FILES)}")


if __name__ == "__main__":
    main()
