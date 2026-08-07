package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.AnimationControllerComponent
import com.mobilegamestudio.core.model.CameraComponent
import com.mobilegamestudio.core.model.CharacterControllerComponent
import com.mobilegamestudio.core.model.ColliderComponent
import com.mobilegamestudio.core.model.ComponentRef
import com.mobilegamestudio.core.model.DirectionalLightComponent
import com.mobilegamestudio.core.model.EngineApiAvailability
import com.mobilegamestudio.core.model.EngineApiParameter
import com.mobilegamestudio.core.model.EngineApiValueType
import com.mobilegamestudio.core.model.GameObject
import com.mobilegamestudio.core.model.LuaScriptComponent
import com.mobilegamestudio.core.model.MeshModifierStackComponent
import com.mobilegamestudio.core.model.MeshRendererComponent
import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.PbrMaterialComponent
import com.mobilegamestudio.core.model.PhysicsQueryFilterComponent
import com.mobilegamestudio.core.model.RigidBodyComponent
import com.mobilegamestudio.core.model.SceneComponent
import com.mobilegamestudio.core.model.SceneDocument
import com.mobilegamestudio.core.model.TerrainComponent
import com.mobilegamestudio.core.model.TouchButtonComponent
import com.mobilegamestudio.core.model.TransformComponent
import com.mobilegamestudio.core.model.VehicleControllerComponent
import com.mobilegamestudio.core.model.VehiclePartComponent
import com.mobilegamestudio.core.model.VegetationSpawnerComponent
import com.mobilegamestudio.core.model.VirtualJoystickComponent
import com.mobilegamestudio.core.model.VisualGraphComponent

/** Read boundary for component lookup. It can be backed by a scene document or a live runtime. */
interface ComponentQueryHost {
    fun objectExists(objectRef: ObjectRef): Boolean
    fun components(objectRef: ObjectRef): List<SceneComponent>
}

/** Immutable scene-backed implementation useful for editor preview and tests. */
class SceneDocumentComponentQueryHost(
    private val documentProvider: () -> SceneDocument?,
) : ComponentQueryHost {
    override fun objectExists(objectRef: ObjectRef): Boolean =
        documentProvider()?.objects?.any { it.id == objectRef.objectId } == true

    override fun components(objectRef: ObjectRef): List<SceneComponent> =
        documentProvider()?.objects?.firstOrNull { it.id == objectRef.objectId }?.components.orEmpty()
}

data class ComponentTypeDescriptor(
    val id: String,
    val title: String,
    val aliases: Set<String> = emptySet(),
    val matches: (SceneComponent) -> Boolean,
) {
    init {
        require(id.isNotBlank())
        require(title.isNotBlank())
    }
}

/** Stable authored type names. No class-name reflection is used for graph semantics. */
class ComponentTypeRegistry(
    descriptors: List<ComponentTypeDescriptor>,
) {
    val descriptors: List<ComponentTypeDescriptor> = descriptors.toList()
    private val byName: Map<String, ComponentTypeDescriptor>

    init {
        require(this.descriptors.map { it.id }.distinct().size == this.descriptors.size) {
            "Component type ids must be unique."
        }
        val pairs = buildList {
            this@ComponentTypeRegistry.descriptors.forEach { descriptor ->
                add(normalize(descriptor.id) to descriptor)
                add(normalize(descriptor.title) to descriptor)
                descriptor.aliases.forEach { alias -> add(normalize(alias) to descriptor) }
            }
        }
        require(pairs.map { it.first }.distinct().size == pairs.size) {
            "Component aliases must be unique."
        }
        byName = pairs.toMap()
    }

    fun resolve(idOrAlias: String): ComponentTypeDescriptor? = byName[normalize(idOrAlias)]

    fun descriptorFor(component: SceneComponent): ComponentTypeDescriptor? =
        descriptors.firstOrNull { it.matches(component) }

    companion object {
        private fun normalize(value: String): String = value.trim().lowercase().replace('-', '_').replace(' ', '_')
    }
}

object BuiltInComponentTypes {
    private fun descriptor(
        id: String,
        title: String,
        aliases: Set<String> = emptySet(),
        matches: (SceneComponent) -> Boolean,
    ) = ComponentTypeDescriptor(id, title, aliases, matches)

    val registry = ComponentTypeRegistry(
        listOf(
            descriptor("transform", "Transform") { it is TransformComponent },
            descriptor("camera", "Camera") { it is CameraComponent },
            descriptor("directional_light", "Directional Light", setOf("light")) { it is DirectionalLightComponent },
            descriptor("mesh_renderer", "Mesh Renderer", setOf("mesh")) { it is MeshRendererComponent },
            descriptor("collider", "Collider") { it is ColliderComponent },
            descriptor("vehicle_controller", "Vehicle Controller", setOf("vehicle")) { it is VehicleControllerComponent },
            descriptor("vehicle_part", "Vehicle Part") { it is VehiclePartComponent },
            descriptor("rigid_body", "Rigid Body", setOf("rigidbody")) { it is RigidBodyComponent },
            descriptor("character_controller", "Character Controller", setOf("character")) { it is CharacterControllerComponent },
            descriptor("animation_controller", "Animation Controller", setOf("animation")) { it is AnimationControllerComponent },
            descriptor("pbr_material", "PBR Material", setOf("material")) { it is PbrMaterialComponent },
            descriptor("mesh_modifier_stack", "Mesh Modifier Stack") { it is MeshModifierStackComponent },
            descriptor("vegetation_spawner", "Vegetation Spawner", setOf("vegetation")) { it is VegetationSpawnerComponent },
            descriptor("terrain", "Terrain") { it is TerrainComponent },
            descriptor("physics_query_filter", "Physics Query Filter") { it is PhysicsQueryFilterComponent },
            descriptor("lua_script", "Lua Script") { it is LuaScriptComponent },
            descriptor("visual_graph", "Visual Graph", setOf("nocode")) { it is VisualGraphComponent },
            descriptor("touch_button", "Touch Button", setOf("button")) { it is TouchButtonComponent },
            descriptor("virtual_joystick", "Virtual Joystick", setOf("joystick")) { it is VirtualJoystickComponent },
        ),
    )
}

data class ComponentSelector(
    val type: String? = null,
    val componentId: String? = null,
    val includeDisabled: Boolean = false,
) {
    init {
        require(!type.isNullOrBlank() || !componentId.isNullOrBlank()) {
            "Component selector requires componentType or componentId."
        }
    }
}

data class ComponentResolution(
    val objectRef: ObjectRef,
    val componentRef: ComponentRef?,
    val component: SceneComponent?,
    val type: ComponentTypeDescriptor?,
    val matchingCount: Int,
) {
    val found: Boolean get() = componentRef != null
}

/**
 * Deterministic component resolver. Lookup never leaves the supplied ObjectRef.
 * If several components share a type, authored component order wins just like
 * GetComponent-style APIs; matchingCount remains available for diagnostics.
 */
class ComponentResolver(
    private val host: ComponentQueryHost,
    private val types: ComponentTypeRegistry = BuiltInComponentTypes.registry,
) {
    fun resolve(objectRef: ObjectRef, selector: ComponentSelector): ComponentResolution {
        if (!host.objectExists(objectRef)) {
            return ComponentResolution(objectRef, null, null, null, 0)
        }
        val requestedType = selector.type?.takeIf(String::isNotBlank)?.let { raw ->
            types.resolve(raw) ?: throw IllegalArgumentException("Unknown component type: $raw.")
        }
        val matches = host.components(objectRef).filter { component ->
            (selector.includeDisabled || component.enabled) &&
                (selector.componentId.isNullOrBlank() || component.componentId == selector.componentId) &&
                (requestedType == null || requestedType.matches(component))
        }
        val selected = matches.firstOrNull()
        return ComponentResolution(
            objectRef = objectRef,
            componentRef = selected?.let { ComponentRef(objectRef, it.componentId) },
            component = selected,
            type = selected?.let(types::descriptorFor),
            matchingCount = matches.size,
        )
    }

    fun resolve(ref: ComponentRef, includeDisabled: Boolean = true): ComponentResolution =
        resolve(
            ref.objectRef,
            ComponentSelector(componentId = ref.componentId, includeDisabled = includeDisabled),
        )

    fun isValid(ref: ComponentRef): Boolean = resolve(ref).found
}

data class ComponentMethodDescriptor(
    val id: String,
    val componentType: String? = null,
    val parameters: List<EngineApiParameter> = emptyList(),
    val returnType: EngineApiValueType = EngineApiValueType.VOID,
    val returnNullable: Boolean = false,
    val availability: EngineApiAvailability = EngineApiAvailability.RUNTIME,
    val mutatesState: Boolean = false,
    val summary: String = "",
) {
    init {
        require(id.isNotBlank() && '.' in id) { "Component method id must be namespaced: $id" }
        require(returnType != EngineApiValueType.VOID || !returnNullable)
    }
}

fun interface ComponentMethodHandler {
    fun invoke(component: SceneComponent, arguments: Map<String, Any?>): Any?
}

sealed interface ComponentMethodResult {
    data class Success(val value: Any?) : ComponentMethodResult
    data class Failure(val code: String, val message: String) : ComponentMethodResult
}

class ComponentMethodRegistry(
    descriptors: List<ComponentMethodDescriptor>,
) {
    val descriptors = descriptors.toList()
    val byId = this.descriptors.associateBy(ComponentMethodDescriptor::id)

    init {
        require(byId.size == this.descriptors.size) { "Component method ids must be unique." }
    }
}

/**
 * Explicit method dispatch. There is intentionally no java.lang.reflect call.
 * A method becomes callable only after both a descriptor and handler exist.
 */
class ComponentMethodDispatcher(
    private val resolver: ComponentResolver,
    private val typeRegistry: ComponentTypeRegistry,
    private val registry: ComponentMethodRegistry,
) {
    private val handlers = mutableMapOf<String, ComponentMethodHandler>()

    fun register(methodId: String, handler: ComponentMethodHandler) {
        val descriptor = registry.byId[methodId]
            ?: throw IllegalArgumentException("Unknown component method: $methodId.")
        require(descriptor.availability == EngineApiAvailability.RUNTIME) {
            "$methodId is not runtime-callable."
        }
        handlers[methodId] = handler
    }

    fun invoke(ref: ComponentRef, methodId: String, positionalArguments: List<Any?> = emptyList()): ComponentMethodResult {
        val descriptor = registry.byId[methodId]
            ?: return ComponentMethodResult.Failure("UNKNOWN_METHOD", "Unknown component method: $methodId.")
        if (descriptor.availability != EngineApiAvailability.RUNTIME) {
            return ComponentMethodResult.Failure("CONTRACT_ONLY", "$methodId has no runtime implementation yet.")
        }
        val resolution = resolver.resolve(ref)
        val component = resolution.component
            ?: return ComponentMethodResult.Failure("COMPONENT_MISSING", "Component ${ref.componentId} no longer exists on ${ref.objectRef.objectId}.")
        val actualType = typeRegistry.descriptorFor(component)?.id
        if (descriptor.componentType != null && descriptor.componentType != actualType) {
            return ComponentMethodResult.Failure(
                "TYPE_MISMATCH",
                "$methodId requires ${descriptor.componentType}, received ${actualType ?: "unknown"}.",
            )
        }
        if (positionalArguments.size > descriptor.parameters.size) {
            return ComponentMethodResult.Failure("INVALID_ARGUMENT", "$methodId received too many arguments.")
        }
        val arguments = linkedMapOf<String, Any?>()
        descriptor.parameters.forEachIndexed { index, parameter ->
            val supplied = index < positionalArguments.size
            if (!supplied && parameter.required) {
                return ComponentMethodResult.Failure("INVALID_ARGUMENT", "$methodId requires ${parameter.name}.")
            }
            if (supplied) {
                val value = positionalArguments[index]
                if (!accepts(parameter.type, value, allowNull = !parameter.required)) {
                    return ComponentMethodResult.Failure(
                        "INVALID_ARGUMENT",
                        "$methodId.${parameter.name} has invalid type ${typeName(value)}; expected ${parameter.type}.",
                    )
                }
                arguments[parameter.name] = value
            }
        }
        val handler = handlers[methodId]
            ?: return ComponentMethodResult.Failure("HANDLER_MISSING", "$methodId has no registered handler.")
        val result = try {
            handler.invoke(component, arguments)
        } catch (error: Exception) {
            return ComponentMethodResult.Failure("HANDLER_FAILED", error.message ?: "$methodId failed.")
        }
        if (!accepts(descriptor.returnType, result, descriptor.returnNullable)) {
            return ComponentMethodResult.Failure(
                "INVALID_RETURN",
                "$methodId returned ${typeName(result)}, expected ${descriptor.returnType}.",
            )
        }
        return ComponentMethodResult.Success(result)
    }

    private fun accepts(type: EngineApiValueType, value: Any?, allowNull: Boolean): Boolean {
        if (value == null) return allowNull || type == EngineApiValueType.VOID
        return when (type) {
            EngineApiValueType.VOID -> false
            EngineApiValueType.BOOLEAN -> value is Boolean
            EngineApiValueType.NUMBER -> value is Number && value.toDouble().isFinite()
            EngineApiValueType.TEXT -> value is String
            EngineApiValueType.VECTOR3 -> value is com.mobilegamestudio.core.model.Vector3 && value.isFinite()
            EngineApiValueType.OBJECT -> value is ObjectRef
            EngineApiValueType.COMPONENT -> value is ComponentRef
            EngineApiValueType.LIST -> value is List<*>
            EngineApiValueType.ANY -> true
        }
    }

    private fun typeName(value: Any?): String = value?.let { it::class.simpleName } ?: "null"
}

object BuiltInComponentMethods {
    val registry = ComponentMethodRegistry(
        listOf(
            ComponentMethodDescriptor("component.get_enabled", returnType = EngineApiValueType.BOOLEAN),
            ComponentMethodDescriptor("transform.get_position", "transform", returnType = EngineApiValueType.VECTOR3),
            ComponentMethodDescriptor("transform.get_rotation", "transform", returnType = EngineApiValueType.VECTOR3),
            ComponentMethodDescriptor("transform.get_scale", "transform", returnType = EngineApiValueType.VECTOR3),
            ComponentMethodDescriptor("collider.is_trigger", "collider", returnType = EngineApiValueType.BOOLEAN),
            ComponentMethodDescriptor("vehicle.get_top_speed", "vehicle_controller", returnType = EngineApiValueType.NUMBER),
            ComponentMethodDescriptor("vehicle.get_mass", "vehicle_controller", returnType = EngineApiValueType.NUMBER),
            ComponentMethodDescriptor("animation.get_default_clip", "animation_controller", returnType = EngineApiValueType.TEXT),
            ComponentMethodDescriptor(
                "component.set_enabled",
                parameters = listOf(EngineApiParameter("enabled", EngineApiValueType.BOOLEAN)),
                availability = EngineApiAvailability.CONTRACT_ONLY,
                mutatesState = true,
                summary = "Requires a scene mutation boundary before it can be enabled.",
            ),
            ComponentMethodDescriptor(
                "transform.set_position",
                componentType = "transform",
                parameters = listOf(EngineApiParameter("position", EngineApiValueType.VECTOR3)),
                availability = EngineApiAvailability.CONTRACT_ONLY,
                mutatesState = true,
            ),
        ),
    )

    fun createDispatcher(resolver: ComponentResolver): ComponentMethodDispatcher =
        ComponentMethodDispatcher(resolver, BuiltInComponentTypes.registry, registry).also { dispatcher ->
            dispatcher.register("component.get_enabled") { component, _ -> component.enabled }
            dispatcher.register("transform.get_position") { component, _ -> (component as TransformComponent).position }
            dispatcher.register("transform.get_rotation") { component, _ -> (component as TransformComponent).rotationEulerDegrees }
            dispatcher.register("transform.get_scale") { component, _ -> (component as TransformComponent).scale }
            dispatcher.register("collider.is_trigger") { component, _ -> (component as ColliderComponent).isTrigger }
            dispatcher.register("vehicle.get_top_speed") { component, _ ->
                (component as VehicleControllerComponent).topSpeedKph.toDouble()
            }
            dispatcher.register("vehicle.get_mass") { component, _ ->
                (component as VehicleControllerComponent).massKg.toDouble()
            }
            dispatcher.register("animation.get_default_clip") { component, _ ->
                (component as AnimationControllerComponent).defaultClip
            }
        }
}
