from __future__ import annotations

import hashlib
import json
import os
import re
import shutil
import zipfile
from pathlib import Path

REPO = Path.cwd()
OUT_ROOT = REPO / "dist" / "Mundo_Realista_NoCode_Complete"
FIXTURE = REPO / "godot-fixtures" / "mobile-nocode-world"
EXTERNAL = Path(os.environ.get("EXTERNAL_DIR", REPO / "external"))
HDRI_SOURCE = Path(os.environ.get("HDRI_FILE", REPO / "external" / "kloofendal_misty_morning_2k.hdr"))


def clean_copy() -> None:
    if OUT_ROOT.exists():
        shutil.rmtree(OUT_ROOT)
    shutil.copytree(FIXTURE, OUT_ROOT)


def copy_quaternius_addon() -> None:
    candidates = list(EXTERNAL.rglob("Master_Rigged.tscn"))
    if not candidates:
        raise FileNotFoundError("Master_Rigged.tscn não foi encontrado no pacote do Quaternius")
    master = candidates[0]
    addon_root = master.parent.parent
    target = OUT_ROOT / "addons" / "quaternius_ik_rigged"
    target.parent.mkdir(parents=True, exist_ok=True)
    shutil.copytree(addon_root, target, dirs_exist_ok=True)
    expected = target / "Models_with_rigging" / "Master_Rigged.tscn"
    if not expected.is_file():
        raise FileNotFoundError(f"Cena do personagem não foi copiada: {expected}")


def copy_hdri() -> None:
    if not HDRI_SOURCE.is_file() or HDRI_SOURCE.stat().st_size < 1024:
        raise FileNotFoundError(f"HDRI inválido: {HDRI_SOURCE}")
    target = OUT_ROOT / "assets" / "environment" / HDRI_SOURCE.name
    target.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(HDRI_SOURCE, target)


def write_project_settings() -> None:
    (OUT_ROOT / "project.godot").write_text(
        '''; Mobile Game Studio / Godot derivative — projeto independente.\nconfig_version=5\n\n[application]\nconfig/name="Mundo Realista NoCode Complete"\nrun/main_scene="res://main.tscn"\nboot_splash/image="res://icon.png"\nboot_splash/bg_color=Color(0.035, 0.043, 0.050, 1)\n\n[display]\nwindow/size/viewport_width=1280\nwindow/size/viewport_height=720\nwindow/size/window_width_override=1280\nwindow/size/window_height_override=720\nwindow/stretch/mode="canvas_items"\nwindow/handheld/orientation=1\n\n[rendering]\nrenderer/rendering_method="gl_compatibility"\nrenderer/rendering_method.mobile="gl_compatibility"\ntextures/default_filters/use_nearest_mipmap_filter=false\n\n[input]\nui_left={"deadzone":0.15,"events":[Object(InputEventKey,"physical_keycode":65),Object(InputEventKey,"physical_keycode":4194311)]}\nui_right={"deadzone":0.15,"events":[Object(InputEventKey,"physical_keycode":68),Object(InputEventKey,"physical_keycode":4194313)]}\nui_up={"deadzone":0.15,"events":[Object(InputEventKey,"physical_keycode":87),Object(InputEventKey,"physical_keycode":4194320)]}\nui_down={"deadzone":0.15,"events":[Object(InputEventKey,"physical_keycode":83),Object(InputEventKey,"physical_keycode":4194322)]}\njump={"deadzone":0.15,"events":[Object(InputEventKey,"physical_keycode":32)]}\nlook_left={"deadzone":0.0,"events":[]}\nlook_right={"deadzone":0.0,"events":[]}\nlook_up={"deadzone":0.0,"events":[]}\nlook_down={"deadzone":0.0,"events":[]}\n''',
        encoding="utf-8",
    )


def write_graph() -> None:
    graph = {
        "schemaVersion": 2,
        "graphId": "realistic-quaternius-mobile-controller",
        "name": "Personagem realista mobile — NoCode",
        "variables": {},
        "nodes": [
            {"id": "start", "type": "CATALOG", "definitionId": "event.scene.start", "positionX": 40, "positionY": 60, "values": {}},
            {"id": "speed", "type": "CATALOG", "definitionId": "world.character_set_speed", "positionX": 320, "positionY": 60, "values": {"target_path": "../Player", "speed": "5.4"}},
            {"id": "idle", "type": "CATALOG", "definitionId": "animation.play", "positionX": 620, "positionY": 60, "values": {"target_path": "../Player/CharacterModel/AnimationPlayer", "animation": "Idle"}},
            {"id": "fixed", "type": "CATALOG", "definitionId": "event.frame.fixed_update", "positionX": 40, "positionY": 300, "values": {}},
            {"id": "move", "type": "CATALOG", "definitionId": "world.character_move", "positionX": 320, "positionY": 300, "values": {"target_path": "../Player", "speed": "5.4"}},
            {"id": "look", "type": "CATALOG", "definitionId": "world.character_look", "positionX": 620, "positionY": 300, "values": {"target_path": "../Player/CameraPivot", "sensitivity": "0.040"}},
            {"id": "jump_event", "type": "CATALOG", "definitionId": "event.input.button_pressed", "positionX": 40, "positionY": 540, "values": {"action": "jump"}},
            {"id": "jump", "type": "CATALOG", "definitionId": "world.character_jump", "positionX": 320, "positionY": 540, "values": {"target_path": "../Player", "force": "7.0"}},
            {"id": "jump_anim", "type": "CATALOG", "definitionId": "animation.play", "positionX": 620, "positionY": 540, "values": {"target_path": "../Player/CharacterModel/AnimationPlayer", "animation": "Jump"}},
            {"id": "jump_wait", "type": "CATALOG", "definitionId": "flow.delay", "positionX": 900, "positionY": 540, "values": {"seconds": "0.72"}},
            {"id": "idle_after_jump", "type": "CATALOG", "definitionId": "animation.play", "positionX": 1180, "positionY": 540, "values": {"target_path": "../Player/CharacterModel/AnimationPlayer", "animation": "Idle"}},
        ],
        "connections": [
            {"fromNodeId": "start", "fromPortId": "flow", "toNodeId": "speed", "toPortId": "flow"},
            {"fromNodeId": "speed", "fromPortId": "flow", "toNodeId": "idle", "toPortId": "flow"},
            {"fromNodeId": "fixed", "fromPortId": "flow", "toNodeId": "move", "toPortId": "flow"},
            {"fromNodeId": "move", "fromPortId": "flow", "toNodeId": "look", "toPortId": "flow"},
            {"fromNodeId": "jump_event", "fromPortId": "flow", "toNodeId": "jump", "toPortId": "flow"},
            {"fromNodeId": "jump", "fromPortId": "flow", "toNodeId": "jump_anim", "toPortId": "flow"},
            {"fromNodeId": "jump_anim", "fromPortId": "flow", "toNodeId": "jump_wait", "toPortId": "flow"},
            {"fromNodeId": "jump_wait", "fromPortId": "flow", "toNodeId": "idle_after_jump", "toPortId": "flow"},
        ],
    }
    (OUT_ROOT / "main.graph.json").write_text(json.dumps(graph, ensure_ascii=False, indent=2), encoding="utf-8")


def scene_text() -> str:
    trees = [
        (-15, -15, 1.15), (-24, -25, 1.45), (-32, -5, 1.0), (-40, 18, 1.35),
        (18, -22, 1.25), (28, -10, 1.0), (36, 8, 1.4), (45, 25, 1.1),
        (-10, 27, 1.0), (8, 35, 1.2), (22, 28, 0.9), (-36, 34, 1.15),
        (4, -38, 1.3), (-45, -30, 1.0), (48, -35, 1.35), (55, 2, 1.05),
    ]
    rocks = [(-8, -9, 1.2, 0.6, 0.9), (9, -18, 0.8, 0.45, 1.1), (-20, 12, 1.4, 0.55, 1.0), (23, 16, 1.1, 0.4, 0.8), (35, -28, 1.6, 0.7, 1.2)]
    puddles = [(-2.0, -5.5, 1.7, 0.7), (1.8, -17.0, 1.3, 0.55), (-1.2, -29.0, 1.0, 0.4)]

    out = '''[gd_scene load_steps=24 format=3]\n\n[ext_resource type="Script" path="res://main.gd" id="1_main"]\n[ext_resource type="Script" path="res://mobile_controls.gd" id="2_controls"]\n[ext_resource type="PackedScene" path="res://addons/quaternius_ik_rigged/Models_with_rigging/Master_Rigged.tscn" id="3_character"]\n[ext_resource type="Texture2D" path="res://assets/environment/kloofendal_misty_morning_2k.hdr" id="4_hdri"]\n\n[sub_resource type="PanoramaSkyMaterial" id="SkyMaterial"]\npanorama = ExtResource("4_hdri")\nenergy_multiplier = 0.75\n\n[sub_resource type="Sky" id="Sky"]\nsky_material = SubResource("SkyMaterial")\nradiance_size = 3\n\n[sub_resource type="Environment" id="Environment"]\nbackground_mode = 2\nsky = SubResource("Sky")\nambient_light_source = 3\nambient_light_color = Color(0.64, 0.70, 0.73, 1)\nambient_light_energy = 0.62\nreflected_light_source = 2\ntonemap_mode = 2\nfog_enabled = true\nfog_light_color = Color(0.54, 0.60, 0.63, 1)\nfog_light_energy = 0.55\nfog_density = 0.0065\nfog_height = 0.5\nfog_height_density = 0.10\nfog_sky_affect = 0.55\n\n[sub_resource type="StandardMaterial3D" id="GroundMat"]\nalbedo_color = Color(0.095, 0.20, 0.11, 1)\nroughness = 0.96\n\n[sub_resource type="StandardMaterial3D" id="RoadMat"]\nalbedo_color = Color(0.16, 0.125, 0.085, 1)\nroughness = 0.82\n\n[sub_resource type="StandardMaterial3D" id="TrunkMat"]\nalbedo_color = Color(0.16, 0.075, 0.035, 1)\nroughness = 0.95\n\n[sub_resource type="StandardMaterial3D" id="LeafMat"]\nalbedo_color = Color(0.035, 0.13, 0.055, 1)\nroughness = 0.90\n\n[sub_resource type="StandardMaterial3D" id="RockMat"]\nalbedo_color = Color(0.24, 0.27, 0.27, 1)\nroughness = 0.88\n\n[sub_resource type="StandardMaterial3D" id="WoodMat"]\nalbedo_color = Color(0.24, 0.115, 0.052, 1)\nroughness = 0.86\n\n[sub_resource type="StandardMaterial3D" id="RoofMat"]\nalbedo_color = Color(0.07, 0.075, 0.08, 1)\nroughness = 0.72\n\n[sub_resource type="StandardMaterial3D" id="PuddleMat"]\nalbedo_color = Color(0.18, 0.24, 0.26, 0.72)\nmetallic = 0.15\nroughness = 0.18\ntransparency = 1\n\n[sub_resource type="BoxMesh" id="GroundMesh"]\nsize = Vector3(140, 0.5, 140)\n\n[sub_resource type="BoxShape3D" id="GroundShape"]\nsize = Vector3(140, 0.5, 140)\n\n[sub_resource type="BoxMesh" id="RoadMesh"]\nsize = Vector3(6.5, 0.07, 105)\n\n[sub_resource type="CylinderMesh" id="TrunkMesh"]\ntop_radius = 0.18\nbottom_radius = 0.34\nheight = 3.8\nradial_segments = 12\n\n[sub_resource type="SphereMesh" id="CrownMesh"]\nradius = 1.45\nheight = 2.6\nradial_segments = 14\nrings = 8\n\n[sub_resource type="SphereMesh" id="RockMesh"]\nradius = 0.85\nheight = 1.5\nradial_segments = 12\nrings = 7\n\n[sub_resource type="BoxMesh" id="BoxMesh"]\nsize = Vector3(1, 1, 1)\n\n[sub_resource type="PlaneMesh" id="PuddleMesh"]\nsize = Vector2(2, 1)\n\n[sub_resource type="CapsuleShape3D" id="PlayerShape"]\nradius = 0.43\nheight = 1.95\n\n[sub_resource type="LabelSettings" id="LabelSettings"]\nfont_size = 20\nfont_color = Color(0.95, 0.97, 0.98, 1)\noutline_size = 6\noutline_color = Color(0.02, 0.025, 0.03, 0.9)\n\n[node name="MundoRealistaNoCode" type="Node3D"]\nscript = ExtResource("1_main")\n\n[node name="WorldEnvironment" type="WorldEnvironment" parent="."]\nenvironment = SubResource("Environment")\n\n[node name="Sun" type="DirectionalLight3D" parent="."]\nrotation_degrees = Vector3(-48, -24, 0)\nlight_color = Color(0.78, 0.84, 0.88, 1)\nlight_energy = 0.95\nshadow_enabled = true\ndirectional_shadow_max_distance = 90.0\n\n[node name="Ground" type="StaticBody3D" parent="."]\nposition = Vector3(0, -0.25, 0)\n[node name="Mesh" type="MeshInstance3D" parent="Ground"]\nmesh = SubResource("GroundMesh")\nmaterial_override = SubResource("GroundMat")\n[node name="Collision" type="CollisionShape3D" parent="Ground"]\nshape = SubResource("GroundShape")\n\n[node name="Road" type="MeshInstance3D" parent="."]\nposition = Vector3(0, 0.04, -10)\nrotation_degrees = Vector3(0, -5, 0)\nmesh = SubResource("RoadMesh")\nmaterial_override = SubResource("RoadMat")\n'''

    for i, (x, z, sx, sz) in enumerate(puddles, 1):
        out += f'''\n[node name="Puddle{i:02d}" type="MeshInstance3D" parent="."]\nposition = Vector3({x}, 0.085, {z})\nrotation_degrees = Vector3(0, {i * 17}, 0)\nscale = Vector3({sx}, 1, {sz})\nmesh = SubResource("PuddleMesh")\nmaterial_override = SubResource("PuddleMat")\n'''

    for i, (x, z, scale) in enumerate(trees, 1):
        out += f'''\n[node name="Tree{i:02d}" type="Node3D" parent="."]\nposition = Vector3({x}, 1.9, {z})\nscale = Vector3({scale}, {scale}, {scale})\n[node name="Trunk" type="MeshInstance3D" parent="Tree{i:02d}"]\nmesh = SubResource("TrunkMesh")\nmaterial_override = SubResource("TrunkMat")\n[node name="CrownA" type="MeshInstance3D" parent="Tree{i:02d}"]\nposition = Vector3(0, 2.35, 0)\nmesh = SubResource("CrownMesh")\nmaterial_override = SubResource("LeafMat")\n[node name="CrownB" type="MeshInstance3D" parent="Tree{i:02d}"]\nposition = Vector3(0.65, 2.05, 0.15)\nscale = Vector3(0.72, 0.72, 0.72)\nmesh = SubResource("CrownMesh")\nmaterial_override = SubResource("LeafMat")\n'''

    for i, (x, z, sx, sy, sz) in enumerate(rocks, 1):
        out += f'''\n[node name="Rock{i:02d}" type="MeshInstance3D" parent="."]\nposition = Vector3({x}, {sy * 0.7}, {z})\nrotation_degrees = Vector3({i * 4}, {i * 31}, {i * 3})\nscale = Vector3({sx}, {sy}, {sz})\nmesh = SubResource("RockMesh")\nmaterial_override = SubResource("RockMat")\n'''

    out += '''\n[node name="Cabin" type="Node3D" parent="."]\nposition = Vector3(17, 0, -9)\nrotation_degrees = Vector3(0, 18, 0)\n[node name="Floor" type="MeshInstance3D" parent="Cabin"]\nposition = Vector3(0, 0.12, 0)\nscale = Vector3(5.2, 0.24, 4.2)\nmesh = SubResource("BoxMesh")\nmaterial_override = SubResource("WoodMat")\n[node name="Back" type="MeshInstance3D" parent="Cabin"]\nposition = Vector3(0, 1.55, -2.0)\nscale = Vector3(5.2, 3.1, 0.18)\nmesh = SubResource("BoxMesh")\nmaterial_override = SubResource("WoodMat")\n[node name="Left" type="MeshInstance3D" parent="Cabin"]\nposition = Vector3(-2.5, 1.55, 0)\nscale = Vector3(0.18, 3.1, 4.2)\nmesh = SubResource("BoxMesh")\nmaterial_override = SubResource("WoodMat")\n[node name="Right" type="MeshInstance3D" parent="Cabin"]\nposition = Vector3(2.5, 1.55, 0)\nscale = Vector3(0.18, 3.1, 4.2)\nmesh = SubResource("BoxMesh")\nmaterial_override = SubResource("WoodMat")\n[node name="FrontLeft" type="MeshInstance3D" parent="Cabin"]\nposition = Vector3(-1.55, 1.55, 2.0)\nscale = Vector3(2.1, 3.1, 0.18)\nmesh = SubResource("BoxMesh")\nmaterial_override = SubResource("WoodMat")\n[node name="FrontRight" type="MeshInstance3D" parent="Cabin"]\nposition = Vector3(1.55, 1.55, 2.0)\nscale = Vector3(2.1, 3.1, 0.18)\nmesh = SubResource("BoxMesh")\nmaterial_override = SubResource("WoodMat")\n[node name="RoofLeft" type="MeshInstance3D" parent="Cabin"]\nposition = Vector3(-1.15, 3.55, 0)\nrotation_degrees = Vector3(0, 0, 28)\nscale = Vector3(3.2, 0.18, 4.8)\nmesh = SubResource("BoxMesh")\nmaterial_override = SubResource("RoofMat")\n[node name="RoofRight" type="MeshInstance3D" parent="Cabin"]\nposition = Vector3(1.15, 3.55, 0)\nrotation_degrees = Vector3(0, 0, -28)\nscale = Vector3(3.2, 0.18, 4.8)\nmesh = SubResource("BoxMesh")\nmaterial_override = SubResource("RoofMat")\n[node name="Door" type="MeshInstance3D" parent="Cabin"]\nposition = Vector3(0, 1.05, 2.1)\nscale = Vector3(1.15, 2.1, 0.10)\nmesh = SubResource("BoxMesh")\nmaterial_override = SubResource("RoofMat")\n\n[node name="Player" type="CharacterBody3D" parent="."]\nposition = Vector3(0, 1.0, 7.5)\nfloor_snap_length = 0.35\n[node name="Collision" type="CollisionShape3D" parent="Player"]\nshape = SubResource("PlayerShape")\n[node name="CharacterModel" parent="Player" instance=ExtResource("3_character")]\nposition = Vector3(0, -1.0, 0)\nrotation_degrees = Vector3(0, 180, 0)\n[node name="CameraPivot" type="Node3D" parent="Player"]\nposition = Vector3(0, 0.70, 0)\nrotation_degrees = Vector3(-8, 0, 0)\n[node name="SpringArm3D" type="SpringArm3D" parent="Player/CameraPivot"]\nspring_length = 4.1\nmargin = 0.16\n[node name="Camera3D" type="Camera3D" parent="Player/CameraPivot/SpringArm3D"]\ncurrent = true\nfov = 64.0\n\n[node name="HUD" type="CanvasLayer" parent="."]\n[node name="Status" type="Label" parent="HUD"]\noffset_left = 24.0\noffset_top = 18.0\noffset_right = 890.0\noffset_bottom = 52.0\ntext = "Carregando NoCode..."\nlabel_settings = SubResource("LabelSettings")\n[node name="Debug" type="Label" parent="HUD"]\noffset_left = 24.0\noffset_top = 54.0\noffset_right = 620.0\noffset_bottom = 88.0\ntext = "Posição"\nlabel_settings = SubResource("LabelSettings")\n[node name="Climate" type="Label" parent="HUD"]\nanchors_preset = 1\nanchor_left = 1.0\nanchor_right = 1.0\noffset_left = -430.0\noffset_top = 20.0\noffset_right = -24.0\noffset_bottom = 54.0\ngrow_horizontal = 0\ntext = "MANHÃ NUBLADA • NÉVOA LEVE • SOLO ÚMIDO"\nhorizontal_alignment = 2\nlabel_settings = SubResource("LabelSettings")\n[node name="MobileControls" type="Control" parent="HUD"]\nlayout_mode = 3\nanchors_preset = 15\nanchor_right = 1.0\nanchor_bottom = 1.0\ngrow_horizontal = 2\ngrow_vertical = 2\nscript = ExtResource("2_controls")\n'''
    return out


def write_scene() -> None:
    (OUT_ROOT / "main.tscn").write_text(scene_text(), encoding="utf-8")


def write_docs() -> None:
    readme = '''# Mundo Realista NoCode Complete\n\nProjeto mobile 3D montado para a build do repositório `kacerato/3dengine`.\n\n## Incluído\n\n- personagem masculino rigado do pacote Quaternius IK Rigged;\n- biblioteca UAL1 com Idle, Walk, Jog, Sprint, Jump e outras animações;\n- joystick mobile esquerdo;\n- arraste no lado direito para controlar a câmera;\n- botão PULAR;\n- movimento, câmera e pulo executados pelo grafo NoCode;\n- HDRI Kloofendal Misty Morning em 2K;\n- terreno, estrada de terra úmida, poças, árvores, pedras e cabana;\n- controles WASD + Espaço para teste no computador.\n\n## Abrir\n\n1. Extraia o ZIP.\n2. Importe `project.godot` na build da sua engine com `MGSNoCodeRunner`.\n3. Execute `main.tscn`.\n\n## NoCode\n\nAbra `main.graph.json`. Os fluxos principais são:\n\n- `Start → Character Set Speed → Animation Play (Idle)`\n- `Fixed Update → Character Move → Character Look`\n- `Button Pressed (jump) → Character Jump → Animation Play (Jump) → Delay → Idle`\n\nOs scripts `main.gd` e `mobile_controls.gd` são os mesmos adaptadores mínimos do fixture oficial. A lógica de gameplay permanece no grafo.\n'''
    (OUT_ROOT / "README.md").write_text(readme, encoding="utf-8")
    licenses = '''# Licenças e fontes\n\n## Personagem e animações\n\n- Quaternius Universal Base Characters e Universal Animation Library.\n- Integração Godot: Quaternius_IK_Rigged, por JamesonBradfield.\n- Licença: CC0 1.0 Universal.\n- Fonte do pacote integrado: https://godotengine.org/asset-library/asset/5235\n- Repositório: https://codeberg.org/jamesonBradfield/Quaternius_IK_Rigged_with_animations\n\n## Iluminação\n\n- Kloofendal Misty Morning, por Greg Zaal / Poly Haven.\n- Licença: CC0.\n- Fonte: https://polyhaven.com/a/kloofendal_misty_morning\n\n## Projeto\n\nOs arquivos de cena e grafo deste pacote são entregues para uso no projeto do usuário. Nenhum arquivo do código-fonte da engine foi alterado.\n'''
    (OUT_ROOT / "LICENCAS_E_FONTES.md").write_text(licenses, encoding="utf-8")


def validate_and_manifest() -> None:
    json.loads((OUT_ROOT / "main.graph.json").read_text(encoding="utf-8"))
    scene = (OUT_ROOT / "main.tscn").read_text(encoding="utf-8")
    for path in re.findall(r'path="res://([^"]+)"', scene):
        if not (OUT_ROOT / path).exists():
            raise FileNotFoundError(f"Recurso da cena ausente: {path}")
    manifest = []
    for file in sorted(p for p in OUT_ROOT.rglob("*") if p.is_file()):
        digest = hashlib.sha256(file.read_bytes()).hexdigest()
        manifest.append({"path": str(file.relative_to(OUT_ROOT)), "sha256": digest, "size": file.stat().st_size})
    (OUT_ROOT / "ASSET_MANIFEST.json").write_text(json.dumps(manifest, indent=2), encoding="utf-8")


def create_zip() -> Path:
    zip_path = OUT_ROOT.parent / f"{OUT_ROOT.name}.zip"
    if zip_path.exists():
        zip_path.unlink()
    with zipfile.ZipFile(zip_path, "w", zipfile.ZIP_DEFLATED, allowZip64=True) as archive:
        for file in sorted(p for p in OUT_ROOT.rglob("*") if p.is_file()):
            archive.write(file, Path(OUT_ROOT.name) / file.relative_to(OUT_ROOT))
    return zip_path


def main() -> None:
    clean_copy()
    copy_quaternius_addon()
    copy_hdri()
    write_project_settings()
    write_graph()
    write_scene()
    write_docs()
    validate_and_manifest()
    zip_path = create_zip()
    print(f"PROJECT={OUT_ROOT}")
    print(f"ZIP={zip_path}")
    print(f"ZIP_SIZE={zip_path.stat().st_size}")


if __name__ == "__main__":
    main()
