#!/usr/bin/env python3
"""Install the native Mobile Game Studio NoCode module and exact legacy logo."""

from __future__ import annotations

import argparse
import base64
import hashlib
import shutil
from pathlib import Path

EXPECTED_LOGO_SHA256 = "0538d32f34d0b9a3a5f2fb4f1e1d8ae3d003360f4fedf093b57aa7f8f20b9da1"


def replace_exact(text: str, old: str, new: str, label: str) -> str:
    if new in text:
        return text
    count = text.count(old)
    if count != 1:
        raise RuntimeError(f"{label}: esperado 1 trecho, encontrado {count}")
    return text.replace(old, new, 1)


def decode_logo(root_dir: Path, godot_dir: Path) -> bytes:
    encoded_path = root_dir / "godot-patches/branding/mobile_game_studio_logo.webp.base64"
    encoded = "".join(encoded_path.read_text(encoding="utf-8").split())
    data = base64.b64decode(encoded, validate=True)
    digest = hashlib.sha256(data).hexdigest()
    if digest != EXPECTED_LOGO_SHA256:
        raise RuntimeError(f"Logo legada incorreta: esperado {EXPECTED_LOGO_SHA256}, atual {digest}")

    drawable_dir = godot_dir / "platform/android/java/editor/src/main/res/drawable-nodpi"
    drawable_dir.mkdir(parents=True, exist_ok=True)
    (drawable_dir / "mobile_game_studio_logo.webp").write_bytes(data)
    old_vector = godot_dir / "platform/android/java/editor/src/main/res/drawable/mobile_game_studio_logo.xml"
    old_vector.unlink(missing_ok=True)
    return data


def make_brand_header(module_dir: Path, data: bytes) -> None:
    chunks = []
    for offset in range(0, len(data), 16):
        chunks.append("    " + ", ".join(f"0x{byte:02x}" for byte in data[offset : offset + 16]) + ",")
    header = (
        "#pragma once\n\n"
        "#include <cstddef>\n\n"
        "static constexpr unsigned char MGS_BRAND_DATA[] = {\n"
        + "\n".join(chunks)
        + "\n};\n"
        "static constexpr size_t MGS_BRAND_DATA_SIZE = sizeof(MGS_BRAND_DATA);\n"
    )
    (module_dir / "mgs_brand_data.gen.h").write_text(header, encoding="utf-8")


def install_module(root_dir: Path, godot_dir: Path, logo_data: bytes) -> Path:
    source = root_dir / "godot-patches/modules/mobile_game_studio_nocode"
    destination = godot_dir / "modules/mobile_game_studio_nocode"
    if destination.exists():
        shutil.rmtree(destination)
    shutil.copytree(source, destination)
    make_brand_header(destination, logo_data)
    return destination


def patch_project_manager(godot_dir: Path) -> None:
    path = godot_dir / "editor/project_manager/project_manager.cpp"
    source = path.read_text(encoding="utf-8")
    source = replace_exact(
        source,
        '#include "modules/modules_enabled.gen.h" // For gdscript, mono. (For editor help highlighter).',
        '#include "modules/modules_enabled.gen.h" // For gdscript, mono. (For editor help highlighter).\n'
        '#include "modules/mobile_game_studio_nocode/mgs_brand_texture.h"',
        "Project Manager brand include",
    )
    source = replace_exact(
        source,
        '\t\ttitle_bar_logo->set_flat(true);\n\t\ttitle_bar_logo->set_text("Mobile Game Studio");',
        '\t\ttitle_bar_logo->set_flat(true);\n'
        '\t\ttitle_bar_logo->set_button_icon(mgs_create_brand_texture(int(34 * EDSCALE)));\n'
        '\t\ttitle_bar_logo->set_icon_max_width(int(34 * EDSCALE));\n'
        '\t\ttitle_bar_logo->set_text("Mobile Game Studio");',
        "Project Manager exact brand texture",
    )
    path.write_text(source, encoding="utf-8")


def update_derivative_notice(godot_dir: Path) -> None:
    path = godot_dir / "MOBILE_GAME_STUDIO_DERIVATIVE.txt"
    text = path.read_text(encoding="utf-8")
    line = "The native Mobile Game Studio NoCode module executes versioned visual graphs on real Godot nodes."
    if line not in text:
        text = text.rstrip() + "\n" + line + "\n"
        path.write_text(text, encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--godot-dir", type=Path, required=True)
    parser.add_argument("--root-dir", type=Path, default=Path(__file__).resolve().parents[2])
    args = parser.parse_args()

    root_dir = args.root_dir.resolve()
    godot_dir = args.godot_dir.resolve()
    logo_data = decode_logo(root_dir, godot_dir)
    module_dir = install_module(root_dir, godot_dir, logo_data)
    patch_project_manager(godot_dir)
    update_derivative_notice(godot_dir)

    print("Mobile Game Studio NoCode patch applied")
    print(f"Module: {module_dir}")
    print(f"Exact legacy logo SHA-256: {EXPECTED_LOGO_SHA256}")
    print("Legacy .graph.json compatibility and native Godot runtime enabled")


if __name__ == "__main__":
    main()
