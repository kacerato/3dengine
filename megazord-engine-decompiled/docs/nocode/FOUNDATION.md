# Megazord NoCode 2.0 — Runtime Foundation

Branch: `agent/megazord-nocode-foundation`

This document records the implementation directly in `megazord-engine-decompiled/`. The existing Megazord runtime is being evolved in place; no parallel engine/runtime is introduced.

## Existing runtime mapped

| Readable responsibility | Decompiled class/path | Notes |
| --- | --- | --- |
| NoCode editor panel | `smali_classes5/com/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel.smali` | Creates `y6/X`, opens either a component-backed graph or `graphFile`. |
| NoCode component runtime | `smali_classes6/com/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor.smali` | Component lifecycle, function calls, collisions, update hooks and access to `NoCodeData`. |
| Graph/runtime state | `smali_classes6/com/itsmagic/engine/Engines/Engine/NoCode/NoCodeData.smali` | Nodes, connections, branch connections, variables, attributes and transient runtime maps. |
| Legacy object/component binding | `NoCodeData.d` / `NoCodeData.e`, assigned through `Y0(GameObject, Component)` | Preserved during migration so existing graphs keep their behavior. |

## Slice 1 — stable execution primitives

### Execution IDs

`Runtime/NoCodeExecutionIds.smali`

- monotonic `AtomicLong` source;
- each execution context receives a unique ID;
- ready for debugger, event log and scheduler correlation.

### ObjectRef

`Runtime/NoCodeObjectRef.smali`

- wraps the actual `GameObject` instance;
- equality is identity-based rather than name-based;
- prevents adjacent/repeated objects from silently exchanging targets.

### ComponentRef

`Runtime/NoCodeComponentRef.smali`

- couples a component to its owner `ObjectRef`;
- keeps component resolution attached to the same object selected earlier in the flow.

### ExecutionContext

`Runtime/NoCodeExecutionContext.smali`

Carries:

- `executionId`;
- creation timestamp;
- graph (`NoCodeData`);
- source object/component;
- target object;
- sender object;
- event name;
- payload;
- cancellation state.

Execution context is runtime-only and is never graph JSON.

### ExecutionStack

`Runtime/NoCodeExecutionStack.smali`

- LIFO execution semantics;
- nested graph/event calls can restore their caller instead of overwriting one global target;
- explicit `current`, `push`, `pop`, `clear`, `size`, `isEmpty` operations.

## Slice 2 — runtime sessions and target resolution

### ExecutionRuntime

`Runtime/NoCodeExecutionRuntime.smali`

- sessions are keyed by `NoCodeData` using `WeakHashMap`;
- graphs are not kept alive only because a previous execution existed;
- session operations are synchronized;
- `begin(...)` seeds source object/component and default target;
- `beginEvent(...)` also carries event name, payload and sender;
- `current(...)` exposes the active nested context;
- `end(graph, expectedContext)` refuses out-of-order pops;
- `clear(graph)` is the lifecycle cleanup hook;
- `depth(graph)` is ready for debugger diagnostics.

### TargetResolver

`Runtime/NoCodeTargetResolver.smali`

Resolution order is fixed:

1. explicit valid `ObjectRef` supplied by a node;
2. `ExecutionContext.targetObject`;
3. `ExecutionContext.sourceObject`;
4. `null`.

There is deliberately no fallback to nearest object, editor selection, object name, scene scan or global current object.

## Slice 3 — P3.2 context lifecycle wired into NoCodeExecutor

`Components/NoCodeExecutor.smali` now opens and closes an execution context around the legacy synchronous dispatch while keeping the old `Y0(GameObject, Component)` call intact.

Integrated entry points:

- `callFunction`;
- `onCollision`;
- `onCollisionEnter`;
- `onCollisionStop`;
- `preUpdate`;
- `lowTaskUpdate`.

For every wrapped entry point the compatibility order is:

1. obtain/rebind the existing `NoCodeData`;
2. run legacy `Y0(GameObject, Component)`;
3. `NoCodeExecutionRuntime.begin(...)`;
4. execute the original graph dispatch unchanged;
5. `NoCodeExecutionRuntime.end(graph, expectedContext)`.

Normal and exceptional exits both call `end(...)`. The Smali methods use `catchall` cleanup paths so a node exception cannot strand the nested context on the stack.

Lifecycle cleanup was also wired:

- `onDetach()` clears the graph execution session before legacy `E0()` teardown;
- `setNoCodeData()` clears the old graph session when replacing the graph;
- `clone()` remains untouched by execution state and continues cloning only graph data through Gson;
- no runtime execution field was added to the serialized `NoCodeExecutor` data model.

This is intentionally a compatibility bridge. Existing nodes still see the legacy binding, while new nodes can consume explicit runtime context.

## Static validation

`tools/validate_nocode_runtime_foundation.py`

The validator intentionally does not build an APK. It checks:

- expected runtime descriptors;
- balanced Smali methods and annotations;
- no Gson `@Expose` on execution-session classes;
- weakly keyed runtime sessions;
- synchronized begin/event/current/end/clear contracts;
- target-resolution priority explicit → target → source;
- every integrated `NoCodeExecutor` entry point still contains legacy `Y0`;
- every integrated entry point contains `begin`, two `end` paths and `catchall` cleanup;
- `onDetach` and graph replacement clear sessions;
- `clone()` does not reference `ExecutionRuntime`/`ExecutionContext`;
- baseline `NoCodeData` and `NoCodePanel` remain present.

## Next slice — Custom Events before flow/raycast expansion

The next implementation should establish event semantics before Sequence, Gate or Raycast depend on them.

### P4.1 — Registry/event-node mapping

1. map the actual node registration mechanism across all dex files;
2. identify the base node contract used by existing event nodes such as Start/Collision;
3. add readable registration metadata without replacing the old registry wholesale;
4. keep stable node IDs separate from visual labels.

### P4.2 — Event envelope

Introduce a small runtime event value containing:

- event ID/name;
- sender `ObjectRef`;
- receiver/target `ObjectRef`;
- payload;
- parent execution ID;
- dispatch timestamp.

No scene lookup is allowed after receiver resolution.

### P4.3 — Custom Event + Send Event

- `Custom Event` is an explicit graph entry point;
- `Send Event` resolves its receiver once, creates an event context via `beginEvent(...)`, dispatches and restores the caller;
- component/object scope must be explicit;
- invalid receiver means a deterministic failed/no-op result, never nearest-object fallback.

Only after event dispatch is stable should the graph receive `Sequence`, `Fan Out`, `Gate`, `Multi Gate` and then `Trace Ray`/interaction nodes.

## Compatibility gates before moving on

- existing graphs deserialize unchanged;
- start still fires once;
- function calls still reach existing nodes;
- collision enter/stay/stop still reach existing nodes;
- `setNoCodeData()` still binds the new graph to owner/component;
- graph clone still contains only serializable graph state;
- runtime session depth returns to zero after synchronous dispatch;
- nested calls restore the caller in LIFO order;
- two adjacent objects never exchange targets through fallback behavior;
- editor can still open component graphs and graph files.

## Architectural rules

- editor/UI stays in the editor layer; execution stays under `Engines/Engine/NoCode`;
- readable runtime classes are preferred over growing unrelated obfuscated classes;
- no global "current object" for interaction targeting;
- no nearest-object fallback after target resolution;
- no reflection-based arbitrary component invocation;
- no graph state keyed by visual labels;
- stable IDs are required when graph versioning lands;
- async/parallel flow will be scheduler-controlled; scene mutation will not become uncontrolled multi-threading.
