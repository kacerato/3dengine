#!/usr/bin/env python3
"""Verify the installed native NoCode module and exact product logo boundary."""

from __future__ import annotations

import argparse
import hashlib
import subprocess
from pathlib import Path

EXPECTED_LOGO_SHA256 = "567bc7257402fddf9846d38496041b2479a25c0684d556d023eee0fab660846d"

PRODUCT_PATCHES = {
    "MOBILE_GAME_STUDIO_DERIVATIVE.txt",
    "icon.svg",
    "editor/icons/Godot.svg",
    "editor/icons/GodotMonochrome.svg",
    "editor/icons/TitleBarLogo.svg",
    "editor/icons/Logo.svg",
    "editor/icons/DefaultProjectIcon.svg",
    "editor/editor_node.cpp",
    "editor/project_manager/project_manager.cpp",
    "main/splash.png",
    "main/splash_editor.png",
    "platform/android/java/build.gradle",
    "platform/android/java/editor/build.gradle",
    "platform/android/java/editor/src/main/AndroidManifest.xml",
    "platform/android/java/editor/src/main/res/values/themes.xml",
    "platform/android/java/editor/src/main/res/drawable-nodpi/mobile_game_studio_logo.png",
}


def git(godot_dir: Path, *args: str) -> str:
    return subprocess.check_output(["git", "-C", str(godot_dir), *args], text=True).strip()


def require(text: str, expected: str, label: str) -> None:
    if expected not in text:
        raise SystemExit(f"{label} ausente: {expected}")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--godot-dir", type=Path, required=True)
    parser.add_argument("--expected-commit", required=True)
    args = parser.parse_args()
    godot_dir = args.godot_dir.resolve()

    actual_commit = git(godot_dir, "rev-parse", "HEAD")
    if actual_commit != args.expected_commit:
        raise SystemExit(f"Upstream incorreto: {actual_commit}")

    changed = {line for line in git(godot_dir, "diff", "--name-only").splitlines() if line}
    untracked = {line for line in git(godot_dir, "ls-files", "--others", "--exclude-standard").splitlines() if line}
    modified = changed | untracked
    unexpected = {
        path
        for path in modified
        if path not in PRODUCT_PATCHES and not path.startswith("modules/mobile_game_studio_nocode/")
    }
    if unexpected:
        raise SystemExit("NoCode alterou arquivos fora da fronteira aprovada:\n- " + "\n- ".join(sorted(unexpected)))

    old_vector = godot_dir / "platform/android/java/editor/src/main/res/drawable/mobile_game_studio_logo.xml"
    if old_vector.exists():
        raise SystemExit("Logo vetorial substituta ainda existe; a logo legada exata não é exclusiva")

    logo = godot_dir / "platform/android/java/editor/src/main/res/drawable-nodpi/mobile_game_studio_logo.png"
    if not logo.is_file():
        raise SystemExit("Logo legada exata não foi instalada")
    digest = hashlib.sha256(logo.read_bytes()).hexdigest()
    if digest != EXPECTED_LOGO_SHA256:
        raise SystemExit(f"Logo incorreta: {digest}")

    module = godot_dir / "modules/mobile_game_studio_nocode"
    required_files = (
        "config.py",
        "SCsub",
        "register_types.h",
        "register_types.cpp",
        "mgs_nocode_graph.h",
        "mgs_nocode_graph.cpp",
        "mgs_nocode_runner.h",
        "mgs_nocode_runner.cpp",
        "mgs_terrain_3d.h",
        "mgs_terrain_3d.cpp",
        "mgs_vehicle_3d.h",
        "mgs_vehicle_3d.cpp",
        "mgs_brand_texture.h",
        "mgs_brand_texture.cpp",
        "mgs_brand_data.gen.h",
        "editor/mgs_nocode_editor_plugin.h",
        "editor/mgs_nocode_editor_plugin.cpp",
    )
    for relative in required_files:
        path = module / relative
        if not path.is_file() or path.stat().st_size == 0:
            raise SystemExit(f"Arquivo NoCode ausente: {relative}")

    graph_source = (module / "mgs_nocode_graph.cpp").read_text(encoding="utf-8")
    for expected in ("import_legacy_json", "event.scene.start", "transform.rotate.y", "512", "1024"):
        require(graph_source, expected, "Contrato do grafo")

    runner_source = (module / "mgs_nocode_runner.cpp").read_text(encoding="utf-8")
    for expected in ("max_executed_nodes", "Possível ciclo infinito detectado", "variable.set", "transform.set_position", "world.change_scene"):
        require(runner_source, expected, "Runtime NoCode")

    editor_source = (module / "editor/mgs_nocode_editor_plugin.cpp").read_text(encoding="utf-8")
    for expected in ("GraphEdit", "Adicionar bloco NoCode", "Biblioteca", "Importar", "Salvar", "Validar", "add_control_to_bottom_panel"):
        require(editor_source, expected, "Editor adaptativo NoCode")

    registration = (module / "register_types.cpp").read_text(encoding="utf-8")
    for expected in ("GDREGISTER_CLASS(MGSNoCodeGraph)", "GDREGISTER_CLASS(MGSNoCodeRunner)", "EditorPlugins::add_by_type<MGSNoCodeEditorPlugin>()"):
        require(registration, expected, "Registro nativo")

    project_manager = (godot_dir / "editor/project_manager/project_manager.cpp").read_text(encoding="utf-8")
    for expected in ("mgs_brand_texture.h", "mgs_create_brand_texture", "Mobile Game Studio"):
        require(project_manager, expected, "Logo exata dentro do editor")

    version_source = (godot_dir / "version.py").read_text(encoding="utf-8")
    require(version_source, 'name = "Godot Engine"', "Compatibilidade interna")
    require(version_source, 'short_name = "godot"', "Compatibilidade interna")

    notice = (godot_dir / "MOBILE_GAME_STUDIO_DERIVATIVE.txt").read_text(encoding="utf-8")
    require(notice, "native Mobile Game Studio NoCode module", "Aviso de derivação")

    print("Native NoCode and exact legacy logo boundary verified")
    print(f"Logo SHA-256: {digest}")
    print(f"NoCode module files: {len(required_files)}")
    print("Runtime guards: schema, graph limits, execution limit and cycle detection")
    print("Internal Godot identity preserved")


if __name__ == "__main__":
    main()
