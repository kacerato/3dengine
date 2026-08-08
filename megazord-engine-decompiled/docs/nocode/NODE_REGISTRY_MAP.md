# NoCode node persistence / registry map

This map records only behavior confirmed from the decompiled Megazord code. It intentionally avoids inventing a replacement registry when an obfuscated implementation is referenced but not materialized in an obvious physical path.

## Confirmed persistence contract

### `NoCodeNode`

`smali_classes6/com/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode.smali`

Persistent identity/state includes:

- `id` — stable graph-node instance ID;
- `serializedNodeType` — serialized node type identifier;
- position fields;
- input defaults;
- inspector metadata.

`NoCodeNode.r()` performs clone/reconstruction as follows:

1. use `serializedNodeType` when present;
2. otherwise use the node type returned by `L()`;
3. serialize the current node to a `JsonObject`;
4. call `Lya/o;->c(String, JsonObject)` to reconstruct a node;
5. assign a new node-instance `id` to the reconstructed clone.

This confirms that visual labels are not sufficient identifiers. New nodes must have a stable serialized type understood by the same reconstruction path.

### `NoCodeNodeRecord`

`smali_classes6/com/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeRecord.smali`

The saved graph record consists of:

- `serializedType`;
- `data` (`JsonObject`).

Both fields are `@Expose`, so they are part of graph persistence rather than transient runtime state.

## Confirmed factory boundary

The reconstruction boundary is:

`Lya/o;->c(Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;`

The current connected repository view exposes references to this class, but a literal `ya/o.smali` / `Ya/o.smali` path has not been resolved across the inspected dex directories. The decompiled tree also contains case-distinct obfuscated packages, so descriptor-to-path conversion cannot be assumed.

Until the factory definition is located, do **not**:

- add an independent second node registry;
- deserialize new nodes through reflection;
- encode new nodes only by display name;
- hardcode a switch inside the editor canvas (`y6/X`);
- replace `serializedNodeType` with a new persistence mechanism.

## Existing event entry markers observed from `NoCodeExecutor`

The existing executor dispatches event classes/markers including:

- Start: `Ldb/a;`;
- Collision Enter: `Lhb/b;`;
- Collision Stay: `Lhb/c;`;
- Collision Stop: `Lhb/d;`.

These descriptors are useful anchors for the registry audit, but their literal physical paths must not be guessed because the decompiled package tree contains case-distinct directories such as `Db` and `Hb` whose descriptors are not necessarily the lowercase classes referenced by the executor.

## Local audit tool

Run from `megazord-engine-decompiled/`:

```bash
python tools/audit_nocode_registry.py
```

It scans all `smali*` directories by **class descriptor**, not by assumed path, and reports:

- definitions/references for `Lya/o;`;
- factory calls;
- Start/Collision marker definitions and references;
- `serializedNodeType` usage;
- `serializedType` usage.

If `Lya/o;` is referenced but not defined, the tool exits non-zero and explicitly warns against creating a substitute registry before checking for an incomplete/missing dex or external/generated code.

## Gate for Custom Event / Send Event

Concrete event nodes can be registered only after these are confirmed:

1. actual definition or authoritative replacement boundary for `Lya/o;`;
2. stable serialized type convention used by existing nodes;
3. node constructor/JSON hydration expectations;
4. event-node base behavior and branch/slot contract;
5. editor palette discovery mechanism.

The runtime event infrastructure (`NoCodeEventEnvelope`, `NoCodeEventFactory`, `ExecutionContext`) is intentionally independent of this gate, so event semantics can be finalized without corrupting graph persistence.
