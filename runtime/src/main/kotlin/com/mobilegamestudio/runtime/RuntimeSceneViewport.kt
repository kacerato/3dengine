package com.mobilegamestudio.runtime

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.content.Context
import android.os.Handler
import android.os.Looper
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.key
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import dev.romainguy.kotlin.math.Float3
import dev.romainguy.kotlin.math.Float2
import dev.romainguy.kotlin.math.Float4
import dev.romainguy.kotlin.math.lookAt
import com.mobilegamestudio.core.model.EditorMode
import com.mobilegamestudio.core.model.GameObject
import com.mobilegamestudio.core.model.CharacterControllerComponent
import com.mobilegamestudio.core.model.CharacterCameraMode
import com.mobilegamestudio.core.model.CameraComponent
import com.mobilegamestudio.core.model.AnimationControllerComponent
import com.mobilegamestudio.core.model.MeshRendererComponent
import com.mobilegamestudio.core.model.EditableMeshComponent
import com.mobilegamestudio.core.model.VoxelVolumeComponent
import com.mobilegamestudio.core.model.MeshModifierStackComponent
import com.mobilegamestudio.core.model.MeshModifierType
import com.mobilegamestudio.core.model.PrimitiveMesh
import com.mobilegamestudio.core.model.PbrMaterialComponent
import com.mobilegamestudio.core.model.SceneDocument
import com.mobilegamestudio.core.model.TerrainComponent
import com.mobilegamestudio.core.model.TransformComponent
import com.mobilegamestudio.core.model.VegetationSpawnerComponent
import io.github.sceneview.Scene
import io.github.sceneview.SceneView
import io.github.sceneview.math.Position
import io.github.sceneview.math.Rotation
import io.github.sceneview.math.Scale
import io.github.sceneview.math.Size
import io.github.sceneview.math.Transform
import io.github.sceneview.gesture.CameraGestureDetector
import io.github.sceneview.node.CubeNode
import io.github.sceneview.node.GeometryNode
import io.github.sceneview.node.ModelNode
import io.github.sceneview.node.Node
import io.github.sceneview.node.PlaneNode
import io.github.sceneview.geometries.Geometry
import io.github.sceneview.rememberCameraManipulator
import io.github.sceneview.rememberCameraNode
import io.github.sceneview.rememberMainLightNode
import io.github.sceneview.rememberOnGestureListener
import java.io.File
import java.util.concurrent.atomic.AtomicLong
import com.google.android.filament.MaterialInstance
import com.google.android.filament.Engine
import com.google.android.filament.Texture
import com.google.android.filament.android.TextureHelper
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.currentCoroutineContext
import kotlinx.coroutines.ensureActive
import io.github.sceneview.loaders.MaterialLoader
import io.github.sceneview.loaders.ModelLoader
import io.github.sceneview.material.setBaseColorFactor
import io.github.sceneview.material.setBaseColorMap
import io.github.sceneview.material.setMetallicFactor
import io.github.sceneview.material.setMetallicRoughnessMap
import io.github.sceneview.material.setNormalMap
import io.github.sceneview.material.setNormalScale
import io.github.sceneview.material.setOcclusionMap
import io.github.sceneview.material.setEmissiveMap
import io.github.sceneview.material.setRoughnessFactor
import kotlin.math.asin
import kotlin.math.atan2
import kotlin.math.cos
import kotlin.math.sin
import kotlin.math.sqrt

/**
 * Filament-backed viewport. SceneDocument remains authoritative; these nodes are
 * a disposable projection and are never persisted by the renderer.
 */
@Composable
fun RuntimeSceneViewport(
    document: SceneDocument,
    selectedObjectId: String?,
    mode: EditorMode,
    resolveAsset: (String) -> File?,
    onObjectSelected: (String?) -> Unit,
    transformGesturesEnabled: Boolean = false,
    onTransformDrag: (Float, Float) -> Unit = { _, _ -> },
    terrainTopDownCamera: Boolean = false,
    onDiagnostic: (String) -> Unit,
    modifier: Modifier = Modifier,
) {
    val context = LocalContext.current
    val filamentResources = remember(context) {
        RuntimeFilamentResources.shared(context.applicationContext)
    }
    val engine = filamentResources.engine
    val materialLoader = filamentResources.materialLoader
    val modelLoader = filamentResources.modelLoader
    val sceneCameraNode = rememberCameraNode(engine)
    val mainLightNode = rememberMainLightNode(engine)
    var lastDiagnostic by remember { mutableStateOf<String?>(null) }
    val structureKey = remember(document) {
        document.objects.map { objectValue ->
            listOf(
                objectValue.id,
                objectValue.enabled,
                objectValue.component<MeshRendererComponent>(),
                objectValue.component<EditableMeshComponent>(),
                objectValue.component<VoxelVolumeComponent>(),
                objectValue.component<TerrainComponent>(),
                objectValue.component<VegetationSpawnerComponent>(),
                objectValue.component<AnimationControllerComponent>(),
                objectValue.component<PbrMaterialComponent>(),
                objectValue.component<MeshModifierStackComponent>(),
            )
        }.hashCode()
    }
    var projection by remember(engine) { mutableStateOf<RuntimeProjection?>(null) }
    val projectionGeneration = remember(engine) { AtomicLong(0) }
    val playCharacter = document.objects.firstOrNull {
        it.enabled && it.component<CharacterControllerComponent>()?.enabled == true
    }
    val controlledVehicle = document.objects.firstOrNull {
        it.enabled && "runtime-controlled" in it.tags
    }
    val authoredPlayCamera = document.objects.firstOrNull {
        it.enabled && it.component<CameraComponent>()?.let { camera -> camera.enabled && camera.isMain } == true
    }
    val cameraTargetObject = if (mode == EditorMode.PLAY) playCharacter else {
        document.objects.firstOrNull { it.id == selectedObjectId }
    }.let { target -> if (mode == EditorMode.PLAY) controlledVehicle ?: target else target }
    val selectedTarget = if (mode == EditorMode.EDITOR) {
        document.editorSettings.cameraTarget
    } else {
        cameraTargetObject
            ?.component<TransformComponent>()
            ?.position
            ?: document.editorSettings.cameraTarget
    }
    val terrainCameraObject = document.objects.firstOrNull {
        it.id == selectedObjectId && it.component<TerrainComponent>() != null
    }
    val terrainCameraTransform = terrainCameraObject?.component<TransformComponent>()
    val terrainCameraComponent = terrainCameraObject?.component<TerrainComponent>()
    val playController = playCharacter?.component<CharacterControllerComponent>()
    val sceneLightObject = document.objects.firstOrNull {
        it.enabled && it.component<com.mobilegamestudio.core.model.DirectionalLightComponent>()?.enabled == true
    }
    val sceneLight = sceneLightObject
        ?.component<com.mobilegamestudio.core.model.DirectionalLightComponent>()
    val sceneLightTransform = sceneLightObject?.component<TransformComponent>()
    val cameraOffset = if (mode == EditorMode.PLAY && controlledVehicle != null) {
        com.mobilegamestudio.core.model.Vector3(0f, 2.8f, 6.5f)
    } else if (mode == EditorMode.PLAY && playController != null) {
        when (playController.cameraMode) {
            CharacterCameraMode.FIRST_PERSON -> com.mobilegamestudio.core.model.Vector3(
                0f,
                playController.cameraHeight,
                0.08f,
            )
            CharacterCameraMode.THIRD_PERSON -> com.mobilegamestudio.core.model.Vector3(
                0f,
                playController.cameraHeight + playController.cameraDistance * 0.45f,
                playController.cameraDistance,
            )
            CharacterCameraMode.TOP_DOWN -> com.mobilegamestudio.core.model.Vector3(
                0f,
                playController.cameraDistance.coerceAtLeast(4f),
                0.12f,
            )
        }
    } else document.editorSettings.cameraOrbit.let { orbit ->
        document.editorSettings.cameraTarget.let { target ->
            com.mobilegamestudio.core.model.Vector3(
                x = orbit.x - target.x,
                y = orbit.y - target.y,
                z = orbit.z - target.z,
            )
        }
    }
    val firstPersonPlay = controlledVehicle == null && mode == EditorMode.PLAY &&
        playController?.cameraMode == CharacterCameraMode.FIRST_PERSON
    val persistentEditorManipulator = remember(document.sceneId) {
        StudioOrbitCameraManipulator(
            eye = Position(
                document.editorSettings.cameraOrbit.x,
                document.editorSettings.cameraOrbit.y,
                document.editorSettings.cameraOrbit.z,
            ),
            target = Position(
                document.editorSettings.cameraTarget.x,
                document.editorSettings.cameraTarget.y,
                document.editorSettings.cameraTarget.z,
            ),
        )
    }
    val editorCameraManipulator = when {
        firstPersonPlay || controlledVehicle != null || (authoredPlayCamera != null && mode == EditorMode.PLAY) || terrainTopDownCamera -> null
        mode == EditorMode.EDITOR -> persistentEditorManipulator
        else -> rememberCameraManipulator(
            orbitHomePosition = Position(
                selectedTarget.x + cameraOffset.x,
                selectedTarget.y + cameraOffset.y,
                selectedTarget.z + cameraOffset.z,
            ),
            targetPosition = Position(selectedTarget.x, selectedTarget.y, selectedTarget.z),
        )
    }
    LaunchedEffect(editorCameraManipulator, mode, terrainTopDownCamera, selectedObjectId) {
        if (mode != EditorMode.EDITOR) return@LaunchedEffect
        if (terrainTopDownCamera && terrainCameraComponent != null) {
            val target = terrainCameraTransform?.position ?: document.editorSettings.cameraTarget
            val cameraHeight = maxOf(
                terrainCameraComponent.width * 0.82f,
                terrainCameraComponent.maxHeight * 2.4f,
                18f,
            )
            sceneCameraNode.transform = lookAt(
                eye = Float3(target.x, target.y + cameraHeight, target.z + 0.001f),
                target = Float3(
                    target.x,
                    target.y + terrainCameraComponent.maxHeight * 0.12f,
                    target.z,
                ),
                up = Float3(0f, 0f, -1f),
            )
        } else if (editorCameraManipulator != null) {
            sceneCameraNode.transform = editorCameraManipulator.getTransform()
        }
    }
    SideEffect {
        if (mode == EditorMode.PLAY && controlledVehicle == null && playCharacter == null) {
            authoredPlayCamera?.component<TransformComponent>()?.let { transform ->
                val yaw = Math.toRadians(transform.rotationEulerDegrees.y.toDouble())
                val pitch = Math.toRadians(transform.rotationEulerDegrees.x.toDouble())
                val eye = Float3(transform.position.x, transform.position.y, transform.position.z)
                sceneCameraNode.transform = lookAt(
                    eye = eye,
                    target = Float3(
                        eye.x + (sin(yaw) * cos(pitch)).toFloat(),
                        eye.y - sin(pitch).toFloat(),
                        eye.z + (cos(yaw) * cos(pitch)).toFloat(),
                    ),
                    up = Float3(0f, 1f, 0f),
                )
            }
        }
        if (firstPersonPlay) {
            val transform = playCharacter?.component<TransformComponent>()
            val yaw = Math.toRadians((transform?.rotationEulerDegrees?.y ?: 0f).toDouble())
            val pitch = Math.toRadians((transform?.rotationEulerDegrees?.x ?: 0f).toDouble())
            val eye = Float3(
                selectedTarget.x,
                selectedTarget.y + playController.cameraHeight,
                selectedTarget.z,
            )
            sceneCameraNode.transform = lookAt(
                eye = eye,
                target = Float3(
                    eye.x + (sin(yaw) * cos(pitch)).toFloat(),
                    eye.y - sin(pitch).toFloat(),
                    eye.z + (cos(yaw) * cos(pitch)).toFloat(),
                ),
                up = Float3(0f, 1f, 0f),
            )
        }
        controlledVehicle?.component<TransformComponent>()?.let { transform ->
            val yaw = Math.toRadians(transform.rotationEulerDegrees.y.toDouble())
            val distance = 6.5f
            val eye = Float3(
                selectedTarget.x - (sin(yaw) * distance).toFloat(),
                selectedTarget.y + 2.8f,
                selectedTarget.z - (cos(yaw) * distance).toFloat(),
            )
            sceneCameraNode.transform = lookAt(
                eye = eye,
                target = Float3(selectedTarget.x, selectedTarget.y + 0.65f, selectedTarget.z),
                up = Float3(0f, 1f, 0f),
            )
        }
        sceneLight?.let { light ->
            val argb = light.colorArgb
            mainLightNode.intensity = light.intensityLux
            mainLightNode.color = Float4(
                ((argb shr 16) and 0xFF).toFloat() / 255f,
                ((argb shr 8) and 0xFF).toFloat() / 255f,
                (argb and 0xFF).toFloat() / 255f,
                1f,
            )
            mainLightNode.isShadowCaster = light.castShadows
            sceneLightTransform?.rotationEulerDegrees?.let { rotation ->
                val pitch = Math.toRadians(rotation.x.toDouble())
                val yaw = Math.toRadians(rotation.y.toDouble())
                mainLightNode.lightDirection = Float3(
                    (sin(yaw) * cos(pitch)).toFloat(),
                    (-sin(pitch)).toFloat(),
                    (cos(yaw) * cos(pitch)).toFloat(),
                )
            }
        }
    }

    LaunchedEffect(structureKey) {
        val generation = projectionGeneration.incrementAndGet()
        val candidate = buildProjection(
                document = document,
                mode = mode,
                engine = engine,
                materialLoader = materialLoader,
                modelLoader = modelLoader,
                resolveAsset = resolveAsset,
            )
        var handedToComposition = false
        try {
            currentCoroutineContext().ensureActive()
            if (generation == projectionGeneration.get()) {
                projection = candidate
                handedToComposition = true
            }
        } finally {
            if (!handedToComposition) candidate.release(materialLoader)
        }
    }
    val activeProjection = projection
    DisposableEffect(activeProjection) {
        val retiring = activeProjection
        onDispose {
            if (retiring != null) {
                // Child nodes are detached by AndroidView/SceneView during the
                // same apply pass. Release their native assets afterwards.
                Handler(Looper.getMainLooper()).postDelayed(
                    { retiring.release(materialLoader) },
                    48L,
                )
            }
        }
    }
    SideEffect {
        activeProjection?.nodes?.forEach { node ->
            val objectValue = document.objects.firstOrNull { it.id == node.name } ?: return@forEach
            val transform = objectValue.component<TransformComponent>() ?: return@forEach
            node.applySceneTransform(
                objectValue = objectValue,
                transform = transform,
                mode = mode,
                isSelected = mode == EditorMode.EDITOR && objectValue.id == selectedObjectId,
            )
        }
    }
    LaunchedEffect(activeProjection?.diagnostics) {
        activeProjection?.diagnostics?.firstOrNull()?.let { diagnostic ->
            if (diagnostic != lastDiagnostic) {
                lastDiagnostic = diagnostic
                onDiagnostic(diagnostic)
            }
        }
    }
    LaunchedEffect(mode, activeProjection, document) {
        activeProjection?.nodes?.filterIsInstance<ModelNode>()?.forEach { modelNode ->
            modelNode.playingAnimations.clear()
            if (mode == EditorMode.PLAY) {
                document.objects.firstOrNull { it.id == modelNode.name }
                    ?.component<AnimationControllerComponent>()
                    ?.takeIf { it.enabled && it.defaultClip.isNotBlank() }
                    ?.let { animation ->
                        modelNode.playAnimation(
                            animationName = animation.defaultClip,
                            speed = animation.playbackSpeed,
                            loop = animation.loop,
                        )
                    }
            }
        }
    }
    Box(modifier = modifier.background(Color(0xFF1B1F24))) {
        if (activeProjection != null) {
            Scene(
                modifier = Modifier.fillMaxSize(),
                engine = engine,
                modelLoader = modelLoader,
                materialLoader = materialLoader,
                cameraNode = sceneCameraNode,
                mainLightNode = mainLightNode,
                childNodes = activeProjection.nodes,
                cameraManipulator = editorCameraManipulator,
                onGestureListener = rememberOnGestureListener(
                    onSingleTapConfirmed = { _, node -> onObjectSelected(node?.name) },
                ),
            )
        } else {
            Text(
                text = "CARREGANDO CENA 3D…",
                modifier = Modifier.align(androidx.compose.ui.Alignment.Center),
                color = Color(0xFFB185E8),
            )
        }
    }
}

/**
 * Predictable editor orbit camera independent from Filament's device-specific
 * initial orbit pitch. One finger orbits, two-finger pan strafes and pinch
 * changes radius.
 */
private class StudioOrbitCameraManipulator(
    eye: Position,
    target: Position,
) : CameraGestureDetector.CameraManipulator {
    private var viewportWidth = 1
    private var viewportHeight = 1
    private var targetX = target.x
    private var targetY = target.y
    private var targetZ = target.z
    private var radius: Float
    private var yaw: Float
    private var pitch: Float
    private var lastX = 0
    private var lastY = 0
    private var strafing = false

    init {
        val dx = eye.x - target.x
        val dy = eye.y - target.y
        val dz = eye.z - target.z
        radius = sqrt(dx * dx + dy * dy + dz * dz).coerceAtLeast(0.5f)
        yaw = atan2(dx, dz)
        pitch = asin((dy / radius).coerceIn(-0.98f, 0.98f))
    }

    override fun setViewport(width: Int, height: Int) {
        viewportWidth = width.coerceAtLeast(1)
        viewportHeight = height.coerceAtLeast(1)
    }

    override fun getTransform(): Transform {
        val horizontal = cos(pitch) * radius
        val eyeValue = Float3(
            x = targetX + sin(yaw) * horizontal,
            y = targetY + sin(pitch) * radius,
            z = targetZ + cos(yaw) * horizontal,
        )
        return lookAt(
            eye = eyeValue,
            target = Float3(targetX, targetY, targetZ),
            up = Float3(0f, 1f, 0f),
        )
    }

    override fun grabBegin(x: Int, y: Int, strafe: Boolean) {
        lastX = x
        lastY = y
        strafing = strafe
    }

    override fun grabUpdate(x: Int, y: Int) {
        val dx = (x - lastX).toFloat()
        val dy = (y - lastY).toFloat()
        if (strafing) {
            val unitsPerPixel = radius / viewportHeight * 0.9f
            val rightX = cos(yaw)
            val rightZ = -sin(yaw)
            targetX -= rightX * dx * unitsPerPixel
            targetZ -= rightZ * dx * unitsPerPixel
            targetY -= dy * unitsPerPixel
        } else {
            if (kotlin.math.abs(dx) > 0.35f) yaw -= dx / viewportWidth * 2.1f
            if (kotlin.math.abs(dy) > 0.35f) pitch = (pitch + dy / viewportHeight * 1.6f).coerceIn(-1.28f, 1.28f)
        }
        lastX = x
        lastY = y
    }

    override fun grabEnd() = Unit
    override fun scrollBegin(x: Int, y: Int, separation: Float) = Unit

    override fun scrollUpdate(x: Int, y: Int, prevSeparation: Float, currSeparation: Float) {
        val delta = prevSeparation - currSeparation
        radius = (radius * (1f + delta / viewportHeight * 0.72f)).coerceIn(0.8f, 280f)
    }

    override fun scrollEnd() = Unit
    override fun update(deltaTime: Float) = Unit
}


private fun buildEditorGridNodes(
    engine: Engine,
    minorMaterial: MaterialInstance,
    xMaterial: MaterialInstance,
    zMaterial: MaterialInstance,
): List<Node> = buildList {
    val extent = 20
    val span = extent * 2f
    for (index in -extent..extent) {
        val zLineMaterial = if (index == 0) xMaterial else minorMaterial
        add(
            CubeNode(
                engine = engine,
                size = Size(span, 0.004f, if (index == 0) 0.035f else 0.018f),
                materialInstance = zLineMaterial,
            ).apply {
                name = "__editor_grid_x_$index"
                position = Position(0f, 0.004f, index.toFloat())
                isTouchable = false
                isEditable = false
            },
        )
        val xLineMaterial = if (index == 0) zMaterial else minorMaterial
        add(
            CubeNode(
                engine = engine,
                size = Size(if (index == 0) 0.035f else 0.018f, 0.004f, span),
                materialInstance = xLineMaterial,
            ).apply {
                name = "__editor_grid_z_$index"
                position = Position(index.toFloat(), 0.004f, 0f)
                isTouchable = false
                isEditable = false
            },
        )
    }
}

private suspend fun buildProjection(
    document: SceneDocument,
    mode: EditorMode,
    engine: com.google.android.filament.Engine,
    materialLoader: io.github.sceneview.loaders.MaterialLoader,
    modelLoader: io.github.sceneview.loaders.ModelLoader,
    resolveAsset: (String) -> File?,
): RuntimeProjection {
    val diagnostics = mutableListOf<String>()
    val materials = mutableListOf<MaterialInstance>()
    val textures = mutableListOf<Texture>()
    val nodes = mutableListOf<Node>()
    try {
        if (mode == EditorMode.EDITOR && document.editorSettings.gridVisible) {
            val minorGridMaterial = materialLoader.createColorInstance(
                Color(0xFF252B33), metallic = 0f, roughness = 1f,
            ).also(materials::add)
            val xAxisMaterial = materialLoader.createColorInstance(
                Color(0xFF8B4048), metallic = 0f, roughness = 1f,
            ).also(materials::add)
            val zAxisMaterial = materialLoader.createColorInstance(
                Color(0xFF3F608C), metallic = 0f, roughness = 1f,
            ).also(materials::add)
            nodes += buildEditorGridNodes(engine, minorGridMaterial, xAxisMaterial, zAxisMaterial)
        }
        var loadedModels = 0
        val renderableObjects = document.objects.filter { objectValue ->
            objectValue.enabled &&
                objectValue.component<MeshRendererComponent>()?.enabled == true
        }
        document.objects
            .filter { it.enabled && it.component<TerrainComponent>()?.enabled == true }
            .forEach { objectValue ->
                val terrain = objectValue.component<TerrainComponent>() ?: return@forEach
                val transform = objectValue.component<TransformComponent>() ?: return@forEach
                val layerMaterials = terrain.materialLayers.associate { layer ->
                    val texture = layer.textureAssetId
                        ?.let(resolveAsset)
                        ?.let { loadBitmapTexture(engine, it, srgb = true) }
                        ?: createProceduralTerrainTexture(
                            engine = engine,
                            colorArgb = layer.colorArgb,
                            seed = terrain.seed + layer.id.hashCode(),
                        )
                    textures += texture
                    val instance = materialLoader.createTextureInstance(
                        texture = texture,
                        isOpaque = true,
                        metallic = layer.metallic,
                        roughness = layer.roughness,
                    ).also(materials::add)
                    layer.normalAssetId
                        ?.let(resolveAsset)
                        ?.let { loadBitmapTexture(engine, it, srgb = false) }
                        ?.also { normal ->
                            textures += normal
                            instance.setNormalMap(normal)
                        }
                    layer.id to instance
                }
                val terrainNode = buildTerrainMeshNode(
                    engine = engine,
                    terrain = terrain,
                    materialsByLayer = layerMaterials,
                ).applySceneTransform(
                    objectValue = objectValue,
                    transform = transform,
                    mode = mode,
                    isSelected = false,
                )
                nodes += terrainNode
                objectValue.component<VegetationSpawnerComponent>()
                    ?.takeIf { it.enabled && it.maxInstances > 0 }
                    ?.let { spawner ->
                        if (spawner.modelAssetIds.isEmpty()) {
                            val grassMaterial = materialLoader.createColorInstance(
                                Color(0xFF496D32),
                                metallic = 0f,
                                roughness = 0.94f,
                            ).also(materials::add)
                            nodes += buildVegetationMeshNode(
                                engine = engine,
                                terrain = terrain,
                                spawner = spawner,
                                material = grassMaterial,
                            ).applySceneTransform(
                                objectValue = objectValue,
                                transform = transform,
                                mode = mode,
                                isSelected = false,
                            )
                        } else {
                            val assets = spawner.modelAssetIds.mapNotNull { assetId ->
                                resolveAsset(assetId)?.let { assetId to it }
                            }
                            // Keep room for gameplay models; individual GLB
                            // vegetation is the close LOD, while the batched
                            // grass path handles large instance counts.
                            val capacity = minOf(
                                12,
                                (MAX_MODEL_INSTANCES - loadedModels - 8).coerceAtLeast(0),
                            )
                            sampleVegetationPlacements(terrain, spawner, capacity)
                                .forEachIndexed { index, placement ->
                                    val (assetId, file) = assets.getOrNull(
                                        index % assets.size.coerceAtLeast(1),
                                    )
                                        ?: return@forEachIndexed
                                    val model = modelLoader.loadModelInstance(file.toURI().toString())
                                        ?: return@forEachIndexed
                                    nodes += ModelNode(modelInstance = model, autoAnimate = false).apply {
                                        name = "${objectValue.id}:vegetation:$index:$assetId"
                                        isTouchable = false
                                        isEditable = false
                                        position = Position(
                                            transform.position.x + placement.localX * transform.scale.x,
                                            transform.position.y + placement.baseY * transform.scale.y,
                                            transform.position.z + placement.localZ * transform.scale.z,
                                        )
                                        rotation = Rotation(
                                            transform.rotationEulerDegrees.x,
                                            transform.rotationEulerDegrees.y + placement.yawDegrees,
                                            transform.rotationEulerDegrees.z,
                                        )
                                        scale = Scale(
                                            placement.scale * transform.scale.x,
                                            placement.scale * transform.scale.y,
                                            placement.scale * transform.scale.z,
                                        )
                                    }
                                    loadedModels += 1
                                }
                            if (assets.isEmpty()) {
                                diagnostics += "Vegetação: nenhum dos assets configurados foi encontrado."
                            } else if (capacity == 0) {
                                diagnostics += "Vegetação: limite de instâncias GLB atingido."
                            }
                        }
                    }
            }
        if (renderableObjects.size > MAX_RENDERABLE_OBJECTS) {
            diagnostics += "A cena excede $MAX_RENDERABLE_OBJECTS objetos renderizáveis; os demais foram pausados."
        }
        renderableObjects.take(MAX_RENDERABLE_OBJECTS).forEach { objectValue ->
            val renderer = objectValue.component<MeshRendererComponent>() ?: return@forEach
            val transform = objectValue.component<TransformComponent>() ?: return@forEach
            val pbr = objectValue.component<PbrMaterialComponent>()?.takeIf { it.enabled }
            try {
            val editableMesh = objectValue.component<EditableMeshComponent>()?.takeIf { it.enabled }
            val voxelVolume = objectValue.component<VoxelVolumeComponent>()?.takeIf { it.enabled }
            val customMaterial = if (editableMesh != null || voxelVolume != null) {
                materialLoader.createColorInstance(
                    Color(pbr?.baseColorArgb ?: voxelVolume?.colorArgb ?: renderer.colorArgb),
                    metallic = pbr?.metallic ?: 0.02f,
                    roughness = pbr?.roughness ?: 0.84f,
                ).also(materials::add)
            } else null
            val node = when {
                editableMesh != null -> buildEditableMeshNode(engine, editableMesh, requireNotNull(customMaterial))
                voxelVolume != null -> buildVoxelVolumeNode(engine, voxelVolume, requireNotNull(customMaterial))
                renderer.primitive == PrimitiveMesh.CUBE -> CubeNode(
                    engine = engine,
                    size = Size(1f, 1f, 1f),
                    materialInstance = materialLoader.createColorInstance(
                        Color(pbr?.baseColorArgb ?: renderer.colorArgb),
                        metallic = pbr?.metallic ?: 0.05f,
                        roughness = pbr?.roughness ?: 0.72f,
                    ).also(materials::add),
                )
                renderer.primitive == PrimitiveMesh.PLANE -> PlaneNode(
                    engine = engine,
                    size = Size(1f, 1f, 1f),
                    materialInstance = materialLoader.createColorInstance(
                        Color(pbr?.baseColorArgb ?: renderer.colorArgb),
                        metallic = pbr?.metallic ?: 0f,
                        roughness = pbr?.roughness ?: 0.95f,
                    ).also(materials::add),
                )
                else -> {
                    if (loadedModels >= MAX_MODEL_INSTANCES) {
                        diagnostics += "Limite de $MAX_MODEL_INSTANCES instâncias GLB atingido."
                        return@forEach
                    }
                    val assetId = renderer.assetId ?: return@forEach
                    val file = resolveAsset(assetId)
                    if (file == null) {
                        diagnostics += "Asset não encontrado: $assetId"
                        return@forEach
                    }
                    ModelNode(
                        modelInstance = modelLoader.loadModelInstance(file.toURI().toString())
                            ?: error("O parser 3D rejeitou o modelo."),
                        autoAnimate = false,
                        centerOrigin = Position(0f, 0f, 0f),
                    ).also { modelNode ->
                        pbr?.let { material ->
                            val targetSlot = material.targetSlot
                            val baseColorMap = material.baseColorTextureAssetId
                                ?.let(resolveAsset)
                                ?.let { loadBitmapTexture(engine, it, srgb = true) }
                                ?.also(textures::add)
                            val normalMap = material.normalTextureAssetId
                                ?.let(resolveAsset)
                                ?.let { loadBitmapTexture(engine, it, srgb = false) }
                                ?.also(textures::add)
                            val metallicRoughnessMap = material.metallicRoughnessTextureAssetId
                                ?.let(resolveAsset)
                                ?.let { loadBitmapTexture(engine, it, srgb = false) }
                                ?.also(textures::add)
                            val occlusionMap = material.occlusionTextureAssetId
                                ?.let(resolveAsset)
                                ?.let { loadBitmapTexture(engine, it, srgb = false) }
                                ?.also(textures::add)
                            val emissiveMap = material.emissiveTextureAssetId
                                ?.let(resolveAsset)
                                ?.let { loadBitmapTexture(engine, it, srgb = true) }
                                ?.also(textures::add)
                            modelNode.materialInstances.flatten()
                                .filter { instance ->
                                    material.targetSlot == null ||
                                        instance.name.contains(targetSlot.orEmpty(), ignoreCase = true)
                                }
                                .forEach { instance ->
                                val argb = material.baseColorArgb
                                instance.setBaseColorFactor(
                                    Float4(
                                        ((argb shr 16) and 0xFF).toFloat() / 255f,
                                        ((argb shr 8) and 0xFF).toFloat() / 255f,
                                        (argb and 0xFF).toFloat() / 255f,
                                        ((argb shr 24) and 0xFF).toFloat() / 255f,
                                    ),
                                )
                                instance.setMetallicFactor(material.metallic)
                                instance.setRoughnessFactor(material.roughness)
                                instance.setNormalScale(material.normalStrength)
                                baseColorMap?.let(instance::setBaseColorMap)
                                normalMap?.let(instance::setNormalMap)
                                metallicRoughnessMap?.let(instance::setMetallicRoughnessMap)
                                occlusionMap?.let(instance::setOcclusionMap)
                                emissiveMap?.let(instance::setEmissiveMap)
                            }
                        }
                        if (mode == EditorMode.PLAY) {
                            objectValue.component<AnimationControllerComponent>()
                                ?.takeIf { it.enabled && it.defaultClip.isNotBlank() }
                                ?.let { animation ->
                                    modelNode.playAnimation(
                                        animationName = animation.defaultClip,
                                        speed = animation.playbackSpeed,
                                        loop = animation.loop,
                                    )
                                }
                        }
                        loadedModels += 1
                    }
                }
            }
                nodes += node.applySceneTransform(
                    objectValue = objectValue,
                    transform = transform,
                    mode = mode,
                    isSelected = false,
                )
            } catch (cancellation: CancellationException) {
                throw cancellation
            } catch (exception: Exception) {
                diagnostics += "Falha ao carregar ${objectValue.name}: ${exception.message ?: "erro 3D"}"
            }
        }
    } catch (cancellation: CancellationException) {
        RuntimeProjection(nodes, materials, textures, diagnostics).release(materialLoader)
        throw cancellation
    } catch (exception: Exception) {
        RuntimeProjection(nodes, materials, textures, diagnostics).release(materialLoader)
        throw exception
    }
    return RuntimeProjection(nodes, materials, textures, diagnostics)
}

private fun createProceduralTerrainTexture(
    engine: com.google.android.filament.Engine,
    colorArgb: Long,
    seed: Int,
): Texture {
    val size = 256
    val baseR = ((colorArgb shr 16) and 0xFF).toInt()
    val baseG = ((colorArgb shr 8) and 0xFF).toInt()
    val baseB = (colorArgb and 0xFF).toInt()
    val pixels = IntArray(size * size)
    for (y in 0 until size) for (x in 0 until size) {
        val fine = hashNoise(x, y, seed)
        val broad = hashNoise(x / 12, y / 12, seed xor 0x5F3759DF)
        val grain = (fine * 22f + broad * 30f - 25f).toInt()
        val fiber = if (((x * 3 + y * 7 + seed) and 63) == 0) 18 else 0
        val r = (baseR + grain + fiber).coerceIn(0, 255)
        val g = (baseG + grain + fiber / 2).coerceIn(0, 255)
        val b = (baseB + grain / 2).coerceIn(0, 255)
        pixels[y * size + x] = (0xFF shl 24) or (r shl 16) or (g shl 8) or b
    }
    val bitmap = Bitmap.createBitmap(pixels, size, size, Bitmap.Config.ARGB_8888)
    return Texture.Builder()
        .width(size)
        .height(size)
        .levels(0xFF)
        .sampler(Texture.Sampler.SAMPLER_2D)
        .format(Texture.InternalFormat.SRGB8_A8)
        .build(engine)
        .also { texture ->
            TextureHelper.setBitmap(engine, texture, 0, bitmap)
            texture.generateMipmaps(engine)
            bitmap.recycle()
        }
}

private fun loadBitmapTexture(engine: Engine, file: File, srgb: Boolean): Texture {
    val bitmap = requireNotNull(BitmapFactory.decodeFile(file.absolutePath)) {
        "Textura inválida: ${file.name}"
    }
    return Texture.Builder()
        .width(bitmap.width)
        .height(bitmap.height)
        .levels(0xFF)
        .sampler(Texture.Sampler.SAMPLER_2D)
        .format(if (srgb) Texture.InternalFormat.SRGB8_A8 else Texture.InternalFormat.RGBA8)
        .build(engine)
        .also { texture ->
            TextureHelper.setBitmap(engine, texture, 0, bitmap)
            texture.generateMipmaps(engine)
            bitmap.recycle()
        }
}

private fun hashNoise(x: Int, y: Int, seed: Int): Float {
    var value = x * 374761393 + y * 668265263 + seed * -1640531527
    value = (value xor (value ushr 13)) * 1274126177
    value = value xor (value ushr 16)
    return (value and 0xFFFF) / 65535f
}

/**
 * Builds one indexed, smooth-shaded height-field instead of one box per sample.
 * Each auto-tile material becomes a Filament primitive over the same vertex
 * buffer, so the terrain remains continuous while retaining editable layers.
 */
private fun buildTerrainMeshNode(
    engine: com.google.android.filament.Engine,
    terrain: TerrainComponent,
    materialsByLayer: Map<String, MaterialInstance>,
): GeometryNode {
    val resolution = terrain.resolution
    val cellSize = terrain.width / (resolution - 1)
    val vertices = ArrayList<Geometry.Vertex>(resolution * resolution)
    for (z in 0 until resolution) for (x in 0 until resolution) {
        val dx = (terrain.heightAt(x + 1, z) - terrain.heightAt(x - 1, z)) * terrain.maxHeight
        val dz = (terrain.heightAt(x, z + 1) - terrain.heightAt(x, z - 1)) * terrain.maxHeight
        val nx = -dx
        val ny = 2f * cellSize
        val nz = -dz
        val length = sqrt(nx * nx + ny * ny + nz * nz).coerceAtLeast(0.0001f)
        vertices += Geometry.Vertex(
            position = Position(
                (x.toFloat() / (resolution - 1) - 0.5f) * terrain.width,
                terrain.heightAt(x, z) * terrain.maxHeight,
                (z.toFloat() / (resolution - 1) - 0.5f) * terrain.width,
            ),
            normal = Float3(nx / length, ny / length, nz / length),
            uvCoordinate = Float2(
                x * cellSize / 4f,
                z * cellSize / 4f,
            ),
        )
    }
    val indicesByLayer = terrain.materialLayers.associate { it.id to mutableListOf<Int>() }
    for (z in 0 until resolution - 1) for (x in 0 until resolution - 1) {
        val layerId = terrain.dominantLayerAt(x, z).id
        val indices = indicesByLayer.getValue(layerId)
        val topLeft = z * resolution + x
        val topRight = topLeft + 1
        val bottomLeft = topLeft + resolution
        val bottomRight = bottomLeft + 1
        indices += topLeft
        indices += bottomLeft
        indices += topRight
        indices += topRight
        indices += bottomLeft
        indices += bottomRight
    }
    val activeLayers = terrain.materialLayers.filter { indicesByLayer.getValue(it.id).isNotEmpty() }
    val geometry = Geometry.Builder()
        .vertices(vertices)
        .primitivesIndices(activeLayers.map { indicesByLayer.getValue(it.id) })
        .build(engine)
    return GeometryNode(
        engine = engine,
        geometry = geometry,
        materialInstances = activeLayers.map { materialsByLayer[it.id] },
        builderApply = {
            castShadows(true)
            receiveShadows(true)
        },
    )
}

/**
 * Batches crossed 3D grass blades into one geometry. This keeps draw calls
 * stable on mobile while providing real parallax, shadows and terrain contact
 * instead of a flat green terrain texture.
 */
private fun buildVegetationMeshNode(
    engine: Engine,
    terrain: TerrainComponent,
    spawner: VegetationSpawnerComponent,
    material: MaterialInstance,
): GeometryNode {
    val placements = sampleVegetationPlacements(
        terrain = terrain,
        spawner = spawner,
        capacity = spawner.maxInstances.coerceAtMost(1_200),
    )
    val targetCount = placements.size
    val vertices = ArrayList<Geometry.Vertex>(targetCount * 8)
    val indices = ArrayList<Int>(targetCount * 12)
    placements.forEach { placement ->
        val localX = placement.localX
        val localZ = placement.localZ
        val baseY = placement.baseY
        val randomScale = placement.scale
        val height = 0.72f * randomScale
        val halfWidth = 0.09f * randomScale
        val base = vertices.size
        fun vertex(x: Float, y: Float, z: Float, nxValue: Float, nzValue: Float, u: Float, v: Float) {
            vertices += Geometry.Vertex(
                position = Position(x, y, z),
                normal = Float3(nxValue, 0.18f, nzValue),
                uvCoordinate = Float2(u, v),
            )
        }
        vertex(localX - halfWidth, baseY, localZ, 0f, 1f, 0f, 1f)
        vertex(localX + halfWidth, baseY, localZ, 0f, 1f, 1f, 1f)
        vertex(localX + halfWidth * 0.35f, baseY + height, localZ, 0f, 1f, 1f, 0f)
        vertex(localX - halfWidth * 0.35f, baseY + height, localZ, 0f, 1f, 0f, 0f)
        vertex(localX, baseY, localZ - halfWidth, 1f, 0f, 0f, 1f)
        vertex(localX, baseY, localZ + halfWidth, 1f, 0f, 1f, 1f)
        vertex(localX, baseY + height, localZ + halfWidth * 0.35f, 1f, 0f, 1f, 0f)
        vertex(localX, baseY + height, localZ - halfWidth * 0.35f, 1f, 0f, 0f, 0f)
        indices += listOf(
            base, base + 1, base + 2, base, base + 2, base + 3,
            base + 4, base + 5, base + 6, base + 4, base + 6, base + 7,
        )
    }
    val geometry = Geometry.Builder()
        .vertices(vertices)
        .primitivesIndices(listOf(indices))
        .build(engine)
    return GeometryNode(
        engine = engine,
        geometry = geometry,
        materialInstances = listOf(material),
        builderApply = {
            castShadows(true)
            receiveShadows(true)
        },
    )
}

private data class VegetationPlacement(
    val localX: Float,
    val baseY: Float,
    val localZ: Float,
    val scale: Float,
    val yawDegrees: Float,
)

private fun sampleVegetationPlacements(
    terrain: TerrainComponent,
    spawner: VegetationSpawnerComponent,
    capacity: Int,
): List<VegetationPlacement> {
    if (capacity <= 0) return emptyList()
    val area = terrain.width * terrain.width
    val targetCount = (area * spawner.densityPerSquareMeter).toInt()
        .coerceIn(1, minOf(spawner.maxInstances, capacity))
    return buildList(targetCount) {
        repeat(targetCount) { index ->
            val nx = hashNoise(index, spawner.seed, spawner.seed xor 0x13579BDF)
            val nz = hashNoise(spawner.seed, index, spawner.seed xor 0x2468ACE)
            val gx = nx * (terrain.resolution - 1)
            val gz = nz * (terrain.resolution - 1)
            val x0 = kotlin.math.floor(gx).toInt().coerceIn(0, terrain.resolution - 1)
            val z0 = kotlin.math.floor(gz).toInt().coerceIn(0, terrain.resolution - 1)
            val x1 = (x0 + 1).coerceAtMost(terrain.resolution - 1)
            val z1 = (z0 + 1).coerceAtMost(terrain.resolution - 1)
            val tx = gx - x0
            val tz = gz - z0
            val h0 = terrain.heightAt(x0, z0) +
                (terrain.heightAt(x1, z0) - terrain.heightAt(x0, z0)) * tx
            val h1 = terrain.heightAt(x0, z1) +
                (terrain.heightAt(x1, z1) - terrain.heightAt(x0, z1)) * tx
            val normalizedHeight = h0 + (h1 - h0) * tz
            if (normalizedHeight !in spawner.minNormalizedHeight..spawner.maxNormalizedHeight) {
                return@repeat
            }
            val heightDx = (terrain.heightAt(x1, z0) - terrain.heightAt(x0, z0)) *
                terrain.maxHeight * (terrain.resolution - 1) / terrain.width
            val heightDz = (terrain.heightAt(x0, z1) - terrain.heightAt(x0, z0)) *
                terrain.maxHeight * (terrain.resolution - 1) / terrain.width
            val slopeDegrees = Math.toDegrees(
                kotlin.math.atan(kotlin.math.sqrt(heightDx * heightDx + heightDz * heightDz).toDouble()),
            ).toFloat()
            if (slopeDegrees !in spawner.minSlopeDegrees..spawner.maxSlopeDegrees) return@repeat
            add(
                VegetationPlacement(
                    localX = (nx - 0.5f) * terrain.width,
                    baseY = normalizedHeight * terrain.maxHeight + 0.015f,
                    localZ = (nz - 0.5f) * terrain.width,
                    scale = spawner.minScale +
                        (spawner.maxScale - spawner.minScale) *
                        hashNoise(index, index, spawner.seed + 17),
                    yawDegrees = hashNoise(index, spawner.seed + 31, index + 7) * 360f,
                ),
            )
        }
    }
}

private fun Node.applySceneTransform(
    objectValue: GameObject,
    transform: TransformComponent,
    mode: EditorMode,
    isSelected: Boolean,
): Node = apply {
    val modifiers = objectValue.component<MeshModifierStackComponent>()
        ?.takeIf { it.enabled }
        ?.modifiers
        .orEmpty()
        .filter { it.enabled && it.targetNodeName == null }
    val modifierOffset = modifiers
        .filter { it.type == MeshModifierType.OFFSET }
        .fold(Float3(0f, 0f, 0f)) { value, modifier ->
            Float3(
                value.x + modifier.axis.x * modifier.amount,
                value.y + modifier.axis.y * modifier.amount,
                value.z + modifier.axis.z * modifier.amount,
            )
        }
    val modifierRotation = modifiers
        .filter { it.type == MeshModifierType.ROTATE }
        .fold(Float3(0f, 0f, 0f)) { value, modifier ->
            Float3(
                value.x + modifier.axis.x * modifier.amount,
                value.y + modifier.axis.y * modifier.amount,
                value.z + modifier.axis.z * modifier.amount,
            )
        }
    val modifierScale = modifiers
        .filter { it.type == MeshModifierType.SCALE_AXIS }
        .fold(Float3(1f, 1f, 1f)) { value, modifier ->
            Float3(
                value.x * (1f + modifier.axis.x * modifier.amount),
                value.y * (1f + modifier.axis.y * modifier.amount),
                value.z * (1f + modifier.axis.z * modifier.amount),
            )
        }
    val mirror = modifiers.firstOrNull { it.type == MeshModifierType.MIRROR }?.axis
    name = objectValue.id
    isVisible = objectValue.enabled
    isTouchable = true
    isEditable = mode == EditorMode.EDITOR
    position = Position(
        transform.position.x + modifierOffset.x,
        transform.position.y + modifierOffset.y,
        transform.position.z + modifierOffset.z,
    )
    rotation = Rotation(
        transform.rotationEulerDegrees.x + modifierRotation.x,
        transform.rotationEulerDegrees.y + modifierRotation.y,
        transform.rotationEulerDegrees.z + modifierRotation.z,
    )
    val selectionScale = if (isSelected) 1.08f else 1f
    // Normalize arbitrary import units, then let the editable Transform express
    // the intended scene size. The starter Viper uses 4.48 here, matching its
    // real length and its collider instead of silently becoming one metre long.
    val modelUnitScale = if (this is ModelNode) {
        1f / maxOf(extents.x, extents.y, extents.z).coerceAtLeast(0.0001f)
    } else {
        1f
    }
    scale = Scale(
        transform.scale.x * modifierScale.x * selectionScale * modelUnitScale *
            if (mirror?.x == 1f) -1f else 1f,
        transform.scale.y * modifierScale.y * selectionScale * modelUnitScale *
            if (mirror?.y == 1f) -1f else 1f,
        transform.scale.z * modifierScale.z * selectionScale * modelUnitScale *
            if (mirror?.z == 1f) -1f else 1f,
    )
}

private const val MAX_RENDERABLE_OBJECTS = 256
private const val MAX_MODEL_INSTANCES = 32

private class RuntimeFilamentResources private constructor(
    val engine: Engine,
    val modelLoader: ModelLoader,
    val materialLoader: MaterialLoader,
) {
    companion object {
        @Volatile
        private var instance: RuntimeFilamentResources? = null

        fun shared(context: Context): RuntimeFilamentResources =
            instance ?: synchronized(this) {
                instance ?: run {
                    val engine = SceneView.createEngine(SceneView.createEglContext())
                    RuntimeFilamentResources(
                        engine = engine,
                        modelLoader = SceneView.createModelLoader(engine, context),
                        materialLoader = SceneView.createMaterialLoader(engine, context),
                    ).also { instance = it }
                }
            }
        }
}

private data class RuntimeProjection(
    val nodes: List<Node>,
    val materials: List<MaterialInstance>,
    val textures: List<Texture>,
    val diagnostics: List<String>,
) {
    fun release(
        materialLoader: io.github.sceneview.loaders.MaterialLoader,
    ) {
        nodes.forEach { node ->
            // GLTFIO can still finalize a ModelNode after SceneView detached
            // its Surface. Keep imported GLBs in the process-scoped loader
            // cache; invalidating them here races the native resource loader.
            if (node !is ModelNode) node.destroy()
        }
        materials.forEach(materialLoader::destroyMaterialInstance)
        textures.forEach(materialLoader.engine::destroyTexture)
    }
}
