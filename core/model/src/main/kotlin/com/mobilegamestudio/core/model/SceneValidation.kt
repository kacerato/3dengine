package com.mobilegamestudio.core.model

object SceneValidator {
    private val safeId = Regex("[A-Za-z0-9][A-Za-z0-9_-]{0,63}")

    fun validate(document: SceneDocument): List<SceneValidationError> {
        val errors = mutableListOf<SceneValidationError>()
        if (document.schemaVersion != CURRENT_SCENE_SCHEMA_VERSION) {
            errors += SceneValidationError.UnsupportedSchema(document.schemaVersion)
        }
        if (!safeId.matches(document.sceneId)) errors += SceneValidationError.InvalidId(document.sceneId)
        if (document.name.isBlank() || document.name.length > 64) {
            errors += SceneValidationError.InvalidName(document.sceneId)
        }
        if (document.metadata.revision < 1 || document.metadata.revision == Long.MAX_VALUE) {
            errors += SceneValidationError.InvalidRevision
        }
        if (document.objects.size > MAX_OBJECTS) errors += SceneValidationError.TooManyObjects

        val grouped = document.objects.groupBy(GameObject::id)
        grouped.filterValues { it.size > 1 }.keys.forEach { errors += SceneValidationError.DuplicateId(it) }
        val byId = grouped.mapValues { it.value.first() }
        val allComponentIds = document.objects.flatMap { it.components }.map(SceneComponent::componentId)
        allComponentIds.groupingBy { it }.eachCount().filterValues { it > 1 }.keys.forEach {
            errors += SceneValidationError.DuplicateComponentId(it)
        }
        val rootSet = document.rootObjects.toSet()
        if (rootSet.size != document.rootObjects.size) {
            errors += SceneValidationError.DuplicateRootReference
        }

        document.objects.forEach { objectValue ->
            if (!safeId.matches(objectValue.id)) errors += SceneValidationError.InvalidId(objectValue.id)
            if (objectValue.name.isBlank() || objectValue.name.length > 64) {
                errors += SceneValidationError.InvalidName(objectValue.id)
            }
            if (objectValue.parentId == null && objectValue.id !in rootSet) {
                errors += SceneValidationError.MissingRootReference(objectValue.id)
            }
            if (objectValue.parentId != null && objectValue.id in rootSet) {
                errors += SceneValidationError.RootHasParent(objectValue.id)
            }
            objectValue.parentId?.let { parentId ->
                val parent = byId[parentId]
                if (parent == null) errors += SceneValidationError.MissingParent(objectValue.id, parentId)
                else if (objectValue.id !in parent.children) {
                    errors += SceneValidationError.ParentChildMismatch(objectValue.id, parentId)
                }
            }
            if (objectValue.children.distinct().size != objectValue.children.size) {
                errors += SceneValidationError.DuplicateChildReference(objectValue.id)
            }
            objectValue.children.forEach { childId ->
                val child = byId[childId]
                if (child == null) errors += SceneValidationError.MissingChild(objectValue.id, childId)
                else if (child.parentId != objectValue.id) {
                    errors += SceneValidationError.ParentChildMismatch(childId, objectValue.id)
                }
            }
            validateComponents(objectValue, errors)
        }
        document.rootObjects.filterNot(byId::containsKey).forEach {
            errors += SceneValidationError.MissingRootObject(it)
        }
        detectCycles(document.objects, byId, errors)
        return errors.distinct()
    }

    private fun validateComponents(
        objectValue: GameObject,
        errors: MutableList<SceneValidationError>,
    ) {
        if (objectValue.components.size > MAX_COMPONENTS_PER_OBJECT) {
            errors += SceneValidationError.TooManyComponents(objectValue.id)
        }
        val componentIds = objectValue.components.map(SceneComponent::componentId)
        if (componentIds.distinct().size != componentIds.size) {
            errors += SceneValidationError.DuplicateComponent(objectValue.id)
        }
        if (objectValue.components.count { it is TransformComponent } != 1) {
            errors += SceneValidationError.InvalidTransformCount(objectValue.id)
        }
        objectValue.components.forEach { component ->
            if (!safeId.matches(component.componentId)) {
                errors += SceneValidationError.InvalidComponent(objectValue.id, component.componentId)
            }
            when (component) {
                is TransformComponent -> if (
                    !component.position.isFinite() ||
                    !component.rotationEulerDegrees.isFinite() ||
                    !component.scale.isFinite() ||
                    component.scale.x == 0f ||
                    component.scale.y == 0f ||
                    component.scale.z == 0f
                ) errors += SceneValidationError.InvalidTransform(objectValue.id)
                is CameraComponent -> if (
                    !component.fieldOfViewDegrees.isFinite() ||
                    component.fieldOfViewDegrees !in 1f..179f ||
                    !component.nearPlane.isFinite() ||
                    !component.farPlane.isFinite() ||
                    component.nearPlane <= 0f ||
                    component.farPlane <= component.nearPlane
                ) errors += SceneValidationError.InvalidComponent(objectValue.id, component.componentId)
                is DirectionalLightComponent -> if (
                    !component.intensityLux.isFinite() || component.intensityLux !in 0f..200_000f
                ) errors += SceneValidationError.InvalidComponent(objectValue.id, component.componentId)
                is ColliderComponent -> if (!component.size.isFinite() || component.size.min() <= 0f) {
                    errors += SceneValidationError.InvalidComponent(objectValue.id, component.componentId)
                }
                is VehicleControllerComponent -> if (
                    component.massKg !in 100f..20_000f ||
                    component.enginePowerKw !in 1f..2_000f ||
                    component.maxTorqueNm !in 1f..10_000f ||
                    component.topSpeedKph !in 1f..600f ||
                    component.gearboxRatios.isEmpty() ||
                    component.gearboxRatios.any { !it.isFinite() || it <= 0f } ||
                    component.finalDriveRatio !in 0.1f..12f ||
                    component.brakeForce <= 0f ||
                    component.handbrakeForce <= 0f ||
                    component.maxSteeringDegrees !in 1f..70f ||
                    component.tireGrip !in 0.05f..5f ||
                    component.lateralGrip !in 0.05f..5f ||
                    component.tractionControl !in 0f..1f ||
                    component.antiLockBrakes !in 0f..1f ||
                    component.stabilityAssist !in 0f..1f ||
                    component.steeringResponse !in 0.1f..30f ||
                    component.wheelBaseMeters !in 0.5f..12f ||
                    component.trackWidthMeters !in 0.4f..6f ||
                    component.wheelRadiusMeters !in 0.05f..2f ||
                    component.wheels.size !in 2..12 ||
                    component.wheels.map { it.id }.distinct().size != component.wheels.size ||
                    component.wheels.any {
                        it.id.isBlank() ||
                            !it.localPosition.isFinite() ||
                            it.radiusMeters !in 0.05f..2f ||
                            it.widthMeters !in 0.03f..1.5f ||
                            it.suspensionTravelMeters !in 0.01f..1.5f ||
                            it.springStrength <= 0f ||
                            it.damping < 0f
                    } ||
                    component.suspensionTravelMeters !in 0.01f..1.5f ||
                    component.suspensionStiffness <= 0f ||
                    component.suspensionDamping < 0f ||
                    component.dragCoefficient !in 0f..3f ||
                    component.frontalAreaSquareMeters !in 0.2f..20f ||
                    component.downforceCoefficient !in 0f..5f ||
                    component.rollingResistance !in 0f..0.5f ||
                    component.drivetrainEfficiency !in 0.1f..1f ||
                    component.reverseGearRatio !in 0.1f..12f ||
                    component.idleRpm !in 300f..3_000f ||
                    component.redlineRpm !in 2_000f..20_000f ||
                    component.redlineRpm <= component.idleRpm ||
                    !component.centerOfMassOffset.isFinite()
                ) errors += SceneValidationError.InvalidComponent(objectValue.id, component.componentId)
                is MeshRendererComponent -> if ((component.primitive == null) == (component.assetId == null)) {
                    errors += SceneValidationError.InvalidComponent(objectValue.id, component.componentId)
                }
                is LuaScriptComponent -> if (!SafeProjectPath.isValidRelativePath(component.relativePath)) {
                    errors += SceneValidationError.InvalidComponent(objectValue.id, component.componentId)
                }
                is VisualGraphComponent -> if (!SafeProjectPath.isValidRelativePath(component.relativePath)) {
                    errors += SceneValidationError.InvalidComponent(objectValue.id, component.componentId)
                }
                is TouchButtonComponent -> if (
                    component.label.isBlank() ||
                    component.eventName.isBlank() ||
                    component.normalizedX !in 0f..1f ||
                    component.normalizedY !in 0f..1f
                ) errors += SceneValidationError.InvalidComponent(objectValue.id, component.componentId)
                is VirtualJoystickComponent -> if (
                    component.eventPrefix.isBlank() ||
                    component.normalizedX !in 0f..1f ||
                    component.normalizedY !in 0f..1f ||
                    component.radius !in 0.03f..0.3f ||
                    component.deadZone !in 0f..0.9f
                ) errors += SceneValidationError.InvalidComponent(objectValue.id, component.componentId)
                is CharacterControllerComponent -> if (
                    component.movementSpeed <= 0f ||
                    component.jumpForce < 0f ||
                    component.gravity <= 0f ||
                    component.slopeLimitDegrees !in 0f..89f ||
                    component.cameraDistance < 0f ||
                    component.lookSensitivity <= 0f
                ) errors += SceneValidationError.InvalidComponent(objectValue.id, component.componentId)
                is AnimationControllerComponent -> if (
                    component.defaultClip.isBlank() ||
                    component.availableClips.isEmpty() ||
                    component.availableClips.any(String::isBlank) ||
                    component.playbackSpeed <= 0f ||
                    component.transitionSeconds !in 0f..10f
                ) errors += SceneValidationError.InvalidComponent(objectValue.id, component.componentId)
                is RigidBodyComponent -> if (
                    component.massKg !in 0.01f..100_000f ||
                    component.friction !in 0f..5f ||
                    component.restitution !in 0f..1f ||
                    component.linearDamping !in 0f..10f ||
                    component.angularDamping !in 0f..10f ||
                    component.collisionLayer == 0
                ) errors += SceneValidationError.InvalidComponent(objectValue.id, component.componentId)
                is VehiclePartComponent -> if (
                    component.vehicleObjectId.isBlank() ||
                    !component.localPosition.isFinite() ||
                    !component.localRotationEulerDegrees.isFinite() ||
                    !component.hingeAxis.isFinite() ||
                    component.interactionRangeMeters !in 0.1f..20f
                ) errors += SceneValidationError.InvalidComponent(objectValue.id, component.componentId)
                is MeshModifierStackComponent -> if (
                    component.modifiers.size > 64 ||
                    component.modifiers.map { it.id }.distinct().size != component.modifiers.size ||
                    component.modifiers.any { !it.amount.isFinite() || !it.axis.isFinite() }
                ) errors += SceneValidationError.InvalidComponent(objectValue.id, component.componentId)
                is PbrMaterialComponent -> if (
                    component.materialId.isBlank() ||
                    component.metallic !in 0f..1f ||
                    component.roughness !in 0f..1f ||
                    component.normalStrength !in 0f..4f ||
                    component.occlusionStrength !in 0f..4f ||
                    component.emissiveStrength !in 0f..100f ||
                    !component.textureScale.isFinite() ||
                    component.textureScale.x <= 0f ||
                    component.textureScale.y <= 0f
                ) errors += SceneValidationError.InvalidComponent(objectValue.id, component.componentId)
                is AnimationPackComponent -> if (
                    component.sourceAssetId.isBlank() ||
                    component.clipMappings.any {
                        it.sourceClip.isBlank() ||
                            it.stateName.isBlank() ||
                            it.playbackSpeed !in 0.01f..10f
                    } ||
                    component.retargetProfile.scaleCompensation !in 0.01f..100f
                ) errors += SceneValidationError.InvalidComponent(objectValue.id, component.componentId)
                is VegetationSpawnerComponent -> if (
                    component.modelAssetIds.any(String::isBlank) ||
                    component.densityPerSquareMeter !in 0f..10f ||
                    component.maxInstances !in 1..20_000 ||
                    component.minScale !in 0.01f..100f ||
                    component.maxScale < component.minScale ||
                    component.minSlopeDegrees !in 0f..90f ||
                    component.maxSlopeDegrees < component.minSlopeDegrees ||
                    component.minNormalizedHeight !in 0f..1f ||
                    component.maxNormalizedHeight < component.minNormalizedHeight ||
                    component.lodDistancesMeters.any { !it.isFinite() || it <= 0f }
                ) errors += SceneValidationError.InvalidComponent(objectValue.id, component.componentId)
                is EditableMeshComponent -> if (
                    component.vertices.isEmpty() ||
                    component.vertices.size > 250_000 ||
                    component.vertices.any { !it.isFinite() } ||
                    component.faces.isEmpty() ||
                    component.faces.size > 250_000 ||
                    component.faces.any { face ->
                        face.vertexIndices.size < 3 ||
                            face.vertexIndices.any { it !in component.vertices.indices }
                    } ||
                    component.selectedVertices.any { it !in component.vertices.indices } ||
                    (component.selectedFace != null && component.selectedFace !in component.faces.indices) ||
                    !component.detailSize.isFinite() ||
                    component.detailSize !in 0.001f..100f
                ) errors += SceneValidationError.InvalidComponent(objectValue.id, component.componentId)
                is VoxelVolumeComponent -> if (
                    component.resolution !in 8..48 ||
                    component.density.size != component.resolution * component.resolution * component.resolution ||
                    component.density.any { !it.isFinite() || it !in 0f..1f } ||
                    !component.size.isFinite() ||
                    component.size.x <= 0f ||
                    component.size.y <= 0f ||
                    component.size.z <= 0f ||
                    !component.isoLevel.isFinite() ||
                    component.isoLevel !in 0.01f..0.99f
                ) errors += SceneValidationError.InvalidComponent(objectValue.id, component.componentId)
                is TerrainComponent -> if (
                    component.resolution !in 9..257 ||
                    component.heights.size != component.resolution * component.resolution ||
                    component.heights.any { !it.isFinite() || it !in 0f..1f } ||
                    component.width <= 0f ||
                    component.maxHeight <= 0f ||
                    component.materialLayers.isEmpty() ||
                    component.materialWeights.size != component.heights.size * component.materialLayers.size ||
                    component.materialWeights.any { !it.isFinite() || it !in 0f..1f } ||
                    (component.authoringMask.isNotEmpty() && component.authoringMask.size != component.heights.size) ||
                    component.authoringMask.any { !it.isFinite() || it !in 0f..1f }
                ) errors += SceneValidationError.InvalidComponent(objectValue.id, component.componentId)
            }
        }
    }

    private fun detectCycles(
        objects: List<GameObject>,
        byId: Map<String, GameObject>,
        errors: MutableList<SceneValidationError>,
    ) {
        val visiting = mutableSetOf<String>()
        val visited = mutableSetOf<String>()
        fun visit(id: String) {
            if (id in visiting) {
                errors += SceneValidationError.Cycle(id)
                return
            }
            if (!visited.add(id)) return
            visiting += id
            byId[id]?.children?.forEach(::visit)
            visiting -= id
        }
        objects.forEach { visit(it.id) }
    }

    private fun Vector3.min(): Float = minOf(x, y, z)

    const val MAX_OBJECTS = 2_000
    const val MAX_COMPONENTS_PER_OBJECT = 16
}

sealed interface SceneValidationError {
    data class UnsupportedSchema(val found: Int) : SceneValidationError
    data class InvalidId(val id: String) : SceneValidationError
    data class InvalidName(val objectId: String) : SceneValidationError
    data object InvalidRevision : SceneValidationError
    data object TooManyObjects : SceneValidationError
    data class TooManyComponents(val id: String) : SceneValidationError
    data class DuplicateId(val id: String) : SceneValidationError
    data object DuplicateRootReference : SceneValidationError
    data class MissingRootReference(val id: String) : SceneValidationError
    data class RootHasParent(val id: String) : SceneValidationError
    data class MissingParent(val id: String, val parentId: String) : SceneValidationError
    data class MissingChild(val id: String, val childId: String) : SceneValidationError
    data class ParentChildMismatch(val childId: String, val parentId: String) : SceneValidationError
    data class DuplicateChildReference(val id: String) : SceneValidationError
    data class MissingRootObject(val id: String) : SceneValidationError
    data class DuplicateComponent(val id: String) : SceneValidationError
    data class DuplicateComponentId(val componentId: String) : SceneValidationError
    data class InvalidTransformCount(val id: String) : SceneValidationError
    data class InvalidTransform(val id: String) : SceneValidationError
    data class InvalidComponent(val id: String, val componentId: String) : SceneValidationError
    data class Cycle(val id: String) : SceneValidationError
}
