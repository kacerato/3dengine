package com.mobilegamestudio.core.model

import java.util.UUID
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

/**
 * Persistent world-layer model used by every editor workspace.
 *
 * Layers are not a second scene graph. They classify the same GameObjects that
 * already live in SceneDocument and control authoring/render participation.
 */
@Serializable
enum class WorldLayerKind {
    SURFACE,
    GEOMETRY,
    VOLUME,
    GAMEPLAY,
    LIGHTING,
    UI,
    CUSTOM,
}

@Serializable
data class WorldLayer(
    val id: String,
    val name: String,
    val kind: WorldLayerKind,
    val order: Int,
    val visible: Boolean = true,
    val locked: Boolean = false,
    val solo: Boolean = false,
    val renderEnabled: Boolean = true,
    val collisionEnabled: Boolean = true,
    val navigationEnabled: Boolean = true,
    val castShadows: Boolean = true,
    val colorArgb: Long = 0xFF8D63D7,
)

@Serializable
@SerialName("world-layer-set")
data class WorldLayerSetComponent(
    override val componentId: String = UUID.randomUUID().toString(),
    override val enabled: Boolean = true,
    val layers: List<WorldLayer> = defaultWorldLayers(),
    val selectedLayerId: String? = layers.firstOrNull()?.id,
    val schemaVersion: Int = 1,
) : SceneComponent

@Serializable
@SerialName("world-layer-membership")
data class WorldLayerMembershipComponent(
    override val componentId: String = UUID.randomUUID().toString(),
    override val enabled: Boolean = true,
    val layerId: String,
    /** Object visibility independent from temporary layer visibility/solo. */
    val localVisible: Boolean = true,
) : SceneComponent

const val WORLD_LAYER_SYSTEM_OBJECT_ID = "__world_layer_system__"
const val WORLD_LAYER_SYSTEM_TAG = "editor-system"

const val WORLD_LAYER_SURFACE_ID = "world-layer-surface"
const val WORLD_LAYER_GEOMETRY_ID = "world-layer-geometry"
const val WORLD_LAYER_VOLUME_ID = "world-layer-volume"
const val WORLD_LAYER_GAMEPLAY_ID = "world-layer-gameplay"
const val WORLD_LAYER_LIGHTING_ID = "world-layer-lighting"
const val WORLD_LAYER_UI_ID = "world-layer-ui"

fun defaultWorldLayers(): List<WorldLayer> = listOf(
    WorldLayer(
        id = WORLD_LAYER_SURFACE_ID,
        name = "Superfície",
        kind = WorldLayerKind.SURFACE,
        order = 0,
        colorArgb = 0xFFB48A5A,
    ),
    WorldLayer(
        id = WORLD_LAYER_GEOMETRY_ID,
        name = "Geometria",
        kind = WorldLayerKind.GEOMETRY,
        order = 1,
        colorArgb = 0xFF6FA7D8,
    ),
    WorldLayer(
        id = WORLD_LAYER_VOLUME_ID,
        name = "Volumes",
        kind = WorldLayerKind.VOLUME,
        order = 2,
        colorArgb = 0xFF9A72D6,
    ),
    WorldLayer(
        id = WORLD_LAYER_GAMEPLAY_ID,
        name = "Gameplay",
        kind = WorldLayerKind.GAMEPLAY,
        order = 3,
        colorArgb = 0xFF67C996,
    ),
    WorldLayer(
        id = WORLD_LAYER_LIGHTING_ID,
        name = "Luz e ambiente",
        kind = WorldLayerKind.LIGHTING,
        order = 4,
        colorArgb = 0xFFF1C56C,
        collisionEnabled = false,
        navigationEnabled = false,
    ),
    WorldLayer(
        id = WORLD_LAYER_UI_ID,
        name = "Interface",
        kind = WorldLayerKind.UI,
        order = 5,
        colorArgb = 0xFFE07EA7,
        collisionEnabled = false,
        navigationEnabled = false,
        castShadows = false,
    ),
)

fun SceneDocument.worldLayerSet(): WorldLayerSetComponent? = objects
    .firstOrNull { WORLD_LAYER_SYSTEM_TAG in it.tags }
    ?.component<WorldLayerSetComponent>()
    ?: objects.asSequence().mapNotNull { it.component<WorldLayerSetComponent>() }.firstOrNull()

fun SceneDocument.worldLayers(): List<WorldLayer> = worldLayerSet()
    ?.layers
    .orEmpty()
    .sortedBy(WorldLayer::order)

fun SceneDocument.worldLayer(layerId: String?): WorldLayer? =
    layerId?.let { id -> worldLayers().firstOrNull { it.id == id } }

fun GameObject.worldLayerMembership(): WorldLayerMembershipComponent? =
    component<WorldLayerMembershipComponent>()

fun SceneDocument.worldLayerFor(objectId: String?): WorldLayer? {
    val objectValue = objects.firstOrNull { it.id == objectId } ?: return null
    return worldLayer(objectValue.worldLayerMembership()?.layerId)
}

fun SceneDocument.isWorldLayerLockedFor(objectId: String?): Boolean =
    worldLayerFor(objectId)?.locked == true

fun SceneDocument.isWorldObjectEffectivelyVisible(objectValue: GameObject): Boolean {
    if (!objectValue.enabled) return false
    val membership = objectValue.worldLayerMembership() ?: return true
    val layers = worldLayers()
    val layer = layers.firstOrNull { it.id == membership.layerId } ?: return membership.localVisible
    val soloIds = layers.filter(WorldLayer::solo).map(WorldLayer::id).toSet()
    return membership.localVisible && layer.visible && (soloIds.isEmpty() || layer.id in soloIds)
}

/**
 * Migrates legacy scenes in-place while preserving every original object.
 */
fun SceneDocument.ensureWorldLayerStructure(): SceneDocument {
    val defaults = defaultWorldLayers()
    val existingSystem = objects.firstOrNull { WORLD_LAYER_SYSTEM_TAG in it.tags }
    val existingSet = existingSystem?.component<WorldLayerSetComponent>() ?: worldLayerSet()
    val existingLayers = existingSet?.layers.orEmpty()
    val mergedLayers = buildList {
        addAll(existingLayers)
        defaults.filterTo(this) { default -> existingLayers.none { it.id == default.id } }
    }.sortedBy(WorldLayer::order).mapIndexed { index, layer -> layer.copy(order = index) }

    val selectedLayerId = existingSet?.selectedLayerId
        ?.takeIf { selected -> mergedLayers.any { it.id == selected } }
        ?: mergedLayers.firstOrNull()?.id
    val layerSet = (existingSet ?: WorldLayerSetComponent()).copy(
        layers = mergedLayers,
        selectedLayerId = selectedLayerId,
    )

    val migratedObjects = objects
        .filterNot { it.id == WORLD_LAYER_SYSTEM_OBJECT_ID || WORLD_LAYER_SYSTEM_TAG in it.tags }
        .map { objectValue ->
            val existingMembership = objectValue.worldLayerMembership()
            val validLayerId = existingMembership?.layerId
                ?.takeIf { id -> mergedLayers.any { it.id == id } }
                ?: inferredWorldLayerId(objectValue, mergedLayers)
            val membership = (existingMembership ?: WorldLayerMembershipComponent(
                layerId = validLayerId,
                localVisible = objectValue.enabled,
            )).copy(layerId = validLayerId)
            objectValue.copy(
                components = objectValue.components
                    .filterNot { it is WorldLayerMembershipComponent }
                    .plus(membership),
            )
        }

    val systemObject = GameObject(
        id = WORLD_LAYER_SYSTEM_OBJECT_ID,
        name = "World Layers",
        tags = setOf(WORLD_LAYER_SYSTEM_TAG, "world-authoring"),
        components = listOf(TransformComponent(), layerSet),
    )
    return copy(
        objects = migratedObjects + systemObject,
        rootObjects = (rootObjects.filter { id -> migratedObjects.any { it.id == id } } + WORLD_LAYER_SYSTEM_OBJECT_ID).distinct(),
    ).reapplyWorldLayerVisibility()
}

fun SceneDocument.addWorldLayer(
    name: String,
    kind: WorldLayerKind = WorldLayerKind.CUSTOM,
): SceneDocument {
    val prepared = ensureWorldLayerStructure()
    val set = prepared.worldLayerSet() ?: return prepared
    val safeName = name.trim().take(48).ifBlank { "Nova camada" }
    val newLayer = WorldLayer(
        id = "world-layer-${UUID.randomUUID()}",
        name = safeName,
        kind = kind,
        order = set.layers.size,
        colorArgb = colorForWorldLayerKind(kind),
        collisionEnabled = kind !in setOf(WorldLayerKind.LIGHTING, WorldLayerKind.UI),
        navigationEnabled = kind !in setOf(WorldLayerKind.LIGHTING, WorldLayerKind.UI),
        castShadows = kind != WorldLayerKind.UI,
    )
    return prepared.replaceWorldLayerSet(
        set.copy(layers = set.layers + newLayer, selectedLayerId = newLayer.id),
    )
}

fun SceneDocument.renameWorldLayer(layerId: String, name: String): SceneDocument {
    val safeName = name.trim().take(48)
    if (safeName.isBlank()) return this
    return updateWorldLayers { layers ->
        layers.map { layer -> if (layer.id == layerId) layer.copy(name = safeName) else layer }
    }
}

fun SceneDocument.reorderWorldLayer(layerId: String, delta: Int): SceneDocument {
    if (delta == 0) return this
    val prepared = ensureWorldLayerStructure()
    val set = prepared.worldLayerSet() ?: return prepared
    val ordered = set.layers.sortedBy(WorldLayer::order).toMutableList()
    val from = ordered.indexOfFirst { it.id == layerId }
    if (from < 0) return prepared
    val to = (from + delta).coerceIn(0, ordered.lastIndex)
    if (from == to) return prepared
    val item = ordered.removeAt(from)
    ordered.add(to, item)
    return prepared.replaceWorldLayerSet(
        set.copy(layers = ordered.mapIndexed { index, layer -> layer.copy(order = index) }),
    )
}

fun SceneDocument.toggleWorldLayerVisibility(layerId: String): SceneDocument =
    updateWorldLayers { layers ->
        layers.map { layer -> if (layer.id == layerId) layer.copy(visible = !layer.visible) else layer }
    }.reapplyWorldLayerVisibility()

fun SceneDocument.toggleWorldLayerLock(layerId: String): SceneDocument =
    updateWorldLayers { layers ->
        layers.map { layer -> if (layer.id == layerId) layer.copy(locked = !layer.locked) else layer }
    }

fun SceneDocument.toggleWorldLayerSolo(layerId: String): SceneDocument {
    val target = worldLayer(layerId) ?: return this
    val turnOn = !target.solo
    return updateWorldLayers { layers ->
        layers.map { layer -> layer.copy(solo = turnOn && layer.id == layerId) }
    }.reapplyWorldLayerVisibility()
}

fun SceneDocument.selectWorldLayer(layerId: String): SceneDocument {
    val prepared = ensureWorldLayerStructure()
    val set = prepared.worldLayerSet() ?: return prepared
    if (set.layers.none { it.id == layerId }) return prepared
    return prepared.replaceWorldLayerSet(set.copy(selectedLayerId = layerId))
}

fun SceneDocument.assignObjectToWorldLayer(objectId: String, layerId: String): SceneDocument {
    val prepared = ensureWorldLayerStructure()
    if (prepared.worldLayer(layerId) == null) return prepared
    val updated = prepared.copy(objects = prepared.objects.map { objectValue ->
        if (objectValue.id != objectId || WORLD_LAYER_SYSTEM_TAG in objectValue.tags) return@map objectValue
        val existing = objectValue.worldLayerMembership()
        val membership = (existing ?: WorldLayerMembershipComponent(
            layerId = layerId,
            localVisible = objectValue.enabled,
        )).copy(layerId = layerId)
        objectValue.copy(
            components = objectValue.components
                .filterNot { it is WorldLayerMembershipComponent }
                .plus(membership),
        )
    })
    return updated.reapplyWorldLayerVisibility()
}

fun SceneDocument.updateWorldObjectLocalVisibility(objectId: String, visible: Boolean): SceneDocument {
    val prepared = ensureWorldLayerStructure()
    val updated = prepared.copy(objects = prepared.objects.map { objectValue ->
        if (objectValue.id != objectId || WORLD_LAYER_SYSTEM_TAG in objectValue.tags) return@map objectValue
        val membership = objectValue.worldLayerMembership()
            ?: WorldLayerMembershipComponent(
                layerId = inferredWorldLayerId(objectValue, prepared.worldLayers()),
                localVisible = visible,
            )
        objectValue.copy(
            components = objectValue.components
                .filterNot { it is WorldLayerMembershipComponent }
                .plus(membership.copy(localVisible = visible)),
        )
    })
    return updated.reapplyWorldLayerVisibility()
}

private fun SceneDocument.updateWorldLayers(
    transform: (List<WorldLayer>) -> List<WorldLayer>,
): SceneDocument {
    val prepared = ensureWorldLayerStructure()
    val set = prepared.worldLayerSet() ?: return prepared
    val changed = transform(set.layers).mapIndexed { index, layer -> layer.copy(order = index) }
    return prepared.replaceWorldLayerSet(set.copy(layers = changed))
}

private fun SceneDocument.replaceWorldLayerSet(set: WorldLayerSetComponent): SceneDocument = copy(
    objects = objects.map { objectValue ->
        if (objectValue.id != WORLD_LAYER_SYSTEM_OBJECT_ID && WORLD_LAYER_SYSTEM_TAG !in objectValue.tags) objectValue
        else objectValue.copy(
            components = objectValue.components
                .filterNot { it is WorldLayerSetComponent }
                .plus(set),
        )
    },
)

private fun SceneDocument.reapplyWorldLayerVisibility(): SceneDocument {
    val layers = worldLayers()
    if (layers.isEmpty()) return this
    val soloIds = layers.filter(WorldLayer::solo).map(WorldLayer::id).toSet()
    return copy(objects = objects.map { objectValue ->
        if (WORLD_LAYER_SYSTEM_TAG in objectValue.tags) return@map objectValue
        val membership = objectValue.worldLayerMembership() ?: return@map objectValue
        val layer = layers.firstOrNull { it.id == membership.layerId }
        val visible = membership.localVisible && layer?.visible != false &&
            (soloIds.isEmpty() || membership.layerId in soloIds)
        objectValue.copy(enabled = visible)
    })
}

private fun inferredWorldLayerId(objectValue: GameObject, layers: List<WorldLayer>): String {
    val kind = when {
        objectValue.component<TerrainComponent>() != null -> WorldLayerKind.SURFACE
        objectValue.component<VoxelVolumeComponent>() != null -> WorldLayerKind.VOLUME
        objectValue.component<CharacterControllerComponent>() != null ||
            objectValue.component<VehicleControllerComponent>() != null -> WorldLayerKind.GAMEPLAY
        objectValue.component<VirtualJoystickComponent>() != null ||
            objectValue.component<TouchButtonComponent>() != null -> WorldLayerKind.UI
        objectValue.component<DirectionalLightComponent>() != null ||
            objectValue.component<CameraComponent>() != null -> WorldLayerKind.LIGHTING
        objectValue.component<EditableMeshComponent>() != null ||
            objectValue.component<MeshRendererComponent>() != null -> WorldLayerKind.GEOMETRY
        else -> WorldLayerKind.GEOMETRY
    }
    return layers.firstOrNull { it.kind == kind }?.id
        ?: layers.firstOrNull()?.id
        ?: WORLD_LAYER_GEOMETRY_ID
}

private fun colorForWorldLayerKind(kind: WorldLayerKind): Long = when (kind) {
    WorldLayerKind.SURFACE -> 0xFFB48A5A
    WorldLayerKind.GEOMETRY -> 0xFF6FA7D8
    WorldLayerKind.VOLUME -> 0xFF9A72D6
    WorldLayerKind.GAMEPLAY -> 0xFF67C996
    WorldLayerKind.LIGHTING -> 0xFFF1C56C
    WorldLayerKind.UI -> 0xFFE07EA7
    WorldLayerKind.CUSTOM -> 0xFF8D63D7
}
