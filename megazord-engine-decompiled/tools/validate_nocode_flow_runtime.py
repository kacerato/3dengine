#!/usr/bin/env python3
"""Static checks for Sequence/Gate/MultiGate runtime helpers. No APK build."""

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
    "NoCodeGateState.smali": "NoCodeGateState;",
    "NoCodeMultiGateState.smali": "NoCodeMultiGateState;",
    "NoCodeFlowRuntime.smali": "NoCodeFlowRuntime;",
    "NoCodeFlowDispatcher.smali": "NoCodeFlowDispatcher;",
    "NoCodeFlowController.smali": "NoCodeFlowController;",
}


def fail(message: str) -> None:
    print(f"ERROR: {message}", file=sys.stderr)


def method(text: str, name: str) -> str | None:
    match = re.search(
        rf"^\.method\s+[^\n]*\b{re.escape(name)}\([^\n]*\n.*?^\.end method$",
        text,
        flags=re.MULTILINE | re.DOTALL,
    )
    return match.group(0) if match else None


def main() -> int:
    errors: list[str] = []
    text: dict[str, str] = {}

    for filename, suffix in EXPECTED.items():
        path = RUNTIME / filename
        if not path.is_file():
            errors.append(f"missing {path.relative_to(ROOT)}")
            continue
        value = path.read_text(encoding="utf-8")
        text[filename] = value
        if suffix not in value.splitlines()[0]:
            errors.append(f"{filename}: unexpected class descriptor")
        if value.count(".method ") != value.count(".end method"):
            errors.append(f"{filename}: unbalanced method blocks")
        if "Lcom/google/gson/annotations/Expose;" in value:
            errors.append(f"{filename}: runtime flow state must not be graph JSON")

    if errors:
        for item in errors:
            fail(item)
        return 1

    flow_runtime = text["NoCodeFlowRuntime.smali"]
    if flow_runtime.count("Ljava/util/WeakHashMap;") < 2:
        errors.append("NoCodeFlowRuntime: Gate/MultiGate maps must be weakly graph-keyed")
    for marker in (
        "NoCodeExecutionRuntime;->current(",
        "NoCodeExecutionContext;->cancel()V",
        "NoCodeExecutionContext;->isCancelled()Z",
        "Ljava/lang/String;->isEmpty()Z",
    ):
        if marker not in flow_runtime:
            errors.append(f"NoCodeFlowRuntime: missing contract {marker}")
    if ".method public static synchronized cancelCurrent(" in flow_runtime:
        errors.append("NoCodeFlowRuntime: cancelCurrent must not hold flow-map lock while entering ExecutionRuntime")
    if ".method public static synchronized canContinue(" in flow_runtime:
        errors.append("NoCodeFlowRuntime: canContinue must not hold flow-map lock while entering ExecutionRuntime")

    gate = text["NoCodeGateState.smali"]
    for name in ("isOpen", "open", "close", "toggle", "reset", "setOpen"):
        if method(gate, name) is None:
            errors.append(f"NoCodeGateState: missing {name}")
    if "initialOpen:Z" not in gate:
        errors.append("NoCodeGateState: reset must have a stable initial state")

    multigate = text["NoCodeMultiGateState.smali"]
    for name in ("next", "reset", "restore", "getNextIndex"):
        if method(multigate, name) is None:
            errors.append(f"NoCodeMultiGateState: missing {name}")
    if "const/4 v0, -0x1" not in multigate:
        errors.append("NoCodeMultiGateState: exhausted/invalid selection must return -1")

    dispatcher = text["NoCodeFlowDispatcher.smali"]
    for marker in (
        "Lya/H;->BRANCH:Lya/H;",
        "NoCodeFlowRuntime;->canContinue(",
        "NoCodeNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V",
    ):
        if marker not in dispatcher:
            errors.append(f"NoCodeFlowDispatcher: missing native branch contract {marker}")
    forbidden = (
        "NoCodeNode;->o()Z",
        "NoCodeData;->J(",
        "NoCodeData;->p(",
        "Ljava/lang/Thread;",
        "Ljava/util/concurrent/",
    )
    for marker in forbidden:
        if marker in dispatcher:
            errors.append(f"NoCodeFlowDispatcher: must not bypass graph scheduler with {marker}")

    controller = text["NoCodeFlowController.smali"]
    for name in (
        "sequence",
        "gateEnter",
        "gateOpen",
        "gateClose",
        "gateToggle",
        "gateReset",
        "multiGateNext",
        "multiGateReset",
    ):
        if method(controller, name) is None:
            errors.append(f"NoCodeFlowController: missing {name}")
    multi_next = method(controller, "multiGateNext") or ""
    if "NoCodeMultiGateState;->restore(I)V" not in multi_next:
        errors.append("NoCodeFlowController: failed MultiGate dispatch must roll back cursor")
    if "NoCodeFlowRuntime;->canContinue(" not in multi_next:
        errors.append("NoCodeFlowController: MultiGate must check cancellation before consuming cursor")
    if "NoCodeNode;->B()Ljava/lang/String;" not in controller:
        errors.append("NoCodeFlowController: state must be keyed by stable node ID")

    execution = (RUNTIME / "NoCodeExecutionRuntime.smali").read_text(encoding="utf-8")
    clear = method(execution, "clear") or ""
    if "NoCodeFlowRuntime;->clear(" not in clear:
        errors.append("NoCodeExecutionRuntime.clear must reset per-graph flow state")

    if errors:
        for item in errors:
            fail(item)
        return 1

    print("NoCode flow runtime: static checks passed")
    print("Sequence delegates branch firing to NoCodeNode.u(slot)")
    print("Gate/MultiGate state is weakly graph-keyed and stable-node-ID keyed")
    print("Cancellation and transactional MultiGate cursor contracts verified")
    print("APK build intentionally not executed")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
