from pathlib import Path

MAIN = Path("editor/src/main/kotlin/com/mobilegamestudio/editor/WorkspaceViewModel.kt")
TEST = Path("editor/src/test/kotlin/com/mobilegamestudio/editor/WorkspaceViewModelTest.kt")
TEST_MARKER = "incompatible creation cannot replace selection during pending target"


def replace_once(source: str, old: str, new: str, label: str) -> str:
    count = source.count(old)
    if count != 1:
        raise RuntimeError(f"{label}: expected one match, found {count}")
    return source.replace(old, new, 1)


def patch_main() -> None:
    source = MAIN.read_text(encoding="utf-8")
    old = """        mutableState.update { state ->
            state.copy(
                selectedObjectId = objectId,
                editorContext = transition.state,
                message = transition.state.diagnostic?.message ?: state.message,
            )
        }
    }

    private fun scheduleAutosave() {
"""
    if old not in source:
        if "val acceptedTarget = !choosingTarget" in source:
            return
        raise RuntimeError("pending target selection helper was not found")
    new = """        val acceptedTarget = !choosingTarget || (
            transition.state.pendingOperation == null && transition.state.selection.objectId == objectId
        )
        mutableState.update { state ->
            state.copy(
                selectedObjectId = if (acceptedTarget) objectId else transition.state.selection.objectId,
                editorContext = transition.state,
                message = transition.state.diagnostic?.message ?: state.message,
            )
        }
    }

    private fun scheduleAutosave() {
"""
    MAIN.write_text(replace_once(source, old, new, "pending target helper"), encoding="utf-8")


def patch_tests() -> None:
    source = TEST.read_text(encoding="utf-8")
    if TEST_MARKER in source:
        return
    anchor = """    @Test
    fun `primitive conversion updates document selection and tool atomically`() = runTest(dispatcher) {
"""
    test = """    @Test
    fun `incompatible creation cannot replace selection during pending target`() = runTest(dispatcher) {
        val repository = SavingRepository(METADATA.copy(name = "Open World Starter"))
        val viewModel = WorkspaceViewModel(METADATA.id, repository, FakeContentRepository())
        advanceUntilIdle()
        val terrainId = requireNotNull(viewModel.state.value.sceneDocument)
            .objects
            .first { it.component<TerrainComponent>() != null }
            .id

        viewModel.selectObject(terrainId)
        viewModel.activateAuthoringToolset(EditorToolset.VOLUME)
        viewModel.addSceneObject(EditorObjectType.CAMERA)

        val context = viewModel.state.value.editorContext
        assertEquals(terrainId, viewModel.state.value.selectedObjectId)
        assertEquals(terrainId, context.selection.objectId)
        assertEquals(EditorSelectionKind.TERRAIN, context.selection.kind)
        assertEquals(EditorToolset.OBJECT, context.activeToolset)
        assertTrue(context.pendingOperation is PendingEditorOperation.SelectOrCreateTarget)
        assertTrue(viewModel.state.value.sceneObjects.any { it.type == EditorObjectType.CAMERA })
    }

"""
    TEST.write_text(
        replace_once(source, anchor, test + anchor, "pending target integration test"),
        encoding="utf-8",
    )


def main() -> None:
    patch_main()
    patch_tests()
    print("Applied pending authoring invariant hardening")


if __name__ == "__main__":
    main()
