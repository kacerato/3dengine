#!/usr/bin/env python3
"""Apply the public product identity without forking Godot internals blindly.

The patch intentionally keeps Godot class names, Java/Kotlin packages, scene
formats, APIs and extension compatibility. Public Android identity, archive
names and the editor product title are changed. Godot attribution remains in
the derivative notice and copied MIT/copyright files.
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


def patch_android_distribution(godot_dir: Path, lock: dict[str, str]) -> None:
    build_file = godot_dir / "platform/android/java/editor/build.gradle"
    source = build_file.read_text(encoding="utf-8")

    source = replace_exact(
        source,
        'applicationId "org.godotengine.editor.v4"',
        f'applicationId "{lock["PRODUCT_APPLICATION_ID"]}"',
        "applicationId",
    )
    source = replace_exact(
        source,
        'editorAppName: "Godot Engine 4"',
        f'editorAppName: "{lock["PRODUCT_NAME"]}"',
        "editorAppName",
    )
    source = replace_exact(
        source,
        'archivesName = "android_editor"',
        f'archivesName = "{lock["PRODUCT_ARCHIVE_NAME"]}"',
        "archivesName",
    )

    marker = "// MOBILE_GAME_STUDIO_PRODUCT_PATCH_V2"
    if marker not in source:
        source = source.replace(
            "// Gradle build config for Godot Engine's Android port.\n",
            "// Gradle build config for Godot Engine's Android port.\n"
            f"{marker}\n",
            1,
        )
    build_file.write_text(source, encoding="utf-8")


def write_derivative_notice(godot_dir: Path, lock: dict[str, str]) -> None:
    notice = godot_dir / "MOBILE_GAME_STUDIO_DERIVATIVE.txt"
    notice.write_text(
        "\n".join(
            [
                f"{lock['PRODUCT_NAME']} is a derivative editor based on {lock['PRODUCT_BASE_ENGINE']}.",
                f"Pinned upstream commit: {lock['UPSTREAM_COMMIT']}",
                "Godot Engine is licensed under the MIT License.",
                "Godot names, internal APIs and file formats are retained where required for compatibility.",
                "See LICENSE.txt and COPYRIGHT.txt from the upstream source tree.",
                "",
            ]
        ),
        encoding="utf-8",
    )


def copy_license_bundle(root_dir: Path, godot_dir: Path) -> None:
    destination = root_dir / "godot-upstream/licenses"
    destination.mkdir(parents=True, exist_ok=True)
    for source_name, destination_name in (
        ("LICENSE.txt", "GODOT_LICENSE.txt"),
        ("COPYRIGHT.txt", "GODOT_COPYRIGHT.txt"),
        ("MOBILE_GAME_STUDIO_DERIVATIVE.txt", "DERIVATIVE_NOTICE.txt"),
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

    patch_android_distribution(godot_dir, lock)
    write_derivative_notice(godot_dir, lock)
    copy_license_bundle(root_dir, godot_dir)

    print(f"Produto preparado em {godot_dir}")
    print(f"Nome público: {lock['PRODUCT_NAME']}")
    print(f"Application ID: {lock['PRODUCT_APPLICATION_ID']}")
    print(f"Base: {lock['PRODUCT_BASE_ENGINE']} @ {lock['UPSTREAM_COMMIT']}")


if __name__ == "__main__":
    main()
