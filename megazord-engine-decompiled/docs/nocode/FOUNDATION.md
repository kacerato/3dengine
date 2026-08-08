# Megazord NoCode 2.0 — Runtime Foundation

Branch: `agent/megazord-nocode-foundation`

This document records the first implementation slice directly in `megazord-engine-decompiled/`. The goal is to evolve the existing Megazord runtime instead of creating a parallel engine.

## Existing runtime mapped

| Readable responsibility | Decompiled class/path | Notes |
| --- | --- | --- |
| NoCode editor panel | `smali_classes5/com/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel.smali` | Creates `y6/X`, opens either a component-backed graph or `graphFile`. |
| NoCode component runtime | `smali_classes6/com/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor.smali` | Component lifecycle, function calls, collisions, update hooks and access to `NoCodeData`. |
| Graph/runtime state | `smali_classes6/com/itsmagic/engine/Engines/Engine/NoCode/NoCodeData.smali` | Nodes, connections, branch connections, variables, attributes and transient runtime maps. |
| Current object/component binding | `NoCodeData.d` / `NoCodeData.e`, assigned through `Y0(GameObject, Component)` | Existing behavior that the new execution context will formalize rather than duplicate. |

## Slice 1 implemented

### 1. Execution IDs

`Runtime/NoCodeExecutionIds.smali`

- monotonic `AtomicLong` source;
- each future execution context receives a unique ID;
- designed for debugger/event log/scheduler correlation.

### 2. Stable ObjectRef

`Runtime/NoCodeObjectRef.smali`

- wraps the actual `GameObject` instance;
- equality is identity-based, not name-based;
- caches `System.identityHashCode`;
- prevents a later node from silently changing target because another object is closer or has the same name.

### 3. Stable ComponentRef

`Runtime/NoCodeComponentRef.smali`

- couples a component to its owner `ObjectRef`;
- keeps component resolution tied to the same object selected earlier in the execution;
- exposes `isValid()` for defensive checks.

### 4. ExecutionContext

`Runtime/NoCodeExecutionContext.smali`

Carries:

- `executionId`;
- `createdAtNanos`;
- graph (`NoCodeData`);
- source object;
- source component;
- target object;
- sender object;
- event name;
- payload;
- cancellation state.

The class is runtime-only and is intentionally not serialized into graph JSON.

## Why this is additive first

`NoCodeExecutor` currently calls `NoCodeData.Y0(GameObject, Component)` from several lifecycle/event paths. Replacing those calls immediately would risk breaking:

- graph cloning;
- serialization/deserialization;
- collision events;
- start dispatch;
- function dispatch;
- editor preview behavior.

The new types are therefore introduced first, then wired into the existing execution points in a dedicated integration change.

## Next sub-step — integrate context into execution

### P3.2 — Context lifecycle

1. Add a transient execution-context holder/stack owned by the NoCode runtime.
2. Begin a context at each external entry point (start, update/event, collision, function call, custom event).
3. Seed `sourceObject/sourceComponent` from the same values currently passed to `Y0`.
4. Keep `Y0` running during the compatibility phase so legacy nodes keep working.
5. New nodes read `ObjectRef/ComponentRef` from the context.
6. End/restore the previous context after dispatch so nested events cannot overwrite their caller.
7. Add a hard invariant: context is never serialized.

### P3.3 — Target propagation

1. Ray/interaction nodes set `targetObject` exactly once per resolved interaction.
2. Downstream nodes receive the same `ObjectRef`.
3. `Pick Component` resolves against that ref, not editor selection/global nearest object.
4. Validation rejects invalid refs instead of silently falling back to a global search.

### P3.4 — Compatibility checks

Before moving to Custom Events/Sequence:

- existing NoCode graphs still deserialize;
- `NoCodeExecutor.clone()` still clones only serializable graph data;
- `setNoCodeData()` still rebinds owner/component;
- start event still fires once;
- collisions still reach existing nodes;
- editor can open component graphs and graph files;
- no runtime context leaks into Gson output.

## Architectural rules

- UI/editor code stays in the editor layer; execution logic stays under `Engines/Engine/NoCode`.
- New readable classes are preferred over growing obfuscated classes with unrelated responsibilities.
- No global "current object" will be introduced for interaction targeting.
- No reflection-based arbitrary component invocation.
- No graph state keyed by visual node labels; stable IDs will be introduced when graph versioning lands.
- Async/parallel flow will be scheduler-controlled; scene mutation will not become uncontrolled multi-threading.
