package com.mobilegamestudio.core.model

/** Public scripting surfaces that can expose one Engine API contract. */
enum class EngineApiSurface {
    NOCODE,
    LUA,
    JAVA,
    PYTHON,
}

enum class EngineApiValueType {
    VOID,
    BOOLEAN,
    NUMBER,
    TEXT,
    VECTOR3,
    OBJECT,
    COMPONENT,
    LIST,
    ANY,
}

enum class EngineApiThread {
    ENGINE,
    RENDER,
    PHYSICS,
    ANY,
}

enum class EngineApiStability {
    STABLE,
    EXPERIMENTAL,
    INTERNAL,
}

enum class EngineApiAvailability {
    /** A runtime handler is expected to exist. */
    RUNTIME,

    /** Contract exists for editor/docs/autocomplete, implementation comes later. */
    CONTRACT_ONLY,

    /** Available only while authoring inside the editor. */
    EDITOR_ONLY,
}

enum class EngineApiCapability {
    SCENE_READ,
    SCENE_WRITE,
    PHYSICS_QUERY,
    PHYSICS_WRITE,
    AUDIO,
    UI,
    PROJECT_STORAGE_READ,
    PROJECT_STORAGE_WRITE,
    SAVE_GAME,
    NETWORK,
    DEBUG,
}

data class EngineApiParameter(
    val name: String,
    val type: EngineApiValueType,
    val required: Boolean = true,
    val description: String = "",
) {
    init {
        require(name.isNotBlank()) { "Engine API parameter name cannot be blank." }
    }
}

data class EngineApiFunction(
    val id: String,
    val namespace: String,
    val name: String,
    val parameters: List<EngineApiParameter> = emptyList(),
    val returnType: EngineApiValueType = EngineApiValueType.VOID,
    val surfaces: Set<EngineApiSurface> = EngineApiSurface.entries.toSet(),
    val capabilities: Set<EngineApiCapability> = emptySet(),
    val thread: EngineApiThread = EngineApiThread.ENGINE,
    val stability: EngineApiStability = EngineApiStability.STABLE,
    val availability: EngineApiAvailability = EngineApiAvailability.RUNTIME,
    val mutatesState: Boolean = false,
    val aliases: Set<String> = emptySet(),
    val summary: String = "",
) {
    init {
        require(id.isNotBlank() && '.' in id) { "Engine API id must be namespaced: $id" }
        require(namespace.isNotBlank()) { "Engine API namespace cannot be blank." }
        require(name.isNotBlank()) { "Engine API function name cannot be blank." }
        require(parameters.map(EngineApiParameter::name).distinct().size == parameters.size) {
            "Engine API $id cannot contain duplicate parameter names."
        }
        require(surfaces.isNotEmpty()) { "Engine API $id must be exposed to at least one surface." }
        require(id !in aliases) { "Engine API $id cannot alias itself." }
    }
}

/**
 * Immutable lookup registry shared by NoCode, Lua, Java and future Python.
 *
 * One ID means one contract. A language bridge may change syntax, but it must
 * not silently change parameter types, permissions or threading semantics.
 */
class EngineApiRegistry(
    definitions: List<EngineApiFunction>,
) {
    val definitions: List<EngineApiFunction> = definitions.toList()
    val byId: Map<String, EngineApiFunction>
    private val aliases: Map<String, EngineApiFunction>

    init {
        require(this.definitions.map(EngineApiFunction::id).distinct().size == this.definitions.size) {
            "Engine API registry cannot contain duplicate IDs."
        }
        byId = this.definitions.associateBy(EngineApiFunction::id)

        val aliasPairs = buildList {
            this@EngineApiRegistry.definitions.forEach { definition ->
                definition.aliases.forEach { alias ->
                    require(alias.isNotBlank()) { "Engine API aliases cannot be blank." }
                    require(alias !in byId) { "Alias $alias collides with a canonical Engine API ID." }
                    add(alias to definition)
                }
            }
        }
        require(aliasPairs.map(Pair<String, EngineApiFunction>::first).distinct().size == aliasPairs.size) {
            "Engine API aliases must be unique."
        }
        aliases = aliasPairs.toMap()
    }

    fun resolve(idOrAlias: String): EngineApiFunction? = byId[idOrAlias] ?: aliases[idOrAlias]

    fun forSurface(surface: EngineApiSurface): List<EngineApiFunction> =
        definitions.filter { surface in it.surfaces }

    fun forNamespace(namespace: String): List<EngineApiFunction> =
        definitions.filter { it.namespace == namespace }
}

/**
 * First shared contract set. More APIs should be added here only when their
 * ownership/threading/security model is understood; CONTRACT_ONLY entries are
 * intentionally honest instead of pretending the runtime is already wired.
 */
object EngineApiCatalog {
    private fun parameter(
        name: String,
        type: EngineApiValueType,
        required: Boolean = true,
        description: String = "",
    ) = EngineApiParameter(name, type, required, description)

    val registry = EngineApiRegistry(
        listOf(
            EngineApiFunction(
                id = "scene.find_object",
                namespace = "scene",
                name = "findObject",
                parameters = listOf(parameter("name", EngineApiValueType.TEXT)),
                returnType = EngineApiValueType.OBJECT,
                capabilities = setOf(EngineApiCapability.SCENE_READ),
                aliases = setOf("Scene.GetObject"),
                summary = "Finds a scene object by authored name and returns a stable ObjectRef.",
            ),
            EngineApiFunction(
                id = "transform.get_position",
                namespace = "transform",
                name = "getPosition",
                parameters = listOf(parameter("object", EngineApiValueType.OBJECT)),
                returnType = EngineApiValueType.VECTOR3,
                capabilities = setOf(EngineApiCapability.SCENE_READ),
                summary = "Reads world/local position according to the runtime transform contract.",
            ),
            EngineApiFunction(
                id = "transform.set_position",
                namespace = "transform",
                name = "setPosition",
                parameters = listOf(
                    parameter("object", EngineApiValueType.OBJECT),
                    parameter("position", EngineApiValueType.VECTOR3),
                ),
                capabilities = setOf(EngineApiCapability.SCENE_WRITE),
                mutatesState = true,
                summary = "Sets an object's position through the engine mutation boundary.",
            ),
            EngineApiFunction(
                id = "event.send",
                namespace = "event",
                name = "send",
                parameters = listOf(
                    parameter("event", EngineApiValueType.TEXT),
                    parameter("value", EngineApiValueType.ANY, required = false),
                ),
                capabilities = setOf(EngineApiCapability.SCENE_WRITE),
                mutatesState = true,
                summary = "Dispatches a typed engine event through EngineEventBus.",
            ),
            EngineApiFunction(
                id = "attribute.get",
                namespace = "attribute",
                name = "get",
                parameters = listOf(
                    parameter("name", EngineApiValueType.TEXT),
                    parameter("scope", EngineApiValueType.TEXT, required = false),
                    parameter("object", EngineApiValueType.OBJECT, required = false),
                ),
                returnType = EngineApiValueType.ANY,
                capabilities = setOf(EngineApiCapability.SCENE_READ),
                summary = "Reads a shared scoped Attribute without relying on editor selection.",
            ),
            EngineApiFunction(
                id = "attribute.set",
                namespace = "attribute",
                name = "set",
                parameters = listOf(
                    parameter("name", EngineApiValueType.TEXT),
                    parameter("value", EngineApiValueType.ANY),
                    parameter("scope", EngineApiValueType.TEXT, required = false),
                    parameter("object", EngineApiValueType.OBJECT, required = false),
                ),
                capabilities = setOf(EngineApiCapability.SCENE_WRITE),
                mutatesState = true,
                summary = "Writes a shared scoped Attribute and emits change notifications.",
            ),
            EngineApiFunction(
                id = "physics.trace_ray",
                namespace = "physics",
                name = "traceRay",
                parameters = listOf(
                    parameter("origin", EngineApiValueType.VECTOR3),
                    parameter("direction", EngineApiValueType.VECTOR3),
                    parameter("distance", EngineApiValueType.NUMBER),
                ),
                returnType = EngineApiValueType.ANY,
                capabilities = setOf(EngineApiCapability.PHYSICS_QUERY),
                thread = EngineApiThread.PHYSICS,
                availability = EngineApiAvailability.CONTRACT_ONLY,
                summary = "Physics ray query returning a typed RayHit when the backend is connected.",
            ),
            EngineApiFunction(
                id = "debug.log",
                namespace = "debug",
                name = "log",
                parameters = listOf(parameter("message", EngineApiValueType.TEXT)),
                capabilities = setOf(EngineApiCapability.DEBUG),
                aliases = setOf("Log.info"),
                summary = "Writes a structured runtime diagnostic message.",
            ),
        ),
    )
}
