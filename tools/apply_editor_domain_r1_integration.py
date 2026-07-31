from pathlib import Path

PATH = Path("editor/src/main/kotlin/com/mobilegamestudio/editor/WorkspaceViewModel.kt")
MARKER = "fun activateAuthoringToolset(toolset: EditorToolset)"


def replace_once(source: str, old: str, new: str, label: str) -> str:
    count = source.count(old)
    if count != 1:
        raise RuntimeError(f"{label}: expected one match, found {count}")
    return source.replace(old, new, 1)


def main() -> None:
    source = PATH.read_text(encoding="utf-8")
    if MARKER in source:
        print("Editor domain R1 integration already applied")
        return

    source = replace_once(
        source,
        "import com.mobilegamestudio.scripting.VisualGraphExecutor\n",
        "import com.mobilegamestudio.scripting.VisualGraphExecutor\n"
        "import com.mobilegamestudio.editor.domain.EditorContextReducer\n"
        "import com.mobilegamestudio.editor.domain.EditorContextState\n"
        "import com.mobilegamestudio.editor.domain.EditorConversion\n"
        "import com.mobilegamestudio.editor.domain.EditorIntent\n"
        "import com.mobilegamestudio.editor.domain.EditorToolId\n"
        "import com.mobilegamestudio.editor.domain.EditorToolset\n"
        "import com.mobilegamestudio.editor.domain.EditorTransition\n"
        "import com.mobilegamestudio.editor.domain.PendingEditorOperation\n",
        "domain imports",
    )

    source = replace_once(
        source,
        "    val terrainTool: TerrainToolState = TerrainToolState(),\n) {",
        "    val terrainTool: TerrainToolState = TerrainToolState(),\n"
        "    val editorContext: EditorContextState = EditorContextState.initial(),\n"
        ") {",
        "workspace state",
    )

    source = replace_once(
        source,
        "    fun selectTool(tool: EditorTool) {\n"
        "        if (!canEdit()) return\n"
        "        mutableState.update { it.copy(activeTool = tool) }\n"
        "    }\n\n"
        "    fun selectObject(id: String) {",
        "    fun selectTool(tool: EditorTool) {\n"
        "        if (!canEdit()) return\n"
        "        mutableState.update { it.copy(activeTool = tool) }\n"
        "    }\n\n"
        "    fun activateAuthoringToolset(toolset: EditorToolset) {\n"
        "        if (!canEdit()) return\n"
        "        publishEditorTransition(\n"
        "            EditorContextReducer.reduce(\n"
        "                mutableState.value.editorContext,\n"
        "                EditorIntent.ActivateToolset(toolset),\n"
        "            ),\n"
        "        )\n"
        "    }\n\n"
        "    fun activateAuthoringTool(tool: EditorToolId) {\n"
        "        if (!canEdit()) return\n"
        "        publishEditorTransition(\n"
        "            EditorContextReducer.reduce(\n"
        "                mutableState.value.editorContext,\n"
        "                EditorIntent.ActivateTool(tool),\n"
        "            ),\n"
        "        )\n"
        "    }\n\n"
        "    fun cancelPendingAuthoringOperation() {\n"
        "        publishEditorTransition(\n"
        "            EditorContextReducer.reduce(\n"
        "                mutableState.value.editorContext,\n"
        "                EditorIntent.CancelPendingOperation,\n"
        "            ),\n"
        "        )\n"
        "    }\n\n"
        "    fun clearAuthoringDiagnostic() {\n"
        "        publishEditorTransition(\n"
        "            EditorContextReducer.reduce(\n"
        "                mutableState.value.editorContext,\n"
        "                EditorIntent.ClearDiagnostic,\n"
        "            ),\n"
        "        )\n"
        "    }\n\n"
        "    fun confirmPendingAuthoringConversion(resolution: Int = 24) {\n"
        "        if (!canEdit()) return\n"
        "        val current = mutableState.value\n"
        "        val pending = current.editorContext.pendingOperation as? PendingEditorOperation.ConfirmConversion\n"
        "            ?: run {\n"
        "                mutableState.update { it.copy(message = \"Nenhuma conversão de autoria está pendente.\") }\n"
        "                return\n"
        "            }\n"
        "        val document = current.sceneDocument ?: return\n"
        "        val sourceObject = document.objects.firstOrNull { it.id == pending.sourceObjectId }\n"
        "            ?: run {\n"
        "                mutableState.update { it.copy(message = \"O objeto da conversão não existe mais.\") }\n"
        "                return\n"
        "            }\n"
        "        val convertedObject = when (pending.conversion) {\n"
        "            EditorConversion.PRIMITIVE_TO_EDITABLE_MESH -> {\n"
        "                if (sourceObject.component<EditableMeshComponent>() != null) sourceObject else {\n"
        "                    val primitive = sourceObject.component<MeshRendererComponent>()?.primitive ?: PrimitiveMesh.CUBE\n"
        "                    val editable = if (primitive == PrimitiveMesh.PLANE) {\n"
        "                        EditableMeshPresets.plane()\n"
        "                    } else {\n"
        "                        EditableMeshPresets.cube()\n"
        "                    }\n"
        "                    sourceObject.copy(components = sourceObject.components + editable)\n"
        "                }\n"
        "            }\n"
        "            EditorConversion.EDITABLE_MESH_TO_VOLUME -> {\n"
        "                val editable = sourceObject.component<EditableMeshComponent>() ?: run {\n"
        "                    mutableState.update { it.copy(message = \"A malha editável da conversão não existe mais.\") }\n"
        "                    return\n"
        "                }\n"
        "                val volume = editable.toVoxelVolume(resolution.coerceIn(8, 96))\n"
        "                sourceObject.copy(\n"
        "                    components = sourceObject.components\n"
        "                        .filterNot { it is EditableMeshComponent || it is VoxelVolumeComponent } + volume,\n"
        "                )\n"
        "            }\n"
        "        }\n"
        "        val preparedDocument = document.copy(\n"
        "            objects = document.objects.map { item ->\n"
        "                if (item.id == sourceObject.id) convertedObject else item\n"
        "            },\n"
        "        ).ensureWorldLayerStructure()\n"
        "        val history = sceneHistory ?: return\n"
        "        val result = history.execute(ReplaceSceneDocumentCommand(document, preparedDocument))\n"
        "        if (result !is SceneEditResult.Success) return\n"
        "        val resultSelection = result.document.toEditorSelection(sourceObject.id)\n"
        "        val transition = EditorContextReducer.reduce(\n"
        "            current.editorContext,\n"
        "            EditorIntent.ConfirmConversion(resultSelection),\n"
        "        )\n"
        "        editGeneration += 1\n"
        "        mutableState.update { state ->\n"
        "            state.copy(\n"
        "                sceneDocument = result.document,\n"
        "                sceneObjects = result.document.toEditorObjects(),\n"
        "                selectedObjectId = sourceObject.id,\n"
        "                editorContext = transition.state,\n"
        "                isSceneDirty = result.document != persistedScene,\n"
        "                canUndo = history.canUndo,\n"
        "                canRedo = history.canRedo,\n"
        "                message = when (pending.conversion) {\n"
        "                    EditorConversion.PRIMITIVE_TO_EDITABLE_MESH ->\n"
        "                        \"Objeto convertido e aberto como malha editável.\"\n"
        "                    EditorConversion.EDITABLE_MESH_TO_VOLUME ->\n"
        "                        \"Malha convertida e aberta como volume voxel.\"\n"
        "                },\n"
        "            )\n"
        "        }\n"
        "        scheduleAutosave()\n"
        "    }\n\n"
        "    fun selectObject(id: String) {",
        "authoring actions",
    )

    old_select = """    fun selectObject(id: String) {
        if (!canEdit()) return
        if (mutableState.value.sceneObjects.none { it.id == id }) return
        val hasGraph = mutableState.value.sceneDocument
            ?.objects
            ?.firstOrNull { it.id == id }
            ?.components
            ?.any { it is VisualGraphComponent && it.enabled } == true
        val hasScript = mutableState.value.sceneDocument
            ?.objects
            ?.firstOrNull { it.id == id }
            ?.components
            ?.any { it is LuaScriptComponent && it.enabled } == true
        mutableState.update {
            it.copy(
                selectedObjectId = id,
                visualGraph = null,
                visualGraphPath = null,
                isLoadingGraph = hasGraph,
                scriptSource = null,
                scriptPath = null,
                isLoadingScript = hasScript,
                isScriptDirty = false,
                scriptDiagnostics = emptyList(),
            )
        }
        loadGraphForObject(id)
        loadScriptForObject(id)
    }
"""
    new_select = """    fun selectObject(id: String) {
        if (!canEdit()) return
        val current = mutableState.value
        val document = current.sceneDocument ?: return
        if (current.sceneObjects.none { it.id == id }) return
        val selection = document.toEditorSelection(id)
        val choosingTarget = current.editorContext.pendingOperation is PendingEditorOperation.SelectOrCreateTarget
        val transition = EditorContextReducer.reduce(
            current.editorContext,
            if (choosingTarget) EditorIntent.ConfirmTarget(selection) else EditorIntent.SelectionChanged(selection),
        )
        val accepted = !choosingTarget || (
            transition.state.pendingOperation == null && transition.state.selection.objectId == id
        )
        if (!accepted) {
            publishEditorTransition(transition)
            return
        }
        val objectValue = document.objects.first { it.id == id }
        val hasGraph = objectValue.components.any { it is VisualGraphComponent && it.enabled }
        val hasScript = objectValue.components.any { it is LuaScriptComponent && it.enabled }
        mutableState.update {
            it.copy(
                selectedObjectId = id,
                editorContext = transition.state,
                visualGraph = null,
                visualGraphPath = null,
                isLoadingGraph = hasGraph,
                scriptSource = null,
                scriptPath = null,
                isLoadingScript = hasScript,
                isScriptDirty = false,
                scriptDiagnostics = emptyList(),
                message = transition.state.diagnostic?.message ?: it.message,
            )
        }
        loadGraphForObject(id)
        loadScriptForObject(id)
    }
"""
    source = replace_once(source, old_select, new_select, "selection integration")

    source = replace_once(
        source,
        "                        val graphEntry = loadGraph(scene, selectedId)\n",
        "                        val initialEditorContext = EditorContextReducer.reduce(\n"
        "                            EditorContextState.initial(),\n"
        "                            EditorIntent.SelectionChanged(scene.toEditorSelection(selectedId)),\n"
        "                        ).state\n"
        "                        val graphEntry = loadGraph(scene, selectedId)\n",
        "load context",
    )
    source = replace_once(
        source,
        "                            terrainTool = TerrainToolState(),\n",
        "                            terrainTool = TerrainToolState(),\n",
        "noop guard",
    ) if "                            terrainTool = TerrainToolState(),\n" in source else source
    source = replace_once(
        source,
        "                            scriptPath = scriptEntry?.first,\n                            assets = loadAssets(),\n",
        "                            scriptPath = scriptEntry?.first,\n"
        "                            assets = loadAssets(),\n"
        "                            editorContext = initialEditorContext,\n",
        "load state context",
    )

    source = replace_once(
        source,
        "                    sceneDocument = result.document,\n"
        "                    isSceneDirty = result.document != persistedScene,\n",
        "                    sceneDocument = result.document,\n"
        "                    editorContext = it.editorContext.synchronizeSceneSelection(\n"
        "                        result.document,\n"
        "                        it.selectedObjectId,\n"
        "                    ),\n"
        "                    isSceneDirty = result.document != persistedScene,\n",
        "mutate scene context",
    )

    source = replace_once(
        source,
        "                                    sceneObjects = canonicalDocument.toEditorObjects(),\n"
        "                                    canUndo = history?.canUndo == true,\n",
        "                                    sceneObjects = canonicalDocument.toEditorObjects(),\n"
        "                                    editorContext = it.editorContext.synchronizeSceneSelection(\n"
        "                                        canonicalDocument,\n"
        "                                        it.selectedObjectId,\n"
        "                                    ),\n"
        "                                    canUndo = history?.canUndo == true,\n",
        "save context",
    )

    old_publish = """        mutableState.update {
            it.copy(
                sceneDocument = document,
                sceneObjects = objects,
                selectedObjectId = it.selectedObjectId.takeIf { id ->
                    objects.any { item -> item.id == id }
                },
                isSceneDirty = document != persistedScene,
                canUndo = history.canUndo,
                canRedo = history.canRedo,
            )
        }
"""
    new_publish = """        mutableState.update { state ->
            val selectedId = state.selectedObjectId.takeIf { id ->
                objects.any { item -> item.id == id }
            }
            state.copy(
                sceneDocument = document,
                sceneObjects = objects,
                selectedObjectId = selectedId,
                editorContext = state.editorContext.synchronizeSceneSelection(document, selectedId),
                isSceneDirty = document != persistedScene,
                canUndo = history.canUndo,
                canRedo = history.canRedo,
            )
        }
"""
    source = replace_once(source, old_publish, new_publish, "history context")

    source = replace_once(
        source,
        "    private fun scheduleAutosave() {\n",
        "    private fun publishEditorTransition(transition: EditorTransition) {\n"
        "        mutableState.update { state ->\n"
        "            state.copy(\n"
        "                editorContext = transition.state,\n"
        "                message = transition.state.diagnostic?.message ?: state.message,\n"
        "            )\n"
        "        }\n"
        "    }\n\n"
        "    private fun synchronizeCreatedAuthoringSelection(objectId: String) {\n"
        "        val current = mutableState.value\n"
        "        val document = current.sceneDocument ?: return\n"
        "        val selection = document.toEditorSelection(objectId)\n"
        "        val choosingTarget = current.editorContext.pendingOperation is PendingEditorOperation.SelectOrCreateTarget\n"
        "        val transition = EditorContextReducer.reduce(\n"
        "            current.editorContext,\n"
        "            if (choosingTarget) EditorIntent.ConfirmTarget(selection) else EditorIntent.SelectionChanged(selection),\n"
        "        )\n"
        "        mutableState.update { state ->\n"
        "            state.copy(\n"
        "                selectedObjectId = objectId,\n"
        "                editorContext = transition.state,\n"
        "                message = transition.state.diagnostic?.message ?: state.message,\n"
        "            )\n"
        "        }\n"
        "    }\n\n"
        "    private fun scheduleAutosave() {\n",
        "transition helpers",
    )

    for anchor, label in [
        (
            "                message = \"Terreno plano criado. Arraste no viewport para começar a moldar.\",\n"
            "            )\n"
            "        }\n"
            "    }\n\n"
            "    fun assignTerrainTexture",
            "                message = \"Terreno plano criado. Arraste no viewport para começar a moldar.\",\n"
            "            )\n"
            "        }\n"
            "        synchronizeCreatedAuthoringSelection(id)\n"
            "    }\n\n"
            "    fun assignTerrainTexture",
        ),
        (
            "        mutableState.update { it.copy(selectedObjectId = objectValue.id, message = \"Malha editável criada.\") }\n"
            "    }\n\n"
            "    fun convertSelectedToEditableMesh",
            "        mutableState.update { it.copy(selectedObjectId = objectValue.id, message = \"Malha editável criada.\") }\n"
            "        synchronizeCreatedAuthoringSelection(objectValue.id)\n"
            "    }\n\n"
            "    fun convertSelectedToEditableMesh",
        ),
        (
            "        mutableState.update { it.copy(selectedObjectId = objectValue.id, message = if (cave) \"Caverna voxel criada.\" else \"Volume voxel criado.\") }\n"
            "    }\n\n"
            "    fun convertSelectedMeshToVoxel",
            "        mutableState.update { it.copy(selectedObjectId = objectValue.id, message = if (cave) \"Caverna voxel criada.\" else \"Volume voxel criado.\") }\n"
            "        synchronizeCreatedAuthoringSelection(objectValue.id)\n"
            "    }\n\n"
            "    fun convertSelectedMeshToVoxel",
        ),
    ]:
        source = replace_once(source, anchor, label, "created selection")

    PATH.write_text(source, encoding="utf-8")
    print("Applied editor domain R1 integration")


if __name__ == "__main__":
    main()
