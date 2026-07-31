from pathlib import Path

MAIN = Path("editor/src/main/kotlin/com/mobilegamestudio/editor/WorkspaceViewModel.kt")
TEST = Path("editor/src/test/kotlin/com/mobilegamestudio/editor/WorkspaceViewModelTest.kt")
MARKER = "workspace selection feeds terrain toolset immediately"


def replace_once(source: str, old: str, new: str, label: str) -> str:
    count = source.count(old)
    if count != 1:
        raise RuntimeError(f"{label}: expected one match, found {count}")
    return source.replace(old, new, 1)


def patch_main() -> None:
    source = MAIN.read_text(encoding="utf-8")
    if "message = \"${asset.displayName} adicionado à cena.\"" in source and (
        "message = \"${asset.displayName} adicionado à cena.\",\n            )\n        }\n        synchronizeCreatedAuthoringSelection(newObject.id)"
        not in source
    ):
        source = replace_once(
            source,
            "                message = \"${asset.displayName} adicionado à cena.\",\n"
            "            )\n"
            "        }\n"
            "    }\n\n"
            "    fun addPrimitive",
            "                message = \"${asset.displayName} adicionado à cena.\",\n"
            "            )\n"
            "        }\n"
            "        synchronizeCreatedAuthoringSelection(newObject.id)\n"
            "    }\n\n"
            "    fun addPrimitive",
            "asset creation selection",
        )

    primitive_anchor = (
        "                activeSection = WorkspaceSection.SCENE,\n"
        "            )\n"
        "        }\n"
        "    }\n\n"
        "    fun addSceneObject"
    )
    if primitive_anchor in source:
        source = replace_once(
            source,
            primitive_anchor,
            "                activeSection = WorkspaceSection.SCENE,\n"
            "            )\n"
            "        }\n"
            "        synchronizeCreatedAuthoringSelection(newObject.id)\n"
            "    }\n\n"
            "    fun addSceneObject",
            "primitive creation selection",
        )

    scene_object_anchor = (
        "                isLoadingScript = false,\n"
        "                isScriptDirty = false,\n"
        "            )\n"
        "        }\n"
        "    }\n\n"
        "    fun createPlayableWorld"
    )
    if scene_object_anchor in source:
        source = replace_once(
            source,
            scene_object_anchor,
            "                isLoadingScript = false,\n"
            "                isScriptDirty = false,\n"
            "            )\n"
            "        }\n"
            "        synchronizeCreatedAuthoringSelection(newObject.id)\n"
            "    }\n\n"
            "    fun createPlayableWorld",
            "scene object creation selection",
        )

    MAIN.write_text(source, encoding="utf-8")


def patch_tests() -> None:
    source = TEST.read_text(encoding="utf-8")
    if MARKER in source:
        return

    source = replace_once(
        source,
        "import com.mobilegamestudio.core.model.PrimitiveMesh\n",
        "import com.mobilegamestudio.core.model.PrimitiveMesh\n"
        "import com.mobilegamestudio.core.model.EditableMeshComponent\n"
        "import com.mobilegamestudio.core.model.TerrainComponent\n"
        "import com.mobilegamestudio.editor.domain.EditorSelectionKind\n"
        "import com.mobilegamestudio.editor.domain.EditorToolId\n"
        "import com.mobilegamestudio.editor.domain.EditorToolset\n"
        "import com.mobilegamestudio.editor.domain.PendingEditorOperation\n",
        "test imports",
    )

    anchor = """    @Test
    fun `adding built in asset updates hierarchy and can be undone`() = runTest(dispatcher) {
"""
    tests = """    @Test
    fun `workspace selection feeds terrain toolset immediately`() = runTest(dispatcher) {
        val repository = SavingRepository(METADATA.copy(name = "Open World Starter"))
        val viewModel = WorkspaceViewModel(METADATA.id, repository, FakeContentRepository())
        advanceUntilIdle()
        val terrainId = requireNotNull(viewModel.state.value.sceneDocument)
            .objects
            .first { it.component<TerrainComponent>() != null }
            .id

        viewModel.selectObject(terrainId)
        viewModel.activateAuthoringToolset(EditorToolset.TERRAIN)

        val context = viewModel.state.value.editorContext
        assertEquals(terrainId, context.selection.objectId)
        assertEquals(EditorSelectionKind.TERRAIN, context.selection.kind)
        assertEquals(EditorToolset.TERRAIN, context.activeToolset)
        assertEquals(EditorToolId.TERRAIN_NAVIGATE, context.activeTool)
        assertEquals(null, context.pendingOperation)
    }

    @Test
    fun `volume request over terrain keeps coherent context and asks for a target`() = runTest(dispatcher) {
        val repository = SavingRepository(METADATA.copy(name = "Open World Starter"))
        val viewModel = WorkspaceViewModel(METADATA.id, repository, FakeContentRepository())
        advanceUntilIdle()
        val terrainId = requireNotNull(viewModel.state.value.sceneDocument)
            .objects
            .first { it.component<TerrainComponent>() != null }
            .id

        viewModel.selectObject(terrainId)
        viewModel.activateAuthoringToolset(EditorToolset.VOLUME)

        val context = viewModel.state.value.editorContext
        assertEquals(EditorToolset.OBJECT, context.activeToolset)
        assertEquals(EditorToolId.OBJECT_SELECT, context.activeTool)
        assertEquals(EditorSelectionKind.TERRAIN, context.selection.kind)
        assertTrue(context.pendingOperation is PendingEditorOperation.SelectOrCreateTarget)
    }

    @Test
    fun `primitive conversion updates document selection and tool atomically`() = runTest(dispatcher) {
        val viewModel = WorkspaceViewModel(METADATA.id, SavingRepository(), FakeContentRepository())
        advanceUntilIdle()

        viewModel.addPrimitive(PrimitiveMesh.CUBE)
        val primitiveId = requireNotNull(viewModel.state.value.selectedObjectId)
        assertEquals(primitiveId, viewModel.state.value.editorContext.selection.objectId)
        assertEquals(EditorSelectionKind.PRIMITIVE_MESH, viewModel.state.value.editorContext.selection.kind)

        viewModel.activateAuthoringToolset(EditorToolset.MESH)
        assertTrue(
            viewModel.state.value.editorContext.pendingOperation is PendingEditorOperation.ConfirmConversion,
        )

        viewModel.confirmPendingAuthoringConversion()

        val converted = requireNotNull(viewModel.state.value.sceneDocument)
            .objects
            .first { it.id == primitiveId }
        val context = viewModel.state.value.editorContext
        assertTrue(converted.component<EditableMeshComponent>() != null)
        assertEquals(EditorSelectionKind.EDITABLE_MESH, context.selection.kind)
        assertEquals(EditorToolset.MESH, context.activeToolset)
        assertEquals(EditorToolId.MESH_VERTEX_SELECT, context.activeTool)

        viewModel.undo()
        val restored = requireNotNull(viewModel.state.value.sceneDocument)
            .objects
            .first { it.id == primitiveId }
        assertEquals(null, restored.component<EditableMeshComponent>())
        assertEquals(EditorSelectionKind.PRIMITIVE_MESH, viewModel.state.value.editorContext.selection.kind)
        assertEquals(EditorToolset.OBJECT, viewModel.state.value.editorContext.activeToolset)
    }

"""
    source = replace_once(source, anchor, tests + anchor, "workspace integration tests")
    TEST.write_text(source, encoding="utf-8")


def main() -> None:
    patch_main()
    patch_tests()
    print("Applied editor domain R1 selection follow-up")


if __name__ == "__main__":
    main()
