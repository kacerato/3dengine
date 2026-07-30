from __future__ import annotations

from pathlib import Path
import re

ROOT = Path(__file__).resolve().parents[1]
MARKER = ROOT / ".authoring-upgrade-applied"


def read(path: str) -> str:
    return (ROOT / path).read_text(encoding="utf-8")


def write(path: str, text: str) -> None:
    (ROOT / path).write_text(text, encoding="utf-8")


def replace_once(path: str, old: str, new: str) -> None:
    text = read(path)
    count = text.count(old)
    if count != 1:
        raise RuntimeError(f"{path}: expected one exact match, found {count}: {old[:120]!r}")
    write(path, text.replace(old, new, 1))


def replace_regex(path: str, pattern: str, replacement: str) -> None:
    text = read(path)
    updated, count = re.subn(pattern, replacement, text, count=1, flags=re.MULTILINE | re.DOTALL)
    if count != 1:
        raise RuntimeError(f"{path}: expected one regex match, found {count}: {pattern[:120]!r}")
    write(path, updated)


def patch_terrain_models() -> None:
    path = "core/model/src/main/kotlin/com/mobilegamestudio/core/model/TerrainModels.kt"
    replace_once(
        path,
        "    val autoTileRules: List<TerrainAutoTileRule> = TerrainPresets.semiAridRules,\n    val seed: Int = 73021,",
        "    val autoTileRules: List<TerrainAutoTileRule> = TerrainPresets.semiAridRules,\n"
        "    val authoringMask: List<Float> = emptyList(),\n"
        "    val seed: Int = 73021,",
    )
    replace_once(
        path,
        "enum class TerrainBrushMode {\n"
        "    RAISE,\n"
        "    LOWER,\n"
        "    SMOOTH,\n"
        "    FLATTEN,\n"
        "    NOISE,\n"
        "    PAINT,\n"
        "}",
        "enum class TerrainBrushMode {\n"
        "    RAISE,\n"
        "    LOWER,\n"
        "    SMOOTH,\n"
        "    FLATTEN,\n"
        "    NOISE,\n"
        "    PAINT,\n"
        "    STAMP,\n"
        "    TERRACE,\n"
        "    RIDGE,\n"
        "    CANYON,\n"
        "    ERODE,\n"
        "    MASK_PAINT,\n"
        "    MASK_ERASE,\n"
        "}",
    )
    replace_once(
        path,
        "    val updatedHeights = heights.toMutableList()\n"
        "    val updatedWeights = materialWeights.toMutableList()\n"
        "    val paintLayer = materialLayers.indexOfFirst { it.id == brush.materialLayerId }",
        "    val updatedHeights = heights.toMutableList()\n"
        "    val updatedWeights = materialWeights.toMutableList()\n"
        "    val updatedMask = if (authoringMask.size == heights.size) {\n"
        "        authoringMask.toMutableList()\n"
        "    } else {\n"
        "        MutableList(heights.size) { 1f }\n"
        "    }\n"
        "    val paintLayer = materialLayers.indexOfFirst { it.id == brush.materialLayerId }",
    )
    replace_once(
        path,
        "        val falloff = (1f - distance / radiusCells).let { it * it * (3f - 2f * it) }\n"
        "        val amount = strength * falloff\n"
        "        val index = z * resolution + x\n"
        "        when (brush.mode) {\n"
        "            TerrainBrushMode.RAISE -> updatedHeights[index] = (before[index] + amount * 0.08f).coerceIn(0f, 1f)\n"
        "            TerrainBrushMode.LOWER -> updatedHeights[index] = (before[index] - amount * 0.08f).coerceIn(0f, 1f)\n"
        "            TerrainBrushMode.FLATTEN -> updatedHeights[index] =\n"
        "                before[index] + (brush.targetHeight.coerceIn(0f, 1f) - before[index]) * amount\n"
        "            TerrainBrushMode.SMOOTH -> {\n"
        "                var total = 0f\n"
        "                var count = 0\n"
        "                for (oz in -1..1) for (ox in -1..1) {\n"
        "                    val sx = (x + ox).coerceIn(0, resolution - 1)\n"
        "                    val sz = (z + oz).coerceIn(0, resolution - 1)\n"
        "                    total += before[sz * resolution + sx]\n"
        "                    count++\n"
        "                }\n"
        "                updatedHeights[index] = before[index] + (total / count - before[index]) * amount\n"
        "            }\n"
        "            TerrainBrushMode.NOISE -> {\n"
        "                val hash = sin((x * 12.9898 + z * 78.233 + seed) * 43758.5453).toFloat()\n"
        "                val noise = (hash - floor(hash)) * 2f - 1f\n"
        "                updatedHeights[index] = (before[index] + noise * amount * 0.045f).coerceIn(0f, 1f)\n"
        "            }\n"
        "            TerrainBrushMode.PAINT -> if (paintLayer >= 0) {\n"
        "                val offset = index * materialLayers.size\n"
        "                for (layer in materialLayers.indices) {\n"
        "                    val target = if (layer == paintLayer) 1f else 0f\n"
        "                    val old = updatedWeights.getOrElse(offset + layer) { if (layer == 0) 1f else 0f }\n"
        "                    updatedWeights[offset + layer] = old + (target - old) * amount\n"
        "                }\n"
        "                normalizeWeights(updatedWeights, offset, materialLayers.size)\n"
        "            }\n"
        "        }\n"
        "    }\n"
        "    return copy(heights = updatedHeights, materialWeights = updatedWeights)",
        "        val falloff = (1f - distance / radiusCells).let { it * it * (3f - 2f * it) }\n"
        "        val index = z * resolution + x\n"
        "        val ignoresMask = brush.mode == TerrainBrushMode.MASK_PAINT || brush.mode == TerrainBrushMode.MASK_ERASE\n"
        "        val amount = strength * falloff * if (ignoresMask) 1f else updatedMask[index]\n"
        "        when (brush.mode) {\n"
        "            TerrainBrushMode.RAISE -> updatedHeights[index] = (before[index] + amount * 0.08f).coerceIn(0f, 1f)\n"
        "            TerrainBrushMode.LOWER -> updatedHeights[index] = (before[index] - amount * 0.08f).coerceIn(0f, 1f)\n"
        "            TerrainBrushMode.FLATTEN -> updatedHeights[index] =\n"
        "                before[index] + (brush.targetHeight.coerceIn(0f, 1f) - before[index]) * amount\n"
        "            TerrainBrushMode.STAMP -> {\n"
        "                val target = brush.targetHeight.coerceIn(0f, 1f)\n"
        "                val stamp = target + (falloff - 0.5f) * strength * 0.18f\n"
        "                updatedHeights[index] = before[index] + (stamp.coerceIn(0f, 1f) - before[index]) * amount\n"
        "            }\n"
        "            TerrainBrushMode.TERRACE -> {\n"
        "                val steps = (5 + strength * 35f).toInt().coerceIn(5, 40)\n"
        "                val snapped = floor(before[index] * steps + 0.5f) / steps\n"
        "                updatedHeights[index] = before[index] + (snapped - before[index]) * amount\n"
        "            }\n"
        "            TerrainBrushMode.RIDGE -> {\n"
        "                val ridge = (1f - distance / radiusCells).coerceIn(0f, 1f)\n"
        "                updatedHeights[index] = (before[index] + ridge * ridge * amount * 0.12f).coerceIn(0f, 1f)\n"
        "            }\n"
        "            TerrainBrushMode.CANYON -> {\n"
        "                val core = (1f - distance / radiusCells).coerceIn(0f, 1f)\n"
        "                val cut = core * core * amount * 0.14f\n"
        "                val rim = if (core in 0.08f..0.35f) amount * 0.018f else 0f\n"
        "                updatedHeights[index] = (before[index] - cut + rim).coerceIn(0f, 1f)\n"
        "            }\n"
        "            TerrainBrushMode.ERODE -> {\n"
        "                var total = 0f\n"
        "                var count = 0\n"
        "                for (oz in -1..1) for (ox in -1..1) {\n"
        "                    val sx = (x + ox).coerceIn(0, resolution - 1)\n"
        "                    val sz = (z + oz).coerceIn(0, resolution - 1)\n"
        "                    total += before[sz * resolution + sx]\n"
        "                    count++\n"
        "                }\n"
        "                val average = total / count\n"
        "                val downhill = (before[index] - average).coerceAtLeast(0f)\n"
        "                updatedHeights[index] = (before[index] + (average - before[index]) * amount * 0.55f - downhill * amount * 0.18f).coerceIn(0f, 1f)\n"
        "            }\n"
        "            TerrainBrushMode.SMOOTH -> {\n"
        "                var total = 0f\n"
        "                var count = 0\n"
        "                for (oz in -1..1) for (ox in -1..1) {\n"
        "                    val sx = (x + ox).coerceIn(0, resolution - 1)\n"
        "                    val sz = (z + oz).coerceIn(0, resolution - 1)\n"
        "                    total += before[sz * resolution + sx]\n"
        "                    count++\n"
        "                }\n"
        "                updatedHeights[index] = before[index] + (total / count - before[index]) * amount\n"
        "            }\n"
        "            TerrainBrushMode.NOISE -> {\n"
        "                val hash = sin((x * 12.9898 + z * 78.233 + seed) * 43758.5453).toFloat()\n"
        "                val noise = (hash - floor(hash)) * 2f - 1f\n"
        "                updatedHeights[index] = (before[index] + noise * amount * 0.045f).coerceIn(0f, 1f)\n"
        "            }\n"
        "            TerrainBrushMode.PAINT -> if (paintLayer >= 0) {\n"
        "                val offset = index * materialLayers.size\n"
        "                for (layer in materialLayers.indices) {\n"
        "                    val target = if (layer == paintLayer) 1f else 0f\n"
        "                    val old = updatedWeights.getOrElse(offset + layer) { if (layer == 0) 1f else 0f }\n"
        "                    updatedWeights[offset + layer] = old + (target - old) * amount\n"
        "                }\n"
        "                normalizeWeights(updatedWeights, offset, materialLayers.size)\n"
        "            }\n"
        "            TerrainBrushMode.MASK_PAINT -> updatedMask[index] = (updatedMask[index] - strength * falloff).coerceIn(0f, 1f)\n"
        "            TerrainBrushMode.MASK_ERASE -> updatedMask[index] = (updatedMask[index] + strength * falloff).coerceIn(0f, 1f)\n"
        "        }\n"
        "    }\n"
        "    val persistedMask = if (updatedMask.all { it >= 0.999f }) emptyList() else updatedMask\n"
        "    return copy(heights = updatedHeights, materialWeights = updatedWeights, authoringMask = persistedMask)",
    )


def patch_validation_and_legacy_ui() -> None:
    path = "core/model/src/main/kotlin/com/mobilegamestudio/core/model/SceneValidation.kt"
    replace_once(path, "component.resolution !in 9..129", "component.resolution !in 9..257")
    replace_once(
        path,
        "                    component.materialWeights.size != component.heights.size * component.materialLayers.size ||\n"
        "                    component.materialWeights.any { !it.isFinite() || it !in 0f..1f }",
        "                    component.materialWeights.size != component.heights.size * component.materialLayers.size ||\n"
        "                    component.materialWeights.any { !it.isFinite() || it !in 0f..1f } ||\n"
        "                    (component.authoringMask.isNotEmpty() && component.authoringMask.size != component.heights.size) ||\n"
        "                    component.authoringMask.any { !it.isFinite() || it !in 0f..1f }",
    )
    path = "editor/src/main/kotlin/com/mobilegamestudio/editor/TerrainEditorPanel.kt"
    replace_once(
        path,
        "    TerrainBrushMode.PAINT -> \"PINTAR\"\n}",
        "    TerrainBrushMode.PAINT -> \"PINTAR\"\n"
        "    TerrainBrushMode.STAMP -> \"CARIMBO\"\n"
        "    TerrainBrushMode.TERRACE -> \"TERRAÇOS\"\n"
        "    TerrainBrushMode.RIDGE -> \"CRISTA\"\n"
        "    TerrainBrushMode.CANYON -> \"CÂNION\"\n"
        "    TerrainBrushMode.ERODE -> \"ERODIR\"\n"
        "    TerrainBrushMode.MASK_PAINT -> \"PROTEGER\"\n"
        "    TerrainBrushMode.MASK_ERASE -> \"LIBERAR\"\n}",
    )
    replace_once(
        path,
        "    TerrainBrushMode.PAINT -> \"misturar a camada selecionada\"\n}",
        "    TerrainBrushMode.PAINT -> \"misturar a camada selecionada\"\n"
        "    TerrainBrushMode.STAMP -> \"carimbar uma forma na altura alvo\"\n"
        "    TerrainBrushMode.TERRACE -> \"criar degraus e mesas\"\n"
        "    TerrainBrushMode.RIDGE -> \"formar uma crista montanhosa\"\n"
        "    TerrainBrushMode.CANYON -> \"escavar um cânion com bordas\"\n"
        "    TerrainBrushMode.ERODE -> \"desgastar e redistribuir o solo\"\n"
        "    TerrainBrushMode.MASK_PAINT -> \"proteger a região de processos\"\n"
        "    TerrainBrushMode.MASK_ERASE -> \"remover a proteção da região\"\n}",
    )


def patch_camera() -> None:
    path = "runtime/src/main/kotlin/com/mobilegamestudio/runtime/RuntimeSceneViewport.kt"
    replace_once(
        path,
        "    val selectedTarget = cameraTargetObject\n"
        "        ?.component<TransformComponent>()\n"
        "        ?.position\n"
        "        ?: document.editorSettings.cameraTarget",
        "    val selectedTarget = if (mode == EditorMode.EDITOR) {\n"
        "        document.editorSettings.cameraTarget\n"
        "    } else {\n"
        "        cameraTargetObject\n"
        "            ?.component<TransformComponent>()\n"
        "            ?.position\n"
        "            ?: document.editorSettings.cameraTarget\n"
        "    }",
    )
    replace_regex(
        path,
        r"    val editorCameraManipulator = if \(transformGesturesEnabled \|\| firstPersonPlay \|\| controlledVehicle != null\) \{.*?\n    \}\n    SideEffect \{\n        // SceneView initializes CameraNode before its manipulator receives the\n        // first touch\. Seed the node explicitly so the first rendered frame\n        // already matches the editor orbit instead of the library default\.\n        if \(mode == EditorMode\.EDITOR && editorCameraManipulator != null\) \{\n            sceneCameraNode\.transform = editorCameraManipulator\.getTransform\(\)\n        \}\n        if \(firstPersonPlay\) \{",
        "    val editorCameraManipulator = if (firstPersonPlay || controlledVehicle != null) {\n"
        "        null\n"
        "    } else {\n"
        "        key(document.sceneId, mode) {\n"
        "            if (mode == EditorMode.EDITOR) {\n"
        "                remember(document.sceneId) {\n"
        "                    StudioOrbitCameraManipulator(\n"
        "                        eye = Position(\n"
        "                            selectedTarget.x + cameraOffset.x,\n"
        "                            selectedTarget.y + cameraOffset.y,\n"
        "                            selectedTarget.z + cameraOffset.z,\n"
        "                        ),\n"
        "                        target = Position(selectedTarget.x, selectedTarget.y, selectedTarget.z),\n"
        "                    )\n"
        "                }\n"
        "            } else {\n"
        "                rememberCameraManipulator(\n"
        "                    orbitHomePosition = Position(\n"
        "                        selectedTarget.x + cameraOffset.x,\n"
        "                        selectedTarget.y + cameraOffset.y,\n"
        "                        selectedTarget.z + cameraOffset.z,\n"
        "                    ),\n"
        "                    targetPosition = Position(selectedTarget.x, selectedTarget.y, selectedTarget.z),\n"
        "                )\n"
        "            }\n"
        "        }\n"
        "    }\n"
        "    LaunchedEffect(editorCameraManipulator, mode) {\n"
        "        if (mode == EditorMode.EDITOR && editorCameraManipulator != null) {\n"
        "            sceneCameraNode.transform = editorCameraManipulator.getTransform()\n"
        "        }\n"
        "    }\n"
        "    SideEffect {\n"
        "        if (firstPersonPlay) {",
    )
    replace_once(
        path,
        "                onGestureListener = rememberOnGestureListener(\n"
        "                    onSingleTapConfirmed = { _, node -> onObjectSelected(node?.name) },\n"
        "                    onScroll = { _, _, _, distance ->\n"
        "                        if (transformGesturesEnabled) onTransformDrag(distance.x, distance.y)\n"
        "                    },\n"
        "                ),",
        "                onGestureListener = rememberOnGestureListener(\n"
        "                    onSingleTapConfirmed = { _, node -> onObjectSelected(node?.name) },\n"
        "                ),",
    )


def patch_repository_contract() -> None:
    path = "core/contracts/src/main/kotlin/com/mobilegamestudio/core/contracts/ProjectContentRepository.kt"
    replace_once(
        path,
        "    suspend fun saveVisualGraph(\n"
        "        projectId: ProjectId,\n"
        "        relativePath: String,\n"
        "        graph: VisualGraphDocument,\n"
        "    ): ContentResult<Unit>\n}",
        "    suspend fun saveVisualGraph(\n"
        "        projectId: ProjectId,\n"
        "        relativePath: String,\n"
        "        graph: VisualGraphDocument,\n"
        "    ): ContentResult<Unit>\n\n"
        "    suspend fun moveLogicResource(\n"
        "        projectId: ProjectId,\n"
        "        fromRelativePath: String,\n"
        "        toRelativePath: String,\n"
        "    ): ContentResult<Unit>\n\n"
        "    suspend fun deleteLogicResource(\n"
        "        projectId: ProjectId,\n"
        "        relativePath: String,\n"
        "    ): ContentResult<Unit>\n}",
    )


def patch_repository_impl() -> None:
    path = "projects/src/main/kotlin/com/mobilegamestudio/projects/content/DefaultProjectContentRepository.kt"
    anchor = "    private fun readSceneFile(project: File, file: File): ContentResult<SceneDocument> ="
    methods = '''    override suspend fun moveLogicResource(
        projectId: ProjectId,
        fromRelativePath: String,
        toRelativePath: String,
    ): ContentResult<Unit> = withContext(ioDispatcher) {
        mutex.withLock {
            val directory = trustedProjectDirectory(projectId)
                ?: return@withLock ContentResult.Failure(ContentError.ProjectNotFound)
            val fromPrefix = logicPrefix(fromRelativePath)
                ?: return@withLock ContentResult.Failure(ContentError.InvalidPath)
            val toPrefix = logicPrefix(toRelativePath)
                ?: return@withLock ContentResult.Failure(ContentError.InvalidPath)
            if (fromPrefix != toPrefix) return@withLock ContentResult.Failure(ContentError.InvalidPath)
            val source = safeContentFile(directory, fromRelativePath, fromPrefix)
                ?: return@withLock ContentResult.Failure(ContentError.InvalidPath)
            val destination = safeContentFile(directory, toRelativePath, toPrefix)
                ?: return@withLock ContentResult.Failure(ContentError.InvalidPath)
            if (!source.isFile || destination.exists()) {
                return@withLock ContentResult.Failure(ContentError.StorageUnavailable)
            }
            val parent = destination.parentFile
                ?: return@withLock ContentResult.Failure(ContentError.InvalidPath)
            try {
                if ((!parent.exists() && !parent.mkdirs()) || Files.isSymbolicLink(parent.toPath())) {
                    return@withLock ContentResult.Failure(ContentError.StorageUnavailable)
                }
                Files.move(source.toPath(), destination.toPath(), StandardCopyOption.ATOMIC_MOVE)
                ContentResult.Success(Unit)
            } catch (_: IOException) {
                ContentResult.Failure(ContentError.StorageUnavailable)
            }
        }
    }

    override suspend fun deleteLogicResource(
        projectId: ProjectId,
        relativePath: String,
    ): ContentResult<Unit> = withContext(ioDispatcher) {
        mutex.withLock {
            val directory = trustedProjectDirectory(projectId)
                ?: return@withLock ContentResult.Failure(ContentError.ProjectNotFound)
            val prefix = logicPrefix(relativePath)
                ?: return@withLock ContentResult.Failure(ContentError.InvalidPath)
            val file = safeContentFile(directory, relativePath, prefix)
                ?: return@withLock ContentResult.Failure(ContentError.InvalidPath)
            try {
                Files.deleteIfExists(file.toPath())
                ContentResult.Success(Unit)
            } catch (_: IOException) {
                ContentResult.Failure(ContentError.StorageUnavailable)
            }
        }
    }

    private fun logicPrefix(relativePath: String): String? = when {
        relativePath.startsWith("scripts/lua/") && relativePath.endsWith(".lua") -> "scripts/lua/"
        relativePath.startsWith("visual-graphs/") && relativePath.endsWith(".graph.json") -> "visual-graphs/"
        else -> null
    }

'''
    replace_once(path, anchor, methods + anchor)


def patch_view_model() -> None:
    path = "editor/src/main/kotlin/com/mobilegamestudio/editor/WorkspaceViewModel.kt"
    replace_once(
        path,
        "package com.mobilegamestudio.editor\n\nimport androidx.lifecycle.ViewModel",
        "package com.mobilegamestudio.editor\n\nimport android.graphics.BitmapFactory\nimport androidx.lifecycle.ViewModel",
    )
    replace_once(
        path,
        "import com.mobilegamestudio.core.model.TerrainPresets\n",
        "import com.mobilegamestudio.core.model.TerrainPresets\n"
        "import com.mobilegamestudio.core.model.TerrainHeightmapData\n"
        "import com.mobilegamestudio.core.model.TerrainProcessMode\n"
        "import com.mobilegamestudio.core.model.TerrainProcessSettings\n"
        "import com.mobilegamestudio.core.model.SafeProjectPath\n"
        "import com.mobilegamestudio.core.model.applyTerrainProcess\n"
        "import com.mobilegamestudio.core.model.withImportedHeightmap\n",
    )
    terrain_methods = '''
    fun applyTerrainProcess(mode: TerrainProcessMode, strength: Float, iterations: Int, scale: Float) {
        if (!canEdit()) return
        val selectedId = mutableState.value.selectedObjectId ?: return
        val document = mutableState.value.sceneDocument ?: return
        val updated = document.copy(
            objects = document.objects.map { objectValue ->
                if (objectValue.id != selectedId) objectValue else objectValue.copy(
                    components = objectValue.components.map { component ->
                        if (component is TerrainComponent) {
                            component.applyTerrainProcess(
                                mode,
                                TerrainProcessSettings(
                                    strength = strength,
                                    iterations = iterations,
                                    scale = scale,
                                    seed = component.seed,
                                ),
                            )
                        } else component
                    },
                )
            },
        )
        applyDocumentEdit(updated)
        mutableState.update { it.copy(message = "${mode.name.lowercase().replace('_', ' ')} aplicado ao terreno.") }
    }

    fun importTerrainHeightmap(sourceName: String, openStream: () -> InputStream?) {
        if (!canEdit()) return
        val selectedId = mutableState.value.selectedObjectId ?: run {
            mutableState.update { it.copy(message = "Selecione um terreno antes de importar o heightmap.") }
            return
        }
        if (mutableState.value.selectedTerrain == null) {
            mutableState.update { it.copy(message = "O objeto selecionado não possui um TerrainComponent.") }
            return
        }
        viewModelScope.launch {
            val decoded = withContext(Dispatchers.IO) {
                openStream()?.use { decodeTerrainHeightmap(sourceName, it) }
            }
            if (decoded == null) {
                mutableState.update { it.copy(message = "Heightmap inválido. Use PNG, JPG, RAW16 ou R16 quadrado.") }
                return@launch
            }
            val document = mutableState.value.sceneDocument ?: return@launch
            val updated = document.copy(
                objects = document.objects.map { objectValue ->
                    if (objectValue.id != selectedId) objectValue else objectValue.copy(
                        components = objectValue.components.map { component ->
                            if (component is TerrainComponent) component.withImportedHeightmap(decoded) else component
                        },
                    )
                },
            )
            applyDocumentEdit(updated)
            mutableState.update {
                it.copy(message = "Heightmap $sourceName importado em ${decoded.resolution} × ${decoded.resolution}.")
            }
        }
    }

'''
    replace_once(path, "    fun renameSelected(name: String) {", terrain_methods + "    fun renameSelected(name: String) {")

    logic_methods = '''
    fun openScriptResource(ownerObjectId: String, relativePath: String) {
        if (!canEdit() || !relativePath.startsWith("scripts/lua/")) return
        mutableState.update {
            it.copy(
                selectedObjectId = ownerObjectId,
                scriptSource = null,
                scriptPath = relativePath,
                isLoadingScript = true,
                isScriptDirty = false,
                scriptDiagnostics = emptyList(),
            )
        }
        viewModelScope.launch {
            when (val result = contentRepository.readLuaScript(projectId, relativePath)) {
                is ContentResult.Success -> mutableState.update {
                    if (it.selectedObjectId == ownerObjectId && it.scriptPath == relativePath) {
                        it.copy(scriptSource = result.value, isLoadingScript = false, hasLuaScript = true)
                    } else it
                }
                is ContentResult.Failure -> mutableState.update {
                    it.copy(isLoadingScript = false, scriptDiagnostics = listOf(result.error.toContentMessage()))
                }
            }
        }
    }

    fun openGraphResource(ownerObjectId: String, relativePath: String) {
        if (!canEdit() || !relativePath.startsWith("visual-graphs/")) return
        mutableState.update {
            it.copy(
                selectedObjectId = ownerObjectId,
                visualGraph = null,
                visualGraphPath = relativePath,
                isLoadingGraph = true,
            )
        }
        viewModelScope.launch {
            when (val result = contentRepository.readVisualGraph(projectId, relativePath)) {
                is ContentResult.Success -> mutableState.update {
                    if (it.selectedObjectId == ownerObjectId && it.visualGraphPath == relativePath) {
                        it.copy(visualGraph = result.value, isLoadingGraph = false, hasVisualGraph = true)
                    } else it
                }
                is ContentResult.Failure -> mutableState.update {
                    it.copy(isLoadingGraph = false, message = result.error.toContentMessage())
                }
            }
        }
    }

    fun moveLogicResource(ownerObjectId: String, currentPath: String, folder: String, fileName: String) {
        if (!canEdit()) return
        val lua = currentPath.startsWith("scripts/lua/")
        val root = if (lua) "scripts/lua" else "visual-graphs"
        val extension = if (lua) "lua" else "graph.json"
        val targetPath = buildLogicPath(folder, fileName, root, extension) ?: run {
            mutableState.update { it.copy(message = "Pasta ou nome de arquivo inválido.") }
            return
        }
        if (targetPath == currentPath) return
        viewModelScope.launch {
            when (val result = contentRepository.moveLogicResource(projectId, currentPath, targetPath)) {
                is ContentResult.Success -> {
                    val document = mutableState.value.sceneDocument ?: return@launch
                    val updated = document.copy(
                        objects = document.objects.map { objectValue ->
                            if (objectValue.id != ownerObjectId) objectValue else objectValue.copy(
                                components = objectValue.components.map { component ->
                                    when {
                                        component is LuaScriptComponent && component.relativePath == currentPath -> component.copy(relativePath = targetPath)
                                        component is VisualGraphComponent && component.relativePath == currentPath -> component.copy(relativePath = targetPath)
                                        else -> component
                                    }
                                },
                            )
                        },
                    )
                    applyDocumentEdit(updated)
                    if (lua) openScriptResource(ownerObjectId, targetPath) else openGraphResource(ownerObjectId, targetPath)
                    mutableState.update { it.copy(message = "Recurso movido para res://$targetPath") }
                }
                is ContentResult.Failure -> mutableState.update { it.copy(message = result.error.toContentMessage()) }
            }
        }
    }

    fun deleteLogicResource(ownerObjectId: String, relativePath: String) {
        if (!canEdit()) return
        viewModelScope.launch {
            when (val result = contentRepository.deleteLogicResource(projectId, relativePath)) {
                is ContentResult.Success -> {
                    val document = mutableState.value.sceneDocument ?: return@launch
                    val updated = document.copy(
                        objects = document.objects.map { objectValue ->
                            if (objectValue.id != ownerObjectId) objectValue else objectValue.copy(
                                components = objectValue.components.filterNot { component ->
                                    (component is LuaScriptComponent && component.relativePath == relativePath) ||
                                        (component is VisualGraphComponent && component.relativePath == relativePath)
                                },
                            )
                        },
                    )
                    applyDocumentEdit(updated)
                    mutableState.update {
                        it.copy(
                            scriptSource = it.scriptSource.takeUnless { _ -> it.scriptPath == relativePath },
                            scriptPath = it.scriptPath.takeUnless { path -> path == relativePath },
                            visualGraph = it.visualGraph.takeUnless { _ -> it.visualGraphPath == relativePath },
                            visualGraphPath = it.visualGraphPath.takeUnless { path -> path == relativePath },
                            message = "Recurso excluído: res://$relativePath",
                        )
                    }
                }
                is ContentResult.Failure -> mutableState.update { it.copy(message = result.error.toContentMessage()) }
            }
        }
    }

'''
    replace_once(path, "    fun createScriptForSelected() {", logic_methods + "    fun createScriptForSelected(folder: String = \"scripts/lua\", fileName: String? = null, forceNew: Boolean = false) {")
    replace_once(
        path,
        "        if (existing != null) {\n"
        "            loadScriptForObject(selected.id)\n"
        "            return\n"
        "        }\n"
        "        val relativePath = \"scripts/lua/${UUID.randomUUID()}.lua\"",
        "        if (existing != null && !forceNew) {\n"
        "            openScriptResource(selected.id, existing.relativePath)\n"
        "            return\n"
        "        }\n"
        "        val relativePath = buildLogicPath(folder, fileName, \"scripts/lua\", \"lua\") ?: run {\n"
        "            mutableState.update { it.copy(message = \"Pasta ou nome de script inválido.\") }\n"
        "            return\n"
        "        }",
    )
    replace_once(path, "    fun createTouchGraph() {", "    fun createTouchGraph(folder: String = \"visual-graphs\", fileName: String? = null, forceNew: Boolean = false) {")
    replace_once(
        path,
        "        val graphPath = existingComponent?.relativePath\n"
        "            ?: \"visual-graphs/${UUID.randomUUID()}.graph.json\"",
        "        if (existingComponent != null && !forceNew) {\n"
        "            openGraphResource(selected.id, existingComponent.relativePath)\n"
        "            return\n"
        "        }\n"
        "        val graphPath = buildLogicPath(folder, fileName, \"visual-graphs\", \"graph.json\") ?: run {\n"
        "            mutableState.update { it.copy(message = \"Pasta ou nome de grafo inválido.\") }\n"
        "            return\n"
        "        }",
    )
    helper_anchor = "private fun ContentError.toContentMessage(): String = when (this) {"
    helpers = '''private fun buildLogicPath(folder: String, fileName: String?, root: String, extension: String): String? {
    val normalizedFolder = folder.trim().replace('\\', '/').trimEnd('/').ifBlank { root }
    if (normalizedFolder != root && !normalizedFolder.startsWith("$root/")) return null
    val requested = fileName?.trim().orEmpty().ifBlank { UUID.randomUUID().toString() }
    val withoutExtension = requested
        .removeSuffix(".$extension")
        .removeSuffix(".graph.json")
        .removeSuffix(".lua")
    val safeName = withoutExtension
        .replace(Regex("[^A-Za-z0-9._-]+"), "-")
        .trim('-', '.', '_')
        .take(72)
        .ifBlank { return null }
    val path = "$normalizedFolder/$safeName.$extension"
    return path.takeIf(SafeProjectPath::isValidRelativePath)
}

private fun decodeTerrainHeightmap(sourceName: String, input: InputStream): TerrainHeightmapData? {
    val bytes = input.readBytes()
    val extension = sourceName.substringAfterLast('.', "").lowercase()
    if (extension == "raw" || extension == "raw16" || extension == "r16") {
        if (bytes.size < 9 * 9 * 2 || bytes.size % 2 != 0) return null
        val sampleCount = bytes.size / 2
        val side = kotlin.math.sqrt(sampleCount.toDouble()).toInt()
        if (side * side != sampleCount || side !in 9..257) return null
        val values = List(sampleCount) { index ->
            val low = bytes[index * 2].toInt() and 0xFF
            val high = bytes[index * 2 + 1].toInt() and 0xFF
            ((high shl 8) or low) / 65535f
        }
        return TerrainHeightmapData(side, values)
    }
    val bitmap = BitmapFactory.decodeByteArray(bytes, 0, bytes.size) ?: return null
    return try {
        val side = minOf(bitmap.width, bitmap.height, 257).coerceAtLeast(9)
        val values = List(side * side) { index ->
            val x = index % side
            val z = index / side
            val sx = if (side == 1) 0 else x * (bitmap.width - 1) / (side - 1)
            val sz = if (side == 1) 0 else z * (bitmap.height - 1) / (side - 1)
            val pixel = bitmap.getPixel(sx, sz)
            val red = (pixel shr 16) and 0xFF
            val green = (pixel shr 8) and 0xFF
            val blue = pixel and 0xFF
            (red * 0.2126f + green * 0.7152f + blue * 0.0722f) / 255f
        }
        TerrainHeightmapData(side, values)
    } finally {
        bitmap.recycle()
    }
}

'''
    replace_once(path, helper_anchor, helpers + helper_anchor)


def patch_workspace_screen() -> None:
    path = "editor/src/main/kotlin/com/mobilegamestudio/editor/WorkspaceScreen.kt"
    replace_once(
        path,
        "    val importLauncher = rememberLauncherForActivityResult(\n"
        "        contract = ActivityResultContracts.OpenDocument(),\n"
        "    ) { uri ->\n"
        "        uri?.let {\n"
        "            val sourceName = it.lastPathSegment\n"
        "                ?.substringAfterLast('/')\n"
        "                ?.substringAfterLast(':')\n"
        "                ?.takeIf(String::isNotBlank)\n"
        "                ?: \"model.glb\"\n"
        "            viewModel.importModel(sourceName) {\n"
        "                context.contentResolver.openInputStream(it)\n"
        "            }\n"
        "        }\n"
        "    }\n",
        "    val importLauncher = rememberLauncherForActivityResult(\n"
        "        contract = ActivityResultContracts.OpenDocument(),\n"
        "    ) { uri ->\n"
        "        uri?.let {\n"
        "            val sourceName = it.lastPathSegment\n"
        "                ?.substringAfterLast('/')\n"
        "                ?.substringAfterLast(':')\n"
        "                ?.takeIf(String::isNotBlank)\n"
        "                ?: \"model.glb\"\n"
        "            viewModel.importModel(sourceName) {\n"
        "                context.contentResolver.openInputStream(it)\n"
        "            }\n"
        "        }\n"
        "    }\n"
        "    val heightmapLauncher = rememberLauncherForActivityResult(\n"
        "        contract = ActivityResultContracts.OpenDocument(),\n"
        "    ) { uri ->\n"
        "        uri?.let {\n"
        "            val sourceName = it.lastPathSegment\n"
        "                ?.substringAfterLast('/')\n"
        "                ?.substringAfterLast(':')\n"
        "                ?.takeIf(String::isNotBlank)\n"
        "                ?: \"terrain-heightmap.png\"\n"
        "            viewModel.importTerrainHeightmap(sourceName) {\n"
        "                context.contentResolver.openInputStream(it)\n"
        "            }\n"
        "        }\n"
        "    }\n",
    )
    replace_once(path, "                onCreateTouchGraph = viewModel::createTouchGraph,", "                onCreateTouchGraph = { viewModel.createTouchGraph() },\n                onCreateTouchGraphAt = { folder, name -> viewModel.createTouchGraph(folder, name, true) },\n                onOpenGraphResource = viewModel::openGraphResource,")
    replace_once(path, "                onCreateScript = viewModel::createScriptForSelected,", "                onCreateScript = { viewModel.createScriptForSelected() },\n                onCreateScriptAt = { folder, name -> viewModel.createScriptForSelected(folder, name, true) },\n                onOpenScriptResource = viewModel::openScriptResource,\n                onMoveLogicResource = viewModel::moveLogicResource,\n                onDeleteLogicResource = viewModel::deleteLogicResource,")
    replace_once(
        path,
        "                onTerrainAutoTile = viewModel::applyTerrainAutoTile,\n",
        "                onTerrainAutoTile = viewModel::applyTerrainAutoTile,\n"
        "                onTerrainProcess = viewModel::applyTerrainProcess,\n"
        "                onImportTerrainHeightmap = {\n"
        "                    heightmapLauncher.launch(arrayOf(\"image/png\", \"image/jpeg\", \"application/octet-stream\", \"*/*\"))\n"
        "                },\n",
    )


def patch_compact_shell() -> None:
    path = "editor/src/main/kotlin/com/mobilegamestudio/editor/GodotCompactEditorShell.kt"
    replace_once(
        path,
        "    onCreateTouchGraph: () -> Unit,\n"
        "    onAddVisualNode: (String) -> Unit,",
        "    onCreateTouchGraph: () -> Unit,\n"
        "    onCreateTouchGraphAt: (String, String) -> Unit,\n"
        "    onOpenGraphResource: (String, String) -> Unit,\n"
        "    onAddVisualNode: (String) -> Unit,",
    )
    replace_once(
        path,
        "    onCreateScript: () -> Unit,\n"
        "    onScriptChange: (String) -> Unit,",
        "    onCreateScript: () -> Unit,\n"
        "    onCreateScriptAt: (String, String) -> Unit,\n"
        "    onOpenScriptResource: (String, String) -> Unit,\n"
        "    onMoveLogicResource: (String, String, String, String) -> Unit,\n"
        "    onDeleteLogicResource: (String, String) -> Unit,\n"
        "    onScriptChange: (String) -> Unit,",
    )
    replace_once(
        path,
        "    onTerrainAutoTile: () -> Unit,\n)",
        "    onTerrainAutoTile: () -> Unit,\n"
        "    onTerrainProcess: (com.mobilegamestudio.core.model.TerrainProcessMode, Float, Int, Float) -> Unit,\n"
        "    onImportTerrainHeightmap: () -> Unit,\n)",
    )
    replace_once(
        path,
        "                 onCreateTouchGraph = onCreateTouchGraph,\n"
        "                 onAddVisualNode = onAddVisualNode,",
        "                 onCreateTouchGraph = onCreateTouchGraph,\n"
        "                 onCreateTouchGraphAt = onCreateTouchGraphAt,\n"
        "                 onOpenGraphResource = onOpenGraphResource,\n"
        "                 onAddVisualNode = onAddVisualNode,",
    )
    replace_once(
        path,
        "                 onCreateScript = onCreateScript,\n"
        "                 onScriptChange = onScriptChange,",
        "                 onCreateScript = onCreateScript,\n"
        "                 onCreateScriptAt = onCreateScriptAt,\n"
        "                 onOpenScriptResource = onOpenScriptResource,\n"
        "                 onMoveLogicResource = onMoveLogicResource,\n"
        "                 onDeleteLogicResource = onDeleteLogicResource,\n"
        "                 onScriptChange = onScriptChange,",
    )
    replace_once(
        path,
        "                 onTerrainAutoTile = onTerrainAutoTile,\n",
        "                 onTerrainAutoTile = onTerrainAutoTile,\n"
        "                 onTerrainProcess = onTerrainProcess,\n"
        "                 onImportTerrainHeightmap = onImportTerrainHeightmap,\n",
    )
    replace_once(
        path,
        "    onCreateTouchGraph: () -> Unit,\n"
        "    onAddVisualNode: (String) -> Unit,",
        "    onCreateTouchGraph: () -> Unit,\n"
        "    onCreateTouchGraphAt: (String, String) -> Unit,\n"
        "    onOpenGraphResource: (String, String) -> Unit,\n"
        "    onAddVisualNode: (String) -> Unit,",
    )
    replace_once(
        path,
        "    onCreateScript: () -> Unit,\n"
        "    onScriptChange: (String) -> Unit,",
        "    onCreateScript: () -> Unit,\n"
        "    onCreateScriptAt: (String, String) -> Unit,\n"
        "    onOpenScriptResource: (String, String) -> Unit,\n"
        "    onMoveLogicResource: (String, String, String, String) -> Unit,\n"
        "    onDeleteLogicResource: (String, String) -> Unit,\n"
        "    onScriptChange: (String) -> Unit,",
    )
    replace_once(
        path,
        "    onTerrainAutoTile: () -> Unit,\n) {\n    val side = panel == StudioPopup.FILES || panel == StudioPopup.SCENE || panel == StudioPopup.INSPECTOR\n    val left = panel == StudioPopup.FILES || panel == StudioPopup.SCENE",
        "    onTerrainAutoTile: () -> Unit,\n"
        "    onTerrainProcess: (com.mobilegamestudio.core.model.TerrainProcessMode, Float, Int, Float) -> Unit,\n"
        "    onImportTerrainHeightmap: () -> Unit,\n"
        ") {\n"
        "    val side = panel == StudioPopup.FILES || panel == StudioPopup.SCENE || panel == StudioPopup.INSPECTOR || panel == StudioPopup.WORLD\n"
        "    val left = panel == StudioPopup.FILES || panel == StudioPopup.SCENE || panel == StudioPopup.WORLD",
    )
    replace_once(
        path,
        "            val widthFraction = if (side) {\n"
        "                if (maxWidth < 720.dp) 0.58f else 0.34f\n"
        "            } else {",
        "            val widthFraction = if (side) {\n"
        "                when {\n"
        "                    panel == StudioPopup.WORLD && maxWidth < 720.dp -> 0.72f\n"
        "                    panel == StudioPopup.WORLD -> 0.46f\n"
        "                    maxWidth < 720.dp -> 0.58f\n"
        "                    else -> 0.34f\n"
        "                }\n"
        "            } else {",
    )
    replace_regex(
        path,
        r"                        StudioPopup\.FILES -> ResourceExplorerPanel\(\n.*?\n                        \)\n                        StudioPopup\.SCENE -> HierarchyPanel\(",
        "                        StudioPopup.FILES -> ManagedResourceExplorerPanel(\n"
        "                            state = state,\n"
        "                            onSelectObject = onSelectObject,\n"
        "                            onOpenScript = { owner, resourcePath ->\n"
        "                                onOpenScriptResource(owner, resourcePath)\n"
        "                                onOpenPanel(StudioPopup.CODE)\n"
        "                            },\n"
        "                            onOpenGraph = { owner, resourcePath ->\n"
        "                                onOpenGraphResource(owner, resourcePath)\n"
        "                                onOpenPanel(StudioPopup.NOCODE)\n"
        "                            },\n"
        "                            onCreateScriptAt = { folder, name ->\n"
        "                                onCreateScriptAt(folder, name)\n"
        "                                onOpenPanel(StudioPopup.CODE)\n"
        "                            },\n"
        "                            onCreateGraphAt = { folder, name ->\n"
        "                                onCreateTouchGraphAt(folder, name)\n"
        "                                onOpenPanel(StudioPopup.NOCODE)\n"
        "                            },\n"
        "                            onMoveLogicResource = onMoveLogicResource,\n"
        "                            onDeleteLogicResource = onDeleteLogicResource,\n"
        "                            onImportAsset = onImportAsset,\n"
        "                            onAddAsset = onAddAsset,\n"
        "                        )\n"
        "                        StudioPopup.SCENE -> HierarchyPanel(",
    )
    replace_regex(
        path,
        r"                        StudioPopup\.WORLD -> TerrainEditorPanel\(\n.*?\n                        \)\n                        StudioPopup\.BEHAVIORS",
        "                        StudioPopup.WORLD -> AdvancedTerrainEditorPanel(\n"
        "                            terrain = state.selectedTerrain,\n"
        "                            tool = state.terrainTool,\n"
        "                            onToolChange = onTerrainToolChange,\n"
        "                            onBrush = onTerrainBrush,\n"
        "                            onAutoTile = onTerrainAutoTile,\n"
        "                            onProcess = onTerrainProcess,\n"
        "                            onImportHeightmap = onImportTerrainHeightmap,\n"
        "                            onCreateTerrain = { onAddSceneObject(EditorObjectType.TERRAIN) },\n"
        "                            modifier = Modifier.fillMaxSize(),\n"
        "                        )\n"
        "                        StudioPopup.BEHAVIORS",
    )


def patch_terrain_authoring_reference() -> None:
    path = "core/model/src/main/kotlin/com/mobilegamestudio/core/model/TerrainAuthoring.kt"
    text = read(path).replace("::maskByIndex", "{ index -> maskByIndex(index) }")
    write(path, text)


def main() -> None:
    if MARKER.exists():
        print("Authoring upgrade already applied")
        return
    patch_terrain_models()
    patch_validation_and_legacy_ui()
    patch_camera()
    patch_repository_contract()
    patch_repository_impl()
    patch_view_model()
    patch_workspace_screen()
    patch_compact_shell()
    patch_terrain_authoring_reference()
    MARKER.write_text("advanced world authoring and managed logic resources\n", encoding="utf-8")
    print("Authoring upgrade applied")


if __name__ == "__main__":
    main()
