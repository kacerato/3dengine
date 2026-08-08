# Megazord NoCode 2.0 — Runtime Foundation

Branch: `agent/megazord-nocode-foundation`

This document records the first implementation slices directly in `megazord-engine-decompiled/`. The goal is to evolve the existing Megazord runtime instead of creating a parallel engine.

## Existing runtime mapped

| Readable responsibility | Decompiled class/path | Notes |
| --- | --- | --- |
| NoCode editor panel | `smali_classes5/com/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel.smali` | Creates `y6/X`, opens either a component-backed graph or `graphFile`. |
| NoCode component runtime | `smali_classes6/com/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor.smali` | Component lifecycle, function calls, collisions, update hooks and access to `NoCodeData`. |
| Graph/runtime state | `smali_classes6/com/itsmagic/engine/Engines/Engine/NoCode/NoCodeData.smali` | Nodes, connections, branch connections, variables, attributes and transient runtime maps. |
| Current object/component binding | `NoCodeData.d` / `NoCodeData.e`, assigned through `Y0(GameObject, Component)` | Existing behavior that the new execution context will formalize rather than duplicate. |

## Slice 1 implemented — stable execution primitives

### 1. Execution IDs

`Runtime/NoCodeExecutionIds.smali`

- monotonic `AtomicLong` source;
- each execution context receives a unique ID;
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

### 5. ExecutionStack

`Runtime/NoCodeExecutionStack.smali`

- stack semantics instead of one mutable global context;
- nested graph/event calls can push a child context and later restore the caller;
- `current`, `push`, `pop`, `clear`, `size` and `isEmpty` are explicit operations.

## Slice 2 implemented — execution session and deterministic target rules

### 6. ExecutionRuntime

`Runtime/NoCodeExecutionRuntime.smali`

Owns the runtime session without modifying the graph's serialized representation.

- sessions are keyed by `NoCodeData` in a `WeakHashMap`;
- no graph is kept alive only because an execution session once existed;
- public session operations are synchronized because NoCode already exposes asynchronous work;
- `begin(...)` seeds source object/component and defaults target to the source object;
- `beginEvent(...)` additionally seeds event name, payload and sender;
- `current(...)` reads the active nested context;
- `end(graph, expectedContext)` only pops when the expected context is still the top of the stack;
- `clear(graph)` provides an explicit lifecycle cleanup hook;
- `depth(graph)` is ready for diagnostics/debugger use.

The strict `end(graph, expectedContext)` check is intentional: an out-of-order nested completion must not silently pop another execution's context.

### 7. TargetResolver

`Runtime/NoCodeTargetResolver.smali`

Resolution order is fixed and documented:

1. explicit valid `ObjectRef` supplied by the node;
2. `ExecutionContext.targetObject`;
3. `ExecutionContext.sourceObject`;
4. `null`.

There is deliberately no fallback to nearest object, editor selection, object name, scene scan or global current object. This is the core invariant for cases such as two adjacent doors, multiple vehicles or repeated prefabs.

## Why legacy execution remains enabled during integration

`NoCodeExecutor` currently calls `NoCodeData.Y0(GameObject, Component)` from several lifecycle/event paths. Replacing those calls immediately would risk breaking:

- graph cloning;
- serialization/deserialization;
- collision events;
- start dispatch;
- function dispatch;
- editor preview behavior.

The new runtime therefore runs as a compatibility layer first. During P3.2, entry points will begin/end an `ExecutionContext` while still calling `Y0(...)`. Legacy nodes continue to consume the existing binding; new nodes consume the explicit context.

## Next sub-step — wire context into existing entry points

### P3.2 — Context lifecycle integration

For each synchronous external entry point:

1. keep the existing `Y0(GameObject, Component)` binding;
2. call `NoCodeExecutionRuntime.begin(...)` before graph dispatch;
3. execute the existing dispatch unchanged;
4. call `NoCodeExecutionRuntime.end(graph, context)` on every exit path;
5. for event entry points, use `beginEvent(...)` so sender/payload are first-class;
6. on detach or graph replacement, call `clear(graph)`;
7. never store the context in an `@Expose` field.

Integration order:

1. `callFunction` — synchronous and isolated;
2. collision enter/stay/stop;
3. start/pre-update;
4. low-task/update hooks;
5. future custom-event dispatch.

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
- no runtime context leaks into Gson output;
- nested contexts restore the caller in LIFO order;
- two adjacent objects never exchange targets through fallback behavior.

## Static validation

`tools/validate_nocode_runtime_foundation.py`

The validator intentionally does not build an APK. It checks:

- all expected runtime descriptors exist;
- Smali methods and annotations are balanced;
- session/context classes do not use Gson `@Expose`;
- runtime sessions remain weakly keyed;
- begin/event/current/end/clear remain synchronized contracts;
- target resolution order stays explicit → target → source;
- baseline `NoCodeExecutor`, `NoCodeData` and `NoCodePanel` still exist.

## Architectural rules

- UI/editor code stays in the editor layer; execution logic stays under `Engines/Engine/NoCode`.
- New readable classes are preferred over growing obfuscated classes with unrelated responsibilities.
- No global "current object" will be introduced for interaction targeting.
- No nearest-object fallback after a target has been resolved.
- No reflection-based arbitrary component invocation.
- No graph state keyed by visual node labels; stable IDs will be introduced when graph versioning lands.
- Async/parallel flow will be scheduler-controlled; scene mutation will not become uncontrolled multi-threading.
