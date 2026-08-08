# NoCode node persistence / registry map

This document records only behavior confirmed in the connected Megazord decompile. The current tree may be incomplete; an unresolved descriptor is therefore an unresolved source boundary, not evidence that the implementation never exists.

## Confirmed persistence contract

### `NoCodeNode`

`smali_classes6/com/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode.smali`

Persistent identity/state includes:

- `id` — stable graph-node instance ID;
- `serializedNodeType` — serialized node type identifier when explicitly set;
- position fields;
- input defaults;
- inspector metadata.

`NoCodeNode.L()` defaults to `getClass().getSimpleName()`.

`NoCodeNode.r()` clone/reconstruction path:

1. use `serializedNodeType` when present;
2. otherwise use `L()`;
3. serialize the node to `JsonObject`;
4. call `Lya/o;->c(String, JsonObject)`;
5. assign a new node-instance `id` to the clone.

Visual labels are therefore not persistence identifiers.

### `NoCodeNodeRecord`

Saved records contain:

- `serializedType`;
- `data` (`JsonObject`).

Both are Gson `@Expose` fields.

## Confirmed Custom Event contract

Custom Events are already part of the original runtime.

### `BaseCustomEventNode`

Path:

`smali_classes6/com/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Custom/BaseCustomEventNode.smali`

Confirmed behavior:

- extends the existing event-node base `LXa/a;`;
- stores `eventName` as persistent graph data;
- constructor accepts an explicit `serializedName` and writes it to `NoCodeNode.serializedNodeType`;
- `H0(functionName, args)` performs enable/name checks and calls abstract `I0(Object[])`;
- event-name comparison is trimmed and case-insensitive.

This means a new Custom Event model must extend/evolve this contract rather than create a parallel event-node family.

The refoundation adds envelope accessors to this base without changing `I0(Object[])`:

- `currentEventEnvelope()`;
- `currentEventSender()`;
- `currentEventReceiver()`;
- `currentEventPayload()`.

### Existing graph ingress

`NoCodeData.C(name, args)` scans runtime nodes and invokes `BaseCustomEventNode.H0(name, args)`.

The new `NoCodeEventDispatcher` deliberately terminates at this existing method, preserving the graph's original custom-event execution behavior.

## Confirmed factory boundary

Reconstruction boundary:

`Lya/o;->c(Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;`

The current repository exposes many references to the `ya/*` family but literal physical files such as `ya/o.smali` / `Ya/o.smali` have not been resolved in the inspected tree.

Because the decompile also contains case-distinct obfuscated directories, descriptor-to-path conversion cannot be guessed safely.

Until the authoritative factory/palette path is available, do **not**:

- add an independent second node registry;
- deserialize nodes through reflection;
- register nodes only by display title;
- hardcode a new type switch inside `y6/X`;
- replace `serializedNodeType` or `NoCodeNodeRecord` persistence;
- assume missing `ya/*` files mean the implementation does not exist elsewhere in the source/decompile.

## Existing event markers

`NoCodeExecutor` references event marker classes including:

- Start: `Ldb/a;`;
- Collision Enter: `Lhb/b;`;
- Collision Stay: `Lhb/c;`;
- Collision Stop: `Lhb/d;`.

Physical path casing must not be guessed from these descriptors.

## Exact receiver primitive confirmed

`GameObject.l0(Class)` resolves a component on exactly the referenced `GameObject`.

This is the primitive used by directed `Send Event` runtime delivery:

`ObjectRef -> exact GameObject -> l0(NoCodeExecutor.class) -> receiver NoCodeData.C(...)`

Parent, child and recursive function lookup are intentionally excluded from this path.

## Audit tool

Run from `megazord-engine-decompiled/`:

```bash
python tools/audit_nocode_registry.py
```

It scans all `smali*` directories by class descriptor rather than assumed path and reports references/definitions around:

- `Lya/o;`;
- factory calls;
- event markers;
- `serializedNodeType`;
- `serializedType`.

If `Lya/o;` remains referenced but undefined, the correct next action is to inspect the fuller source/decompile, not to create a substitute registry.

## Gate for concrete new visual nodes

The runtime contracts can advance independently, but a new persistent visual node should only be added to the editor after confirming:

1. authoritative `ya/o` factory or equivalent source implementation;
2. stable serialized-type convention;
3. constructor/JSON hydration expectations;
4. palette/discovery registration mechanism;
5. branch/slot registration expectations.

This applies to the concrete visual `Send Event`, `Sequence`, `Gate`, `Multi Gate` and later Raycast nodes. Their runtime helpers may be built beforehand because those helpers do not alter graph persistence.
