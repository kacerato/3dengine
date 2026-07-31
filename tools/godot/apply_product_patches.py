#!/usr/bin/env python3
"""Apply the smallest possible product patch to a pinned Godot source tree.

This script intentionally changes only Android distribution metadata. Core editor
branding, icons, splash and product-specific modules belong to versioned patch
files added in later gates.
"""

from __future__ import annotations

import argparse
from pathlib import Path


def load_lock(path: Path) -> dict[str, str]:
    values: dict[str, str] = {}
    for raw_line in path.read_text(encoding="utf-8").splitlines():
        line = raw_line.strip()
        if not line or line.startswith("#"):
            continue
        key, separator, value = line.partition("=")
        if not separator:
            raise ValueError(f"Linha inválida em {path}: {raw_line!r}")
        values[key.strip()] = value.strip()
    return values


def replace_exact(text: str, old: str, new: str, label: str) -> str:
    if new in text:
        return text
    count = text.count(old)
    if count != 1:
        raise RuntimeError(f"{label}: esperado 1 trecho, encontrado {count}")
    return text.replace(old, new, 1)


def patch_android_editor(godot_dir: Path, lock: dict[str, str]) -> None:
    build_file = godot_dir / "platform/android/java/editor/build.gradle"
    source = build_file.read_text(encoding="utf-8")

    application_id = lock["PRODUCT_APPLICATION_ID"]
    product_name = lock["PRODUCT_NAME"]

    source = replace_exact(
        source,
        'applicationId "org.godotengine.editor.v4"',
        f'applicationId "{application_id}"',
        "applicationId",
    )
    source = replace_exact(
        source,
        'editorAppName: "Godot Engine 4"',
        f'editorAppName: "{product_name}"',
        "editorAppName",
    )

    marker = "// MOBILE_GAME_STUDIO_PRODUCT_PATCH_V1"
    if marker not in source:
        source = source.replace(
            "// Gradle build config for Godot Engine's Android port.\n",
            "// Gradle build config for Godot Engine's Android port.\n"
            f"{marker}\n",
            1,
        )

    build_file.write_text(source, encoding="utf-8")


def copy_license_bundle(root_dir: Path, godot_dir: Path) -> None:
    destination = root_dir / "godot-upstream/licenses"
    destination.mkdir(parents=True, exist_ok=True)
    for source_name, destination_name in (
        ("LICENSE.txt", "GODOT_LICENSE.txt"),
        ("COPYRIGHT.txt", "GODOT_COPYRIGHT.txt"),
    ):
        source = godot_dir / source_name
        if not source.exists():
            raise FileNotFoundError(source)
        (destination / destination_name).write_bytes(source.read_bytes())


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--godot-dir", type=Path, required=True)
    parser.add_argument(
        "--root-dir",
        type=Path,
        default=Path(__file__).resolve().parents[2],
    )
    args = parser.parse_args()

    root_dir = args.root_dir.resolve()
    godot_dir = args.godot_dir.resolve()
    lock = load_lock(root_dir / "godot-upstream/UPSTREAM.lock")

    patch_android_editor(godot_dir, lock)
    copy_license_bundle(root_dir, godot_dir)

    print(f"Produto preparado em {godot_dir}")
    print(f"Nome: {lock['PRODUCT_NAME']}")
    print(f"Application ID: {lock['PRODUCT_APPLICATION_ID']}")


if __name__ == "__main__":
    main()
