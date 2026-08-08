#!/usr/bin/env python3
"""Validate the exact-target NoCode event bridge without building an APK."""

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


def error(message: str) -> None:
    print(f"ERROR: {message}", file=sys.stderr)


def method_body(text: str, name: str) -> str | None:
    pattern = re.compile(
        rf"^\.method\s+[^\n]*\b{re.escape(name)}\([^\n]*\n.*?^\.end method$",
        flags=re.MULTILINE | re.DOTALL,
    )
    match = pattern.search(text)
    return match.group(0) if match else None


def main() -> int:
    failures: list[str] = []

    paths = {
        "object_ref": RUNTIME / "NoCodeObjectRef.smali",
        "context": RUNTIME / "NoCodeExecutionContext.smali",
        "runtime": RUNTIME / "NoCodeExecutionRuntime.smali",
        "envelope": RUNTIME / "NoCodeEventEnvelope.smali",
        "factory": RUNTIME / "NoCodeEventFactory.smali",
        "dispatcher": RUNTIME / "NoCodeEventDispatcher.smali",
    }
    for key, path in paths.items():
        if not path.is_file():
            failures.append(f"missing {key}: {path.relative_to(ROOT)}")

    if failures:
        for item in failures:
            error(item)
        return 1

    object_ref = paths["object_ref"].read_text(encoding="utf-8")
    valid = method_body(object_ref, "isValid")
    if valid is None or "GameObject;->h1()Z" not in valid:
        failures.append("ObjectRef validity must reject destroyed/invalid GameObjects")

    context = paths["context"].read_text(encoding="utf-8")
    for marker in (
        "eventEnvelope:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;",
        "getEventEnvelope()",
        "setEventEnvelope(",
        "setSenderRef(",
        "setTargetRef(",
    ):
        if marker not in context:
            failures.append(f"ExecutionContext missing event bridge: {marker}")
    if "Lcom/google/gson/annotations/Expose;" in context:
        failures.append("ExecutionContext event state must remain transient from graph JSON")

    runtime = paths["runtime"].read_text(encoding="utf-8")
    begin_envelope = method_body(runtime, "beginEnvelope")
    if begin_envelope is None:
        failures.append("ExecutionRuntime.beginEnvelope is missing")
    else:
        for marker in (
            "->begin(",
            "->setEventEnvelope(",
            "->setEvent(",
            "->setSenderRef(",
            "->setTargetRef(",
        ):
            if marker not in begin_envelope:
                failures.append(f"beginEnvelope missing propagation step: {marker}")

    dispatcher = paths["dispatcher"].read_text(encoding="utf-8")
    dispatch = method_body(dispatcher, "dispatch")
    send = method_body(dispatcher, "send")
    if dispatch is None:
        failures.append("NoCodeEventDispatcher.dispatch is missing")
    else:
        for marker in (
            "NoCodeEventEnvelope;->hasReceiver()Z",
            "NoCodeObjectRef;->get()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "NoCodeExecutor;",
            "GameObject;->l0(Ljava/lang/Class;)",
            "NoCodeData;->Y0(",
            "NoCodeExecutionRuntime;->beginEnvelope(",
            "NoCodeData;->C(Ljava/lang/String;[Ljava/lang/Object;)V",
        ):
            if marker not in dispatch:
                failures.append(f"directed dispatch missing contract: {marker}")
        if dispatch.count("NoCodeExecutionRuntime;->end(") < 2:
            failures.append("directed dispatch must end receiver context on both exits")
        if ".catchall" not in dispatch:
            failures.append("directed dispatch requires catchall cleanup")

        forbidden = (
            "GameObject;->callFunction(",
            "GameObject;->q0(",
            "GameObject;->n0(",
            "GameObject;->h0(",
            "GameObject;->o0(",
            "GameObject;->r0(",
        )
        for marker in forbidden:
            if marker in dispatch:
                failures.append(f"directed dispatch contains forbidden fallback/search: {marker}")

    if send is None:
        failures.append("NoCodeEventDispatcher.send is missing")
    else:
        for marker in (
            "NoCodeExecutionRuntime;->current(",
            "NoCodeExecutionContext;->getSourceObject()",
            "NoCodeEventFactory;->create(",
            "NoCodeEventDispatcher;->dispatch(",
        ):
            if marker not in send:
                failures.append(f"send API missing causal step: {marker}")

    envelope = paths["envelope"].read_text(encoding="utf-8")
    if "NoCodeEventIds;->next()J" not in envelope:
        failures.append("EventEnvelope must own an independent event ID")
    if "parentExecutionId:J" not in envelope:
        failures.append("EventEnvelope must carry parentExecutionId")

    factory = paths["factory"].read_text(encoding="utf-8")
    if "NoCodeExecutionContext;->getExecutionId()J" not in factory:
        failures.append("EventFactory must capture parent execution ID")

    if failures:
        for item in failures:
            error(item)
        return 1

    print("NoCode exact-target event dispatch: static checks passed")
    print("Receiver lookup is local by NoCodeExecutor class")
    print("No parent/child/name/nearest-object fallback detected")
    print("APK build intentionally not executed")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
