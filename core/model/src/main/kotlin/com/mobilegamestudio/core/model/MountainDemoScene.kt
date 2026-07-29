package com.mobilegamestudio.core.model

/**
 * Kept under the legacy type name for storage/API compatibility. The visible
 * sample is the Open World Starter and no longer contains Mountain Demo data.
 */
object MountainDemoScene {
    const val SCENE_ID = "open-world-starter"
    const val SCENE_FILE = "scenes/open-world.scene.json"
    const val MODEL_ASSET_ID = "viper-acr"
    const val MODEL_PATH = "assets/models/viper-acr.glb"
    const val CHARACTER_ASSET_ID = "fox-character"
    const val CHARACTER_MODEL_PATH = "assets/models/fox-character.glb"
    const val SCRIPT_PATH = "scripts/lua/open_world_controller.lua"
    const val GRAPH_PATH = "visual-graphs/player_controls.graph.json"
    const val TEMPLATE_VERSION_TAG = "open-world-template-v5"

    fun create(now: Long): SceneDocument {
        val terrain = GameObject(
            id = "open-world-terrain",
            name = "Semi-arid Open World",
            tags = setOf("world", "terrain"),
            components = listOf(
                TransformComponent(),
                TerrainPresets.openWorld(resolution = 65, seed = 2048),
                ColliderComponent(size = Vector3(180f, 10f, 180f)),
                VegetationSpawnerComponent(
                    densityPerSquareMeter = 0.012f,
                    maxInstances = 320,
                    seed = 2009,
                    minScale = 0.45f,
                    maxScale = 1.15f,
                    maxSlopeDegrees = 24f,
                ),
            ),
        )
        val car = GameObject(
            id = "starter-car",
            name = "2009 Dodge Viper ACR",
            tags = setOf("vehicle", "starter-viper", TEMPLATE_VERSION_TAG),
            components = listOf(
                // glTF stores the converted asset in a Y-up coordinate system.
                // Keep it level here; applying another Z-up conversion makes
                // the car stand on its rear bumper.
                TransformComponent(
                    position = Vector3(3.5f, 4.4f, 1f),
                    rotationEulerDegrees = Vector3(0f, 0f, 0f),
                    scale = Vector3(1f, 1f, 1f),
                ),
                MeshRendererComponent(assetId = MODEL_ASSET_ID, colorArgb = 0xFFD31E2B),
                MeshModifierStackComponent(
                    modifiers = listOf(
                        MeshModifier(
                            type = MeshModifierType.SCALE_AXIS,
                            // The renderer normalizes imported unit systems.
                            // Restore the Viper's 4.48 m authored length on the
                            // visible mesh without multiplying its metre-based
                            // collider, wheelbase or suspension coordinates.
                            axis = Vector3(1f, 1f, 1f),
                            amount = 3.48f,
                        ),
                        MeshModifier(type = MeshModifierType.RECALCULATE_NORMALS),
                    ),
                ),
                PbrMaterialComponent(
                    materialId = "viper-body",
                    targetSlot = "OEMPaint",
                    baseColorArgb = 0xFFD31524,
                    metallic = 0.72f,
                    roughness = 0.24f,
                ),
                ColliderComponent(size = Vector3(1.92f, 1.22f, 4.46f)),
                RigidBodyComponent(
                    massKg = 1_546f,
                    friction = 1.08f,
                    restitution = 0.03f,
                    linearDamping = 0.04f,
                    angularDamping = 0.16f,
                ),
                VehicleControllerComponent(
                    massKg = 1_546f,
                    enginePowerKw = 447f,
                    maxTorqueNm = 760f,
                    topSpeedKph = 285f,
                    driveType = VehicleDriveType.REAR_WHEEL_DRIVE,
                    gearboxRatios = listOf(2.66f, 1.78f, 1.30f, 1f, 0.74f, 0.50f),
                    finalDriveRatio = 3.07f,
                    brakeForce = 15_500f,
                    handbrakeForce = 10_000f,
                    maxSteeringDegrees = 30f,
                    tireGrip = 1.18f,
                    lateralGrip = 1.22f,
                    wheelBaseMeters = 2.51f,
                    trackWidthMeters = 1.55f,
                    wheelRadiusMeters = 0.34f,
                    wheels = VehicleWheelDefinition.standardLayout(
                        wheelBase = 2.51f,
                        trackWidth = 1.55f,
                        radius = 0.34f,
                        rearWheelDrive = true,
                    ),
                    suspensionTravelMeters = 0.13f,
                    suspensionStiffness = 46_000f,
                    suspensionDamping = 5_800f,
                    dragCoefficient = 0.38f,
                    frontalAreaSquareMeters = 1.94f,
                    downforceCoefficient = 0.31f,
                    redlineRpm = 6_250f,
                ),
            ),
        )
        val driverDoor = GameObject(
            id = "starter-car-driver-door",
            name = "Driver Door",
            parentId = car.id,
            tags = setOf("vehicle-door", "interactable"),
            components = listOf(
                TransformComponent(
                    position = Vector3(4.52f, 4.75f, 1f),
                    scale = Vector3(0.08f, 0.9f, 1.25f),
                ),
                MeshRendererComponent(primitive = PrimitiveMesh.CUBE, colorArgb = 0xFF7D2028),
                ColliderComponent(size = Vector3(0.12f, 0.9f, 1.25f)),
                VehiclePartComponent(
                    vehicleObjectId = car.id,
                    role = VehiclePartRole.DRIVER_DOOR,
                    localPosition = Vector3(1.02f, 0.35f, 0f),
                    openAngleDegrees = -68f,
                ),
            ),
        )
        val player = GameObject(
            id = "fps-player",
            name = "First Person Player",
            tags = setOf("player", "animated"),
            components = listOf(
                TransformComponent(position = Vector3(0f, 4.4f, 5f), scale = Vector3(1.8f, 1.8f, 1.8f)),
                MeshRendererComponent(assetId = CHARACTER_ASSET_ID, colorArgb = 0xFFFFFFFF),
                CharacterControllerComponent(
                    cameraMode = CharacterCameraMode.FIRST_PERSON,
                    cameraDistance = 0f,
                    movementSpeed = 5.5f,
                    jumpForce = 7f,
                    lookSensitivity = 0.7f,
                ),
                AnimationControllerComponent(
                    defaultClip = "Walk",
                    availableClips = listOf("Survey", "Walk", "Run"),
                ),
                AnimationPackComponent(
                    sourceAssetId = CHARACTER_ASSET_ID,
                    clipMappings = listOf(
                        AnimationClipMapping("Survey", "Idle"),
                        AnimationClipMapping("Walk", "Walk"),
                        AnimationClipMapping("Run", "Run"),
                    ),
                ),
                ColliderComponent(shape = ColliderShape.CAPSULE, size = Vector3(0.8f, 1.8f, 0.8f)),
                LuaScriptComponent(relativePath = SCRIPT_PATH),
                VisualGraphComponent(relativePath = GRAPH_PATH),
            ),
        )
        val camera = GameObject(
            id = "fps-camera",
            name = "FPS Camera",
            parentId = player.id,
            components = listOf(
                TransformComponent(position = Vector3(0f, 1.65f, 0f)),
                CameraComponent(fieldOfViewDegrees = 72f, nearPlane = 0.03f, farPlane = 750f),
            ),
        )
        val light = GameObject(
            id = "open-world-sun",
            name = "Warm Sun",
            components = listOf(
                TransformComponent(rotationEulerDegrees = Vector3(-52f, -28f, 0f)),
                DirectionalLightComponent(intensityLux = 92_000f, colorArgb = 0xFFFFE4BE),
            ),
        )
        val joystick = GameObject(
            id = "movement-joystick",
            name = "Movement Joystick",
            tags = setOf("ui", "input"),
            components = listOf(TransformComponent(), VirtualJoystickComponent(eventPrefix = "move")),
        )
        val jump = GameObject(
            id = "jump-button",
            name = "Jump Button",
            tags = setOf("ui", "input"),
            components = listOf(
                TransformComponent(),
                TouchButtonComponent(label = "PULAR", eventName = "jump", normalizedX = 0.86f, normalizedY = 0.75f),
            ),
        )
        val handbrake = GameObject(
            id = "handbrake-button",
            name = "Vehicle Handbrake",
            tags = setOf("ui", "input", "vehicle-only"),
            components = listOf(
                TransformComponent(),
                TouchButtonComponent(
                    label = "FREIO",
                    eventName = "vehicle.handbrake",
                    normalizedX = 0.54f,
                    normalizedY = 0.75f,
                ),
            ),
        )
        val interact = GameObject(
            id = "vehicle-interact-button",
            name = "Enter Exit Vehicle",
            tags = setOf("ui", "input"),
            components = listOf(
                TransformComponent(),
                TouchButtonComponent(
                    label = "ENTRAR / SAIR",
                    eventName = "interact.vehicle",
                    normalizedX = 0.74f,
                    normalizedY = 0.75f,
                ),
            ),
        )
        val doorButton = GameObject(
            id = "door-interact-button",
            name = "Open Close Door",
            tags = setOf("ui", "input"),
            components = listOf(
                TransformComponent(),
                TouchButtonComponent(
                    label = "PORTA",
                    eventName = "interact.door",
                    normalizedX = 0.64f,
                    normalizedY = 0.75f,
                ),
            ),
        )
        val objects = listOf(
            terrain,
            car,
            driverDoor,
            player,
            camera,
            light,
            joystick,
            doorButton,
            interact,
            handbrake,
            jump,
        )
        val consistent = objects.map {
            when (it.id) {
                player.id -> it.copy(children = listOf(camera.id))
                car.id -> it.copy(children = listOf(driverDoor.id))
                else -> it
            }
        }
        return SceneDocument(
            sceneId = SCENE_ID,
            name = "Open World Starter",
            rootObjects = consistent.filter { it.parentId == null }.map(GameObject::id),
            objects = consistent,
            editorSettings = EditorSettings(
                cameraOrbit = Vector3(32f, 24f, 38f),
                cameraTarget = Vector3(0f, 3.5f, 0f),
                selectedObjectId = terrain.id,
            ),
            metadata = SceneMetadata(1, now, now),
        )
    }

    fun graph(): VisualGraphDocument = VisualGraphDocument(
        graphId = "player-controls",
        name = "Player Controls",
        nodes = listOf(
            VisualNode(
                id = "jump-event",
                type = VisualNodeType.ON_BUTTON_PRESSED,
                definitionId = "event.input.button_pressed",
                textValue = "jump",
                positionX = 80f,
                positionY = 100f,
            ),
            VisualNode(
                id = "jump-action",
                type = VisualNodeType.CATALOG,
                definitionId = "world.character_jump",
                objectId = "fps-player",
                objectName = "First Person Player",
                positionX = 350f,
                positionY = 100f,
            ),
            VisualNode(
                id = "walk-animation",
                type = VisualNodeType.CATALOG,
                definitionId = "animation.play",
                objectId = "fps-player",
                objectName = "First Person Player",
                textValue = "Walk",
                positionX = 620f,
                positionY = 100f,
            ),
        ),
        connections = listOf(
            VisualConnection("jump-event", "jump-action", "flow", "flowIn"),
            VisualConnection("jump-action", "walk-animation", "flow", "flowIn"),
        ),
    )

    const val LUA_SOURCE = """
local player = Scene:GetObject("First Person Player")

Scene:OnEvent("jump", function()
    Log.info("Jump requested by the mobile control")
end)

Scene:OnEvent("move.axis", function(value)
    Log.info("Movement axis received")
end)
"""
}
