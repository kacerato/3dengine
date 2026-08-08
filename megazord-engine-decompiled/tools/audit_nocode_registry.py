#!/usr/bin/env python3
"""Audit the decompiled NoCode node registry without building an APK.

The decompile contains obfuscated and sometimes case-distinct physical package
paths. This scanner uses class descriptors and bytecode references instead of
assuming that a descriptor such as Lya/o; lives at a literal ya/o.smali path.
"""

from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path
import re
import sys

ROOT = Path(__file__).resolve().parents[1]

TARGETS = {
    "node_factory_class": "Lya/o;",
    "node_factory_call": "Lya/o;->c(Ljava/lang/String;Lcom/google/gson/JsonObject;)",
    "start_event_marker": "Ldb/a;",
    "collision_enter_marker": "Lhb/b;",
    "collision_stay_marker": "Lhb/c;",
    "collision_stop_marker": "Lhb/d;",
    "serialized_node_type": "serializedNodeType",
    "serialized_record_type": "serializedType",
}

CLASS_RE = re.compile(r"^\.class\s+.+?\s+(L[^;]+;)$", re.MULTILINE)


@dataclass(frozen=True)
class SmaliUnit:
    path: Path
    descriptor: str | None
    text: str


def iter_smali_files() -> list[Path]:
    roots = sorted(
        p for p in ROOT.iterdir() if p.is_dir() and (p.name == "smali" or p.name.startswith("smali_classes"))
    )
    files: list[Path] = []
    for root in roots:
        files.extend(sorted(root.rglob("*.smali")))
    return files


def load_units() -> list[SmaliUnit]:
    units: list[SmaliUnit] = []
    for path in iter_smali_files():
        try:
            text = path.read_text(encoding="utf-8")
        except UnicodeDecodeError:
            text = path.read_text(encoding="utf-8", errors="replace")
        match = CLASS_RE.search(text)
        units.append(
            SmaliUnit(
                path=path,
                descriptor=match.group(1) if match else None,
                text=text,
            )
        )
    return units


def rel(path: Path) -> str:
    return str(path.relative_to(ROOT))


def find_definitions(units: list[SmaliUnit], descriptor: str) -> list[SmaliUnit]:
    return [unit for unit in units if unit.descriptor == descriptor]


def find_references(units: list[SmaliUnit], needle: str) -> list[SmaliUnit]:
    return [unit for unit in units if needle in unit.text]


def print_units(title: str, units: list[SmaliUnit]) -> None:
    print(f"\n{title}: {len(units)}")
    for unit in units:
        descriptor = unit.descriptor or "<unknown>"
        print(f"  - {rel(unit.path)}  [{descriptor}]")


def main() -> int:
    units = load_units()
    if not units:
        print("ERROR: no smali files found", file=sys.stderr)
        return 2

    print(f"Scanned {len(units)} Smali files under {ROOT}")

    factory_defs = find_definitions(units, TARGETS["node_factory_class"])
    print_units("Factory class definitions for Lya/o;", factory_defs)

    factory_refs = find_references(units, TARGETS["node_factory_call"])
    print_units("Factory call references", factory_refs)

    for key in (
        "start_event_marker",
        "collision_enter_marker",
        "collision_stay_marker",
        "collision_stop_marker",
    ):
        descriptor = TARGETS[key]
        defs = find_definitions(units, descriptor)
        refs = find_references(units, descriptor)
        print_units(f"Definitions for {descriptor}", defs)
        print_units(f"References to {descriptor}", refs)

    serialized_node_refs = find_references(units, TARGETS["serialized_node_type"])
    print_units("serializedNodeType references", serialized_node_refs)

    serialized_record_refs = find_references(units, TARGETS["serialized_record_type"])
    print_units("serializedType references", serialized_record_refs)

    if not factory_defs:
        print(
            "\nWARNING: Lya/o; is referenced but its class definition was not found in the decompiled Smali tree."
        )
        print(
            "Do not create a replacement registry solely to work around this. Confirm whether the class comes from "
            "a missing dex, generated source, external package, or an incomplete decompile."
        )
        return 1

    print("\nRegistry factory definition located. Inspect it before adding new serialized node types.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
