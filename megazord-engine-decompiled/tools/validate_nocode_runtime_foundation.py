#!/usr/bin/env python3
"""Static checks for the additive NoCode 2.0 runtime foundation.

This intentionally does not build an APK. It catches common manual-smali mistakes
before the integration phase touches NoCodeData/NoCodeExecutor.
"""

from __future__ import annotations

from pathlib import Path
import re
import sys

ROOT = Path(__file__).resolve().parents[1]
RUNTIME = (
    ROOT
    / "smali_classes6"
    / "com"
    / "itsmagic"
    / "engine"
    / "Engines"
    / "Engine"
    / "NoCode"
    / "Runtime"
)

EXPECTED = {
    "NoCodeExecutionIds.smali": "Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionIds;",
    "NoCodeObjectRef.smali": "Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;",
    "NoCodeComponentRef.smali": "Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeComponentRef;",
    "NoCodeExecutionContext.smali": "Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;",
    "NoCodeExecutionStack.smali": "Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionStack;",
}

CLASS_RE = re.compile(r"^\.class\s+.+?\s+(L[^;]+;)$", re.MULTILINE)


def fail(message: str) -> None:
    print(f"ERROR: {message}", file=sys.stderr)


def validate_file(path: Path, expected_descriptor: str) -> list[str]:
    errors: list[str] = []
    if not path.is_file():
        return [f"missing {path.relative_to(ROOT)}"]

    text = path.read_text(encoding="utf-8")
    match = CLASS_RE.search(text)
    if not match:
        errors.append(f"{path.name}: missing .class descriptor")
    elif match.group(1) != expected_descriptor:
        errors.append(
            f"{path.name}: descriptor {match.group(1)!r} != {expected_descriptor!r}"
        )

    methods = len(re.findall(r"^\.method\b", text, flags=re.MULTILINE))
    method_ends = len(re.findall(r"^\.end method$", text, flags=re.MULTILINE))
    if methods != method_ends:
        errors.append(
            f"{path.name}: unbalanced methods ({methods} starts, {method_ends} ends)"
        )

    annotations = len(re.findall(r"^\s*\.annotation\b", text, flags=re.MULTILINE))
    annotation_ends = len(
        re.findall(r"^\s*\.end annotation$", text, flags=re.MULTILINE)
    )
    if annotations != annotation_ends:
        errors.append(
            f"{path.name}: unbalanced annotations ({annotations} starts, "
            f"{annotation_ends} ends)"
        )

    # Execution context is runtime state. It must not accidentally become graph JSON.
    if path.name in {"NoCodeExecutionContext.smali", "NoCodeExecutionStack.smali"}:
        if "Lcom/google/gson/annotations/Expose;" in text:
            errors.append(f"{path.name}: runtime state must not use Gson @Expose")

    return errors


def main() -> int:
    errors: list[str] = []
    for filename, descriptor in EXPECTED.items():
        errors.extend(validate_file(RUNTIME / filename, descriptor))

    legacy_executor = (
        ROOT
        / "smali_classes6"
        / "com"
        / "itsmagic"
        / "engine"
        / "Engines"
        / "Engine"
        / "NoCode"
        / "Components"
        / "NoCodeExecutor.smali"
    )
    legacy_data = legacy_executor.parents[1] / "NoCodeData.smali"
    editor_panel = (
        ROOT
        / "smali_classes5"
        / "com"
        / "itsmagic"
        / "engine"
        / "Activities"
        / "Editor"
        / "Panels"
        / "NoCode"
        / "NoCodePanel.smali"
    )

    for critical in (legacy_executor, legacy_data, editor_panel):
        if not critical.is_file():
            errors.append(f"critical baseline file missing: {critical.relative_to(ROOT)}")

    if errors:
        for error in errors:
            fail(error)
        return 1

    print("NoCode runtime foundation: static checks passed")
    print(f"Validated {len(EXPECTED)} additive runtime classes")
    print("APK build intentionally not executed")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
