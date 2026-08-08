# NoCode Trace Runtime

## Goal

P6 introduces a strict interaction path for ray/trace-driven gameplay without relying on the legacy implicit GameObject fallback used by some existing nodes.

Target path:

`Trace request -> native physics adapter -> NoCodeHitResult -> ObjectRef -> ExecutionContext.targetObject -> strict component lookup`

## Confirmed legacy behavior

`PickComponentNode` receives a GAME_OBJECT input and then resolves a component from that GameObject. Its current object-input helper can fall back to the graph's current object when no explicit object is supplied. That behavior is retained for existing graphs and must not be silently changed.

New trace-driven nodes must not use that fallback.

## Runtime contracts

### NoCodeHitResult

Existing runtime value representing either a hit or miss.

A successful hit contains:

- `NoCodeObjectRef object`
- `Vector3 point`
- `Vector3 normal`
- `float distance`

Point and normal are defensively copied.

### NoCodeHitTargetBinder

Promotes a valid hit ObjectRef to the active `NoCodeExecutionContext.targetObject`.

A miss clears the current target. It does not fall back to source object.

### NoCodeStrictComponentResolver

Resolves a component only from an explicit valid `NoCodeObjectRef` and component `Class` using the GameObject-local component lookup.

It performs no parent, child, scene, nearest-object, name-based or current-editor-selection lookup.

### NoCodeTraceRequest

Immutable trace input contract containing:

- origin (`Vector3`)
- direction (`Vector3`)
- max distance (`float`)
- optional source (`NoCodeObjectRef`)

Origin and direction are copied on input/output.

### NoCodeTraceProvider

Small adapter boundary:

`trace(NoCodeTraceRequest) -> NoCodeHitResult`

This intentionally does not implement physics itself. The engine's real physics/raycast implementation must provide this adapter once its authoritative class is located.

### NoCodeTraceRuntime

Owns the currently installed trace provider and exposes safe `trace(request)` execution.

Invalid requests, missing providers, or providers returning null resolve to `NoCodeHitResult.miss()` rather than falling back to another targeting mechanism.

## Repository completeness boundary

The currently accessible decompiled tree does not expose an obvious authoritative physics/raycast wrapper under the main Engine namespace. The visible `Engine/Native` package contains MeshBakeNative only.

This is treated as an unresolved source boundary, not proof that the original product lacks raycast support. Another local copy may contain additional decompiled classes.

Until the real physics entry point is identified, do not implement a custom geometry intersection engine and do not bind Trace Ray to guessed obfuscated methods.

## Compatibility rule

Legacy nodes keep their existing object-resolution semantics.

New strict interaction nodes should use:

1. `NoCodeTraceRuntime.trace(request)`
2. `NoCodeHitTargetBinder.apply(graph, hit)`
3. explicit `hit.getObject()` or context target
4. `NoCodeStrictComponentResolver.resolve(objectRef, componentClass)`

This makes the new interaction chain deterministic while preserving old project behavior.

## Next implementation gate

Once the native physics boundary is located:

1. implement a `NoCodeTraceProvider` adapter over the real engine raycast;
2. normalize the native collision result into `NoCodeHitResult`;
3. add the serialized `Trace Ray` node through the existing `Lya/o;` node registry path;
4. add a strict Pick Component path/node without modifying the legacy node's fallback semantics;
5. wire interaction examples through ObjectRef rather than names or nearest-object searches.
