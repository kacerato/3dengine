package com.mobilegamestudio.core.model

import java.util.UUID
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

const val CURRENT_SCENE_SCHEMA_VERSION = 1

@Serializable
data class Vector3(
    val x: Float = 0f,
    val y: Float = 0f,
    val z: Float = 0f,
) {
    fun isFinite(): Boolean = x.isFinite() && y.isFinite() && z.isFinite()

    companion object {
        val ZERO = Vector3()
        val ONE = Vector3(1f, 1f, 1f)
    }
}

@Serializable
data class SceneDocument(
    val schemaVersion: Int = CURRENT_SCENE_SCHEMA_VERSION,
    val sceneId: String,
    val name: String,
    val rootObjects: List<String>,
    val objects: List<GameObject>,
    val editorSettings: EditorSettings = EditorSettings(),
    val metadata: SceneMetadata = SceneMetadata(),
)

@Serializable
data class SceneMetadata(
    val revision: Long = 1,
    val createdAtEpochMillis: Long = 0,
    val updatedAtEpochMillis: Long = 0,
)

@Serializable
data class EditorSettings(
    val cameraOrbit: Vector3 = Vector3(6f, 5f, 8f),
    val cameraTarget: Vector3 = Vector3.ZERO,
    val selectedObjectId: String? = null,
    val gridVisible: Boolean = true,
)

@Serializable
data class GameObject(
    val id: String,
    val name: String,
    val enabled: Boolean = true,
    val parentId: String? = null,
    val children: List<String> = emptyList(),
    val tags: Set<String> = emptySet(),
    val components: List<SceneComponent> = listOf(TransformComponent()),
) {
    inline fun <reified T : SceneComponent> component(): T? = components.filterIsInstance<T>().firstOrNull()
}

@Serializable
sealed interface SceneComponent {
    val componentId: String
    val enabled: Boolean
}

@Serializable
@SerialName("transform")
data class TransformComponent(
    override val componentId: String = newComponentId(),
    override val enabled: Boolean = true,
    val position: Vector3 = Vector3.ZERO,
    val rotationEulerDegrees: Vector3 = Vector3.ZERO,
    val scale: Vector3 = Vector3.ONE,
) : SceneComponent

@Serializable
@SerialName("camera")
data class CameraComponent(
    override val componentId: String = newComponentId(),
    override val enabled: Boolean = true,
    val fieldOfViewDegrees: Float = 60f,
    val nearPlane: Float = 0.05f,
    val farPlane: Float = 500f,
    val isMain: Boolean = true,
) : SceneComponent

@Serializable
@SerialName("directional-light")
data class DirectionalLightComponent(
    override val componentId: String = newComponentId(),
    override val enabled: Boolean = true,
    val intensityLux: Float = 75_000f,
    val colorArgb: Long = 0xFFFFFFFF,
    val castShadows: Boolean = true,
) : SceneComponent

@Serializable
@SerialName("mesh-renderer")
data class MeshRendererComponent(
    override val componentId: String = newComponentId(),
    override val enabled: Boolean = true,
    val primitive: PrimitiveMesh? = null,
    val assetId: String? = null,
    val colorArgb: Long = 0xFF6AA6A1,
    val castShadows: Boolean = true,
    val materialSlotOverrides: Map<String, String> = emptyMap(),
) : SceneComponent

@Serializable
enum class PrimitiveMesh {
    CUBE,
    PLANE,
}

@Serializable
@SerialName("collider")
data class ColliderComponent(
    override val componentId: String = newComponentId(),
    override val enabled: Boolean = true,
    val shape: ColliderShape = ColliderShape.BOX,
    val size: Vector3 = Vector3.ONE,
    val isTrigger: Boolean = false,
) : SceneComponent

@Serializable
@SerialName("vehicle-controller")
data class VehicleControllerComponent(
    override val componentId: String = newComponentId(),
    override val enabled: Boolean = true,
    val massKg: Float = 1180f,
    val enginePowerKw: Float = 66f,
    val maxTorqueNm: Float = 135f,
    val topSpeedKph: Float = 150f,
    val driveType: VehicleDriveType = VehicleDriveType.FRONT_WHEEL_DRIVE,
    val gearboxRatios: List<Float> = listOf(3.55f, 1.96f, 1.28f, 0.89f, 0.72f),
    val finalDriveRatio: Float = 4.1f,
    val brakeForce: Float = 9_000f,
    val handbrakeForce: Float = 7_500f,
    val maxSteeringDegrees: Float = 32f,
    val tireGrip: Float = 1.05f,
    val lateralGrip: Float = 1.08f,
    val tractionControl: Float = 0.7f,
    val antiLockBrakes: Float = 0.75f,
    val stabilityAssist: Float = 0.55f,
    val steeringResponse: Float = 7.5f,
    val wheelBaseMeters: Float = 2.42f,
    val trackWidthMeters: Float = 1.46f,
    val wheelRadiusMeters: Float = 0.31f,
    val wheels: List<VehicleWheelDefinition> = VehicleWheelDefinition.standardLayout(),
    val suspensionTravelMeters: Float = 0.18f,
    val suspensionStiffness: Float = 32_000f,
    val suspensionDamping: Float = 4_200f,
    val dragCoefficient: Float = 0.34f,
    val frontalAreaSquareMeters: Float = 2.05f,
    val downforceCoefficient: Float = 0.08f,
    val rollingResistance: Float = 0.015f,
    val drivetrainEfficiency: Float = 0.86f,
    val reverseGearRatio: Float = 3.2f,
    val idleRpm: Float = 850f,
    val redlineRpm: Float = 6_500f,
    val automaticTransmission: Boolean = true,
    val centerOfMassOffset: Vector3 = Vector3(0f, -0.32f, 0.08f),
) : SceneComponent

@Serializable
data class VehicleWheelDefinition(
    val id: String,
    val localPosition: Vector3,
    val radiusMeters: Float = 0.31f,
    val widthMeters: Float = 0.22f,
    val steerable: Boolean = false,
    val driven: Boolean = false,
    val handbrake: Boolean = false,
    val suspensionTravelMeters: Float = 0.18f,
    val springStrength: Float = 32_000f,
    val damping: Float = 4_200f,
) {
    companion object {
        fun standardLayout(
            wheelBase: Float = 2.42f,
            trackWidth: Float = 1.46f,
            radius: Float = 0.31f,
            rearWheelDrive: Boolean = false,
        ): List<VehicleWheelDefinition> {
            val halfWheelBase = wheelBase * 0.5f
            val halfTrack = trackWidth * 0.5f
            return listOf(
                VehicleWheelDefinition("front-left", Vector3(-halfTrack, 0f, halfWheelBase), radius, steerable = true, driven = !rearWheelDrive),
                VehicleWheelDefinition("front-right", Vector3(halfTrack, 0f, halfWheelBase), radius, steerable = true, driven = !rearWheelDrive),
                VehicleWheelDefinition("rear-left", Vector3(-halfTrack, 0f, -halfWheelBase), radius, driven = rearWheelDrive, handbrake = true),
                VehicleWheelDefinition("rear-right", Vector3(halfTrack, 0f, -halfWheelBase), radius, driven = rearWheelDrive, handbrake = true),
            )
        }
    }
}

@Serializable
enum class VehicleDriveType {
    FRONT_WHEEL_DRIVE,
    REAR_WHEEL_DRIVE,
    ALL_WHEEL_DRIVE,
}

@Serializable
enum class ColliderShape {
    BOX,
    SPHERE,
    CAPSULE,
}

@Serializable
@SerialName("lua-script")
data class LuaScriptComponent(
    override val componentId: String = newComponentId(),
    override val enabled: Boolean = true,
    val relativePath: String,
) : SceneComponent

@Serializable
@SerialName("visual-graph")
data class VisualGraphComponent(
    override val componentId: String = newComponentId(),
    override val enabled: Boolean = true,
    val relativePath: String,
) : SceneComponent

@Serializable
@SerialName("touch-button")
data class TouchButtonComponent(
    override val componentId: String = newComponentId(),
    override val enabled: Boolean = true,
    val label: String = "ACTION",
    val eventName: String = "action",
    val normalizedX: Float = 0.86f,
    val normalizedY: Float = 0.78f,
) : SceneComponent

@Serializable
@SerialName("virtual-joystick")
data class VirtualJoystickComponent(
    override val componentId: String = newComponentId(),
    override val enabled: Boolean = true,
    val eventPrefix: String = "move",
    val normalizedX: Float = 0.16f,
    val normalizedY: Float = 0.78f,
    val radius: Float = 0.12f,
    val deadZone: Float = 0.12f,
) : SceneComponent

@Serializable
@SerialName("character-controller")
data class CharacterControllerComponent(
    override val componentId: String = newComponentId(),
    override val enabled: Boolean = true,
    val movementSpeed: Float = 5f,
    val sprintMultiplier: Float = 1.7f,
    val jumpForce: Float = 6.5f,
    val gravity: Float = 18f,
    val stepHeight: Float = 0.35f,
    val slopeLimitDegrees: Float = 48f,
    val cameraMode: CharacterCameraMode = CharacterCameraMode.THIRD_PERSON,
    val cameraDistance: Float = 4.5f,
    val cameraHeight: Float = 1.65f,
    val lookSensitivity: Float = 0.65f,
)
    : SceneComponent

@Serializable
@SerialName("animation-controller")
data class AnimationControllerComponent(
    override val componentId: String = newComponentId(),
    override val enabled: Boolean = true,
    val defaultClip: String = "Idle",
    val availableClips: List<String> = listOf("Idle", "Walk", "Run"),
    val playbackSpeed: Float = 1f,
    val loop: Boolean = true,
    val transitionSeconds: Float = 0.18f,
) : SceneComponent

@Serializable
enum class CharacterCameraMode {
    FIRST_PERSON,
    THIRD_PERSON,
    TOP_DOWN,
}

@Serializable
data class AssetRecord(
    val id: String,
    val displayName: String,
    val relativePath: String,
    val mediaType: String,
    val sizeBytes: Long,
    val sha256: String,
    val importedAtEpochMillis: Long,
    val animationClips: List<String> = emptyList(),
    val materialSlots: List<String> = emptyList(),
)

@Serializable
data class VisualGraphDocument(
    val schemaVersion: Int = 2,
    val graphId: String,
    val name: String,
    val nodes: List<VisualNode>,
    val connections: List<VisualConnection>,
)

@Serializable
data class VisualNode(
    val id: String,
    val type: VisualNodeType,
    val definitionId: String? = null,
    val objectId: String? = null,
    val objectName: String? = null,
    val numberValue: Float? = null,
    val textValue: String? = null,
    val positionX: Float = 0f,
    val positionY: Float = 0f,
    val values: Map<String, String> = emptyMap(),
)

@Serializable
enum class VisualNodeType {
    ON_START,
    ON_TOUCH,
    ON_BUTTON_PRESSED,
    ROTATE_OBJECT,
    SET_SCALE,
    PRINT_LOG,
    SEQUENCE,
    CATALOG,
}

@Serializable
data class VisualConnection(
    val fromNodeId: String,
    val toNodeId: String,
    val fromPortId: String = "flow",
    val toPortId: String = "flow",
)

enum class EditorMode {
    EDITOR,
    PLAY,
    PAUSED,
}

private fun newComponentId(): String = UUID.randomUUID().toString()
