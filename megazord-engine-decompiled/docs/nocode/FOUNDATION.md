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

`Components/NoCodeExecutor.smali` opens and closes an execution context around the legacy synchronous dispatch while keeping the old `Y0(GameObject, Component)` call intact.

Integrated entry points:

- `callFunction`;
- `onCollision`;
- `onCollisionEnter`;
- `onCollisionStop`;
- `preUpdate`;
- `lowTaskUpdate`.

For every wrapped entry point the compatibility order is:

1. obtain/rebind existing `NoCodeData`;
2. run legacy `Y0(GameObject, Component)`;
3. `NoCodeExecutionRuntime.begin(...)`;
4. execute the original graph dispatch unchanged;
5. `NoCodeExecutionRuntime.end(graph, expectedContext)`.

Normal and exceptional exits both call `end(...)`. `catchall` cleanup prevents a node exception from stranding a nested context.

Lifecycle cleanup:

- `onDetach()` clears the graph execution session before legacy `E0()` teardown;
- `setNoCodeData()` clears the old graph session when replacing the graph;
- `clone()` remains independent of runtime execution state;
- no execution field was added to serialized `NoCodeExecutor` state.

Existing nodes still consume the legacy binding; new nodes can consume explicit runtime context.

## Slice 4 — P4.2 event envelope implemented before event nodes

The runtime event value was added before `Custom Event` / `Send Event` so node implementation does not dictate event semantics.

### Event IDs

`Runtime/NoCodeEventIds.smali`

- independent monotonic event IDs using `AtomicLong`;
- event identity is not conflated with execution identity.

### EventEnvelope

`Runtime/NoCodeEventEnvelope.smali`

Immutable runtime fields:

- `eventId`;
- `createdAtNanos`;
- event `name`;
- sender `ObjectRef`;
- receiver `ObjectRef`;
- payload;
- `parentExecutionId`.

`hasReceiver()` checks that a directed receiver reference is valid. The envelope contains resolved references and never performs a scene/name/nearest-object lookup itself.

### EventFactory

`Runtime/NoCodeEventFactory.smali`

- reads `NoCodeExecutionRuntime.current(graph)`;
- captures the current execution ID as `parentExecutionId` when present;
- creates a new immutable event envelope;
- uses parent ID `0` only when the event originates outside an active NoCode execution.

This gives the future debugger/event log a real causal chain, e.g. `execution 41 -> event 12 -> execution 42`, instead of inferring relationships from timestamps or node labels.

## Registry mapping note

Existing engine event dispatch uses obfuscated descriptors such as `Ldb/a;` and `Lhb/*;`. The decompiled tree also contains case-distinct physical package directories such as `Db` and `Hb`; therefore path casing must not be guessed from a bytecode descriptor. Registry mapping is being done from actual dex trees/classes before adding a concrete `Custom Event` node.

This is deliberate: a new readable event runtime is safe to add independently, but registering a node against an assumed obfuscated base/registry would create the exact kind of fragile patch this refoundation is intended to remove.

## Static validation

`tools/validate_nocode_runtime_foundation.py`

The validator intentionally does not build an APK. It checks:

- expected runtime descriptors;
- balanced Smali methods and annotations;
- no Gson `@Expose` on execution-session/event-envelope runtime classes;
- weakly keyed execution sessions;
- synchronized begin/event/current/end/clear contracts;
- target-resolution priority explicit -> target -> source;
- immutable event-envelope fields;
- event IDs generated through `NoCodeEventIds`;
- event creation timestamps;
- EventFactory causal linkage to current execution;
- every integrated `NoCodeExecutor` entry point still contains legacy `Y0`;
- every integrated entry point contains `begin`, normal/exceptional `end` paths and `catchall` cleanup;
- `onDetach` and graph replacement clear sessions;
- `clone()` does not copy execution state;
- baseline `NoCodeData` and `NoCodePanel` remain present.

## Next slice — registry mapping + Custom Event / Send Event

### P4.1 — finish registry/event-node mapping

1. resolve the exact physical class for Start and collision event descriptors across case-distinct decompiled package paths;
2. identify the actual NoCode event-node base contract;
3. identify where node classes are registered/instantiated/deserialized;
4. document stable ID vs visual title responsibilities;
5. avoid modifying `y6/X` until runtime-node registration is understood.

### P4.3 — Custom Event + Send Event

After P4.1 is confirmed:

- `Custom Event` becomes an explicit graph entry point;
- `Send Event` resolves the receiver once through `ObjectRef`;
- it creates an `EventEnvelope` through `NoCodeEventFactory`;
- directed dispatch rejects an invalid receiver instead of falling back to source/nearest object;
- receiver execution opens through `beginEvent(...)` and restores its caller in LIFO order;
- component/object scope is explicit;
- sender, receiver, payload and parent execution stay available to debugging.

Only after event dispatch is stable should the graph receive `Sequence`, `Fan Out`, `Gate`, `Multi Gate`, then `Trace Ray` / interaction nodes.

## Compatibility gates before moving on

- existing graphs deserialize unchanged;
- start still fires once;
- function calls still reach existing nodes;
- collision enter/stay/stop still reach existing nodes;
- `setNoCodeData()` still binds the new graph to owner/component;
- graph clone still contains only serializable graph state;
- runtime session depth returns to zero after synchronous dispatch;
- nested calls restore the caller in LIFO order;
- event envelope is not serialized as graph state;
- two adjacent objects never exchange targets through fallback behavior;
- editor can still open component graphs and graph files.

## Architectural rules

- editor/UI stays in the editor layer; execution stays under `Engines/Engine/NoCode`;
- readable runtime classes are preferred over growing unrelated obfuscated classes;
- no global `current object` for interaction targeting;
- no nearest-object fallback after target resolution;
- no reflection-based arbitrary component invocation;
- no graph state keyed by visual labels;
- stable IDs are required when graph versioning lands;
- async/parallel flow will be scheduler-controlled; scene mutation will not become uncontrolled multi-threading.
