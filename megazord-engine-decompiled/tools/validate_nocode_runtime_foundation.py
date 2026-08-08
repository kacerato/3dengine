#!/usr/bin/env python3
"""Static checks for the NoCode 2.0 runtime foundation and compatibility wiring.

This intentionally does not build an APK. It catches common manual-smali mistakes
and protects the legacy NoCode execution contract while the new runtime is wired in.
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
EXECUTOR = (
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

EXPECTED = {
    "NoCodeExecutionIds.smali": "Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionIds;",
    "NoCodeObjectRef.smali": "Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;",
    "NoCodeComponentRef.smali": "Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeComponentRef;",
    "NoCodeExecutionContext.smali": "Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;",
    "NoCodeExecutionStack.smali": "Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionStack;",
    "NoCodeExecutionRuntime.smali": "Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionRuntime;",
    "NoCodeTargetResolver.smali": "Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTargetResolver;",
    "NoCodeEventIds.smali": "Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventIds;",
    "NoCodeEventEnvelope.smali": "Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;",
    "NoCodeEventFactory.smali": "Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventFactory;",
}

RUNTIME_ONLY = {
    "NoCodeExecutionContext.smali",
    "NoCodeExecutionStack.smali",
    "NoCodeExecutionRuntime.smali",
    "NoCodeEventEnvelope.smali",
    "NoCodeEventFactory.smali",
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

    if path.name in RUNTIME_ONLY and "Lcom/google/gson/annotations/Expose;" in text:
        errors.append(f"{path.name}: runtime state must not use Gson @Expose")

    return errors


def method_body(text: str, method_name: str) -> str | None:
    pattern = re.compile(
        rf"^\.method\s+[^\n]*\b{re.escape(method_name)}\([^\n]*\n"
        rf"(?P<body>.*?)^\.end method$",
        flags=re.MULTILINE | re.DOTALL,
    )
    match = pattern.search(text)
    return match.group(0) if match else None


def validate_runtime_contracts() -> list[str]:
    errors: list[str] = []

    runtime_text = (RUNTIME / "NoCodeExecutionRuntime.smali").read_text(encoding="utf-8")
    if "Ljava/util/WeakHashMap;" not in runtime_text:
        errors.append("NoCodeExecutionRuntime.smali: sessions must be weakly keyed by NoCodeData")

    for signature in (
        ".method public static synchronized begin(",
        ".method public static synchronized beginEvent(",
        ".method public static synchronized current(",
        ".method public static synchronized end(",
        ".method public static synchronized clear(",
    ):
        if signature not in runtime_text:
            errors.append(f"NoCodeExecutionRuntime.smali: missing synchronized contract {signature}")

    resolver_text = (RUNTIME / "NoCodeTargetResolver.smali").read_text(encoding="utf-8")
    ordered_markers = (
        "->valid(Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;)Z",
        "->getTargetObject()Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;",
        "->getSourceObject()Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;",
    )
    positions = [resolver_text.find(marker) for marker in ordered_markers]
    if any(position < 0 for position in positions) or positions != sorted(positions):
        errors.append(
            "NoCodeTargetResolver.smali: target priority must remain explicit -> context target -> source"
        )

    return errors


def validate_event_contracts() -> list[str]:
    errors: list[str] = []

    envelope = (RUNTIME / "NoCodeEventEnvelope.smali").read_text(encoding="utf-8")
    required_fields = (
        ".field private final eventId:J",
        ".field private final createdAtNanos:J",
        ".field private final name:Ljava/lang/String;",
        ".field private final sender:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;",
        ".field private final receiver:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;",
        ".field private final payload:Ljava/lang/Object;",
        ".field private final parentExecutionId:J",
    )
    for field in required_fields:
        if field not in envelope:
            errors.append(f"NoCodeEventEnvelope.smali: missing immutable event field {field}")

    if "NoCodeEventIds;->next()J" not in envelope:
        errors.append("NoCodeEventEnvelope.smali: eventId must come from NoCodeEventIds")
    if "Ljava/lang/System;->nanoTime()J" not in envelope:
        errors.append("NoCodeEventEnvelope.smali: dispatch creation timestamp missing")

    factory = (RUNTIME / "NoCodeEventFactory.smali").read_text(encoding="utf-8")
    current_marker = "NoCodeExecutionRuntime;->current("
    parent_marker = "NoCodeExecutionContext;->getExecutionId()J"
    envelope_marker = "NoCodeEventEnvelope;-><init>("
    for marker in (current_marker, parent_marker, envelope_marker):
        if marker not in factory:
            errors.append(f"NoCodeEventFactory.smali: missing causal-link contract {marker}")

    return errors


def validate_executor_integration() -> list[str]:
    errors: list[str] = []
    if not EXECUTOR.is_file():
        return [f"critical baseline file missing: {EXECUTOR.relative_to(ROOT)}"]

    errors.extend(
        validate_file(
            EXECUTOR,
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;",
        )
    )
    text = EXECUTOR.read_text(encoding="utf-8")

    begin_marker = "Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionRuntime;->begin("
    end_marker = "Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionRuntime;->end("
    clear_marker = "Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionRuntime;->clear("
    legacy_bind = "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Y0("

    wrapped_methods = (
        "callFunction",
        "lowTaskUpdate",
        "onCollision",
        "onCollisionEnter",
        "onCollisionStop",
        "preUpdate",
    )

    for name in wrapped_methods:
        body = method_body(text, name)
        if body is None:
            errors.append(f"NoCodeExecutor.smali: missing entry point {name}")
            continue
        if legacy_bind not in body:
            errors.append(f"NoCodeExecutor.smali:{name}: legacy Y0 binding was removed")
        if begin_marker not in body:
            errors.append(f"NoCodeExecutor.smali:{name}: missing execution begin")
        if body.count(end_marker) < 2:
            errors.append(
                f"NoCodeExecutor.smali:{name}: context must end on normal and exceptional exits"
            )
        if ".catchall" not in body:
            errors.append(f"NoCodeExecutor.smali:{name}: missing catchall cleanup path")
        if legacy_bind in body and begin_marker in body:
            if body.find(legacy_bind) > body.find(begin_marker):
                errors.append(
                    f"NoCodeExecutor.smali:{name}: compatibility binding must run before context begin"
                )

    detach = method_body(text, "onDetach")
    if detach is None or clear_marker not in detach:
        errors.append("NoCodeExecutor.smali:onDetach: runtime session must be cleared")

    replace = method_body(text, "setNoCodeData")
    if replace is None or clear_marker not in replace:
        errors.append("NoCodeExecutor.smali:setNoCodeData: old graph session must be cleared")

    clone = method_body(text, "clone")
    if clone is None:
        errors.append("NoCodeExecutor.smali: clone method missing")
    elif "NoCodeExecutionRuntime" in clone or "NoCodeExecutionContext" in clone:
        errors.append("NoCodeExecutor.smali: clone must not copy runtime execution state")

    if text.count(begin_marker) != len(wrapped_methods):
        errors.append(
            "NoCodeExecutor.smali: unexpected number of execution begin hooks; "
            "review new/removed entry points explicitly"
        )

    return errors


def main() -> int:
    errors: list[str] = []
    for filename, descriptor in EXPECTED.items():
        errors.extend(validate_file(RUNTIME / filename, descriptor))

    if not errors:
        errors.extend(validate_runtime_contracts())
        errors.extend(validate_event_contracts())
        errors.extend(validate_executor_integration())

    legacy_data = EXECUTOR.parents[1] / "NoCodeData.smali"
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

    for critical in (legacy_data, editor_panel):
        if not critical.is_file():
            errors.append(f"critical baseline file missing: {critical.relative_to(ROOT)}")

    if errors:
        for error in errors:
            fail(error)
        return 1

    print("NoCode runtime foundation: static checks passed")
    print(f"Validated {len(EXPECTED)} runtime classes")
    print("Validated execution-session and target-resolution contracts")
    print("Validated immutable event-envelope and causal-link contracts")
    print("Validated legacy executor compatibility wiring and cleanup paths")
    print("APK build intentionally not executed")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
