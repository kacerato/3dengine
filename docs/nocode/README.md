# Mobile Game Studio native NoCode foundation

This module ports the useful visual-graph contract from the historical Kotlin/Compose prototype into the real Godot editor and runtime.

## Architecture

- `MGSNoCodeGraph` stores a versioned graph and imports/exports legacy `*.graph.json` documents.
- `MGSNoCodeRunner` executes registered actions on real Godot nodes and scenes.
- `MGSNoCodeEditorPlugin` provides a native `GraphEdit` workspace in the editor bottom panel.
- The module does not create a second scene graph, object model or renderer.

## Initial executable nodes

- scene start and input-button events;
- sequence and branch flow;
- log output;
- variable set/get/add;
- arithmetic and comparison runtime operations;
- visibility and process-mode actions;
- Node3D position, movement, Y rotation and uniform scale;
- scene change.

## Safety

- schema versions 1 and 2 only;
- maximum 512 nodes and 1,024 connections per graph;
- duplicate/self connections rejected;
- maximum executed-node limit;
- repeated-node cycle detection;
- unregistered actions fail explicitly instead of invoking arbitrary methods.

## Device gate

Compilation and automated contract tests prove build integration. Physical Android validation is still required for touch ergonomics, graph editing, save/import behavior and runtime execution in a real project.
