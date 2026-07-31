# Godot UI parity contract

## Purpose

“Use the Godot interface” must be measurable. This contract prevents another simplified imitation from being presented as parity.

Each editor area has one of four states:

- **UPSTREAM:** inherited directly from Godot;
- **ADAPTED:** upstream implementation with a documented mobile/touch patch;
- **PRODUCT:** Mobile Game Studio feature implemented as a Godot plugin/module;
- **MISSING:** not yet accepted.

A feature cannot be marked complete because a button with the same label exists.

## Global shell

| Area | Required behavior | Initial state |
|---|---|---|
| Main menu | Scene/Project/Debug/Editor/Help commands remain functional | UPSTREAM |
| Workspace switcher | 2D, 3D, Script and AssetLib change real editor workspaces | UPSTREAM |
| Run controls | play, pause, stop and scene/project execution | UPSTREAM |
| Scene tabs | multiple edited scenes, modified indicators and close behavior | UPSTREAM |
| Bottom panel | Output, Debugger, search, audio, animation and shader panels | UPSTREAM |
| Layout persistence | docks and workspace state persist through editor settings | UPSTREAM |
| Command discovery | shortcuts, menus and searchable actions remain available | UPSTREAM |

## Scene dock

Acceptance requires:

- node hierarchy, not a flat object list;
- parent/child relationships;
- create/add node dialog;
- reparent, rename, duplicate and delete;
- visibility and ownership semantics;
- drag and drop;
- editable scene inheritance/instancing;
- filtering;
- selection synchronized with viewport and Inspector.

State: **UPSTREAM**.

## FileSystem and import

Acceptance requires:

- `res://` navigation;
- folders and file filtering;
- imported asset metadata;
- drag resources into scene or properties;
- import options and reimport;
- resource move/rename behavior;
- dependency awareness.

State: **UPSTREAM**.

## Inspector

Acceptance requires:

- properties derived from object/resource metadata;
- categories and groups;
- typed editors;
- revert/reset;
- resource assignment;
- signals/node integration where applicable;
- search/filter;
- Undo/Redo integration;
- plugin extension points.

State: **UPSTREAM**.

## 3D workspace

Acceptance requires:

- free perspective camera;
- orbit, pan and zoom;
- node picking;
- transform gizmos;
- local/global modes;
- snapping;
- viewport display modes;
- cameras, lights and helper gizmos;
- multiple selected nodes where supported;
- plugin gizmos and editor plugins;
- preview/play remains separate from authoring.

State: **UPSTREAM**, followed by **ADAPTED** only where touch testing identifies a concrete failure.

## 2D workspace

Acceptance requires:

- canvas navigation;
- selection and transform handles;
- anchors and layout tools;
- rulers/guides where upstream provides them;
- Control/Node2D workflows;
- animation/property integration.

State: **UPSTREAM**.

## Script workspace

Acceptance requires:

- script file tree/history;
- code editor;
- syntax highlighting;
- completion and navigation;
- diagnostics;
- breakpoints;
- search and replace;
- debugger integration;
- attach/create script from nodes.

State: **UPSTREAM**.

## Project manager

Acceptance requires:

- create project;
- import project;
- scan folders;
- project list and metadata;
- renderer selection supported by upstream;
- open/reopen project;
- recovery from invalid project path.

State: **UPSTREAM**, with public product identity **ADAPTED**.

## Editor settings and project settings

Acceptance requires:

- searchable settings;
- typed setting editors;
- input map;
- autoload;
- plugins;
- rendering and platform configuration;
- editor scale/touch settings where available.

State: **UPSTREAM**.

## Mobile adaptation principles

1. Do not replace docks with a separate simplified app screen.
2. Do not merge unrelated tools into large global buttons.
3. Prefer existing Godot editor settings and container behavior.
4. A phone may collapse or overlay a dock, but the dock keeps its real content and semantics.
5. Touch patches must be local and measurable.
6. The viewport remains dominant when side regions are hidden.
7. Keyboard/mouse support must not be removed; Android can use external peripherals.
8. Tablet and desktop-window modes should retain the richer layout.
9. No product feature may create a second scene/resource model outside Godot.

## Product features

Product-specific functionality is accepted only when implemented through Godot-native extension points.

### Playable world wizard

State: **MISSING**.

Must generate normal Godot resources:

- `.tscn` scenes;
- `.gd` scripts or approved optional language resources;
- input actions;
- environment/material resources;
- mobile UI nodes.

### Terrain authoring

State: **MISSING**.

Must integrate through plugin/gizmo/import/resource systems. A full-screen unrelated menu is not accepted.

### Mesh editing

State: **MISSING**.

Must either use a maintained Godot plugin/module or define a scoped editor plugin. It cannot be represented by a decorative “Mesh” tab without real topology tools.

### Voxel authoring

State: **MISSING**.

Must define volume resource, editor plugin, rendering/collision path, Undo/Redo and performance budget.

### Lua

State: **MISSING**.

Must be optional, attached to real Godot nodes/resources and integrated with diagnostics/build/export. GDScript remains supported.

### Visual scripting

State: **MISSING**.

Must be a real graph resource/editor with node attachment, serialization, validation and runtime execution.

## Visual identity

Godot’s spatial hierarchy and editor density are preserved. Product identity may change:

- launcher icon;
- splash;
- public app/editor name;
- accent palette within a tested theme;
- first-run content;
- product templates;
- documentation links;
- About/credits presentation.

Product identity must not remove Godot attribution or imply official Godot distribution.

## Device acceptance matrix

Minimum targets:

| Class | Example viewport | Goal |
|---|---:|---|
| Phone landscape | ~800×360 dp | open/edit small project with collapsible docks |
| Large phone landscape | ~900×420 dp | scene tree or Inspector usable beside viewport |
| Tablet landscape | ≥1200×700 dp | desktop-like dock layout |
| External display/window | variable | keyboard/mouse parity with upstream Android editor |

For every target validate:

- project manager;
- Scene dock;
- FileSystem;
- Inspector;
- 2D;
- 3D camera and gizmos;
- Script editor and keyboard;
- Output/Debugger;
- play/stop;
- save/reopen;
- configuration change;
- memory pressure/recovery.

## Rejection criteria

Reject a build when any of the following is true:

- a workspace button only changes decoration;
- a tool requires another unrelated panel to become active without explanation;
- selection, Inspector and viewport disagree;
- zoom transforms scene objects accidentally;
- opening a core dock crashes;
- a fixed panel leaves the viewport unusably small;
- a “feature” stores data outside Godot without a migration/adapter contract;
- Godot license or attribution is missing;
- product patches cannot be reproduced from the pinned commit.
