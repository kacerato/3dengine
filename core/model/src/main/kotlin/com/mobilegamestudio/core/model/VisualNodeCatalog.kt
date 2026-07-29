package com.mobilegamestudio.core.model

enum class VisualPortType {
    FLOW,
    BOOLEAN,
    NUMBER,
    TEXT,
    VECTOR2,
    VECTOR3,
    VECTOR4,
    COLOR,
    OBJECT,
    COMPONENT,
    ASSET,
    LIST,
    ANY,
}

enum class VisualNodeCategory(val label: String) {
    EVENTS("Eventos"),
    FLOW("Fluxo"),
    INPUT("Entrada"),
    MATH("Matemática"),
    COMPARE("Comparação"),
    VECTOR("Vetor"),
    COLOR("Cor"),
    TEXT("Texto"),
    LIST("Listas"),
    OBJECT("Objeto"),
    TRANSFORM("Transform"),
    PHYSICS("Física"),
    VEHICLE("Veículo"),
    AUDIO("Áudio"),
    ANIMATION("Animação"),
    MATERIAL("Material"),
    UI("Interface"),
    WORLD("Mundo"),
    SAVE_GAME("Save game"),
    TIME("Tempo"),
    DEBUG("Debug"),
}

data class VisualPortDefinition(
    val id: String,
    val label: String,
    val type: VisualPortType,
    val required: Boolean = false,
)

data class VisualNodeDefinition(
    val id: String,
    val title: String,
    val category: VisualNodeCategory,
    val operation: String,
    val inputs: List<VisualPortDefinition>,
    val outputs: List<VisualPortDefinition>,
    val keywords: Set<String> = emptySet(),
) {
    val hasFlow: Boolean
        get() = inputs.any { it.type == VisualPortType.FLOW } ||
            outputs.any { it.type == VisualPortType.FLOW }

    val documentation: VisualNodeDocumentation
        get() = VisualNodeDocumentation(
            summary = buildString {
                append(title)
                append(" executa a operação ")
                append(operation)
                append(" na categoria ")
                append(category.label)
                append(".")
            },
            inputs = inputs.map { port ->
                VisualPortDocumentation(
                    port.id,
                    "${port.label}: ${port.type.name.lowercase()}" +
                        if (port.required) " obrigatório." else " opcional.",
                )
            },
            outputs = outputs.map { port ->
                VisualPortDocumentation(
                    port.id,
                    "${port.label}: entrega ${port.type.name.lowercase()} aos nós conectados.",
                )
            },
            example = when {
                hasFlow -> "Conecte o fluxo Então, preencha as entradas e ligue a saída ao próximo nó."
                outputs.isNotEmpty() -> "Conecte a saída ${outputs.first().label} a uma entrada compatível."
                else -> "Configure as entradas e use este nó dentro do fluxo do comportamento."
            },
        )
}

data class VisualNodeDocumentation(
    val summary: String,
    val inputs: List<VisualPortDocumentation>,
    val outputs: List<VisualPortDocumentation>,
    val example: String,
)

data class VisualPortDocumentation(
    val portId: String,
    val description: String,
)

/**
 * Catálogo central da linguagem visual. As famílias são construídas a partir de
 * operações tipadas; assim, a biblioteca cresce sem duplicar implementação de UI.
 */
object VisualNodeCatalog {
    private val flowIn = VisualPortDefinition("flowIn", "Então", VisualPortType.FLOW)
    private val flowOut = VisualPortDefinition("flow", "Então", VisualPortType.FLOW)

    val definitions: List<VisualNodeDefinition> = buildList {
        addEvents()
        addFlow()
        addInput()
        addMath()
        addCompare()
        addVectors()
        addColors()
        addText()
        addLists()
        addObjectActions()
        addTransformActions()
        addPhysics()
        addVehicles()
        addAudio()
        addAnimation()
        addMaterials()
        addUi()
        addWorld()
        addSaveGame()
        addTime()
        addDebug()
    }.also { nodes ->
        check(nodes.size > ITSMAGIC_CURRENT_DOCUMENTED_NODE_PAGES) {
            "O catálogo NoCode precisa superar a referência atual."
        }
        check(nodes.map(VisualNodeDefinition::id).distinct().size == nodes.size) {
            "IDs duplicados no catálogo NoCode."
        }
    }

    val byId: Map<String, VisualNodeDefinition> = definitions.associateBy(VisualNodeDefinition::id)

    fun definitionFor(node: VisualNode): VisualNodeDefinition? =
        node.definitionId?.let(byId::get) ?: byId[legacyDefinitionId(node.type)]

    fun legacyDefinitionId(type: VisualNodeType): String = when (type) {
        VisualNodeType.ON_START -> "event.scene.start"
        VisualNodeType.ON_TOUCH -> "event.object.touch"
        VisualNodeType.ON_BUTTON_PRESSED -> "event.input.button_pressed"
        VisualNodeType.ROTATE_OBJECT -> "transform.rotate.y"
        VisualNodeType.SET_SCALE -> "transform.scale.uniform"
        VisualNodeType.PRINT_LOG -> "debug.log.info"
        VisualNodeType.SEQUENCE -> "flow.sequence.2"
        VisualNodeType.CATALOG -> ""
    }

    private fun MutableList<VisualNodeDefinition>.node(
        id: String,
        title: String,
        category: VisualNodeCategory,
        operation: String = id,
        inputs: List<VisualPortDefinition> = emptyList(),
        outputs: List<VisualPortDefinition> = emptyList(),
        keywords: Set<String> = emptySet(),
    ) {
        add(VisualNodeDefinition(id, title, category, operation, inputs, outputs, keywords))
    }

    private fun value(id: String, label: String, type: VisualPortType, required: Boolean = false) =
        VisualPortDefinition(id, label, type, required)

    private fun MutableList<VisualNodeDefinition>.addEvents() {
        val events = listOf(
            "scene.start" to "Ao iniciar",
            "scene.ready" to "Cena pronta",
            "scene.exit" to "Ao sair da cena",
            "frame.update" to "A cada frame",
            "frame.fixed_update" to "Atualização de física",
            "object.touch" to "Ao tocar objeto",
            "object.click" to "Ao clicar objeto",
            "object.enabled" to "Objeto habilitado",
            "object.disabled" to "Objeto desabilitado",
            "object.created" to "Objeto criado",
            "object.destroyed" to "Objeto destruído",
            "input.button_pressed" to "Botão pressionado",
            "input.button_released" to "Botão solto",
            "input.key_down" to "Tecla pressionada",
            "input.key_up" to "Tecla solta",
            "input.axis" to "Eixo alterado",
            "pointer.down" to "Ponteiro pressionado",
            "pointer.up" to "Ponteiro solto",
            "pointer.move" to "Ponteiro movido",
            "pointer.drag" to "Arrastar",
            "collision.enter" to "Colisão iniciou",
            "collision.stay" to "Colisão contínua",
            "collision.exit" to "Colisão terminou",
            "trigger.enter" to "Entrou no gatilho",
            "trigger.stay" to "Permaneceu no gatilho",
            "trigger.exit" to "Saiu do gatilho",
            "animation.started" to "Animação iniciou",
            "animation.finished" to "Animação terminou",
            "audio.finished" to "Áudio terminou",
            "ui.focused" to "Interface focada",
            "ui.value_changed" to "Valor da interface alterado",
            "timer.elapsed" to "Temporizador concluído",
            "network.connected" to "Conexão aberta",
            "network.disconnected" to "Conexão encerrada",
            "save.loaded" to "Save carregado",
            "save.completed" to "Save concluído",
            "world.loaded" to "Mundo carregado",
            "world.unloaded" to "Mundo descarregado",
            "custom.received" to "Evento personalizado",
            "component.changed" to "Componente alterado",
        )
        events.forEach { (id, title) ->
            node("event.$id", title, VisualNodeCategory.EVENTS, outputs = listOf(flowOut))
        }
    }

    private fun MutableList<VisualNodeDefinition>.addFlow() {
        listOf(2, 3, 4, 5, 6, 8, 10, 12).forEach { count ->
            node(
                "flow.sequence.$count",
                "Sequência $count",
                VisualNodeCategory.FLOW,
                inputs = listOf(flowIn),
                outputs = (1..count).map { value("then$it", "Então $it", VisualPortType.FLOW) },
            )
        }
        val simple = listOf(
            "branch" to "Condição",
            "gate" to "Portão",
            "once" to "Executar uma vez",
            "do_n" to "Executar N vezes",
            "while" to "Enquanto",
            "for" to "Para cada índice",
            "foreach" to "Para cada item",
            "delay" to "Aguardar",
            "debounce" to "Debounce",
            "throttle" to "Limitar frequência",
            "race" to "Primeiro a concluir",
            "parallel" to "Executar em paralelo",
            "cancel" to "Cancelar fluxo",
            "break" to "Interromper laço",
            "continue" to "Continuar laço",
            "switch_bool" to "Escolher booleano",
            "switch_number" to "Escolher número",
            "switch_text" to "Escolher texto",
            "switch_object" to "Escolher objeto",
            "flip_flop" to "Alternar A/B",
        )
        simple.forEach { (id, title) ->
            node("flow.$id", title, VisualNodeCategory.FLOW, inputs = listOf(flowIn), outputs = listOf(flowOut))
        }
    }

    private fun MutableList<VisualNodeDefinition>.addInput() {
        val devices = listOf("keyboard", "mouse", "touch", "gamepad", "sensor")
        val operations = listOf(
            "pressed", "released", "held", "axis", "position", "delta",
            "pressure", "count", "available", "name",
        )
        devices.forEach { device ->
            operations.forEach { operation ->
                node(
                    "input.$device.$operation",
                    "${operation.humanize()} · ${device.humanize()}",
                    VisualNodeCategory.INPUT,
                    outputs = listOf(value("value", "Valor", operation.outputType())),
                )
            }
        }
    }

    private fun MutableList<VisualNodeDefinition>.addMath() {
        val binary = listOf(
            "add", "subtract", "multiply", "divide", "modulo", "power", "minimum", "maximum",
            "average", "atan2", "log_base", "copy_sign",
        )
        val unary = listOf(
            "absolute", "negative", "sqrt", "cube_root", "exp", "log", "log10", "floor", "ceil",
            "round", "truncate", "fraction", "sign", "sin", "cos", "tan", "asin", "acos", "atan",
            "degrees", "radians", "saturate", "is_finite", "is_nan",
        )
        val numericTypes = listOf("number", "integer", "angle")
        numericTypes.forEach { kind ->
            binary.forEach { operation ->
                node(
                    "math.$kind.$operation",
                    "${operation.humanize()} · ${kind.humanize()}",
                    VisualNodeCategory.MATH,
                    operation = "math.$operation",
                    inputs = listOf(value("a", "A", VisualPortType.NUMBER), value("b", "B", VisualPortType.NUMBER)),
                    outputs = listOf(value("result", "Resultado", VisualPortType.NUMBER)),
                )
            }
            unary.forEach { operation ->
                node(
                    "math.$kind.$operation",
                    "${operation.humanize()} · ${kind.humanize()}",
                    VisualNodeCategory.MATH,
                    operation = "math.$operation",
                    inputs = listOf(value("value", "Valor", VisualPortType.NUMBER)),
                    outputs = listOf(value("result", "Resultado", VisualPortType.NUMBER)),
                )
            }
        }
        listOf("clamp", "lerp", "inverse_lerp", "remap", "smoothstep", "move_towards", "random_range").forEach {
            node(
                "math.range.$it",
                it.humanize(),
                VisualNodeCategory.MATH,
                inputs = listOf(
                    value("value", "Valor", VisualPortType.NUMBER),
                    value("min", "Mínimo", VisualPortType.NUMBER),
                    value("max", "Máximo", VisualPortType.NUMBER),
                ),
                outputs = listOf(value("result", "Resultado", VisualPortType.NUMBER)),
            )
        }
    }

    private fun MutableList<VisualNodeDefinition>.addCompare() {
        val operations = listOf(
            "equal", "not_equal", "greater", "greater_equal", "less", "less_equal",
            "between", "outside", "approximately", "is_null",
        )
        val types = listOf(
            VisualPortType.BOOLEAN, VisualPortType.NUMBER, VisualPortType.TEXT,
            VisualPortType.VECTOR2, VisualPortType.VECTOR3, VisualPortType.COLOR,
            VisualPortType.OBJECT, VisualPortType.ASSET,
        )
        types.forEach { type ->
            operations.forEach { operation ->
                node(
                    "compare.${type.name.lowercase()}.$operation",
                    "${operation.humanize()} · ${type.name.humanize()}",
                    VisualNodeCategory.COMPARE,
                    operation = "compare.$operation",
                    inputs = listOf(value("a", "A", type), value("b", "B", type)),
                    outputs = listOf(value("result", "Verdadeiro", VisualPortType.BOOLEAN)),
                )
            }
        }
    }

    private fun MutableList<VisualNodeDefinition>.addVectors() {
        val operations = listOf(
            "add", "subtract", "multiply", "divide", "scale", "normalize", "length", "length_squared",
            "distance", "dot", "cross", "lerp", "move_towards", "reflect", "project", "angle",
            "clamp_length", "minimum", "maximum", "absolute", "floor", "ceil", "round", "snap",
            "rotate", "inverse", "is_zero", "is_finite",
        )
        listOf(VisualPortType.VECTOR2, VisualPortType.VECTOR3, VisualPortType.VECTOR4).forEach { type ->
            operations.forEach { operation ->
                node(
                    "vector.${type.name.lowercase()}.$operation",
                    "${operation.humanize()} · ${type.name.humanize()}",
                    VisualNodeCategory.VECTOR,
                    operation = "vector.$operation",
                    inputs = listOf(value("a", "A", type), value("b", "B", type)),
                    outputs = listOf(value("result", "Resultado", type)),
                )
            }
            listOf("make", "split", "with_x", "with_y", "with_z", "with_w").forEach { operation ->
                node(
                    "vector.${type.name.lowercase()}.$operation",
                    "${operation.humanize()} · ${type.name.humanize()}",
                    VisualNodeCategory.VECTOR,
                    outputs = listOf(value("result", "Resultado", type)),
                )
            }
        }
    }

    private fun MutableList<VisualNodeDefinition>.addColors() {
        listOf(
            "make_rgb", "make_rgba", "split_rgb", "split_rgba", "from_hex", "to_hex",
            "from_hsv", "to_hsv", "lerp", "blend_add", "blend_multiply", "blend_screen",
            "blend_overlay", "lighten", "darken", "saturate", "desaturate", "invert",
            "grayscale", "alpha", "with_alpha", "luminance", "contrast", "temperature",
        ).forEach { operation ->
            node(
                "color.$operation",
                operation.humanize(),
                VisualNodeCategory.COLOR,
                inputs = listOf(value("color", "Cor", VisualPortType.COLOR)),
                outputs = listOf(value("result", "Resultado", VisualPortType.COLOR)),
            )
        }
    }

    private fun MutableList<VisualNodeDefinition>.addText() {
        listOf(
            "append", "prepend", "join", "split", "replace", "replace_first", "contains", "starts_with",
            "ends_with", "equals_ignore_case", "uppercase", "lowercase", "capitalize", "trim", "trim_start",
            "trim_end", "substring", "character_at", "length", "is_empty", "is_blank", "pad_start",
            "pad_end", "repeat", "reverse", "format", "number_to_text", "bool_to_text", "vector_to_text",
            "parse_number", "parse_bool", "regex_matches", "regex_find", "regex_replace", "lines", "words",
        ).forEach { operation ->
            node(
                "text.$operation",
                operation.humanize(),
                VisualNodeCategory.TEXT,
                inputs = listOf(value("text", "Texto", VisualPortType.TEXT)),
                outputs = listOf(value("result", "Resultado", operation.outputType())),
            )
        }
    }

    private fun MutableList<VisualNodeDefinition>.addLists() {
        val operations = listOf(
            "create", "add", "insert", "set", "get", "first", "last", "remove", "remove_at",
            "clear", "contains", "index_of", "last_index_of", "count", "is_empty", "reverse",
            "shuffle", "sort", "distinct", "slice", "concat", "filter", "map", "reduce", "random",
        )
        listOf("number", "text", "bool", "vector3", "object").forEach { kind ->
            operations.forEach { operation ->
                node(
                    "list.$kind.$operation",
                    "${operation.humanize()} · ${kind.humanize()}",
                    VisualNodeCategory.LIST,
                    operation = "list.$operation",
                    inputs = listOf(value("list", "Lista", VisualPortType.LIST)),
                    outputs = listOf(value("result", "Resultado", VisualPortType.ANY)),
                )
            }
        }
    }

    private fun MutableList<VisualNodeDefinition>.addObjectActions() {
        listOf(
            "find_by_name", "find_by_tag", "find_by_id", "create", "clone", "destroy", "enable", "disable",
            "toggle_enabled", "set_name", "get_name", "set_parent", "get_parent", "add_child", "remove_child",
            "get_child", "child_count", "add_tag", "remove_tag", "has_tag", "send_event", "send_event_bool",
            "send_event_number", "send_event_text", "get_component", "has_component", "add_component",
            "remove_component", "set_layer", "get_layer", "set_visible", "is_visible", "set_static", "is_static",
        ).forEach { operation ->
            node(
                "object.$operation",
                operation.humanize(),
                VisualNodeCategory.OBJECT,
                inputs = listOf(flowIn, value("object", "Objeto", VisualPortType.OBJECT)),
                outputs = listOf(flowOut, value("result", "Resultado", VisualPortType.ANY)),
            )
        }
    }

    private fun MutableList<VisualNodeDefinition>.addTransformActions() {
        val operations = listOf(
            "get", "set", "add", "subtract", "multiply", "lerp", "move_towards", "local_to_world",
            "world_to_local", "reset", "look_at", "face_direction",
        )
        listOf("position", "rotation", "scale").forEach { property ->
            operations.forEach { operation ->
                node(
                    "transform.$property.$operation",
                    "${operation.humanize()} ${property.humanize()}",
                    VisualNodeCategory.TRANSFORM,
                    inputs = listOf(flowIn, value("object", "Objeto", VisualPortType.OBJECT), value("value", "Valor", VisualPortType.VECTOR3)),
                    outputs = listOf(flowOut, value("result", "Resultado", VisualPortType.VECTOR3)),
                )
            }
        }
        node(
            "transform.rotate.y",
            "Rotacionar no eixo Y",
            VisualNodeCategory.TRANSFORM,
            inputs = listOf(flowIn, value("object", "Objeto", VisualPortType.OBJECT), value("degrees", "Graus", VisualPortType.NUMBER)),
            outputs = listOf(flowOut),
        )
        node(
            "transform.scale.uniform",
            "Definir escala uniforme",
            VisualNodeCategory.TRANSFORM,
            inputs = listOf(flowIn, value("object", "Objeto", VisualPortType.OBJECT), value("scale", "Escala", VisualPortType.NUMBER)),
            outputs = listOf(flowOut),
        )
    }

    private fun MutableList<VisualNodeDefinition>.addPhysics() =
        addActionFamily(
            VisualNodeCategory.PHYSICS,
            "physics",
            listOf(
                "add_force", "add_impulse", "add_torque", "set_velocity", "get_velocity", "set_angular_velocity",
                "get_angular_velocity", "set_mass", "get_mass", "set_gravity", "use_gravity", "set_kinematic",
                "freeze_position", "freeze_rotation", "raycast", "sphere_cast", "box_cast", "overlap_sphere",
                "overlap_box", "ignore_collision", "set_friction", "set_bounciness", "wake_up", "sleep",
            ),
        )

    private fun MutableList<VisualNodeDefinition>.addVehicles() =
        addActionFamily(
            VisualNodeCategory.VEHICLE,
            "vehicle",
            listOf(
                "enter", "exit", "can_enter", "get_driver", "open_door", "close_door", "toggle_door",
                "open_hood", "close_hood", "open_trunk", "close_trunk",
                "set_throttle", "get_throttle", "set_brake", "get_brake", "set_handbrake",
                "set_steering", "get_steering", "shift_up", "shift_down", "set_gear", "get_gear",
                "get_speed", "get_rpm", "get_wheel_speed", "get_slip_ratio", "get_lateral_slip",
                "set_mass", "set_engine_power", "set_max_torque", "set_redline_rpm", "set_top_speed",
                "set_drive_type", "set_gear_ratios", "set_final_drive", "set_drivetrain_efficiency",
                "set_tire_grip", "set_lateral_grip", "set_traction_control", "set_abs",
                "set_stability_assist", "set_steering_angle", "set_steering_response",
                "set_wheel_radius", "set_wheel_position", "set_wheel_driven", "set_wheel_steerable",
                "set_suspension_travel", "set_spring_strength", "set_suspension_damping",
                "get_suspension_compression", "set_center_of_mass", "set_downforce", "set_aero_drag",
                "set_rolling_resistance", "reset_upright", "teleport", "repair", "enable_collision",
                "disable_collision", "on_collision", "on_entered", "on_exited", "on_door_opened",
            ),
        )

    private fun MutableList<VisualNodeDefinition>.addAudio() =
        addActionFamily(
            VisualNodeCategory.AUDIO,
            "audio",
            listOf(
                "play", "play_3d", "play_loop", "play_3d_loop", "pause", "resume", "stop", "stop_all",
                "set_volume", "get_volume", "fade_in", "fade_out", "set_pitch", "get_pitch", "set_pan",
                "set_spatial_blend", "set_min_distance", "set_max_distance", "is_playing", "set_bus",
            ),
        )

    private fun MutableList<VisualNodeDefinition>.addAnimation() =
        addActionFamily(
            VisualNodeCategory.ANIMATION,
            "animation",
            listOf(
                "play", "play_crossfade", "pause", "resume", "stop", "rewind", "set_speed", "get_speed",
                "set_time", "get_time", "set_loop", "is_playing", "set_bool", "set_number", "set_trigger",
                "reset_trigger", "get_state", "set_weight", "blend", "play_additive",
            ),
        )

    private fun MutableList<VisualNodeDefinition>.addMaterials() =
        addActionFamily(
            VisualNodeCategory.MATERIAL,
            "material",
            listOf(
                "get", "set", "clone", "set_color", "get_color", "set_number", "get_number", "set_vector",
                "get_vector", "set_texture", "get_texture", "set_emission", "set_metallic", "set_roughness",
                "set_opacity", "set_uv_offset", "set_uv_scale", "enable_keyword", "disable_keyword", "has_keyword",
            ),
        )

    private fun MutableList<VisualNodeDefinition>.addUi() =
        addActionFamily(
            VisualNodeCategory.UI,
            "ui",
            listOf(
                "show", "hide", "toggle", "set_text", "get_text", "set_image", "set_color", "set_value",
                "get_value", "set_min", "set_max", "set_interactable", "is_interactable", "focus", "unfocus",
                "set_position", "set_size", "set_anchor", "set_progress", "animate_value", "toast", "open_panel",
                "close_panel", "set_placeholder",
            ),
        )

    private fun MutableList<VisualNodeDefinition>.addWorld() =
        addActionFamily(
            VisualNodeCategory.WORLD,
            "world",
            listOf(
                "load", "load_additive", "unload", "reload", "set_active", "get_active", "pause", "resume",
                "set_time_scale", "get_time_scale", "set_ambient_color", "set_skybox", "set_fog", "set_gravity",
                "find_spawn", "spawn_at", "destroy_all", "preload", "release", "quit",
                "terrain_get_height", "terrain_set_height", "terrain_raise", "terrain_lower",
                "terrain_smooth", "terrain_flatten", "terrain_add_noise", "terrain_paint_layer",
                "terrain_get_layer_weight", "terrain_apply_auto_tile", "terrain_add_auto_tile_rule",
                "terrain_remove_auto_tile_rule", "terrain_set_material", "terrain_set_texture_scale",
                "terrain_set_texture_rotation", "terrain_set_texture_offset", "terrain_set_roughness",
                "terrain_set_metallic", "terrain_import_heightmap", "terrain_export_heightmap",
                "terrain_generate_semi_arid", "terrain_scatter_tiles", "terrain_clear_tiles",
                "character_set_camera_first_person", "character_set_camera_third_person",
                "character_set_camera_top_down", "character_set_speed", "character_jump",
                "character_set_look_sensitivity", "joystick_get_axis", "joystick_set_dead_zone",
            ),
        )

    private fun MutableList<VisualNodeDefinition>.addSaveGame() {
        listOf("bool", "number", "integer", "text", "vector2", "vector3", "color", "object_id", "list").forEach { kind ->
            listOf("save", "load", "has", "delete").forEach { operation ->
                node(
                    "save.$kind.$operation",
                    "${operation.humanize()} ${kind.humanize()}",
                    VisualNodeCategory.SAVE_GAME,
                    inputs = listOf(flowIn, value("key", "Chave", VisualPortType.TEXT), value("value", "Valor", VisualPortType.ANY)),
                    outputs = listOf(flowOut, value("result", "Resultado", VisualPortType.ANY)),
                )
            }
        }
    }

    private fun MutableList<VisualNodeDefinition>.addTime() =
        listOf(
            "delta", "fixed_delta", "elapsed", "unscaled_elapsed", "frame", "fps", "timestamp",
            "date", "time", "timezone", "timer_start", "timer_pause", "timer_resume", "timer_stop",
            "timer_remaining", "timer_elapsed", "format_duration", "wait_seconds",
        ).forEach { operation ->
            node(
                "time.$operation",
                operation.humanize(),
                VisualNodeCategory.TIME,
                outputs = listOf(value("value", "Valor", VisualPortType.NUMBER)),
            )
        }

    private fun MutableList<VisualNodeDefinition>.addDebug() =
        listOf("trace", "info", "warning", "error", "assert", "draw_line", "draw_ray", "draw_sphere", "breakpoint", "watch").forEach {
            node(
                "debug.log.$it",
                "Debug ${it.humanize()}",
                VisualNodeCategory.DEBUG,
                inputs = listOf(flowIn, value("message", "Mensagem", VisualPortType.TEXT)),
                outputs = listOf(flowOut),
            )
        }

    private fun MutableList<VisualNodeDefinition>.addActionFamily(
        category: VisualNodeCategory,
        prefix: String,
        operations: List<String>,
    ) {
        operations.forEach { operation ->
            node(
                "$prefix.$operation",
                operation.humanize(),
                category,
                inputs = listOf(flowIn, value("target", "Alvo", VisualPortType.ANY)),
                outputs = listOf(flowOut, value("result", "Resultado", VisualPortType.ANY)),
            )
        }
    }

    private fun String.outputType(): VisualPortType = when {
        contains("is_") || this in setOf("pressed", "released", "held", "contains", "starts_with", "ends_with", "equals_ignore_case", "is_empty", "is_blank", "regex_matches", "parse_bool", "available") ->
            VisualPortType.BOOLEAN
        contains("text") || this in setOf("name", "uppercase", "lowercase", "capitalize", "trim", "substring", "format", "join", "replace", "reverse") ->
            VisualPortType.TEXT
        contains("position") || contains("delta") -> VisualPortType.VECTOR2
        else -> VisualPortType.NUMBER
    }

    private fun String.humanize(): String =
        split('_').joinToString(" ") { word -> word.replaceFirstChar(Char::uppercase) }

    const val ITSMAGIC_CURRENT_DOCUMENTED_NODE_PAGES = 479
}
