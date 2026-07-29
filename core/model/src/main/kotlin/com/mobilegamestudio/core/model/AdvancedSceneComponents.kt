package com.mobilegamestudio.core.model

import java.util.UUID
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
@SerialName("rigid-body")
data class RigidBodyComponent(
    override val componentId: String = UUID.randomUUID().toString(),
    override val enabled: Boolean = true,
    val bodyType: RigidBodyType = RigidBodyType.DYNAMIC,
    val massKg: Float = 1f,
    val friction: Float = 0.7f,
    val restitution: Float = 0.05f,
    val linearDamping: Float = 0.08f,
    val angularDamping: Float = 0.12f,
    val continuousCollisionDetection: Boolean = true,
    val collisionLayer: Int = 1,
    val collisionMask: Int = -1,
) : SceneComponent

@Serializable
enum class RigidBodyType { STATIC, KINEMATIC, DYNAMIC }

@Serializable
@SerialName("vehicle-part")
data class VehiclePartComponent(
    override val componentId: String = UUID.randomUUID().toString(),
    override val enabled: Boolean = true,
    val vehicleObjectId: String,
    val role: VehiclePartRole,
    val localPosition: Vector3,
    val localRotationEulerDegrees: Vector3 = Vector3.ZERO,
    val hingeAxis: Vector3 = Vector3(0f, 1f, 0f),
    val closedAngleDegrees: Float = 0f,
    val openAngleDegrees: Float = -68f,
    val interactionRangeMeters: Float = 2.4f,
) : SceneComponent

@Serializable
enum class VehiclePartRole { DRIVER_DOOR, PASSENGER_DOOR, HOOD, TRUNK, WHEEL, STEERING_WHEEL }

/**
 * Non-destructive mesh editing. The source GLB remains intact and every
 * operation can be toggled/reordered without corrupting the imported asset.
 */
@Serializable
@SerialName("mesh-modifier-stack")
data class MeshModifierStackComponent(
    override val componentId: String = UUID.randomUUID().toString(),
    override val enabled: Boolean = true,
    val modifiers: List<MeshModifier> = emptyList(),
) : SceneComponent

@Serializable
data class MeshModifier(
    val id: String = UUID.randomUUID().toString(),
    val type: MeshModifierType,
    val enabled: Boolean = true,
    val amount: Float = 0f,
    val axis: Vector3 = Vector3(0f, 1f, 0f),
    val targetNodeName: String? = null,
)

@Serializable
enum class MeshModifierType {
    SCALE_AXIS,
    OFFSET,
    ROTATE,
    MIRROR,
    RECALCULATE_NORMALS,
    WELD_VERTICES,
    SIMPLIFY,
}

@Serializable
@SerialName("pbr-material")
data class PbrMaterialComponent(
    override val componentId: String = UUID.randomUUID().toString(),
    override val enabled: Boolean = true,
    val materialId: String = "default",
    val targetSlot: String? = null,
    val baseColorArgb: Long = 0xFFFFFFFF,
    val baseColorTextureAssetId: String? = null,
    val normalTextureAssetId: String? = null,
    val metallicRoughnessTextureAssetId: String? = null,
    val occlusionTextureAssetId: String? = null,
    val emissiveTextureAssetId: String? = null,
    val metallic: Float = 0f,
    val roughness: Float = 0.65f,
    val normalStrength: Float = 1f,
    val occlusionStrength: Float = 1f,
    val emissiveStrength: Float = 0f,
    val textureScale: Vector3 = Vector3.ONE,
    val doubleSided: Boolean = false,
    val alphaMode: MaterialAlphaMode = MaterialAlphaMode.OPAQUE,
) : SceneComponent

@Serializable
enum class MaterialAlphaMode { OPAQUE, MASK, BLEND }

@Serializable
@SerialName("animation-pack")
data class AnimationPackComponent(
    override val componentId: String = UUID.randomUUID().toString(),
    override val enabled: Boolean = true,
    val sourceAssetId: String,
    val skeletonRoot: String? = null,
    val clipMappings: List<AnimationClipMapping> = emptyList(),
    val retargetProfile: HumanoidRetargetProfile = HumanoidRetargetProfile(),
    val rootMotion: Boolean = false,
) : SceneComponent

@Serializable
data class AnimationClipMapping(
    val sourceClip: String,
    val stateName: String,
    val playbackSpeed: Float = 1f,
    val loop: Boolean = true,
)

@Serializable
data class HumanoidRetargetProfile(
    val hips: String = "Hips",
    val spine: String = "Spine",
    val head: String = "Head",
    val leftArm: String = "LeftArm",
    val rightArm: String = "RightArm",
    val leftLeg: String = "LeftLeg",
    val rightLeg: String = "RightLeg",
    val scaleCompensation: Float = 1f,
)

@Serializable
@SerialName("vegetation-spawner")
data class VegetationSpawnerComponent(
    override val componentId: String = UUID.randomUUID().toString(),
    override val enabled: Boolean = true,
    /** Empty uses the built-in crossed-blade grass mesh. */
    val modelAssetIds: List<String> = emptyList(),
    val densityPerSquareMeter: Float = 0.04f,
    val maxInstances: Int = 500,
    val seed: Int = 42,
    val minScale: Float = 0.75f,
    val maxScale: Float = 1.35f,
    val minSlopeDegrees: Float = 0f,
    val maxSlopeDegrees: Float = 34f,
    val minNormalizedHeight: Float = 0f,
    val maxNormalizedHeight: Float = 1f,
    val alignToSurface: Boolean = true,
    val collisionEnabled: Boolean = false,
    val lodDistancesMeters: List<Float> = listOf(24f, 55f, 100f),
) : SceneComponent
