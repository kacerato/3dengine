# Godot patch layer

This directory is the only place where product-specific changes to the pinned Godot source should be described or stored.

## Rules

1. The upstream source is never committed into this repository.
2. `godot-upstream/UPSTREAM.lock` pins an exact Godot tag and commit.
3. `tools/godot/bootstrap_upstream.sh` creates a clean detached checkout.
4. `tools/godot/apply_product_patches.py` applies small deterministic identity changes.
5. Larger changes must be versioned as explicit patch files or isolated modules.
6. Every patch must document:
   - upstream file and symbol;
   - reason;
   - Android/touch behavior affected;
   - upgrade risk;
   - automated verification.
7. Do not rename Godot internal namespaces, scene formats, class names or extension APIs without an approved compatibility ADR.
8. Godot MIT and copyright files must accompany distributed artifacts.

## Patch phases

### P0 — clean upstream build

Completed. Godot 4.6.3 Android editor builds as APK and AAB.

### P1 — public identity boundary

Current phase:

- Android application ID;
- launcher/editor application name;
- artifact name;
- editor product title;
- derivative and license notices.

Internal `short_name = "godot"` remains unchanged for compatibility.

### P2 — mobile workspace profile

Planned:

- preserve the upstream desktop-like editor layout;
- define touch-friendly defaults without replacing docks;
- validate scene tree, FileSystem, Inspector, Script and 3D editor on target devices;
- make optional regions collapsible through upstream mechanisms.

### P3 — Mobile Game Studio features

Planned as plugins/modules instead of UI replacement:

- guided playable-world template;
- mobile input templates;
- Terrain/voxel integrations;
- Lua and visual scripting experiments;
- asset conversion pipeline;
- product documentation.

## Forbidden shortcuts

- rebuilding the Godot interface in Compose;
- copying visual appearance while discarding editor behavior;
- adding disconnected global buttons for tools already represented by editor context;
- modifying upstream code without a reproducible patch and build check;
- removing Godot attribution.
