package com.mobilegamestudio.projects.content

import com.mobilegamestudio.core.common.StudioClock
import com.mobilegamestudio.core.contracts.ContentError
import com.mobilegamestudio.core.contracts.ContentResult
import com.mobilegamestudio.core.contracts.ProjectContentRepository
import com.mobilegamestudio.core.model.AssetRecord
import com.mobilegamestudio.core.model.CameraComponent
import com.mobilegamestudio.core.model.DirectionalLightComponent
import com.mobilegamestudio.core.model.GameObject
import com.mobilegamestudio.core.model.MeshRendererComponent
import com.mobilegamestudio.core.model.MountainDemoScene
import com.mobilegamestudio.core.model.PrimitiveMesh
import com.mobilegamestudio.core.model.ProjectId
import com.mobilegamestudio.core.model.SafeProjectPath
import com.mobilegamestudio.core.model.SceneDocument
import com.mobilegamestudio.core.model.SceneMetadata
import com.mobilegamestudio.core.model.SceneValidator
import com.mobilegamestudio.core.model.TransformComponent
import com.mobilegamestudio.core.model.Vector3
import com.mobilegamestudio.core.model.VisualGraphDocument
import com.mobilegamestudio.core.model.VisualGraphValidator
import com.mobilegamestudio.projects.files.ProjectFileStore
import java.io.ByteArrayInputStream
import java.io.ByteArrayOutputStream
import java.io.File
import java.io.IOException
import java.io.InputStream
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.channels.FileChannel
import java.nio.file.Files
import java.nio.file.LinkOption
import java.nio.file.StandardCopyOption
import java.nio.file.StandardOpenOption
import java.security.MessageDigest
import java.util.UUID
import java.util.concurrent.ConcurrentHashMap
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.withContext
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.serialization.json.Json
import kotlinx.serialization.json.JsonArray
import kotlinx.serialization.json.JsonObject
import kotlinx.serialization.json.JsonPrimitive

class DefaultProjectContentRepository(
    private val projectsRoot: File,
    private val clock: StudioClock,
    private val ioDispatcher: CoroutineDispatcher,
    private val demoModels: () -> List<DemoModelAsset> = {
        val generated = MountainGlbFactory.create()
        listOf(
            DemoModelAsset(MountainDemoScene.MODEL_ASSET_ID, "2009 Dodge Viper ACR.glb", MountainDemoScene.MODEL_PATH, generated),
            DemoModelAsset(
                MountainDemoScene.CHARACTER_ASSET_ID,
                "FoxCharacter.glb",
                MountainDemoScene.CHARACTER_MODEL_PATH,
                generated,
            ),
        )
    },
) : ProjectContentRepository {
    private val mutex = Mutex()
    private val codec = SceneContentCodec()
    private val assetCache = ConcurrentHashMap<ProjectId, Map<String, AssetRecord>>()

    override suspend fun loadOrCreateScene(projectId: ProjectId): ContentResult<SceneDocument> =
        withContext(ioDispatcher) {
            mutex.withLock {
                val directory = trustedProjectDirectory(projectId)
                    ?: return@withLock ContentResult.Failure(ContentError.ProjectNotFound)
                val sceneFile = directory.resolve(DEFAULT_SCENE_PATH)
                val installMarker = directory.resolve(MOUNTAIN_INSTALL_MARKER)
                if (installMarker.exists()) {
                    if (sceneFile.exists()) {
                        val recovered = readSceneFile(directory, sceneFile)
                        if (
                            recovered is ContentResult.Success &&
                            recovered.value.sceneId == MountainDemoScene.SCENE_ID
                        ) {
                            Files.deleteIfExists(installMarker.toPath())
                            return@withLock recovered
                        }
                    }
                    return@withLock ContentResult.Failure(ContentError.SceneNotFound)
                }
                if (!sceneFile.exists()) {
                    val scene = starterScene(clock.nowEpochMillis())
                    return@withLock writeSceneFile(directory, sceneFile, scene)
                }
                readSceneFile(directory, sceneFile)
            }
        }

    override suspend fun saveScene(
        projectId: ProjectId,
        scene: SceneDocument,
        expectedRevision: Long,
    ): ContentResult<SceneDocument> = withContext(ioDispatcher) {
        mutex.withLock {
            val directory = trustedProjectDirectory(projectId)
                ?: return@withLock ContentResult.Failure(ContentError.ProjectNotFound)
            val sceneFile = directory.resolve(DEFAULT_SCENE_PATH)
            val current = readSceneFile(directory, sceneFile)
            if (current !is ContentResult.Success) return@withLock current
            if (current.value.metadata.revision != expectedRevision || expectedRevision == Long.MAX_VALUE) {
                return@withLock ContentResult.Failure(ContentError.ConcurrentModification)
            }
            val now = clock.nowEpochMillis()
            val updated = scene.copy(
                metadata = scene.metadata.copy(
                    revision = expectedRevision + 1,
                    createdAtEpochMillis = current.value.metadata.createdAtEpochMillis,
                    updatedAtEpochMillis = maxOf(now, current.value.metadata.updatedAtEpochMillis),
                ),
            )
            writeSceneFile(directory, sceneFile, updated)
        }
    }

    override suspend fun installMountainDemo(projectId: ProjectId): ContentResult<SceneDocument> =
        withContext(ioDispatcher) {
            mutex.withLock {
                val directory = trustedProjectDirectory(projectId)
                    ?: return@withLock ContentResult.Failure(ContentError.ProjectNotFound)
                val modelAssets = demoModels()
                if (modelAssets.size != 2 || modelAssets.any { validateGlb(it.bytes) != null }) {
                    return@withLock ContentResult.Failure(ContentError.UnsupportedAsset)
                }
                val existingSceneFile = directory.resolve(DEFAULT_SCENE_PATH)
                var existingTemplate: SceneDocument? = null
                if (existingSceneFile.exists()) {
                    val existingScene = readSceneFile(directory, existingSceneFile)
                    if (existingScene is ContentResult.Success && existingScene.value.sceneId == MountainDemoScene.SCENE_ID) {
                        val alreadyCurrent = existingScene.value.objects.any { objectValue ->
                            objectValue.component<MeshRendererComponent>()?.assetId == MountainDemoScene.MODEL_ASSET_ID &&
                                MountainDemoScene.TEMPLATE_VERSION_TAG in objectValue.tags &&
                                objectValue.components.any {
                                    it is com.mobilegamestudio.core.model.VehicleControllerComponent &&
                                        it.wheels.size == 4
                                }
                        }
                        val installedAssets = readAssetIndex(directory)
                        val binariesCurrent = installedAssets is ContentResult.Success &&
                            modelAssets.all { bundled ->
                                installedAssets.value.any { installed ->
                                    installed.id == bundled.id && installed.sha256 == sha256(bundled.bytes)
                                }
                            }
                        if (alreadyCurrent && binariesCurrent) return@withLock existingScene
                        existingTemplate = existingScene.value
                    } else {
                        return@withLock ContentResult.Failure(
                            ContentError.InvalidScene("A demonstração só pode ser instalada em um projeto novo."),
                        )
                    }
                }
                val installMarker = directory.resolve(MOUNTAIN_INSTALL_MARKER)
                if (installMarker.exists()) cleanupIncompleteDemo(directory)
                val now = clock.nowEpochMillis()
                val assets = modelAssets.map { model ->
                    AssetRecord(
                        id = model.id,
                        displayName = model.displayName,
                        relativePath = model.relativePath,
                        mediaType = GLB_MEDIA_TYPE,
                        sizeBytes = model.bytes.size.toLong(),
                        sha256 = sha256(model.bytes),
                        importedAtEpochMillis = now,
                        animationClips = readGlbStringNames(model.bytes, "animations"),
                        materialSlots = readGlbStringNames(model.bytes, "materials"),
                    )
                }
                try {
                    atomicWrite(directory, installMarker, byteArrayOf(1), 1)
                    modelAssets.forEach { model ->
                        atomicWrite(directory, directory.resolve(model.relativePath), model.bytes, MAX_MODEL_BYTES)
                    }
                    atomicWrite(
                        directory,
                        directory.resolve(MountainDemoScene.SCRIPT_PATH),
                        MountainDemoScene.LUA_SOURCE.trimIndent().encodeToByteArray(),
                        MAX_SCRIPT_BYTES,
                    )
                    atomicWrite(
                        directory,
                        directory.resolve(MountainDemoScene.GRAPH_PATH),
                        codec.encodeGraph(MountainDemoScene.graph()),
                        SceneContentCodec.MAX_GRAPH_BYTES,
                    )
                    atomicWrite(
                        directory,
                        directory.resolve(ASSET_INDEX_PATH),
                        codec.encodeAssets(assets),
                        SceneContentCodec.MAX_ASSET_INDEX_BYTES,
                    )
                    val scene = MountainDemoScene.create(now).let { fresh ->
                        existingTemplate?.let { previous ->
                            fresh.copy(
                                metadata = fresh.metadata.copy(
                                    revision = previous.metadata.revision + 1,
                                    createdAtEpochMillis = previous.metadata.createdAtEpochMillis,
                                ),
                            )
                        } ?: fresh
                    }
                    writeSceneFile(directory, directory.resolve(DEFAULT_SCENE_PATH), scene).also {
                        if (it is ContentResult.Success) {
                            Files.deleteIfExists(installMarker.toPath())
                            assetCache[projectId] = assets.associateBy(AssetRecord::id)
                        }
                    }
                } catch (_: IOException) {
                    if (existingTemplate == null) cleanupIncompleteDemo(directory)
                    else Files.deleteIfExists(installMarker.toPath())
                    ContentResult.Failure(ContentError.StorageUnavailable)
                }
            }
        }

    override suspend fun listAssets(projectId: ProjectId): ContentResult<List<AssetRecord>> =
        withContext(ioDispatcher) {
            mutex.withLock {
                val directory = trustedProjectDirectory(projectId)
                    ?: return@withLock ContentResult.Failure(ContentError.ProjectNotFound)
                val index = directory.resolve(ASSET_INDEX_PATH)
                if (!index.exists()) {
                    assetCache[projectId] = emptyMap()
                    return@withLock ContentResult.Success(emptyList())
                }
                when (val bytes = readBounded(directory, index, SceneContentCodec.MAX_ASSET_INDEX_BYTES)) {
                    is ContentResult.Failure -> bytes
                    is ContentResult.Success -> codec.decodeAssets(bytes.value).also { result ->
                        if (result is ContentResult.Success && result.value.all(::isValidAssetRecord)) {
                            assetCache[projectId] = result.value.associateBy(AssetRecord::id)
                        }
                    }.let { result ->
                        if (result is ContentResult.Success && result.value.any { !isValidAssetRecord(it) }) {
                            ContentResult.Failure(ContentError.StorageUnavailable)
                        } else result
                    }
                }
            }
        }

    override suspend fun importModel(
        projectId: ProjectId,
        sourceName: String,
        input: InputStream,
    ): ContentResult<AssetRecord> = withContext(ioDispatcher) {
        mutex.withLock {
            val directory = trustedProjectDirectory(projectId)
                ?: return@withLock ContentResult.Failure(ContentError.ProjectNotFound)
            val extension = sourceName.substringAfterLast('.', "").lowercase()
            val mediaType = when (extension) {
                "glb" -> GLB_MEDIA_TYPE
                "png" -> PNG_MEDIA_TYPE
                "jpg", "jpeg" -> JPEG_MEDIA_TYPE
                "webp" -> WEBP_MEDIA_TYPE
                else -> null
            }
            if (mediaType == null) {
                return@withLock ContentResult.Failure(ContentError.UnsupportedAsset)
            }
            val maxBytes = if (mediaType == GLB_MEDIA_TYPE) MAX_MODEL_BYTES else MAX_TEXTURE_BYTES
            val bytes = try {
                input.use { it.readLimited(maxBytes) }
            } catch (_: AssetLimitExceeded) {
                return@withLock ContentResult.Failure(ContentError.AssetTooLarge)
            } catch (_: IOException) {
                return@withLock ContentResult.Failure(ContentError.StorageUnavailable)
            }
            val validationError = if (mediaType == GLB_MEDIA_TYPE) validateGlb(bytes) else validateImage(bytes, mediaType)
            validationError?.let {
                return@withLock ContentResult.Failure(ContentError.InvalidAsset(it))
            }
            val hash = sha256(bytes)
            val id = hash
            val relativePath = if (mediaType == GLB_MEDIA_TYPE) {
                "assets/models/$id.glb"
            } else {
                "assets/textures/$id.${if (extension == "jpeg") "jpg" else extension}"
            }
            val existing = readAssetIndex(directory)
            if (existing is ContentResult.Failure) return@withLock existing
            val assets = (existing as ContentResult.Success).value
            assets.firstOrNull { it.sha256 == hash }?.let {
                return@withLock ContentResult.Success(it)
            }
            val record = AssetRecord(
                id = id,
                displayName = sourceName.filterNot(Char::isISOControl).replace(BIDI_CONTROL, "").take(96),
                relativePath = relativePath,
                mediaType = mediaType,
                sizeBytes = bytes.size.toLong(),
                sha256 = hash,
                importedAtEpochMillis = clock.nowEpochMillis(),
                animationClips = if (mediaType == GLB_MEDIA_TYPE) readGlbStringNames(bytes, "animations") else emptyList(),
                materialSlots = if (mediaType == GLB_MEDIA_TYPE) readGlbStringNames(bytes, "materials") else emptyList(),
            )
            try {
                atomicWrite(directory, directory.resolve(relativePath), bytes, maxBytes)
                atomicWrite(
                    directory,
                    directory.resolve(ASSET_INDEX_PATH),
                    codec.encodeAssets(assets + record),
                    SceneContentCodec.MAX_ASSET_INDEX_BYTES,
                )
                assetCache[projectId] = (assets + record).associateBy(AssetRecord::id)
                ContentResult.Success(record)
            } catch (_: IOException) {
                ContentResult.Failure(ContentError.StorageUnavailable)
            }
        }
    }

    override fun resolveAsset(projectId: ProjectId, assetId: String): File? {
        if (!SAFE_ASSET_ID.matches(assetId)) return null
        val directory = trustedProjectDirectory(projectId) ?: return null
        val record = assetCache[projectId]?.get(assetId) ?: return null
        if (!isValidAssetRecord(record)) return null
        return directory.resolve(record.relativePath).takeIf {
            isContained(directory, it) &&
                it.isFile &&
                !Files.isSymbolicLink(it.toPath()) &&
                it.length() == record.sizeBytes
        }
    }

    override suspend fun readLuaScript(
        projectId: ProjectId,
        relativePath: String,
    ): ContentResult<String> = withContext(ioDispatcher) {
        val directory = trustedProjectDirectory(projectId)
            ?: return@withContext ContentResult.Failure(ContentError.ProjectNotFound)
        val file = safeContentFile(directory, relativePath, "scripts/lua/")
            ?: return@withContext ContentResult.Failure(ContentError.InvalidPath)
        when (val bytes = readBounded(directory, file, MAX_SCRIPT_BYTES)) {
            is ContentResult.Failure -> bytes
            is ContentResult.Success -> ContentResult.Success(bytes.value.decodeToString())
        }
    }

    override suspend fun saveLuaScript(
        projectId: ProjectId,
        relativePath: String,
        source: String,
    ): ContentResult<Unit> = withContext(ioDispatcher) {
        val directory = trustedProjectDirectory(projectId)
            ?: return@withContext ContentResult.Failure(ContentError.ProjectNotFound)
        val file = safeContentFile(directory, relativePath, "scripts/lua/")
            ?: return@withContext ContentResult.Failure(ContentError.InvalidPath)
        val bytes = source.encodeToByteArray()
        if (bytes.size > MAX_SCRIPT_BYTES) return@withContext ContentResult.Failure(ContentError.StorageUnavailable)
        try {
            atomicWrite(directory, file, bytes, MAX_SCRIPT_BYTES)
            ContentResult.Success(Unit)
        } catch (_: IOException) {
            ContentResult.Failure(ContentError.StorageUnavailable)
        }
    }

    override suspend fun readVisualGraph(
        projectId: ProjectId,
        relativePath: String,
    ): ContentResult<VisualGraphDocument> = withContext(ioDispatcher) {
        val directory = trustedProjectDirectory(projectId)
            ?: return@withContext ContentResult.Failure(ContentError.ProjectNotFound)
        val file = safeContentFile(directory, relativePath, "visual-graphs/")
            ?: return@withContext ContentResult.Failure(ContentError.InvalidPath)
        when (val bytes = readBounded(directory, file, SceneContentCodec.MAX_GRAPH_BYTES)) {
            is ContentResult.Failure -> bytes
            is ContentResult.Success -> codec.decodeGraph(bytes.value)
        }
    }

    override suspend fun saveVisualGraph(
        projectId: ProjectId,
        relativePath: String,
        graph: VisualGraphDocument,
    ): ContentResult<Unit> = withContext(ioDispatcher) {
        val validationErrors = VisualGraphValidator.validate(graph)
        if (validationErrors.isNotEmpty()) {
            return@withContext ContentResult.Failure(ContentError.InvalidScene(validationErrors.first()))
        }
        val directory = trustedProjectDirectory(projectId)
            ?: return@withContext ContentResult.Failure(ContentError.ProjectNotFound)
        val file = safeContentFile(directory, relativePath, "visual-graphs/")
            ?: return@withContext ContentResult.Failure(ContentError.InvalidPath)
        try {
            atomicWrite(directory, file, codec.encodeGraph(graph), SceneContentCodec.MAX_GRAPH_BYTES)
            ContentResult.Success(Unit)
        } catch (_: IOException) {
            ContentResult.Failure(ContentError.StorageUnavailable)
        }
    }

    private fun readSceneFile(project: File, file: File): ContentResult<SceneDocument> =
        when (val bytes = readBounded(project, file, SceneContentCodec.MAX_SCENE_BYTES)) {
            is ContentResult.Failure -> ContentResult.Failure(ContentError.CorruptedScene)
            is ContentResult.Success -> codec.decodeScene(bytes.value)
        }

    private fun writeSceneFile(
        project: File,
        file: File,
        scene: SceneDocument,
    ): ContentResult<SceneDocument> {
        val errors = SceneValidator.validate(scene)
        if (errors.isNotEmpty()) {
            return ContentResult.Failure(ContentError.InvalidScene(errors.first().toString()))
        }
        return try {
            atomicWrite(project, file, codec.encodeScene(scene), SceneContentCodec.MAX_SCENE_BYTES)
            ContentResult.Success(scene)
        } catch (_: IOException) {
            ContentResult.Failure(ContentError.StorageUnavailable)
        }
    }

    private fun readAssetIndex(directory: File): ContentResult<List<AssetRecord>> {
        val index = directory.resolve(ASSET_INDEX_PATH)
        if (!index.exists()) return ContentResult.Success(emptyList())
        return when (val bytes = readBounded(directory, index, SceneContentCodec.MAX_ASSET_INDEX_BYTES)) {
            is ContentResult.Failure -> bytes
            is ContentResult.Success -> codec.decodeAssets(bytes.value).let { result ->
                if (result is ContentResult.Success && result.value.any { !isValidAssetRecord(it) }) {
                    ContentResult.Failure(ContentError.StorageUnavailable)
                } else result
            }
        }
    }

    private fun isValidAssetRecord(record: AssetRecord): Boolean {
        val isModel = record.mediaType == GLB_MEDIA_TYPE &&
            record.relativePath.startsWith("assets/models/") &&
            record.relativePath.endsWith(".glb") &&
            record.sizeBytes in 1..MAX_MODEL_BYTES.toLong()
        val isTexture = record.mediaType in IMAGE_MEDIA_TYPES &&
            record.relativePath.startsWith("assets/textures/") &&
            record.relativePath.substringAfterLast('.').lowercase() in setOf("png", "jpg", "webp") &&
            record.sizeBytes in 1..MAX_TEXTURE_BYTES.toLong()
        return SAFE_ASSET_ID.matches(record.id) &&
            (isModel || isTexture) &&
            SafeProjectPath.isValidRelativePath(record.relativePath) &&
            SHA_256.matches(record.sha256)
    }

    private fun trustedProjectDirectory(id: ProjectId): File? {
        if (!ProjectFileStore.isSafeProjectId(id.value)) return null
        val directory = projectsRoot.resolve(id.value)
        return directory.takeIf {
            it.isDirectory &&
                !Files.isSymbolicLink(it.toPath()) &&
                runCatching { it.canonicalFile.parentFile == projectsRoot.canonicalFile }.getOrDefault(false)
        }
    }

    private fun safeContentFile(project: File, relativePath: String, requiredPrefix: String): File? {
        if (!SafeProjectPath.isValidRelativePath(relativePath) || !relativePath.startsWith(requiredPrefix)) return null
        return project.resolve(relativePath).takeIf { isContained(project, it) }
    }

    private fun readBounded(
        project: File,
        file: File,
        maxBytes: Int,
    ): ContentResult<ByteArray> {
        if (!isContained(project, file) || Files.isSymbolicLink(file.toPath())) {
            return ContentResult.Failure(ContentError.InvalidPath)
        }
        return try {
            FileChannel.open(file.toPath(), StandardOpenOption.READ, LinkOption.NOFOLLOW_LINKS).use { channel ->
                val buffer = ByteBuffer.allocate(maxBytes + 1)
                while (buffer.hasRemaining() && channel.read(buffer) != -1) Unit
                if (buffer.position() > maxBytes) ContentResult.Failure(ContentError.StorageUnavailable)
                else ContentResult.Success(buffer.array().copyOf(buffer.position()))
            }
        } catch (_: IOException) {
            ContentResult.Failure(ContentError.StorageUnavailable)
        } catch (_: SecurityException) {
            ContentResult.Failure(ContentError.StorageUnavailable)
        }
    }

    private fun atomicWrite(project: File, destination: File, bytes: ByteArray, maxBytes: Int) {
        require(bytes.size <= maxBytes)
        require(isContained(project, destination))
        val parent = requireNotNull(destination.parentFile)
        if ((!parent.exists() && !parent.mkdirs()) || Files.isSymbolicLink(parent.toPath())) {
            throw IOException("Diretório de destino indisponível.")
        }
        require(isContained(project, parent))
        val temporary = parent.resolve(".${destination.name}.${UUID.randomUUID()}.tmp")
        try {
            FileChannel.open(
                temporary.toPath(),
                StandardOpenOption.CREATE_NEW,
                StandardOpenOption.WRITE,
                LinkOption.NOFOLLOW_LINKS,
            ).use { channel ->
                val buffer = ByteBuffer.wrap(bytes)
                while (buffer.hasRemaining()) channel.write(buffer)
                channel.force(true)
            }
            Files.move(
                temporary.toPath(),
                destination.toPath(),
                StandardCopyOption.ATOMIC_MOVE,
                StandardCopyOption.REPLACE_EXISTING,
            )
        } finally {
            Files.deleteIfExists(temporary.toPath())
        }
    }

    private fun isContained(project: File, file: File): Boolean = runCatching {
        val projectPath = project.canonicalFile.toPath()
        file.canonicalFile.toPath().startsWith(projectPath)
    }.getOrDefault(false)

    private fun cleanupIncompleteDemo(directory: File) {
        listOf(
            DEFAULT_SCENE_PATH,
            MountainDemoScene.MODEL_PATH,
            MountainDemoScene.CHARACTER_MODEL_PATH,
            MountainDemoScene.SCRIPT_PATH,
            MountainDemoScene.GRAPH_PATH,
            ASSET_INDEX_PATH,
            MOUNTAIN_INSTALL_MARKER,
        ).forEach { relativePath ->
            runCatching {
                val file = directory.resolve(relativePath)
                if (isContained(directory, file)) Files.deleteIfExists(file.toPath())
            }
        }
    }

    internal fun validateGlb(bytes: ByteArray): String? {
        if (bytes.size < 20) return "Arquivo GLB truncado."
        val header = ByteBuffer.wrap(bytes).order(ByteOrder.LITTLE_ENDIAN)
        if (header.int != GLB_MAGIC) return "Assinatura GLB inválida."
        if (header.int != 2) return "Somente glTF 2.0 é suportado."
        if (header.int != bytes.size) return "O tamanho declarado não corresponde ao arquivo."
        val jsonLength = header.int
        if (
            header.int != JSON_CHUNK ||
            jsonLength <= 0 ||
            jsonLength > MAX_JSON_CHUNK ||
            jsonLength % 4 != 0
        ) {
            return "Chunk JSON GLB inválido."
        }
        if (20L + jsonLength > bytes.size.toLong()) return "Chunk JSON truncado."
        val jsonBytes = bytes.copyOfRange(20, 20 + jsonLength)
        val document = runCatching {
            Json.parseToJsonElement(jsonBytes.decodeToString().trimEnd('\u0000', ' ')) as JsonObject
        }.getOrElse { return "Manifesto JSON glTF inválido." }
        val asset = document["asset"] as? JsonObject
        if ((asset?.get("version") as? JsonPrimitive)?.content != "2.0") {
            return "O manifesto não declara glTF 2.0."
        }
        if (((document["nodes"] as? JsonArray)?.size ?: 0) > MAX_GLTF_NODES) return "Modelo excede o limite de nós."
        if (((document["meshes"] as? JsonArray)?.size ?: 0) > MAX_GLTF_MESHES) return "Modelo excede o limite de meshes."
        if (((document["materials"] as? JsonArray)?.size ?: 0) > MAX_GLTF_MATERIALS) {
            return "Modelo excede o limite de materiais."
        }
        val jsonText = jsonBytes.decodeToString()
        if (URI_PROPERTY.containsMatchIn(jsonText)) {
            return "GLB externo não pode depender de URIs; incorpore buffers e imagens."
        }
        var offset = 20L + jsonLength
        var binaryLength = 0L
        var binaryChunks = 0
        while (offset < bytes.size) {
            if (offset + 8 > bytes.size) return "Cabeçalho de chunk truncado."
            header.position(offset.toInt())
            val chunkLength = header.int.toLong() and 0xFFFFFFFFL
            val chunkType = header.int
            offset += 8
            if (chunkLength > bytes.size.toLong() - offset) return "Chunk GLB truncado."
            if (chunkLength % 4 != 0L) return "Chunk GLB sem alinhamento de 4 bytes."
            if (chunkType == BIN_CHUNK) {
                binaryChunks += 1
                if (binaryChunks > 1) return "GLB deve possuir no máximo um chunk binário."
                binaryLength = chunkLength
            } else return "Tipo de chunk GLB não suportado."
            offset += chunkLength
        }
        if (offset != bytes.size.toLong()) return "Estrutura GLB inconsistente."
        if (binaryChunks != 1) return "GLB sem chunk binário."
        val buffers = document["buffers"] as? JsonArray ?: return "GLB sem buffer binário."
        if (buffers.isEmpty() || buffers.size > 2 || jsonLong(buffers[0], "byteLength") !in 1..binaryLength) {
            return "Buffer GLB inválido ou fora dos limites."
        }
        if (buffers.size == 2) {
            val virtual = buffers[1] as? JsonObject ?: return "Buffer Meshopt inválido."
            val extensions = virtual["extensions"] as? JsonObject
            if (
                extensions?.get("EXT_meshopt_compression") !is JsonObject ||
                jsonLong(virtual, "byteLength") !in 1..MAX_VIRTUAL_BUFFER_BYTES
            ) return "Buffer virtual Meshopt inválido."
        }
        val bufferViews = (document["bufferViews"] as? JsonArray).orEmpty()
        if (bufferViews.size > MAX_BUFFER_VIEWS) return "Modelo excede o limite de bufferViews."
        val viewRanges = mutableListOf<LongRange>()
        bufferViews.forEach { element ->
            val view = element as? JsonObject ?: return "bufferView inválido."
            val bufferIndex = jsonLong(view, "buffer", 0)
            val start = jsonLong(element, "byteOffset", 0)
            val length = jsonLong(element, "byteLength")
            if (start < 0 || length !in 1..MAX_BUFFER_VIEW_BYTES) {
                return "bufferView fora do buffer GLB."
            }
            if (bufferIndex == 0L) {
                if (start > binaryLength - length) return "bufferView fora do buffer GLB."
                viewRanges += start until (start + length)
            } else if (bufferIndex == 1L && buffers.size == 2) {
                val meshopt = ((view["extensions"] as? JsonObject)
                    ?.get("EXT_meshopt_compression") as? JsonObject)
                    ?: return "bufferView virtual sem compressão Meshopt."
                val compressedStart = jsonLong(meshopt, "byteOffset", 0)
                val compressedLength = jsonLong(meshopt, "byteLength")
                if (
                    jsonLong(meshopt, "buffer", -1) != 0L ||
                    compressedStart < 0 ||
                    compressedLength !in 1..MAX_BUFFER_VIEW_BYTES ||
                    compressedStart > binaryLength - compressedLength
                ) return "Payload Meshopt fora do buffer GLB."
                viewRanges += 0 until length
            } else return "bufferView referencia buffer não suportado."
        }
        val accessors = (document["accessors"] as? JsonArray).orEmpty()
        if (accessors.size > MAX_ACCESSORS) return "Modelo excede o limite de accessors."
        accessors.forEach { element ->
            val accessor = element as? JsonObject ?: return "Accessor inválido."
            val count = jsonLong(accessor, "count")
            val viewIndex = jsonLong(accessor, "bufferView", -1)
            if (count !in 1..MAX_ACCESSOR_ELEMENTS || viewIndex !in viewRanges.indices.map(Int::toLong)) {
                return "Accessor fora dos limites."
            }
            val componentBytes = when (jsonLong(accessor, "componentType")) {
                5120L, 5121L -> 1L
                5122L, 5123L -> 2L
                5125L, 5126L -> 4L
                else -> return "Tipo numérico de accessor não suportado."
            }
            val components = when ((accessor["type"] as? JsonPrimitive)?.content) {
                "SCALAR" -> 1L
                "VEC2" -> 2L
                "VEC3" -> 3L
                "VEC4", "MAT2" -> 4L
                "MAT3" -> 9L
                "MAT4" -> 16L
                else -> return "Formato de accessor inválido."
            }
            val elementBytes = componentBytes * components
            val viewLength = viewRanges[viewIndex.toInt()].count().toLong()
            val accessorOffset = jsonLong(accessor, "byteOffset", 0)
            val view = bufferViews[viewIndex.toInt()] as? JsonObject ?: return "bufferView inválido."
            val stride = jsonLong(view, "byteStride", elementBytes)
            val required = if (count == 0L) 0L else (count - 1L) * stride + elementBytes
            if (
                stride < elementBytes ||
                stride > 252L ||
                stride % componentBytes != 0L ||
                accessorOffset < 0 ||
                required > viewLength - accessorOffset
            ) {
                return "Accessor excede seu bufferView."
            }
        }
        val images = (document["images"] as? JsonArray).orEmpty()
        if (images.size > MAX_IMAGES) return "Modelo excede o limite de imagens."
        var imageBytes = 0L
        images.forEach { element ->
            val image = element as? JsonObject ?: return "Imagem glTF inválida."
            val viewIndex = jsonLong(image, "bufferView", -1)
            if (viewIndex !in viewRanges.indices.map(Int::toLong)) return "Imagem fora do buffer GLB."
            val length = viewRanges[viewIndex.toInt()].count().toLong()
            if (length > MAX_IMAGE_BYTES) return "Imagem incorporada excede o limite."
            imageBytes += length
            if (imageBytes > MAX_TOTAL_IMAGE_BYTES) return "Texturas excedem o orçamento do modelo."
        }
        val primitiveCount = (document["meshes"] as? JsonArray).orEmpty().sumOf { mesh ->
            (((mesh as? JsonObject)?.get("primitives") as? JsonArray)?.size ?: 0)
        }
        if (primitiveCount > MAX_PRIMITIVES) return "Modelo excede o limite de primitivas."
        return null
    }

    private fun validateImage(bytes: ByteArray, mediaType: String): String? {
        if (bytes.size < 12) return "Imagem truncada."
        val valid = when (mediaType) {
            PNG_MEDIA_TYPE -> bytes.take(8).map(Byte::toInt) ==
                listOf(0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A).map { it.toByte().toInt() }
            JPEG_MEDIA_TYPE -> (bytes[0].toInt() and 0xFF) == 0xFF &&
                (bytes[1].toInt() and 0xFF) == 0xD8 &&
                (bytes[2].toInt() and 0xFF) == 0xFF
            WEBP_MEDIA_TYPE -> bytes.copyOfRange(0, 4).decodeToString() == "RIFF" &&
                bytes.copyOfRange(8, 12).decodeToString() == "WEBP"
            else -> false
        }
        return if (valid) null else "Assinatura de imagem inválida."
    }

    private fun readGlbStringNames(bytes: ByteArray, collection: String): List<String> = runCatching {
        if (bytes.size < 20) return@runCatching emptyList()
        val header = ByteBuffer.wrap(bytes).order(ByteOrder.LITTLE_ENDIAN)
        header.position(12)
        val jsonLength = header.int
        if (header.int != JSON_CHUNK || jsonLength <= 0 || 20 + jsonLength > bytes.size) {
            return@runCatching emptyList()
        }
        val document = Json.parseToJsonElement(
            bytes.copyOfRange(20, 20 + jsonLength).decodeToString().trimEnd('\u0000', ' '),
        ) as? JsonObject ?: return@runCatching emptyList()
        (document[collection] as? JsonArray).orEmpty().mapIndexed { index, element ->
            ((element as? JsonObject)?.get("name") as? JsonPrimitive)
                ?.content
                ?.takeIf(String::isNotBlank)
                ?.take(96)
                ?: "${collection.dropLast(1).replaceFirstChar(Char::uppercase)} ${index + 1}"
        }.distinct().take(256)
    }.getOrDefault(emptyList())

    private fun InputStream.readLimited(limit: Int): ByteArray {
        val output = ByteArrayOutputStream(minOf(limit, 64 * 1024))
        var total = 0
        val buffer = ByteArray(64 * 1024)
        while (true) {
            val count = read(buffer)
            if (count == -1) break
            total += count
            if (total > limit) throw AssetLimitExceeded()
            output.write(buffer, 0, count)
        }
        return output.toByteArray()
    }

    private fun jsonLong(element: kotlinx.serialization.json.JsonElement, key: String, default: Long? = null): Long =
        ((element as? JsonObject)?.get(key) as? JsonPrimitive)?.content?.toLongOrNull()
            ?: default
            ?: Long.MIN_VALUE

    private fun sha256(bytes: ByteArray): String =
        MessageDigest.getInstance("SHA-256").digest(bytes).joinToString("") { "%02x".format(it) }

    private fun starterScene(now: Long): SceneDocument {
        val objects = listOf(
            GameObject(
                id = "ground",
                name = "Ground",
                components = listOf(
                    TransformComponent(position = Vector3(0f, -1f, 0f), scale = Vector3(8f, 1f, 8f)),
                    MeshRendererComponent(primitive = PrimitiveMesh.PLANE, colorArgb = 0xFF354A42),
                ),
            ),
            GameObject(
                id = "cube",
                name = "Cube",
                components = listOf(
                    TransformComponent(),
                    MeshRendererComponent(primitive = PrimitiveMesh.CUBE, colorArgb = 0xFF4E9ED4),
                ),
            ),
            GameObject(
                id = "camera",
                name = "Main Camera",
                components = listOf(
                    TransformComponent(position = Vector3(6f, 4f, 8f)),
                    CameraComponent(),
                ),
            ),
            GameObject(
                id = "light",
                name = "Directional Light",
                components = listOf(
                    TransformComponent(rotationEulerDegrees = Vector3(-45f, -30f, 0f)),
                    DirectionalLightComponent(),
                ),
            ),
        )
        return SceneDocument(
            sceneId = "main-scene",
            name = "Main Scene",
            rootObjects = objects.map(GameObject::id),
            objects = objects,
            metadata = SceneMetadata(1, now, now),
        )
    }

    private class AssetLimitExceeded : IOException()

    companion object {
        const val DEFAULT_SCENE_PATH = "scenes/main.scene.json"
        const val ASSET_INDEX_PATH = "assets/index.json"
        const val MOUNTAIN_INSTALL_MARKER = "settings/mountain-demo.installing"
        const val MAX_MODEL_BYTES = 16 * 1024 * 1024
        const val MAX_TEXTURE_BYTES = 12 * 1024 * 1024
        const val MAX_JSON_CHUNK = 4 * 1024 * 1024
        const val MAX_GLTF_NODES = 10_000
        const val MAX_GLTF_MESHES = 2_000
        const val MAX_GLTF_MATERIALS = 256
        const val MAX_BUFFER_VIEWS = 4_096
        const val MAX_ACCESSORS = 4_096
        const val MAX_ACCESSOR_ELEMENTS = 1_000_000L
        const val MAX_BUFFER_VIEW_BYTES = 16L * 1024 * 1024
        const val MAX_VIRTUAL_BUFFER_BYTES = 64L * 1024 * 1024
        const val MAX_IMAGES = 128
        const val MAX_IMAGE_BYTES = 8L * 1024 * 1024
        const val MAX_TOTAL_IMAGE_BYTES = 24L * 1024 * 1024
        const val MAX_PRIMITIVES = 4_096
        const val PNG_MEDIA_TYPE = "image/png"
        const val JPEG_MEDIA_TYPE = "image/jpeg"
        const val WEBP_MEDIA_TYPE = "image/webp"
        val IMAGE_MEDIA_TYPES = setOf(PNG_MEDIA_TYPE, JPEG_MEDIA_TYPE, WEBP_MEDIA_TYPE)
        const val MAX_SCRIPT_BYTES = 256 * 1024
        const val GLB_MEDIA_TYPE = "model/gltf-binary"
        private const val GLB_MAGIC = 0x46546C67
        private const val JSON_CHUNK = 0x4E4F534A
        private const val BIN_CHUNK = 0x004E4942
        private val URI_PROPERTY = Regex("\"uri\"\\s*:", RegexOption.IGNORE_CASE)
        private val SAFE_ASSET_ID = Regex("[A-Za-z0-9][A-Za-z0-9_-]{0,63}")
        private val SHA_256 = Regex("[a-f0-9]{64}")
        private val BIDI_CONTROL = Regex("[\\u202A-\\u202E\\u2066-\\u2069]")
    }
}

data class DemoModelAsset(
    val id: String,
    val displayName: String,
    val relativePath: String,
    val bytes: ByteArray,
)
