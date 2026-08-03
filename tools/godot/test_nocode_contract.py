#!/usr/bin/env python3
"""Fast contract tests for the legacy-compatible native NoCode foundation."""

from __future__ import annotations

import base64
import copy
import hashlib
import json
import unittest
from collections import defaultdict, deque
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
FIXTURE = ROOT / "tests/nocode/legacy_smoke.graph.json"
MODULE = ROOT / "godot-patches/modules/mobile_game_studio_nocode"
LOGO = ROOT / "godot-patches/branding/mobile_game_studio_logo.webp.base64"
APK_LOGO = ROOT / "app/src/main/res/drawable-nodpi/magic_ghost_logo.png"
DEMO = ROOT / "godot-fixtures/nocode-compat-demo"
MOBILE_DEMO = ROOT / "godot-fixtures/mobile-nocode-world"
EXPECTED_LOGO_SHA256 = "531c9db5609e283708a11d8f8ee41e1e599d4e4638776eaf6adb95a2580d435b"
EXPECTED_APK_LOGO_SHA256 = "567bc7257402fddf9846d38496041b2479a25c0684d556d023eee0fab660846d"

LEGACY_TYPES = {
    "ON_START": "event.scene.start",
    "ON_TOUCH": "event.object.touch",
    "ON_BUTTON_PRESSED": "event.input.button_pressed",
    "ROTATE_OBJECT": "transform.rotate.y",
    "SET_SCALE": "transform.scale.uniform",
    "PRINT_LOG": "debug.log.info",
    "SEQUENCE": "flow.sequence.2",
}

SUPPORTED = {
    "event.scene.start", "event.object.touch", "event.input.button_pressed", "event.custom.received",
    "flow.sequence.2", "flow.branch", "debug.log.info", "debug.log.warning", "debug.log.error",
    "variable.set", "variable.get", "variable.add", "math.add", "math.subtract", "math.multiply",
    "math.divide", "compare.equal", "compare.greater", "compare.less", "object.set_visible",
    "object.set_enabled", "transform.set_position", "transform.move", "transform.rotate.y",
    "transform.scale.uniform", "world.change_scene",
}


def definition(node: dict) -> str:
    explicit = node.get("definitionId") or node.get("definition_id")
    definition_id = explicit or LEGACY_TYPES.get(str(node.get("type", "")).upper(), "")
    parts = definition_id.split(".")
    if len(parts) == 3 and parts[0] in ("math", "compare"):
        return f"{parts[0]}.{parts[2]}"
    return definition_id


def validate(document: dict) -> list[str]:
    errors: list[str] = []
    nodes = document.get("nodes", [])
    connections = document.get("connections", [])
    if document.get("schemaVersion", 1) not in (1, 2): errors.append("schema")
    if len(nodes) > 512 or len(connections) > 1024: errors.append("limit")
    ids: set[str] = set()
    for node in nodes:
        node_id = str(node.get("id", "")).strip()
        if not node_id or node_id in ids: errors.append("node-id")
        ids.add(node_id)
        if definition(node) not in SUPPORTED: errors.append("definition")
    edges: set[tuple[str, str, str, str]] = set()
    for connection in connections:
        edge = (
            connection.get("fromNodeId", connection.get("from_node_id", "")),
            connection.get("fromPortId", connection.get("from_port_id", "flow")),
            connection.get("toNodeId", connection.get("to_node_id", "")),
            connection.get("toPortId", connection.get("to_port_id", "flow")),
        )
        if edge[0] not in ids or edge[2] not in ids or edge[0] == edge[2] or edge in edges: errors.append("connection")
        edges.add(edge)
    return errors


def literal(value):
    if not isinstance(value, str): return value
    normalized = value.strip()
    if normalized.lower() in ("true", "false"): return normalized.lower() == "true"
    try: return float(normalized) if "." in normalized else int(normalized)
    except ValueError: return normalized


def execute(document: dict, max_nodes: int = 128) -> tuple[dict, list[str], int]:
    errors = validate(document)
    if errors: raise ValueError(errors[0])
    nodes = {node["id"]: node for node in document["nodes"]}
    outgoing: dict[str, list[dict]] = defaultdict(list)
    for connection in document["connections"]: outgoing[connection["fromNodeId"]].append(connection)
    queue = deque(node["id"] for node in document["nodes"] if definition(node) == "event.scene.start")
    variables = dict(document.get("variables", {}))
    logs: list[str] = []
    visits: dict[str, int] = defaultdict(int)
    executed = 0
    while queue:
        node_id = queue.popleft()
        node = nodes[node_id]
        executed += 1
        visits[node_id] += 1
        if executed > max_nodes or visits[node_id] > 16: raise RuntimeError("cycle guard")
        node_definition = definition(node)
        values = node.get("values", {})
        if node_definition == "variable.set": variables[values["name"]] = literal(values.get("value"))
        elif node_definition == "variable.add": variables[values["name"]] = float(variables.get(values["name"], 0)) + float(literal(values.get("amount", 0)))
        elif node_definition == "debug.log.info": logs.append(values.get("message") or node.get("textValue", ""))
        elif node_definition in ("math.add", "math.subtract", "math.multiply", "math.divide"):
            a, b = float(literal(values.get("a", 0))), float(literal(values.get("b", 0)))
            result = {
                "math.add": a + b,
                "math.subtract": a - b,
                "math.multiply": a * b,
                "math.divide": 0 if b == 0 else a / b,
            }[node_definition]
            # Mirror both the old catalog port and the foundation's compatibility alias.
            node["_result"] = result
        selected = None
        if node_definition == "flow.branch": selected = "true" if bool(literal(values.get("condition", False))) else "false"
        for connection in outgoing[node_id]:
            port = connection.get("fromPortId", "flow")
            if port == "result" and "_result" in node:
                target = nodes[connection["toNodeId"]]
                target.setdefault("values", {})[connection.get("toPortId", "value")] = node["_result"]
                continue
            if selected is None or port == selected or (selected == "flow" and port.startswith("then")): queue.append(connection["toNodeId"])
    return variables, logs, executed


def decode_logo() -> bytes:
    encoded = "".join(LOGO.read_text(encoding="utf-8").split()).rstrip("=")
    encoded += "=" * (-len(encoded) % 4)
    return base64.b64decode(encoded, validate=True)


class NoCodeContractTests(unittest.TestCase):
    def setUp(self) -> None:
        self.document = json.loads(FIXTURE.read_text(encoding="utf-8"))

    def test_legacy_graph_is_valid_and_executable(self) -> None:
        self.assertEqual([], validate(self.document))
        variables, logs, executed = execute(self.document)
        self.assertEqual(3.0, variables["score"])
        self.assertEqual(["NoCode legacy graph executed"], logs)
        self.assertEqual(5, executed)
        self.assertEqual("transform.rotate.y", definition(self.document["nodes"][-1]))

    def test_every_original_node_type_keeps_its_mapping(self) -> None:
        for legacy_type, expected in LEGACY_TYPES.items():
            self.assertEqual(expected, definition({"type": legacy_type}))
            self.assertIn(expected, SUPPORTED)

    def test_duplicate_ids_are_rejected(self) -> None:
        broken = copy.deepcopy(self.document)
        broken["nodes"][1]["id"] = "start"
        self.assertIn("node-id", validate(broken))

    def test_cycles_are_guarded(self) -> None:
        cyclic = copy.deepcopy(self.document)
        cyclic["connections"].append({"fromNodeId": "log-ok", "toNodeId": "set-score", "fromPortId": "flow", "toPortId": "flow"})
        with self.assertRaisesRegex(RuntimeError, "cycle guard"): execute(cyclic)

    def test_exact_product_logo_is_preserved(self) -> None:
        payload = decode_logo()
        self.assertEqual(EXPECTED_LOGO_SHA256, hashlib.sha256(payload).hexdigest())
        self.assertEqual(b"RIFF", payload[:4])
        self.assertEqual(b"WEBP", payload[8:12])
        apk_payload = APK_LOGO.read_bytes()
        self.assertEqual(EXPECTED_APK_LOGO_SHA256, hashlib.sha256(apk_payload).hexdigest())
        self.assertEqual(b"\x89PNG\r\n\x1a\n", apk_payload[:8])
        self.assertEqual((1254, 1254), tuple(int.from_bytes(apk_payload[offset:offset + 4], "big") for offset in (16, 20)))

    def test_saved_godot_demo_exercises_legacy_compatibility(self) -> None:
        required = ("project.godot", "main.tscn", "main.gd", "main.graph.json", "EXPECTED_OUTPUT.txt")
        for name in required:
            self.assertTrue((DEMO / name).is_file(), f"demo file missing: {name}")
        demo = json.loads((DEMO / "main.graph.json").read_text(encoding="utf-8"))
        self.assertEqual([], validate(demo))
        self.assertIn("math.number.add", {node.get("definitionId") for node in demo["nodes"]})
        variables, logs, executed = execute(demo)
        self.assertEqual(5.0, variables["score"])
        self.assertEqual(["NOCODE_DEMO_PASS"], logs)
        self.assertEqual(6, executed)
        script = (DEMO / "main.gd").read_text(encoding="utf-8")
        for needle in ("MGSNoCodeGraph.new()", "execute_event(\"event.scene.start\")", "NOCODE_DEMO_PASS"):
            self.assertIn(needle, script)

    def test_native_module_has_runtime_editor_and_guards(self) -> None:
        required = {
            "mgs_nocode_graph.cpp": ("import_legacy_json", "512", "1024"),
            "mgs_nocode_runner.cpp": ("max_executed_nodes", "Possível ciclo infinito detectado", "graph_error"),
            "editor/mgs_nocode_editor_plugin.cpp": ("GraphEdit", "Importar", "Validar"),
            "register_types.cpp": ("GDREGISTER_CLASS(MGSNoCodeGraph)", "MGSNoCodeRunner", "EditorPlugins::add_by_type"),
        }
        for relative, needles in required.items():
            text = (MODULE / relative).read_text(encoding="utf-8")
            for needle in needles: self.assertIn(needle, text, f"{needle!r} missing from {relative}")

    def test_native_catalog_restores_more_than_900_blocks(self) -> None:
        header = (MODULE / "mgs_nocode_catalog.h").read_text(encoding="utf-8")
        source = (MODULE / "mgs_nocode_catalog.cpp").read_text(encoding="utf-8")
        self.assertIn("EXPECTED_SIZE = 961", header)
        self.assertIn("catalog.size() == EXPECTED_SIZE", source)
        for family in ("event.", "math.", "vector.", "list.", "object."):
            self.assertIn(f'"{family}', source, f"catalog family missing: {family}")
        for family in ("physics", "vehicle", "audio", "animation", "ui", "world"):
            self.assertIn(f'"{family}"', source, f"catalog family missing: {family}")
        editor = (MODULE / "editor/mgs_nocode_editor_plugin.cpp").read_text(encoding="utf-8")
        for needle in ("PopupPanel", "LineEdit", "ItemList", "MGSNoCodeCatalog::size()"):
            self.assertIn(needle, editor)

    def test_mobile_world_is_a_real_nocode_runtime_fixture(self) -> None:
        required = ("project.godot", "main.tscn", "main.gd", "main.graph.json", "mobile_controls.gd", "icon.png", "README.md")
        for name in required:
            self.assertTrue((MOBILE_DEMO / name).is_file(), f"mobile demo file missing: {name}")
        graph = json.loads((MOBILE_DEMO / "main.graph.json").read_text(encoding="utf-8"))
        definitions = {node.get("definitionId") for node in graph["nodes"]}
        self.assertTrue({"event.frame.fixed_update", "world.character_move", "world.character_look", "world.character_jump"}.issubset(definitions))
        scene = (MOBILE_DEMO / "main.tscn").read_text(encoding="utf-8")
        for needle in ('type="CharacterBody3D"', 'type="SpringArm3D"', 'type="StaticBody3D"', 'mobile_controls.gd'):
            self.assertIn(needle, scene)
        runner = (MODULE / "mgs_nocode_runner.cpp").read_text(encoding="utf-8")
        for needle in ('execute_event("event.frame.update"', 'world.character_move', 'CameraPivot', 'move_and_slide()', 'world.character_look', 'world.character_jump', 'mgs_last_jump_ok'):
            self.assertIn(needle, runner)
        main_script = (MOBILE_DEMO / "main.gd").read_text(encoding="utf-8")
        for needle in ('jump_requested.connect', 'runner.emit_button("jump")', 'node_executed.connect'):
            self.assertIn(needle, main_script)

    def test_both_android_and_engine_splashes_are_branded(self) -> None:
        patcher = (ROOT / "tools/godot/apply_product_patches.py").read_text(encoding="utf-8")
        self.assertIn('godot_dir / "main/splash.png"', patcher)
        self.assertIn('godot_dir / "main/splash_editor.png"', patcher)

    def test_every_native_node_has_generated_documentation(self) -> None:
        generated = (ROOT / "docs/nocode/NATIVE_NODE_CATALOG.md").read_text(encoding="utf-8")
        self.assertIn("Catálogo nativo NoCode — 961 operações", generated)
        self.assertEqual(961, generated.count("\n## "))
        for node_id in ("event.scene.start", "math.number.add", "world.character_move", "world.character_look", "world.character_jump"):
            self.assertIn(f"`{node_id}`", generated)
        for guide in ("docs/nocode/MOBILE_RUNTIME_GUIDE.md", "docs/editor/APP_REFERENCE.md"):
            self.assertTrue((ROOT / guide).is_file())


if __name__ == "__main__": unittest.main(verbosity=2)
