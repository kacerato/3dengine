package com.mobilegamestudio.projects.content

import com.mobilegamestudio.core.common.StudioClock
import com.mobilegamestudio.core.contracts.ContentError
import com.mobilegamestudio.core.contracts.ContentResult
import com.mobilegamestudio.core.model.MountainDemoScene
import com.mobilegamestudio.core.model.ProjectId
import com.mobilegamestudio.core.model.SceneValidator
import com.mobilegamestudio.core.model.TransformComponent
import com.mobilegamestudio.core.model.Vector3
import java.io.ByteArrayInputStream
import java.io.File
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.rules.TemporaryFolder

class DefaultProjectContentRepositoryTest {
    @get:Rule
    val temporary = TemporaryFolder()

    @Test
    fun `starter scene saves and reopens with transform intact`() = runBlocking {
        val repository = repository()
        val created = repository.loadOrCreateScene(PROJECT_ID) as ContentResult.Success
        val cube = created.value.objects.first { it.id == "cube" }
        val transform = cube.component<TransformComponent>()!!
        val changed = created.value.copy(objects = created.value.objects.map {
            if (it.id == cube.id) it.copy(components = it.components.map { component ->
                if (component is TransformComponent) component.copy(position = Vector3(2f, 1f, -3f))
                else component
            }) else it
        })

        val saved = repository.saveScene(PROJECT_ID, changed, created.value.metadata.revision)

        assertTrue(saved is ContentResult.Success)
        val reopened = repository.loadOrCreateScene(PROJECT_ID) as ContentResult.Success
        assertEquals(
            Vector3(2f, 1f, -3f),
            reopened.value.objects.first { it.id == cube.id }.component<TransformComponent>()!!.position,
        )
        assertEquals(transform.componentId, reopened.value.objects.first { it.id == cube.id }.component<TransformComponent>()!!.componentId)
    }

    @Test
    fun `mountain demo installs a valid real glb asset script and graph`() = runBlocking {
        val repository = repository()

        val installed = repository.installMountainDemo(PROJECT_ID)

        assertTrue(installed is ContentResult.Success)
        val scene = (installed as ContentResult.Success).value
        assertTrue(SceneValidator.validate(scene).isEmpty())
        val assets = (repository.listAssets(PROJECT_ID) as ContentResult.Success).value
        assertEquals(2, assets.size)
        val asset = assets.first()
        val model = repository.resolveAsset(PROJECT_ID, asset.id)
        assertNotNull(model)
        assertTrue(model!!.length() > 100)
        assertEquals("glTF", model.readBytes().copyOfRange(0, 4).decodeToString())
        assertTrue(repository.readLuaScript(PROJECT_ID, MountainDemoScene.SCRIPT_PATH) is ContentResult.Success)
        assertTrue(repository.readVisualGraph(PROJECT_ID, MountainDemoScene.GRAPH_PATH) is ContentResult.Success)
    }

    @Test
    fun `import rejects a truncated glb without publishing an asset`() = runBlocking {
        val repository = repository()

        val result = repository.importModel(
            PROJECT_ID,
            "broken.glb",
            ByteArrayInputStream("glTF".encodeToByteArray()),
        )

        assertTrue(result is ContentResult.Failure)
        assertTrue((result as ContentResult.Failure).error is ContentError.InvalidAsset)
        assertTrue((repository.listAssets(PROJECT_ID) as ContentResult.Success).value.isEmpty())
    }

    @Test
    fun `optimized Viper starter passes the hardened GLB validator`() {
        val repository = repository()
        val model = sequenceOf(
            File("projects/src/main/res/raw/viper_acr.glb"),
            File("src/main/res/raw/viper_acr.glb"),
        ).firstOrNull(File::isFile)
        assertNotNull("Viper starter asset is missing", model)

        val error = repository.validateGlb(model!!.readBytes())

        assertEquals(error, null)
    }

    @Test
    fun `save rejects stale scene revision`() = runBlocking {
        val repository = repository()
        val scene = (repository.loadOrCreateScene(PROJECT_ID) as ContentResult.Success).value
        repository.saveScene(PROJECT_ID, scene, scene.metadata.revision)

        val stale = repository.saveScene(PROJECT_ID, scene, scene.metadata.revision)

        assertTrue(stale is ContentResult.Failure)
        assertEquals(ContentError.ConcurrentModification, (stale as ContentResult.Failure).error)
    }

    @Test
    fun `interrupted mountain install is detected and repaired without creating starter scene`() = runBlocking {
        val repository = repository()
        val project = temporary.root.resolve("projects").resolve(PROJECT_ID.value)
        project.resolve(DefaultProjectContentRepository.MOUNTAIN_INSTALL_MARKER).apply {
            requireNotNull(parentFile).mkdirs()
            writeBytes(byteArrayOf(1))
        }
        project.resolve(MountainDemoScene.MODEL_PATH).apply {
            requireNotNull(parentFile).mkdirs()
            writeBytes("partial".encodeToByteArray())
        }

        val interrupted = repository.loadOrCreateScene(PROJECT_ID)
        assertEquals(ContentError.SceneNotFound, (interrupted as ContentResult.Failure).error)

        val repaired = repository.installMountainDemo(PROJECT_ID)
        assertTrue(repaired is ContentResult.Success)
        assertEquals(
            MountainDemoScene.SCENE_ID,
            (repaired as ContentResult.Success).value.sceneId,
        )
    }

    private fun repository(): DefaultProjectContentRepository {
        val root = temporary.root.resolve("projects").apply { mkdirs() }
        root.resolve(PROJECT_ID.value).apply {
            mkdirs()
            listOf("scenes", "assets/models", "scripts/lua", "visual-graphs").forEach { resolve(it).mkdirs() }
        }
        return DefaultProjectContentRepository(
            projectsRoot = root,
            clock = object : StudioClock {
                private var now = 100L
                override fun nowEpochMillis(): Long = now++
            },
            ioDispatcher = Dispatchers.Unconfined,
        )
    }

    companion object {
        private val PROJECT_ID = ProjectId("test-project")
    }
}
