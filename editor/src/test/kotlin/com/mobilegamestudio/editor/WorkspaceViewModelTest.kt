package com.mobilegamestudio.editor

import com.mobilegamestudio.core.contracts.ProjectRepository
import com.mobilegamestudio.core.contracts.ContentResult
import com.mobilegamestudio.core.contracts.ProjectContentRepository
import com.mobilegamestudio.core.model.AssetRecord
import com.mobilegamestudio.core.model.CreateProjectRequest
import com.mobilegamestudio.core.model.OpenProject
import com.mobilegamestudio.core.model.PrimitiveMesh
import com.mobilegamestudio.core.model.ProjectId
import com.mobilegamestudio.core.model.ProjectMetadata
import com.mobilegamestudio.core.model.ProjectResult
import com.mobilegamestudio.core.model.ProjectSummary
import com.mobilegamestudio.core.model.MountainDemoScene
import com.mobilegamestudio.core.model.LuaScriptComponent
import com.mobilegamestudio.core.model.SceneDocument
import com.mobilegamestudio.core.model.SceneMetadata
import com.mobilegamestudio.core.model.VisualGraphComponent
import com.mobilegamestudio.core.model.VisualGraphDocument
import com.mobilegamestudio.core.model.VisualGraphValidator
import com.mobilegamestudio.core.model.VisualNodeType
import java.io.File
import java.io.InputStream
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.CompletableDeferred
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.emptyFlow
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.advanceTimeBy
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runCurrent
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.test.setMain
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class WorkspaceViewModelTest {
    private val dispatcher = StandardTestDispatcher()

    @Before
    fun setUp() {
        Dispatchers.setMain(dispatcher)
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    @Test
    fun `unexpected load failure leaves loading state with safe message`() = runTest(dispatcher) {
        val viewModel = WorkspaceViewModel(ProjectId("project-1"), ThrowingRepository, FakeContentRepository())

        advanceUntilIdle()

        assertFalse(viewModel.state.value.isLoading)
        assertEquals("Falha inesperada ao abrir o projeto.", viewModel.state.value.message)
    }

    @Test
    fun `save publishes persisted metadata revision`() = runTest(dispatcher) {
        val repository = SavingRepository()
        val viewModel = WorkspaceViewModel(METADATA.id, repository, FakeContentRepository())
        advanceUntilIdle()

        viewModel.updateName("Renomeado")
        viewModel.save()
        advanceUntilIdle()

        assertEquals("Renomeado", viewModel.state.value.metadata?.name)
        assertEquals(2L, viewModel.state.value.metadata?.revision)
        assertFalse(viewModel.state.value.isSaving)
    }

    @Test
    fun `open world starter opens with editable terrain scene`() = runTest(dispatcher) {
        val repository = SavingRepository(METADATA.copy(name = "Open World Starter"))
        val viewModel = WorkspaceViewModel(METADATA.id, repository, FakeContentRepository())
        advanceUntilIdle()

        assertTrue(viewModel.state.value.sceneObjects.any { it.id == "open-world-terrain" })
        assertEquals("starter-car", viewModel.state.value.selectedObjectId)
    }

    @Test
    fun `adding built in asset updates hierarchy and can be undone`() = runTest(dispatcher) {
        val viewModel = WorkspaceViewModel(METADATA.id, SavingRepository(), FakeContentRepository())
        advanceUntilIdle()
        val initialCount = viewModel.state.value.sceneObjects.size

        viewModel.addAsset(ASSET)

        assertEquals(initialCount + 1, viewModel.state.value.sceneObjects.size)
        assertTrue(viewModel.state.value.canUndo)

        viewModel.undo()

        assertEquals(initialCount, viewModel.state.value.sceneObjects.size)
        assertTrue(viewModel.state.value.canRedo)
    }

    @Test
    fun `inspector transform change participates in undo history`() = runTest(dispatcher) {
        val viewModel = WorkspaceViewModel(METADATA.id, SavingRepository(), FakeContentRepository())
        advanceUntilIdle()
        val originalX = viewModel.state.value.selectedObject!!.transform.position.x

        viewModel.updateSelectedTransform(
            TransformProperty.POSITION,
            TransformAxis.X,
            0.25f,
        )

        assertEquals(
            originalX + 0.25f,
            viewModel.state.value.selectedObject!!.transform.position.x,
        )
        viewModel.undo()
        assertEquals(originalX, viewModel.state.value.selectedObject!!.transform.position.x)
    }

    @Test
    fun `visual graph editor creates executable chain and persists it`() = runTest(dispatcher) {
        val content = FakeContentRepository()
        val viewModel = WorkspaceViewModel(METADATA.id, SavingRepository(), content)
        advanceUntilIdle()

        viewModel.createTouchGraph()
        viewModel.addVisualNode(VisualNodeType.ROTATE_OBJECT)
        viewModel.addVisualNode(VisualNodeType.PRINT_LOG)
        viewModel.saveVisualGraph()
        advanceUntilIdle()

        val graph = requireNotNull(content.savedGraph)
        assertEquals(3, graph.nodes.size)
        assertEquals(0, graph.connections.size)
        assertTrue(viewModel.state.value.hasVisualGraph)
        assertFalse(viewModel.state.value.isSavingGraph)
    }

    @Test
    fun `code editor creates validates and persists a script component`() = runTest(dispatcher) {
        val content = FakeContentRepository()
        val viewModel = WorkspaceViewModel(METADATA.id, SavingRepository(), content)
        advanceUntilIdle()
        val selectedId = requireNotNull(viewModel.state.value.selectedObjectId)

        viewModel.createScriptForSelected()
        advanceUntilIdle()

        assertTrue(content.savedScript?.contains("OnTouch:Connect") == true)
        assertFalse(viewModel.state.value.isScriptDirty)
        assertTrue(viewModel.state.value.scriptDiagnostics.isEmpty())
        val objectValue = requireNotNull(
            viewModel.state.value.sceneDocument?.objects?.firstOrNull { it.id == selectedId },
        )
        assertTrue(objectValue.components.any { it is LuaScriptComponent })
    }

    @Test
    fun `autosave retains undo history with the stored revision`() = runTest(dispatcher) {
        val viewModel = WorkspaceViewModel(METADATA.id, SavingRepository(), FakeContentRepository())
        advanceUntilIdle()
        val originalX = viewModel.state.value.selectedObject!!.transform.position.x

        viewModel.updateSelectedTransform(TransformProperty.POSITION, TransformAxis.X, 1f)
        advanceTimeBy(WorkspaceViewModel.AUTOSAVE_DELAY_MILLIS + 1)
        advanceUntilIdle()

        assertFalse(viewModel.state.value.isSceneDirty)
        assertTrue(viewModel.state.value.canUndo)
        viewModel.undo()
        assertEquals(originalX, viewModel.state.value.selectedObject!!.transform.position.x)
    }

    @Test
    fun `continuous viewport samples merge into one undo step`() = runTest(dispatcher) {
        val viewModel = WorkspaceViewModel(METADATA.id, SavingRepository(), FakeContentRepository())
        advanceUntilIdle()
        val original = viewModel.state.value.selectedObject!!.transform.position
        viewModel.selectTool(EditorTool.MOVE)

        viewModel.applyViewportDrag(12f, 0f)
        viewModel.applyViewportDrag(12f, 0f)
        viewModel.applyViewportDrag(12f, 0f)
        viewModel.undo()

        assertEquals(original, viewModel.state.value.selectedObject!!.transform.position)
        assertFalse(viewModel.state.value.canUndo)
    }

    @Test
    fun `selecting a newly created object cannot retain another objects graph path`() = runTest(dispatcher) {
        val viewModel = WorkspaceViewModel(METADATA.id, SavingRepository(), FakeContentRepository())
        advanceUntilIdle()
        viewModel.createTouchGraph()
        assertTrue(viewModel.state.value.visualGraphPath != null)

        viewModel.addPrimitive(PrimitiveMesh.CUBE)

        assertEquals(null, viewModel.state.value.visualGraph)
        assertEquals(null, viewModel.state.value.visualGraphPath)
    }

    @Test
    fun `play starts from dirty edit scene without requiring a save`() = runTest(dispatcher) {
        val content = FakeContentRepository()
        val viewModel = WorkspaceViewModel(METADATA.id, SavingRepository(), content)
        advanceUntilIdle()

        viewModel.updateSelectedTransform(TransformProperty.POSITION, TransformAxis.X, 0.5f)
        val dirtyEditDocument = requireNotNull(viewModel.state.value.sceneDocument)
        assertTrue(viewModel.state.value.isSceneDirty)

        viewModel.togglePreview()
        advanceUntilIdle()

        assertTrue(viewModel.state.value.isPreviewRunning)
        assertTrue(viewModel.state.value.isSceneDirty)
        assertEquals(dirtyEditDocument, viewModel.state.value.playDocument)
        assertEquals(0, content.saveSceneCalls)
    }

    @Test
    fun `editing mutations are blocked while play is running`() = runTest(dispatcher) {
        val viewModel = WorkspaceViewModel(METADATA.id, SavingRepository(), FakeContentRepository())
        advanceUntilIdle()
        viewModel.updateSelectedTransform(TransformProperty.POSITION, TransformAxis.X, 0.5f)
        val editState = viewModel.state.value

        viewModel.togglePreview()
        advanceUntilIdle()
        assertTrue(viewModel.state.value.isPreviewRunning)

        viewModel.addPrimitive(PrimitiveMesh.CUBE)
        viewModel.updateSelectedTransform(TransformProperty.POSITION, TransformAxis.X, 3f)
        viewModel.undo()
        viewModel.selectSection(WorkspaceSection.LOGIC)

        val playState = viewModel.state.value
        assertEquals(editState.sceneDocument, playState.sceneDocument)
        assertEquals(editState.sceneObjects, playState.sceneObjects)
        assertEquals(editState.selectedObject?.transform, playState.selectedObject?.transform)
        assertEquals(editState.activeSection, playState.activeSection)
        assertEquals(editState.canUndo, playState.canUndo)
    }

    @Test
    fun `stop discards runtime mutations and preserves dirty edit document`() = runTest(dispatcher) {
        val viewModel = WorkspaceViewModel(METADATA.id, SavingRepository(), FakeContentRepository())
        advanceUntilIdle()
        viewModel.updateSelectedTransform(TransformProperty.POSITION, TransformAxis.X, 0.5f)
        val dirtyEditDocument = requireNotNull(viewModel.state.value.sceneDocument)

        viewModel.togglePreview()
        advanceUntilIdle()
        viewModel.emitPreviewAction("move.axis:1:0")
        advanceUntilIdle()

        assertTrue(viewModel.state.value.playDocument != dirtyEditDocument)
        assertEquals(dirtyEditDocument, viewModel.state.value.sceneDocument)

        viewModel.togglePreview()

        assertFalse(viewModel.state.value.isPreviewRunning)
        assertEquals(null, viewModel.state.value.playDocument)
        assertEquals(dirtyEditDocument, viewModel.state.value.sceneDocument)
        assertTrue(viewModel.state.value.isSceneDirty)
    }

    @Test
    fun `rotate on touch quick behavior attaches and saves a valid graph`() = runTest(dispatcher) {
        val content = FakeContentRepository()
        val viewModel = WorkspaceViewModel(METADATA.id, SavingRepository(), content)
        advanceUntilIdle()
        val selectedId = requireNotNull(viewModel.state.value.selectedObjectId)

        viewModel.addQuickBehavior(QuickBehavior.ROTATE_ON_TOUCH)
        advanceUntilIdle()

        val savedGraph = requireNotNull(content.savedGraph)
        val graphPath = requireNotNull(content.savedGraphPath)
        val selectedObject = requireNotNull(
            viewModel.state.value.sceneDocument?.objects?.firstOrNull { it.id == selectedId },
        )
        val attachedGraph = selectedObject.components
            .filterIsInstance<VisualGraphComponent>()
            .single { it.relativePath == graphPath }

        assertTrue(VisualGraphValidator.validate(savedGraph).isEmpty())
        assertEquals(
            listOf(VisualNodeType.ON_TOUCH, VisualNodeType.ROTATE_OBJECT),
            savedGraph.nodes.map { it.type },
        )
        assertEquals(selectedId, savedGraph.nodes.first().objectId)
        assertEquals(selectedId, savedGraph.nodes.last().objectId)
        assertEquals(1, savedGraph.connections.size)
        assertEquals(graphPath, attachedGraph.relativePath)
        assertEquals(savedGraph, viewModel.state.value.visualGraph)
        assertTrue(viewModel.state.value.hasVisualGraph)
    }

    @Test
    fun `two quick behaviors preserve the existing graph`() = runTest(dispatcher) {
        val content = FakeContentRepository()
        val viewModel = WorkspaceViewModel(METADATA.id, SavingRepository(), content)
        advanceUntilIdle()

        viewModel.addQuickBehavior(QuickBehavior.ROTATE_ON_TOUCH)
        advanceUntilIdle()
        viewModel.addQuickBehavior(QuickBehavior.SCALE_ON_TOUCH)
        advanceUntilIdle()

        assertEquals(
            listOf(
                VisualNodeType.ON_TOUCH,
                VisualNodeType.ROTATE_OBJECT,
                VisualNodeType.SET_SCALE,
            ),
            requireNotNull(content.savedGraph).nodes.map { it.type },
        )
        assertEquals(2, requireNotNull(content.savedGraph).connections.size)
    }

    @Test
    fun `renamed object is saved and restored`() = runTest(dispatcher) {
        val content = FakeContentRepository()
        val repository = SavingRepository()
        val viewModel = WorkspaceViewModel(METADATA.id, repository, content)
        advanceUntilIdle()

        viewModel.renameSelected("Ground Renamed")
        viewModel.saveScene()
        advanceUntilIdle()

        val reopened = WorkspaceViewModel(METADATA.id, repository, content)
        advanceUntilIdle()

        assertEquals("Ground Renamed", reopened.state.value.selectedObject?.name)
    }

    @Test
    fun `quick behavior cannot replace a graph that is still loading`() = runTest(dispatcher) {
        val content = FakeContentRepository()
        val viewModel = WorkspaceViewModel(METADATA.id, SavingRepository(), content)
        advanceUntilIdle()
        content.graphReadGate = CompletableDeferred()

        viewModel.selectObject("fps-player")
        runCurrent()
        assertTrue(viewModel.state.value.isLoadingGraph)

        viewModel.addQuickBehavior(QuickBehavior.ROTATE_ON_TOUCH)
        assertEquals(null, content.savedGraph)

        content.graphReadGate?.complete(Unit)
        advanceUntilIdle()

        assertFalse(viewModel.state.value.isLoadingGraph)
        assertEquals(MountainDemoScene.graph(), viewModel.state.value.visualGraph)
        assertEquals(null, content.savedGraph)
    }
}

private object ThrowingRepository : ProjectRepository {
    override fun observeProjects(): Flow<List<ProjectSummary>> = emptyFlow()
    override suspend fun createProject(request: CreateProjectRequest): ProjectResult<OpenProject> =
        error("not used")
    override suspend fun openProject(id: ProjectId): ProjectResult<OpenProject> =
        throw IllegalStateException("internal path")
    override suspend fun updateMetadata(
        metadata: ProjectMetadata,
        expectedRevision: Long,
    ): ProjectResult<ProjectMetadata> = error("not used")
}

private class SavingRepository(
    private val metadata: ProjectMetadata = METADATA,
) : ProjectRepository {
    override fun observeProjects(): Flow<List<ProjectSummary>> = emptyFlow()
    override suspend fun createProject(request: CreateProjectRequest): ProjectResult<OpenProject> =
        error("not used")
    override suspend fun openProject(id: ProjectId): ProjectResult<OpenProject> =
        ProjectResult.Success(OpenProject(metadata))
    override suspend fun updateMetadata(
        metadata: ProjectMetadata,
        expectedRevision: Long,
    ): ProjectResult<ProjectMetadata> =
        ProjectResult.Success(metadata.copy(revision = expectedRevision + 1))
}

private class FakeContentRepository : ProjectContentRepository {
    private var scene = MountainDemoScene.create(1)
    var saveSceneCalls: Int = 0
    var savedGraph: VisualGraphDocument? = null
    var savedGraphPath: String? = null
    var savedScript: String? = null
    var graphReadGate: CompletableDeferred<Unit>? = null

    override suspend fun loadOrCreateScene(projectId: ProjectId): ContentResult<SceneDocument> =
        ContentResult.Success(scene)

    override suspend fun saveScene(
        projectId: ProjectId,
        scene: SceneDocument,
        expectedRevision: Long,
    ): ContentResult<SceneDocument> {
        saveSceneCalls += 1
        this.scene = scene.copy(metadata = scene.metadata.copy(revision = expectedRevision + 1))
        return ContentResult.Success(this.scene)
    }

    override suspend fun installMountainDemo(projectId: ProjectId): ContentResult<SceneDocument> =
        ContentResult.Success(scene)

    override suspend fun listAssets(projectId: ProjectId): ContentResult<List<AssetRecord>> =
        ContentResult.Success(listOf(ASSET))

    override suspend fun importModel(
        projectId: ProjectId,
        sourceName: String,
        input: InputStream,
    ): ContentResult<AssetRecord> = ContentResult.Success(ASSET)

    override fun resolveAsset(projectId: ProjectId, assetId: String): File? = null

    override suspend fun readLuaScript(
        projectId: ProjectId,
        relativePath: String,
    ): ContentResult<String> = ContentResult.Success(MountainDemoScene.LUA_SOURCE)

    override suspend fun saveLuaScript(
        projectId: ProjectId,
        relativePath: String,
        source: String,
    ): ContentResult<Unit> {
        savedScript = source
        return ContentResult.Success(Unit)
    }

    override suspend fun readVisualGraph(
        projectId: ProjectId,
        relativePath: String,
    ): ContentResult<VisualGraphDocument> {
        graphReadGate?.await()
        return ContentResult.Success(MountainDemoScene.graph())
    }

    override suspend fun saveVisualGraph(
        projectId: ProjectId,
        relativePath: String,
        graph: VisualGraphDocument,
    ): ContentResult<Unit> {
        savedGraphPath = relativePath
        savedGraph = graph
        return ContentResult.Success(Unit)
    }
}

private val METADATA = ProjectMetadata(
    format = "mobile-game-studio",
    schemaVersion = 1,
    id = ProjectId("project-1"),
    name = "Original",
    createdAtEpochMillis = 1,
    updatedAtEpochMillis = 1,
    revision = 1,
    engineVersion = "0.1.0",
    startScene = null,
)

private val ASSET = AssetRecord(
    id = "asset-1",
    displayName = "Mountain.glb",
    relativePath = "assets/models/mountain.glb",
    mediaType = "model/gltf-binary",
    sizeBytes = 128,
    sha256 = "abc",
    importedAtEpochMillis = 1,
)
