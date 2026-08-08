# NoCode Flow Runtime — Sequence / Gate / MultiGate foundation

This slice builds flow semantics on top of the existing Megazord NoCode scheduler. It does not create a second graph executor and does not register visual nodes yet.

## Existing scheduler contract confirmed

`NoCodeNode` already exposes three execution helpers:

- `s()` -> `NoCodeData.F(ownerNode)`;
- `t()` -> `NoCodeData.K(ownerNode)`;
- `u(slot)` -> `NoCodeData.M(ownerNode, slot)`.

`u(slot)` performs the existing node lifecycle around a selected output:

1. `B0()`;
2. `NoCodeData.M(this, slot)`;
3. `k0()`.

`NoCodeData.M(...)` delegates to `N(...)`. `N(...)`:

- resolves the slot index from the node's existing slot array;
- filters `NoCodeBranchConnection` using both `fromNodeId` and `fromSlot`;
- preserves the internal graph execution context;
- resolves `toNodeId` / `toSlot`;
- schedules/evaluates targets through the existing `J(...)`, `J0(...)`, `G(...)` and related graph machinery.

Therefore new flow nodes must call the existing slot/branch path instead of invoking another node's execution method directly.

## `NoCodeFlowDispatcher`

Purpose: small safe adapter over `NoCodeNode.u(slot)`.

Contracts:

- accepts only slots whose engine type is `BRANCH`;
- checks `NoCodeFlowRuntime.canContinue(graph)` before dispatch;
- `fire(owner, slot)` triggers one branch;
- `fireIndex(owner, slots, index)` triggers one indexed branch;
- `fireAll(owner, slots)` triggers branch slots in array order;
- `fireAll` checks cancellation before every output.

It intentionally does not call:

- `NoCodeNode.o()` directly;
- internal `NoCodeData.J(...)` / `p(...)` directly;
- a new thread/executor.

The graph remains the execution authority.

## `NoCodeGateState`

Runtime-only state:

- immutable `initialOpen`;
- current open/closed state.

Operations:

- `open()`;
- `close()`;
- `toggle()`;
- `setOpen(...)`;
- `reset()` -> original initial state;
- `isOpen()`.

## `NoCodeMultiGateState`

Runtime-only cursor:

- starts at output `0`;
- `next(count, loop)` returns the selected output index;
- returns `-1` for invalid/exhausted non-looping flow;
- looping mode wraps to `0`;
- `reset()` returns to `0`;
- `restore(index)` allows transactional rollback when dispatch is rejected.

The cursor is consumed only when the controller successfully dispatches the selected output.

## `NoCodeFlowRuntime`

State is keyed by:

`NoCodeData -> stable NoCodeNode.id -> state`

Two weak graph-keyed stores currently exist:

- Gate states;
- MultiGate states.

This prevents two visual instances of the same node class from sharing state.

The outer stores are `WeakHashMap`, so runtime state alone does not keep a graph alive.

`NoCodeExecutionRuntime.clear(graph)` also clears flow state. The existing executor already invokes that lifecycle cleanup when detaching/replacing a graph.

### Cancellation

`cancelCurrent(graph)` marks the active `ExecutionContext` cancelled.

`canContinue(graph)` returns:

- `true` for legacy/no-active-context execution;
- `true` for an active non-cancelled execution;
- `false` after cancellation.

The cancellation accessors do not hold the flow-map monitor while entering `NoCodeExecutionRuntime`, avoiding lock-order inversion with graph cleanup.

## `NoCodeFlowController`

High-level runtime API for future persistent nodes:

- `sequence(owner, branchSlots)`;
- `gateEnter(owner, outputSlot, initialOpen)`;
- `gateOpen(owner, initialOpen)`;
- `gateClose(owner, initialOpen)`;
- `gateToggle(owner, initialOpen)`;
- `gateReset(owner, initialOpen)`;
- `multiGateNext(owner, branchSlots, loop)`;
- `multiGateReset(owner)`.

Gate/MultiGate state lookup uses `owner.B()` — the existing stable node-instance ID — rather than title, class name or screen position.

## Visual-node gate

Runtime semantics are now ready, but concrete `Sequence`, `Gate` and `MultiGate` visual nodes should wait for the authoritative node factory/palette registration path (`ya/o` boundary or fuller source).

When registered, those nodes should be thin adapters:

- define slots and inspector options;
- call `NoCodeFlowController`;
- never implement their own graph traversal.

## Validation

`tools/validate_nocode_flow_runtime.py` statically checks:

- runtime state is not Gson graph data;
- graph maps are weakly keyed;
- state uses stable node IDs;
- branch dispatch goes through `NoCodeNode.u(slot)`;
- no direct scheduler bypass exists in `NoCodeFlowDispatcher`;
- cancellation is checked;
- MultiGate rollback exists;
- graph lifecycle cleanup clears flow state.

The validator does not build an APK.
