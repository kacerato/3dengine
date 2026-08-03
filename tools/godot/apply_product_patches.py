#!/usr/bin/env python3
"""Apply Mobile Game Studio public branding while preserving Godot internals."""

from __future__ import annotations

import argparse
import shutil
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


def patch_android_distribution(root_dir: Path, godot_dir: Path, lock: dict[str, str]) -> None:
    root_build_file = godot_dir / "platform/android/java/build.gradle"
    root_build = root_build_file.read_text(encoding="utf-8")
    root_build = replace_exact(
        root_build,
        "        File targetLibs = new File(libsDir + target)",
        "        File targetLibs = file(libsDir + target)",
        "Gradle native library path",
    )
    root_build_file.write_text(root_build, encoding="utf-8")

    build_file = godot_dir / "platform/android/java/editor/build.gradle"
    source = build_file.read_text(encoding="utf-8")
    source = replace_exact(source, 'applicationId "org.godotengine.editor.v4"', f'applicationId "{lock["PRODUCT_APPLICATION_ID"]}"', "applicationId")
    source = replace_exact(source, 'editorAppName: "Godot Engine 4"', f'editorAppName: "{lock["PRODUCT_NAME"]}"', "editorAppName")
    source = replace_exact(source, '            applicationIdSuffix ".debug"', "            // Canonical product package retained for the device-validation APK.", "debug applicationId suffix")
    source = replace_exact(source, '            manifestPlaceholders += [editorBuildSuffix: " (debug)"]', "            // Canonical public app label retained for the device-validation APK.", "debug app-name suffix")
    marker = "// MOBILE_GAME_STUDIO_PRODUCT_PATCH_V5"
    if marker not in source:
        source = source.replace("// Gradle build config for Godot Engine's Android port.\n", "// Gradle build config for Godot Engine's Android port.\n" + marker + "\n", 1)
    build_file.write_text(source, encoding="utf-8")

    manifest_file = godot_dir / "platform/android/java/editor/src/main/AndroidManifest.xml"
    manifest = manifest_file.read_text(encoding="utf-8")
    old_icon = 'android:icon="@mipmap/themed_icon"'
    if '@drawable/mobile_game_studio_logo' not in manifest:
        count = manifest.count(old_icon)
        if count != 3:
            raise RuntimeError(f"Android editor icons: esperado 3, encontrado {count}")
        manifest = manifest.replace(old_icon, 'android:icon="@drawable/mobile_game_studio_logo"')
    manifest_file.write_text(manifest, encoding="utf-8")

    themes_file = godot_dir / "platform/android/java/editor/src/main/res/values/themes.xml"
    themes = themes_file.read_text(encoding="utf-8")
    anchor = '\t\t<item name="postSplashScreenTheme">@style/GodotEditorTheme</item>'
    branded = (
        '\t\t<item name="windowSplashScreenAnimatedIcon">@drawable/mobile_game_studio_logo</item>\n'
        '\t\t<item name="windowSplashScreenBackground">#0A0710</item>\n'
        '\t\t<item name="windowSplashScreenIconBackgroundColor">#0A0710</item>\n'
        + anchor
    )
    themes = replace_exact(themes, anchor, branded, "Android splash branding")
    themes_file.write_text(themes, encoding="utf-8")

    drawable_xml = godot_dir / "platform/android/java/editor/src/main/res/drawable/mobile_game_studio_logo.xml"
    if drawable_xml.exists():
        drawable_xml.unlink()
    drawable_webp = godot_dir / "platform/android/java/editor/src/main/res/drawable-nodpi/mobile_game_studio_logo.webp"
    if drawable_webp.exists():
        drawable_webp.unlink()
    drawable_png = godot_dir / "platform/android/java/editor/src/main/res/drawable-nodpi/mobile_game_studio_logo.png"
    drawable_png.parent.mkdir(parents=True, exist_ok=True)
    shutil.copyfile(root_dir / "app/src/main/res/drawable-nodpi/magic_ghost_logo.png", drawable_png)


def patch_editor_branding(root_dir: Path, godot_dir: Path, product_name: str) -> None:
    branding = root_dir / "godot-patches/branding"
    copies = {
        "icon.svg": ("icon.svg", "editor/icons/DefaultProjectIcon.svg"),
        "Godot.svg": ("editor/icons/Godot.svg",),
        "GodotMonochrome.svg": ("editor/icons/GodotMonochrome.svg",),
        "TitleBarLogo.svg": ("editor/icons/TitleBarLogo.svg", "editor/icons/Logo.svg"),
    }
    for source_name, destinations in copies.items():
        source = branding / source_name
        if not source.is_file():
            raise FileNotFoundError(source)
        for destination in destinations:
            target = godot_dir / destination
            target.parent.mkdir(parents=True, exist_ok=True)
            shutil.copyfile(source, target)

    # Godot displays a second, engine-owned boot image after Android's system
    # splash. Brand both generated splash inputs so the Godot robot never
    # flashes between the Android splash and the editor UI.
    splash_source = root_dir / "app/src/main/res/drawable-nodpi/magic_ghost_logo.png"
    if not splash_source.is_file():
        raise FileNotFoundError(splash_source)
    shutil.copyfile(splash_source, godot_dir / "main/splash.png")
    shutil.copyfile(splash_source, godot_dir / "main/splash_editor.png")

    manager_file = godot_dir / "editor/project_manager/project_manager.cpp"
    manager = manager_file.read_text(encoding="utf-8")
    old_manager_title = 'SceneTree::get_singleton()->get_root()->set_title(GODOT_VERSION_NAME + String(" - ") + TTR("Project Manager", "Application"));'
    new_manager_title = f'SceneTree::get_singleton()->get_root()->set_title(String("{product_name} - ") + TTR("Project Manager", "Application"));'
    manager = replace_exact(manager, old_manager_title, new_manager_title, "Project Manager title")
    old_logo_button = '\t\ttitle_bar_logo->set_flat(true);\n\t\ttitle_bar_logo->set_tooltip_text(TTR("About Godot"));'
    new_logo_button = f'\t\ttitle_bar_logo->set_flat(true);\n\t\ttitle_bar_logo->set_text("{product_name}");\n\t\ttitle_bar_logo->set_tooltip_text(TTR("About {product_name}"));'
    if f'title_bar_logo->set_text("{product_name}")' not in manager:
        manager = replace_exact(manager, old_logo_button, new_logo_button, "Project Manager product label")
    manager_file.write_text(manager, encoding="utf-8")

    editor_file = godot_dir / "editor/editor_node.cpp"
    editor = editor_file.read_text(encoding="utf-8")
    old_editor_title = 'DisplayServer::get_singleton()->window_set_title(title + String(" - ") + GODOT_VERSION_NAME);'
    new_editor_title = f'DisplayServer::get_singleton()->window_set_title(title + String(" - {product_name}"));'
    editor = replace_exact(editor, old_editor_title, new_editor_title, "Editor window title")
    editor = replace_exact(editor, 'TTRC("About Godot...")', f'TTRC("About {product_name}...")', "Editor About label")
    editor_file.write_text(editor, encoding="utf-8")


def write_derivative_notice(godot_dir: Path, lock: dict[str, str]) -> None:
    (godot_dir / "MOBILE_GAME_STUDIO_DERIVATIVE.txt").write_text(
        "\n".join([
            f"{lock['PRODUCT_NAME']} is a derivative editor based on {lock['PRODUCT_BASE_ENGINE']}.",
            f"Pinned upstream commit: {lock['UPSTREAM_COMMIT']}",
            "Godot Engine is licensed under the MIT License.",
            "Godot names, internal APIs and file formats are retained where required for compatibility.",
            "Public editor titles, icons and splash screens use the Mobile Game Studio identity.",
            "This foundation APK is development-signed for direct device validation.",
            "See LICENSE.txt and COPYRIGHT.txt from the upstream source tree.", "",
        ]), encoding="utf-8")


def copy_license_bundle(root_dir: Path, godot_dir: Path) -> None:
    destination = root_dir / "godot-upstream/licenses"
    destination.mkdir(parents=True, exist_ok=True)
    for source_name, destination_name in (("LICENSE.txt", "GODOT_LICENSE.txt"), ("COPYRIGHT.txt", "GODOT_COPYRIGHT.txt"), ("MOBILE_GAME_STUDIO_DERIVATIVE.txt", "DERIVATIVE_NOTICE.txt")):
        (destination / destination_name).write_bytes((godot_dir / source_name).read_bytes())


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--godot-dir", type=Path, required=True)
    parser.add_argument("--root-dir", type=Path, default=Path(__file__).resolve().parents[2])
    args = parser.parse_args()
    root_dir = args.root_dir.resolve()
    godot_dir = args.godot_dir.resolve()
    lock = load_lock(root_dir / "godot-upstream/UPSTREAM.lock")
    patch_android_distribution(root_dir, godot_dir, lock)
    patch_editor_branding(root_dir, godot_dir, lock["PRODUCT_NAME"])
    write_derivative_notice(godot_dir, lock)
    copy_license_bundle(root_dir, godot_dir)
    print(f"Produto preparado em {godot_dir}")
    print(f"Identidade pública: {lock['PRODUCT_NAME']} / {lock['PRODUCT_APPLICATION_ID']}")
    print("Marca aplicada: launcher, splash, Project Manager, editor, title bar e ícones padrão")
    print("Identidade interna preservada: Godot Engine / godot / android_editor")


if __name__ == "__main__":
    main()
