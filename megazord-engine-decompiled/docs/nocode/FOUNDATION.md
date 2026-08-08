# Megazord NoCode 2.0 — Runtime Foundation

Branch: `agent/megazord-nocode-foundation`

This work evolves the existing Megazord runtime directly inside `megazord-engine-decompiled/`. No parallel engine/runtime is being introduced.

## Source-completeness rule

The connected repository may not contain every original source/decompiled class. An unresolved descriptor is therefore treated as **missing/unresolved in the current tree**, not as proof that the class never exists in the product.

Consequences:

- do not recreate an unresolved engine class just because its physical Smali path is absent;
- do not introduce a second node registry to replace an unresolved `ya/*` boundary;
- prefer additive runtime contracts that can later connect to the authoritative implementation;
- keep confirmed behavior and inferred/missing behavior clearly separated in documentation.

## Existing runtime mapped

| Responsibility | Decompiled class/path | Confirmed behavior |
| --- | --- | --- |
| NoCode editor panel | `smali_classes5/com/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel.smali` | Opens component-backed graphs or graph files. |
| NoCode component runtime | `smali_classes6/com/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor.smali` | Lifecycle, function/custom-event calls, collisions and update hooks. |
| Graph/runtime state | `smali_classes6/com/itsmagic/engine/Engines/Engine/NoCode/NoCodeData.smali` | Nodes, connections, branches, variables, attributes and transient execution maps. |
| Legacy object/component binding | `NoCodeData.Y0(GameObject, Component)` | Preserved during migration so old graphs continue working. |
| Existing custom-event base | `NoCode/Nodes/Events/Custom/BaseCustomEventNode.smali` | Matches event names and calls legacy `I0(Object[])`. |
| Local component lookup | `GameObject.l0(Class)` | Resolves a component on exactly that `GameObject`; no parent/child search. |

## Slice 1 — stable execution primitives

### `NoCodeExecutionIds`

Monotonic execution IDs for debugger/event/scheduler correlation.

### `NoCodeObjectRef`

- wraps the actual `GameObject` instance;
- identity equality, never name equality;
- `isValid()` now rejects null and destroyed/invalid `GameObject` instances through the engine's existing `GameObject.h1()` state check.

### `NoCodeComponentRef`

Couples a component to its owning `ObjectRef`, preventing later resolution from silently moving to another object.

### `NoCodeExecutionContext`

Carries runtime-only execution state:

- execution ID and timestamp;
- graph;
- source object/component;
- target object;
- sender object;
- event name/payload;
- `NoCodeEventEnvelope` when dispatch originates from the new event bridge;
- cancellation state.

It also exposes explicit ref setters for sender/target so an already-resolved reference does not need to be re-resolved by scene lookup.

### `NoCodeExecutionStack`

LIFO context stack for nested calls/events. A nested dispatch can restore its caller instead of overwriting one global target.

## Slice 2 — execution sessions and target resolution

### `NoCodeExecutionRuntime`

- `WeakHashMap<NoCodeData, NoCodeExecutionStack>`;
- synchronized session operations;
- `begin(...)` for ordinary graph entry;
- `beginEvent(...)` for legacy-style event metadata;
- `beginEnvelope(...)` for a fully resolved `NoCodeEventEnvelope`;
- `current(...)`, `depth(...)`, `end(...)`, `clear(...)`;
- `end(graph, expectedContext)` refuses out-of-order pops.

`beginEnvelope(...)` propagates the same envelope, event name/payload, sender ref and receiver ref into the receiver's execution context.

### `NoCodeTargetResolver`

Resolution order is fixed:

1. explicit valid `ObjectRef`;
2. context target;
3. context source;
4. `null`.

No nearest-object, object-name, editor-selection or scene-scan fallback exists.

## Slice 3 — P3.2 integrated into the legacy executor

`NoCodeExecutor` now opens/closes execution contexts around the existing synchronous runtime while retaining `Y0(...)`.

Wrapped entry points:

- `callFunction`;
- `onCollision`;
- `onCollisionEnter`;
- `onCollisionStop`;
- `preUpdate`;
- `lowTaskUpdate`.

Each follows the compatibility pattern:

1. resolve/rebind existing `NoCodeData`;
2. legacy `Y0(GameObject, Component)`;
3. execution `begin(...)`;
4. original graph dispatch;
5. `end(...)` on normal exit;
6. `end(...)` through `catchall` on exceptional exit.

`onDetach()` and graph replacement clear old sessions. `clone()` remains independent of execution state.

## Slice 4 — event identity and causal chain

### `NoCodeEventIds`

Events have their own monotonic IDs, independent from execution IDs.

### `NoCodeEventEnvelope`

Immutable runtime value containing:

- event ID;
- creation timestamp;
- name;
- sender `ObjectRef`;
- receiver `ObjectRef`;
- payload;
- parent execution ID.

The envelope contains already-resolved references and performs no scene search.

### `NoCodeEventFactory`

Captures the current execution ID, when one exists, as `parentExecutionId`. This provides a real causal chain such as:

`execution 41 -> event 12 -> execution 42`

## Slice 5 — P4.3 directed Custom Event bridge

A key discovery is that Custom Events already exist in the original runtime.

`NoCodeData.C(name, args)` iterates runtime nodes and invokes `BaseCustomEventNode.H0(name, args)`. `BaseCustomEventNode` performs the existing event-name match and calls the abstract `I0(Object[])` implementation.

The new runtime therefore **does not replace Custom Events**. It routes a resolved event into that existing entry point.

### `NoCodeEventDispatcher`

`dispatch(EventEnvelope)` performs directed delivery:

1. require a valid receiver and non-empty event name;
2. unwrap the exact receiver `GameObject` from its `ObjectRef`;
3. call `GameObject.l0(NoCodeExecutor.class)` — local lookup only;
4. reject the dispatch if that exact object has no local `NoCodeExecutor`;
5. retain legacy `NoCodeData.Y0(receiver, executor)` compatibility;
6. open the receiver with `beginEnvelope(...)`;
7. normalize payload to the existing `Object[]` custom-event interface;
8. call existing `NoCodeData.C(name, args)`;
9. close the receiver context on normal and exceptional exits.

The dispatcher deliberately does **not** call recursive `GameObject.callFunction`, parent lookup, child lookup, name lookup or nearest-object search.

### `send(graph, name, receiverRef, payload)`

This is the runtime API intended for the future visual `Send Event` node.

It:

- reads the current caller execution;
- uses the caller's `sourceObject` as sender;
- creates the immutable envelope through `NoCodeEventFactory`;
- preserves the parent execution ID;
- calls exact-target `dispatch(...)`.

The receiver must already be an explicit `ObjectRef`.

### Existing `BaseCustomEventNode` upgraded compatibly

The legacy abstract `I0(Object[])` contract is untouched. New event implementations can additionally read:

- `currentEventEnvelope()`;
- `currentEventSender()`;
- `currentEventReceiver()`;
- `currentEventPayload()`.

Legacy calls made without an envelope continue to work; these helpers simply return `null` when no envelope-backed event is active.

## Node persistence / factory boundary

Confirmed persistence:

- `NoCodeNode.serializedNodeType` stores a stable node type when needed;
- otherwise `NoCodeNode.L()` defaults to the class simple name;
- `NoCodeNodeRecord` persists `serializedType + JsonObject`;
- reconstruction calls `Lya/o;->c(type, json)`.

The `ya/*` family is heavily referenced by the current NoCode code but its literal physical files have not been resolved in the connected decompiled tree. Given the source-completeness rule above, this is treated as an unresolved boundary, not permission to create a replacement registry.

See `docs/nocode/NODE_REGISTRY_MAP.md` and `tools/audit_nocode_registry.py`.

## Validation

No APK is generated by these tools.

### `tools/validate_nocode_runtime_foundation.py`

Protects the initial execution/context/legacy compatibility contracts.

### `tools/validate_nocode_event_dispatch.py`

Protects the directed-event bridge, including:

- destroyed-object rejection;
- envelope propagation;
- exact `GameObject.l0(NoCodeExecutor.class)` lookup;
- existing `NoCodeData.C(...)` dispatch;
- normal/exceptional context cleanup;
- prohibition of parent/child/recursive fallback in the directed path;
- sender/parent-execution causal linkage.

### `tools/audit_nocode_registry.py`

Scans Smali by descriptor rather than guessed physical path and is intended to locate the unresolved factory/registry boundary when the complete source/decompile is available.

## Next implementation gate

### P4.4 — concrete visual `Send Event` node

The runtime side is ready. The visual/persistent node should only be registered after the authoritative factory/palette path is confirmed. It will call:

`NoCodeEventDispatcher.send(graph, eventName, receiverRef, payload)`

No alternative registry will be created merely to make the node appear in the editor.

### P5 — flow runtime foundation

While registry discovery remains a separate gate, runtime primitives can proceed safely:

1. Sequence / Fan Out ordering contract;
2. Gate state keyed by stable node instance ID;
3. Multi Gate index/reset/loop contract;
4. cancellation propagation through `ExecutionContext`;
5. scheduler boundary for later Delay/Timer/async nodes.

### P6 — interaction / raycast

Only after the flow contracts are stable:

- `Trace Ray` produces a stable hit/`ObjectRef`;
- interaction copies that ref into context target;
- `Pick Component` resolves only on that referenced object;
- no proximity fallback after the hit has resolved a target.

## Compatibility gates

- old graphs deserialize unchanged;
- Start still fires once;
- local `callFunction` still reaches existing custom event nodes;
- collisions still reach existing nodes;
- graph clone contains only serializable graph state;
- nested contexts restore in LIFO order;
- directed events never switch receiver through fallback;
- destroyed receiver refs are rejected;
- legacy `I0(Object[])` custom events remain valid;
- editor still opens component graphs and graph files.

## Architectural rules

- editor/UI stays in the editor layer; execution stays under `Engines/Engine/NoCode`;
- extend confirmed existing contracts before introducing replacements;
- unresolved source is documented as unresolved, never silently reimplemented;
- no global `current object`;
- no nearest-object fallback after target resolution;
- no reflection-based arbitrary component invocation;
- no graph state keyed by visual labels;
- stable IDs are required for persistent flow state;
- async/parallel flow will be scheduler-controlled; scene mutation will not become uncontrolled multi-threading.
