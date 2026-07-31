# Mobile Game Studio — Godot-derived editor refoundation

## Decision

The previous Kotlin/Compose editor shells are prototypes and are not the product foundation.

The new editor foundation is the real Godot 4.6.3 Android editor, pinned to:

```text
repository: godotengine/godot
tag:        4.6.3-stable
commit:     35e80b3a8822a9df9be390814b62f44c0a9c69e8
license:    MIT
```

The goal is not to imitate Godot. The goal is to derive the product from Godot while preserving the proven editor architecture: workspaces, scene tree, FileSystem, Inspector, script editor, debugger, import pipeline, animation, plugins and 2D/3D editors.

## Why the previous base was rejected

The prototype treated the editor as an application screen surrounding a 3D preview. It repeatedly produced:

- large unrelated buttons;
- duplicated tool state;
- shallow panels;
- no real scene/resource workflow;
- inconsistent selection and tool activation;
- UI that compressed the viewport;
- custom implementations of systems Godot already solves.

The 3D preview and some domain experiments remain useful references, but the shell is not carried into the clean branch.

## Product boundary

### Preserved from Godot

- scene and resource model;
- node tree;
- Inspector and property system;
- FileSystem dock and importer;
- 2D and 3D editor workspaces;
- script editor;
- Output, Debugger and diagnostics;
- animation and shader editors;
- plugin architecture;
- project manager;
- Android editor runtime;
- GDScript and GDExtension compatibility;
- internal `short_name = "godot"` during the compatibility phase.

### Changed immediately

- Android application ID;
- public application name;
- artifact name;
- editor product title;
- derivative notice;
- build and upgrade process.

### Changed later through isolated patches or plugins

- product icon and splash;
- default mobile workspace profile;
- first-run experience;
- playable-world templates;
- touch control templates;
- Terrain and voxel integrations;
- product documentation;
- optional Lua/visual scripting modules;
- asset conversion tools.

## Architecture

```text
Pinned Godot upstream
        ↓
Deterministic patch layer
        ↓
Godot Android editor build
        ↓
Mobile workspace profile
        ↓
Mobile Game Studio plugins/modules
        ↓
Product templates and documentation
```

No product feature should require rebuilding the entire editor shell outside Godot.

## Branch model

### `master`

Preserves the last accepted historical base until the new foundation is validated.

### `feature/godot-editor-refoundation-clean`

Clean branch created directly from `master`. It contains only:

- upstream lock;
- bootstrap/build scripts;
- product patch layer;
- licensing notices generated from upstream;
- CI;
- refoundation documentation.

It intentionally excludes the rejected Compose V4/V5/V6 experiments.

## Gates

### G0 — reproducible upstream Android editor

Status: completed on the exploratory branch and repeated on the clean branch through CI.

Requirements:

- exact upstream commit;
- arm64 Android editor;
- APK and AAB;
- no local untracked upstream modifications before patching;
- hashes published by CI.

### G1 — public identity boundary

Status: implemented, awaiting clean-branch build result.

Requirements:

- package `com.mobilegamestudio.editor`;
- application name `Mobile Game Studio`;
- artifact `mobile_game_studio_editor`;
- editor title uses product name;
- `short_name = "godot"` retained;
- MIT, copyright and derivative notice in artifact.

### G2 — device baseline

Install the clean APK and validate the real editor on the target phone/tablet:

- project manager opens;
- project can be created and imported;
- 2D workspace opens;
- 3D workspace opens;
- Scene dock selects nodes;
- FileSystem dock imports resources;
- Inspector edits properties;
- script editor creates and saves GDScript;
- play/stop works;
- keyboard and touch navigation remain usable;
- no product-specific feature is added before this baseline passes.

### G3 — mobile workspace profile

Use upstream editor mechanisms, not a replacement UI.

Tasks:

- identify default editor settings for scale and touch;
- define compact dock visibility for phone landscape;
- preserve desktop/tablet layout for large screens;
- validate dock resizing and collapse behavior;
- improve touch target sizes only where device testing shows a problem;
- avoid changing the semantic hierarchy of Godot.

### G4 — identity assets

- product icon;
- adaptive Android icon;
- splash screen;
- project manager branding;
- About/credits section preserving Godot attribution;
- screenshot and visual regression checks.

### G5 — playable-world vertical slice

Implement as a Godot editor plugin/template:

- create a 3D scene;
- terrain or ground;
- environment and directional light;
- CharacterBody3D player;
- camera rig following the player;
- mobile joystick/look area/jump button;
- play and return to editor;
- generated files remain normal Godot scenes/scripts/resources.

This slice validates product value without creating a second scene model.

### G6 — world authoring integrations

- Terrain plugin selection and evaluation;
- mesh editing strategy;
- voxel plugin or module evaluation;
- material and vegetation workflows;
- collision generation;
- mobile performance budgets.

### G7 — scripting extensions

- GDScript remains first-class;
- Lua evaluated as an optional GDExtension/module, not a replacement for the editor;
- visual scripting evaluated as a plugin/resource graph;
- scripts and graphs attach to real nodes/resources.

### G8 — migration from historical prototype

Only migrate features that have proven product value:

- custom project templates;
- mobile input assets;
- conversion utilities;
- original visual identity;
- specific runtime logic.

Do not migrate the Compose editor shell or its duplicate scene model.

## Upgrade policy

1. Update `UPSTREAM.lock` in a dedicated PR.
2. Bootstrap a clean checkout.
3. Apply all product patches.
4. Compile APK/AAB.
5. Run the device parity checklist.
6. Inspect upstream changes to every patched file.
7. Merge only after compatibility is documented.

## Licensing

Godot is MIT-licensed. Distribution must preserve its license and copyright notices. Mobile Game Studio may use its own name and identity, but must not imply that the derivative is the official Godot editor.

The application must include a visible credits/third-party notice before public distribution.

## Current completion

Completed:

- exact upstream lock;
- clean bootstrap;
- successful exploratory Android editor build;
- clean branch split from `master`;
- public identity patch;
- artifact license bundle;
- dedicated CI;
- UI parity contract.

Next decision is based on the clean build and device baseline, not on additional speculative UI work.
