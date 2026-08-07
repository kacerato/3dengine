#include "mgs_nocode_runner.h"
#include "mgs_nocode_catalog.h"
#include "mgs_terrain_3d.h"
#include "mgs_vehicle_3d.h"

#include "core/config/engine.h"
#include "core/config/project_settings.h"
#include "core/input/input_map.h"
#include "core/io/file_access.h"
#include "core/io/resource_loader.h"
#include "core/input/input.h"
#include "core/input/input_event.h"
#include "core/object/class_db.h"
#include "core/os/time.h"
#include "modules/regex/regex.h"
#include "scene/3d/node_3d.h"
#include "scene/3d/physics/character_body_3d.h"
#include "scene/3d/physics/area_3d.h"
#include "scene/3d/physics/collision_object_3d.h"
#include "scene/3d/physics/physics_body_3d.h"
#include "scene/3d/physics/rigid_body_3d.h"
#include "scene/resources/3d/box_shape_3d.h"
#include "scene/resources/3d/sphere_shape_3d.h"
#include "scene/resources/physics_material.h"
#include "scene/resources/3d/world_3d.h"
#include "servers/physics_3d/physics_server_3d.h"
#include "scene/main/canvas_item.h"
#include "scene/main/scene_tree.h"
#include "scene/main/multiplayer_api.h"
#include "scene/main/viewport.h"
#include "scene/resources/packed_scene.h"
#include "scene/3d/visual_instance_3d.h"
#include "scene/2d/node_2d.h"
#include "scene/animation/tween.h"
#include "scene/animation/animation_player.h"
#include "scene/animation/animation_tree.h"
#include "scene/animation/animation_blend_tree.h"
#include "scene/resources/animation.h"
#include "scene/audio/audio_stream_player.h"
#include "scene/2d/audio_stream_player_2d.h"
#include "scene/3d/audio_stream_player_3d.h"
#include "scene/3d/mesh_instance_3d.h"
#include "scene/3d/camera_3d.h"
#include "scene/3d/world_environment.h"
#include "scene/resources/environment.h"
#include "scene/resources/material.h"
#include "scene/resources/shader.h"
#include "scene/resources/immediate_mesh.h"
#include "scene/resources/3d/primitive_meshes.h"
#include "scene/gui/base_button.h"
#include "scene/gui/button.h"
#include "scene/gui/control.h"
#include "scene/gui/label.h"
#include "scene/gui/line_edit.h"
#include "scene/gui/progress_bar.h"
#include "scene/gui/range.h"
#include "scene/gui/rich_text_label.h"
#include "scene/gui/text_edit.h"
#include "scene/gui/texture_rect.h"
#include "scene/resources/texture.h"

#include <cmath>

static String mgs_string(const Dictionary &p_dictionary, const StringName &p_camel, const StringName &p_snake = StringName()) {
    if (p_dictionary.has(p_camel)) return p_dictionary[p_camel];
    if (!p_snake.is_empty() && p_dictionary.has(p_snake)) return p_dictionary[p_snake];
    return String();
}

static Dictionary mgs_values(const Dictionary &p_node) {
    Variant value = p_node.get(SNAME("values"), Dictionary());
    return value.get_type() == Variant::DICTIONARY ? Dictionary(value) : Dictionary();
}

static Variant mgs_parse_literal(const Variant &p_value) {
    if (p_value.get_type() != Variant::STRING) return p_value;
    const String text = String(p_value).strip_edges();
    if (text.to_lower() == "true") return true;
    if (text.to_lower() == "false") return false;
    if (text.is_valid_int()) return text.to_int();
    if (text.is_valid_float()) return text.to_float();
    PackedStringArray vector_parts = text.split(",", false);
    if (vector_parts.size() == 3 && vector_parts[0].strip_edges().is_valid_float() && vector_parts[1].strip_edges().is_valid_float() && vector_parts[2].strip_edges().is_valid_float()) {
        return Vector3(vector_parts[0].to_float(), vector_parts[1].to_float(), vector_parts[2].to_float());
    }
    return text;
}

void MGSNoCodeRunner::_bind_methods() {
    ClassDB::bind_method(D_METHOD("set_graph", "graph"), &MGSNoCodeRunner::set_graph);
    ClassDB::bind_method(D_METHOD("get_graph"), &MGSNoCodeRunner::get_graph);
    ClassDB::bind_method(D_METHOD("set_default_target", "path"), &MGSNoCodeRunner::set_default_target);
    ClassDB::bind_method(D_METHOD("get_default_target"), &MGSNoCodeRunner::get_default_target);
    ClassDB::bind_method(D_METHOD("set_run_on_ready", "enabled"), &MGSNoCodeRunner::set_run_on_ready);
    ClassDB::bind_method(D_METHOD("is_run_on_ready"), &MGSNoCodeRunner::is_run_on_ready);
    ClassDB::bind_method(D_METHOD("set_max_executed_nodes", "limit"), &MGSNoCodeRunner::set_max_executed_nodes);
    ClassDB::bind_method(D_METHOD("get_max_executed_nodes"), &MGSNoCodeRunner::get_max_executed_nodes);
    ClassDB::bind_method(D_METHOD("get_runtime_variables"), &MGSNoCodeRunner::get_runtime_variables);
    ClassDB::bind_method(D_METHOD("reset_runtime_variables"), &MGSNoCodeRunner::reset_runtime_variables);
    ClassDB::bind_method(D_METHOD("get_catalog_ids"), &MGSNoCodeRunner::get_catalog_ids);
    ClassDB::bind_method(D_METHOD("debug_execute_definition", "definition", "values", "target"), &MGSNoCodeRunner::debug_execute_definition, DEFVAL(Variant()));
    ClassDB::bind_method(D_METHOD("execute_event", "event_id", "payload"), &MGSNoCodeRunner::execute_event, DEFVAL(Variant()));
    ClassDB::bind_method(D_METHOD("emit_button", "action"), &MGSNoCodeRunner::emit_button);
    ClassDB::bind_method(D_METHOD("emit_custom", "event_name", "value"), &MGSNoCodeRunner::emit_custom, DEFVAL(Variant()));

    ADD_PROPERTY(PropertyInfo(Variant::OBJECT, "graph", PROPERTY_HINT_RESOURCE_TYPE, "MGSNoCodeGraph"), "set_graph", "get_graph");
    ADD_PROPERTY(PropertyInfo(Variant::NODE_PATH, "default_target"), "set_default_target", "get_default_target");
    ADD_PROPERTY(PropertyInfo(Variant::BOOL, "run_on_ready"), "set_run_on_ready", "is_run_on_ready");
    ADD_PROPERTY(PropertyInfo(Variant::INT, "max_executed_nodes", PROPERTY_HINT_RANGE, "8,2048,1"), "set_max_executed_nodes", "get_max_executed_nodes");

    ADD_SIGNAL(MethodInfo("graph_started", PropertyInfo(Variant::STRING, "event_id")));
    ADD_SIGNAL(MethodInfo("node_executed", PropertyInfo(Variant::STRING, "node_id"), PropertyInfo(Variant::STRING, "definition_id")));
    ADD_SIGNAL(MethodInfo("graph_finished", PropertyInfo(Variant::STRING, "event_id"), PropertyInfo(Variant::INT, "executed_nodes")));
    ADD_SIGNAL(MethodInfo("graph_error", PropertyInfo(Variant::STRING, "message"), PropertyInfo(Variant::STRING, "node_id")));
}

void MGSNoCodeRunner::_notification(int p_what) {
    if (p_what == NOTIFICATION_READY) {
        runtime_variables = graph.is_valid() ? graph->get_variables().duplicate(true) : Dictionary();
        runtime_timers.clear();
        runtime_flow_state.clear();
        pending_continuations.clear();
        runtime_elapsed = 0.0;
        _load_save_values();
        _refresh_watched_actions();
        _connect_runtime_sources();
        set_process(true);
        set_physics_process(true);
        set_process_input(true);
        if (run_on_ready && !Engine::get_singleton()->is_editor_hint()) { execute_event("event.scene.start"); execute_event("event.scene.ready"); execute_event("event.world.loaded"); }
    } else if (p_what == NOTIFICATION_PROCESS && !Engine::get_singleton()->is_editor_hint()) {
        const double delta = get_process_delta_time();
        runtime_elapsed += delta;
        _process_pending_continuations(delta);
        Array timer_names = runtime_timers.keys();
        for (int i = 0; i < timer_names.size(); i++) {
            const String name = timer_names[i];
            Dictionary timer = runtime_timers[name];
            if (bool(timer.get(SNAME("paused"), false)) || bool(timer.get(SNAME("elapsed"), false))) continue;
            double remaining = double(timer.get(SNAME("remaining"), 0.0)) - delta;
            if (remaining <= 0.0) {
                remaining = 0.0;
                timer[SNAME("elapsed")] = true;
                runtime_timers[name] = timer;
                execute_event("event.timer.elapsed", name);
            } else { timer[SNAME("remaining")] = remaining; runtime_timers[name] = timer; }
        }
        _poll_input_events();
        execute_event("event.frame.update", delta);
    } else if (p_what == NOTIFICATION_PHYSICS_PROCESS && !Engine::get_singleton()->is_editor_hint()) {
        execute_event("event.frame.fixed_update", get_physics_process_delta_time());
        const Array overlap_keys = active_overlap_events.keys();
        for (int key_index = 0; key_index < overlap_keys.size(); key_index++) {
            const String prefix = String(overlap_keys[key_index]); const Array bodies = active_overlap_events[prefix];
            for (int body_index = 0; body_index < bodies.size(); body_index++) if (Object::cast_to<Node>(bodies[body_index])) execute_event(prefix + ".stay", bodies[body_index]);
        }
    } else if (p_what == NOTIFICATION_EXIT_TREE && !Engine::get_singleton()->is_editor_hint()) {
        execute_event("event.scene.exit");
        execute_event("event.world.unloaded");
    }
}

void MGSNoCodeRunner::set_graph(const Ref<MGSNoCodeGraph> &p_graph) {
    graph = p_graph;
    runtime_variables = graph.is_valid() ? graph->get_variables().duplicate(true) : Dictionary();
    _refresh_watched_actions();
    if (is_inside_tree()) _connect_runtime_sources();
}
Ref<MGSNoCodeGraph> MGSNoCodeRunner::get_graph() const { return graph; }
void MGSNoCodeRunner::set_default_target(const NodePath &p_path) { default_target = p_path; }
NodePath MGSNoCodeRunner::get_default_target() const { return default_target; }
void MGSNoCodeRunner::set_run_on_ready(bool p_enabled) { run_on_ready = p_enabled; }
bool MGSNoCodeRunner::is_run_on_ready() const { return run_on_ready; }
void MGSNoCodeRunner::set_max_executed_nodes(int p_limit) { max_executed_nodes = CLAMP(p_limit, 8, 2048); }
int MGSNoCodeRunner::get_max_executed_nodes() const { return max_executed_nodes; }
Dictionary MGSNoCodeRunner::get_runtime_variables() const { return runtime_variables; }
void MGSNoCodeRunner::reset_runtime_variables() { runtime_variables = graph.is_valid() ? graph->get_variables().duplicate(true) : Dictionary(); }

PackedStringArray MGSNoCodeRunner::get_catalog_ids() const { PackedStringArray ids; for (const MGSNoCodeDefinition &definition : MGSNoCodeCatalog::definitions()) ids.push_back(definition.id); return ids; }

Dictionary MGSNoCodeRunner::debug_execute_definition(const String &p_definition, const Dictionary &p_values, Node *p_target) {
    Dictionary values = p_values.duplicate(true); if (p_target && is_inside_tree() && p_target->is_inside_tree()) values[SNAME("target_path")] = get_path_to(p_target);
    Dictionary node; node[SNAME("id")] = "debug_definition"; node[SNAME("definitionId")] = p_definition; node[SNAME("values")] = values;
    Ref<MGSNoCodeGraph> previous = graph; Ref<MGSNoCodeGraph> temporary; temporary.instantiate(); Array nodes; nodes.push_back(node); temporary->set_nodes(nodes); graph = temporary;
    Dictionary outputs; String error; const bool ok = _execute_node(node, Dictionary(), Dictionary(), outputs, error); graph = previous;
    Dictionary report; report[SNAME("ok")] = ok; report[SNAME("error")] = error; report[SNAME("outputs")] = outputs; report[SNAME("definition")] = p_definition; return report;
}

void MGSNoCodeRunner::_load_save_values() {
    save_values.clear();
    Ref<FileAccess> file = FileAccess::open("user://mgs_nocode_save.dat", FileAccess::READ);
    if (file.is_valid()) {
        Variant stored = file->get_var(true);
        if (stored.get_type() == Variant::DICTIONARY) save_values = stored;
    }
}

void MGSNoCodeRunner::input(const Ref<InputEvent> &p_event) {
    if (Engine::get_singleton()->is_editor_hint() || p_event.is_null()) return;
    Dictionary payload;
    Ref<InputEventKey> key = p_event;
    Ref<InputEventScreenTouch> touch = p_event;
    Ref<InputEventScreenDrag> drag = p_event;
    Ref<InputEventMouseButton> mouse_button = p_event;
    Ref<InputEventMouseMotion> mouse_motion = p_event;
    Ref<InputEventJoypadButton> joy_button = p_event;
    Ref<InputEventJoypadMotion> joy_motion = p_event;
    if (key.is_valid()) {
        payload[SNAME("keycode")] = int64_t(key->get_keycode());
        payload[SNAME("physical_keycode")] = int64_t(key->get_physical_keycode());
        payload[SNAME("echo")] = key->is_echo();
        execute_event(key->is_pressed() ? "event.input.key_down" : "event.input.key_up", payload);
    } else if (touch.is_valid()) {
        payload[SNAME("index")] = touch->get_index(); payload[SNAME("position")] = touch->get_position(); payload[SNAME("pressed")] = touch->is_pressed();
        if (touch->is_pressed()) pointer_positions[touch->get_index()] = touch->get_position(); else pointer_positions.erase(touch->get_index());
        execute_event(touch->is_pressed() ? "event.pointer.down" : "event.pointer.up", payload);
    } else if (drag.is_valid()) {
        payload[SNAME("index")] = drag->get_index(); payload[SNAME("position")] = drag->get_position(); payload[SNAME("delta")] = drag->get_relative(); payload[SNAME("pressure")] = drag->get_pressure();
        pointer_positions[drag->get_index()] = drag->get_position(); last_pointer_delta = drag->get_relative();
        execute_event("event.pointer.move", payload); execute_event("event.pointer.drag", payload);
    } else if (mouse_button.is_valid()) {
        payload[SNAME("button_index")] = int(mouse_button->get_button_index()); payload[SNAME("position")] = mouse_button->get_position(); payload[SNAME("pressed")] = mouse_button->is_pressed();
        execute_event(mouse_button->is_pressed() ? "event.pointer.down" : "event.pointer.up", payload);
    } else if (mouse_motion.is_valid()) {
        payload[SNAME("position")] = mouse_motion->get_position(); payload[SNAME("delta")] = mouse_motion->get_relative();
        last_pointer_delta = mouse_motion->get_relative(); execute_event("event.pointer.move", payload);
        if (!Input::get_singleton()->get_mouse_button_mask().is_empty()) execute_event("event.pointer.drag", payload);
    } else if (joy_button.is_valid()) {
        payload[SNAME("device")] = joy_button->get_device(); payload[SNAME("button_index")] = int(joy_button->get_button_index()); payload[SNAME("pressure")] = joy_button->get_pressure();
        execute_event(joy_button->is_pressed() ? "event.input.button_pressed" : "event.input.button_released", payload);
    } else if (joy_motion.is_valid()) {
        payload[SNAME("device")] = joy_motion->get_device(); payload[SNAME("axis")] = int(joy_motion->get_axis()); payload[SNAME("value")] = joy_motion->get_axis_value();
        execute_event("event.input.axis", payload);
    }
}

bool MGSNoCodeRunner::_store_save_values(String &r_error) {
    Ref<FileAccess> file = FileAccess::open("user://mgs_nocode_save.dat", FileAccess::WRITE);
    if (file.is_null()) { r_error = "Não foi possível abrir o arquivo de save."; return false; }
    file->store_var(save_values, true);
    if (file->get_error() != OK) { r_error = "Falha ao gravar o arquivo de save."; return false; }
    return true;
}

void MGSNoCodeRunner::_refresh_watched_actions() {
    watched_actions.clear();
    if (graph.is_null()) return;
    Array nodes = graph->get_nodes();
    for (int i = 0; i < nodes.size(); i++) {
        if (nodes[i].get_type() != Variant::DICTIONARY) continue;
        Dictionary node = nodes[i];
        const String definition = graph->get_definition_id(node);
        if (definition != "event.input.button_pressed" && definition != "event.input.button_released") continue;
        Dictionary values = mgs_values(node);
        String action = String(values.get(SNAME("action"), node.get(SNAME("textValue"), String()))).strip_edges();
        if (!action.is_empty()) watched_actions.insert(StringName(action));
    }
}

void MGSNoCodeRunner::_poll_input_events() {
    for (const StringName &action : watched_actions) {
        Dictionary payload;
        payload[SNAME("action")] = String(action);
        payload[SNAME("strength")] = Input::get_singleton()->get_action_strength(action);
        if (Input::get_singleton()->is_action_just_pressed(action)) execute_event("event.input.button_pressed", payload);
        if (Input::get_singleton()->is_action_just_released(action)) execute_event("event.input.button_released", payload);
    }
}

void MGSNoCodeRunner::_restart_looping_audio(Node *p_player) {
    execute_event("event.audio.finished", p_player);
    if (!p_player || !bool(p_player->get_meta(SNAME("mgs_loop"), false))) return;
    if (AudioStreamPlayer *player = Object::cast_to<AudioStreamPlayer>(p_player)) player->play();
    else if (AudioStreamPlayer2D *player = Object::cast_to<AudioStreamPlayer2D>(p_player)) player->play();
    else if (AudioStreamPlayer3D *player = Object::cast_to<AudioStreamPlayer3D>(p_player)) player->play();
}

void MGSNoCodeRunner::_animation_finished(const StringName &p_animation) {
    execute_event("event.animation.finished", String(p_animation));
}

void MGSNoCodeRunner::_vehicle_collision(Node *p_body) { execute_event("vehicle.on_collision", p_body); }
void MGSNoCodeRunner::_body_event_entered(Node *p_body, const String &p_prefix) { Array bodies = active_overlap_events.get(p_prefix, Array()); if (!bodies.has(p_body)) bodies.push_back(p_body); active_overlap_events[p_prefix] = bodies; execute_event(p_prefix + ".enter", p_body); }
void MGSNoCodeRunner::_body_event_exited(Node *p_body, const String &p_prefix) { Array bodies = active_overlap_events.get(p_prefix, Array()); bodies.erase(p_body); active_overlap_events[p_prefix] = bodies; execute_event(p_prefix + ".exit", p_body); }
void MGSNoCodeRunner::_object_input_event(Node *p_camera, const Ref<InputEvent> &p_event, const Vector3 &p_position, const Vector3 &p_normal, int p_shape) { Dictionary payload; payload[SNAME("camera")] = p_camera; payload[SNAME("position")] = p_position; payload[SNAME("normal")] = p_normal; payload[SNAME("shape")] = p_shape; payload[SNAME("event")] = p_event; Ref<InputEventScreenTouch> touch = p_event; Ref<InputEventMouseButton> mouse = p_event; if (touch.is_valid()) execute_event("event.object.touch", payload); if (mouse.is_valid() && mouse->is_pressed()) execute_event("event.object.click", payload); }
void MGSNoCodeRunner::_ui_focused(Control *p_control) { execute_event("event.ui.focused", p_control); }
void MGSNoCodeRunner::_ui_value_changed(double p_value, Control *p_control) { Dictionary payload; payload[SNAME("value")] = p_value; payload[SNAME("control")] = p_control; execute_event("event.ui.value_changed", payload); }
void MGSNoCodeRunner::_network_connected(int p_peer_id) { execute_event("event.network.connected", p_peer_id); }
void MGSNoCodeRunner::_network_disconnected(int p_peer_id) { execute_event("event.network.disconnected", p_peer_id); }

void MGSNoCodeRunner::_connect_runtime_sources() {
    if (graph.is_null()) return;
    const Array nodes = graph->get_nodes();
    for (int i = 0; i < nodes.size(); i++) {
        if (nodes[i].get_type() != Variant::DICTIONARY) continue;
        const Dictionary node = nodes[i]; const String definition = graph->get_definition_id(node);
        if (definition == "vehicle.on_collision") {
            MGSVehicle3D *vehicle = Object::cast_to<MGSVehicle3D>(_resolve_target(node));
            const Callable callback = callable_mp(this, &MGSNoCodeRunner::_vehicle_collision);
            if (vehicle && !vehicle->is_connected(SNAME("vehicle_collision"), callback)) vehicle->connect(SNAME("vehicle_collision"), callback);
        } else if (definition.begins_with("event.collision.") || definition.begins_with("event.trigger.")) {
            Node *source = _resolve_target(node); const String prefix = definition.begins_with("event.trigger.") ? "event.trigger" : "event.collision";
            const Callable entered = callable_mp(this, &MGSNoCodeRunner::_body_event_entered).bind(prefix); const Callable exited = callable_mp(this, &MGSNoCodeRunner::_body_event_exited).bind(prefix);
            if (source && source->has_signal(SNAME("body_entered")) && !source->is_connected(SNAME("body_entered"), entered)) source->connect(SNAME("body_entered"), entered);
            if (source && source->has_signal(SNAME("body_exited")) && !source->is_connected(SNAME("body_exited"), exited)) source->connect(SNAME("body_exited"), exited);
        } else if (definition == "event.object.touch" || definition == "event.object.click") {
            CollisionObject3D *source = Object::cast_to<CollisionObject3D>(_resolve_target(node)); const Callable callback = callable_mp(this, &MGSNoCodeRunner::_object_input_event); if (source && !source->is_connected(SNAME("input_event"), callback)) { source->set_ray_pickable(true); source->connect(SNAME("input_event"), callback); }
        } else if (definition == "event.ui.focused") {
            Control *source = Object::cast_to<Control>(_resolve_target(node)); const Callable callback = callable_mp(this, &MGSNoCodeRunner::_ui_focused).bind(source); if (source && !source->is_connected(SNAME("focus_entered"), callback)) source->connect(SNAME("focus_entered"), callback);
        } else if (definition == "event.ui.value_changed") {
            Range *source = Object::cast_to<Range>(_resolve_target(node)); const Callable callback = callable_mp(this, &MGSNoCodeRunner::_ui_value_changed).bind(source); if (source && !source->is_connected(SNAME("value_changed"), callback)) source->connect(SNAME("value_changed"), callback);
        }
    }
    Ref<MultiplayerAPI> multiplayer = get_multiplayer();
    if (multiplayer.is_valid()) { const Callable connected = callable_mp(this, &MGSNoCodeRunner::_network_connected); const Callable disconnected = callable_mp(this, &MGSNoCodeRunner::_network_disconnected); if (!multiplayer->is_connected(SNAME("peer_connected"), connected)) multiplayer->connect(SNAME("peer_connected"), connected); if (!multiplayer->is_connected(SNAME("peer_disconnected"), disconnected)) multiplayer->connect(SNAME("peer_disconnected"), disconnected); }
}

Node *MGSNoCodeRunner::_resolve_target(const Dictionary &p_node) const {
    Dictionary values = mgs_values(p_node);
    String path = String(values.get(SNAME("target_path"), values.get(SNAME("target"), String())));
    if (!path.is_empty()) {
        Node *resolved = get_node_or_null(NodePath(path));
        if (resolved) return resolved;
    }
    if (!default_target.is_empty()) {
        Node *resolved = get_node_or_null(default_target);
        if (resolved) return resolved;
    }
    Node *root = get_tree() ? get_tree()->get_current_scene() : nullptr;
    if (!root) return nullptr;
    String object_name = String(p_node.get(SNAME("objectName"), p_node.get(SNAME("object_name"), String())));
    if (!object_name.is_empty()) {
        Node *found = root->find_child(object_name, true, false);
        if (found) return found;
    }
    String object_id = String(p_node.get(SNAME("objectId"), p_node.get(SNAME("object_id"), String())));
    if (!object_id.is_empty()) {
        TypedArray<Node> all = root->find_children("*", "", true, false);
        for (int i = 0; i < all.size(); i++) {
            Node *candidate = Object::cast_to<Node>(all[i]);
            if (candidate && candidate->has_meta(SNAME("mgs_id")) && String(candidate->get_meta(SNAME("mgs_id"))) == object_id) return candidate;
        }
    }
    return root;
}

Variant MGSNoCodeRunner::_resolve_input_value(const Dictionary &p_node, const String &p_key, const Dictionary &p_outputs, const Dictionary &p_incoming) const {
    const String node_id = mgs_string(p_node, SNAME("id"));
    Array incoming = p_incoming.get(node_id, Array());
    for (int i = 0; i < incoming.size(); i++) {
        Dictionary connection = incoming[i];
        const String to_port = mgs_string(connection, SNAME("toPortId"), SNAME("to_port_id"));
        if (to_port != p_key) continue;
        const String from = mgs_string(connection, SNAME("fromNodeId"), SNAME("from_node_id"));
        const String from_port = mgs_string(connection, SNAME("fromPortId"), SNAME("from_port_id"));
        const String output_key = from + ":" + from_port;
        if (p_outputs.has(output_key)) return p_outputs[output_key];
    }
    Dictionary values = mgs_values(p_node);
    if (values.has(p_key)) return mgs_parse_literal(values[p_key]);
    if (p_key == "value" && p_node.has(SNAME("numberValue"))) return p_node[SNAME("numberValue")];
    if ((p_key == "text" || p_key == "message") && p_node.has(SNAME("textValue"))) return p_node[SNAME("textValue")];
    return Variant();
}

Array MGSNoCodeRunner::_flow_connections_from(const String &p_node_id, const String &p_selected_port) const {
    Array result;
    if (graph.is_null()) return result;
    Array connections = graph->get_connections();
    for (int i = 0; i < connections.size(); i++) {
        if (connections[i].get_type() != Variant::DICTIONARY) continue;
        Dictionary connection = connections[i];
        if (mgs_string(connection, SNAME("fromNodeId"), SNAME("from_node_id")) != p_node_id) continue;
        String port = mgs_string(connection, SNAME("fromPortId"), SNAME("from_port_id"));
        if (port.is_empty()) port = "flow";
        const bool flow_port = port == "flow" || port == "then" || port.begins_with("then") || port == "true" || port == "false";
        if (!p_selected_port.is_empty()) {
            if (port != p_selected_port && !(p_selected_port == "flow" && port.begins_with("then"))) continue;
        } else if (!flow_port) continue;
        result.push_back(connection);
    }
    return result;
}

bool MGSNoCodeRunner::_execute_node(const Dictionary &p_node, const Dictionary &p_outputs, const Dictionary &p_incoming, Dictionary &r_outputs, String &r_error) {
    const String definition = graph->get_definition_id(p_node);
    String operation = definition;
    const PackedStringArray definition_parts = definition.split(".");
    // The Compose engine used typed catalog IDs (math.number.add,
    // compare.text.equal, ...), while its executor dispatched the shared
    // operation (math.add, compare.equal, ...). Preserve that contract.
    if ((definition.begins_with("math.") || definition.begins_with("compare.")) && definition_parts.size() == 3) {
        operation = definition_parts[0] + "." + definition_parts[2];
    }
    Node *target = nullptr;

    if (definition.begins_with("event.")) return true;
    if (definition == "vehicle.on_collision" || definition == "vehicle.on_entered" || definition == "vehicle.on_exited" || definition == "vehicle.on_door_opened") return true;
    if (definition.begins_with("flow.")) {
        const String id = mgs_string(p_node, SNAME("id"));
        String selected = "flow";
        if (definition == "flow.branch") selected = bool(_resolve_input_value(p_node, "condition", p_outputs, p_incoming)) ? "true" : "false";
        else if (definition == "flow.gate") {
            const Variant open = _resolve_input_value(p_node, "open", p_outputs, p_incoming);
            selected = (open.get_type() == Variant::NIL || bool(open)) ? "flow" : "blocked";
        }
        else if (definition == "flow.once") {
            const bool already_ran = bool(runtime_flow_state.get(id, false));
            if (bool(_resolve_input_value(p_node, "reset", p_outputs, p_incoming))) runtime_flow_state[id] = false;
            if (already_ran) selected = "blocked"; else { runtime_flow_state[id] = true; selected = "flow"; }
        } else if (definition == "flow.do_n") {
            int current = int(runtime_flow_state.get(id, 0));
            int limit = MAX(0, int(_resolve_input_value(p_node, "count", p_outputs, p_incoming)));
            if (bool(_resolve_input_value(p_node, "reset", p_outputs, p_incoming))) current = 0;
            if (current >= limit) selected = "completed"; else { current++; selected = "flow"; }
            runtime_flow_state[id] = current;
            r_outputs[id + ":index"] = current - 1;
        } else if (definition == "flow.flip_flop") {
            const bool next_b = !bool(runtime_flow_state.get(id, false));
            runtime_flow_state[id] = next_b;
            selected = next_b ? "a" : "b";
            r_outputs[id + ":state"] = next_b;
        } else if (definition == "flow.switch_bool") selected = bool(_resolve_input_value(p_node, "value", p_outputs, p_incoming)) ? "true" : "false";
        else if (definition == "flow.switch_number") selected = "case_" + String::num_int64(int64_t(_resolve_input_value(p_node, "value", p_outputs, p_incoming)));
        else if (definition == "flow.switch_text") selected = "case_" + String(_resolve_input_value(p_node, "value", p_outputs, p_incoming));
        else if (definition == "flow.switch_object") selected = _resolve_input_value(p_node, "value", p_outputs, p_incoming).get_type() == Variant::NIL ? "null" : "valid";
        else if (definition == "flow.throttle") {
            const double interval = MAX(0.0, double(_resolve_input_value(p_node, "seconds", p_outputs, p_incoming)));
            const double last = double(runtime_flow_state.get(id, -1e30));
            if (runtime_elapsed - last < interval) selected = "blocked"; else { runtime_flow_state[id] = runtime_elapsed; selected = "flow"; }
        } else if (definition == "flow.cancel") {
            const String key = String(_resolve_input_value(p_node, "key", p_outputs, p_incoming));
            runtime_flow_state["cancel:" + key] = true;
        } else if (definition == "flow.break") { runtime_flow_state[SNAME("loop_break_requested")] = true; selected = "blocked"; }
        else if (definition == "flow.continue") { runtime_flow_state[SNAME("loop_continue_requested")] = true; selected = "blocked"; }
        else if (definition == "flow.while") { if (bool(runtime_flow_state.get(SNAME("loop_break_requested"), false))) { runtime_flow_state.erase(SNAME("loop_break_requested")); selected = "completed"; } else selected = bool(_resolve_input_value(p_node, "condition", p_outputs, p_incoming)) ? "body" : "completed"; runtime_flow_state.erase(SNAME("loop_continue_requested")); }
        else if (definition == "flow.for") {
            int index = int(runtime_flow_state.get(id, int(_resolve_input_value(p_node, "from", p_outputs, p_incoming))));
            const int end = int(_resolve_input_value(p_node, "to", p_outputs, p_incoming));
            int step = int(_resolve_input_value(p_node, "step", p_outputs, p_incoming));
            if (step == 0) step = index <= end ? 1 : -1;
            const bool requested_break = bool(runtime_flow_state.get(SNAME("loop_break_requested"), false)); runtime_flow_state.erase(SNAME("loop_continue_requested"));
            const bool in_range = !requested_break && (step > 0 ? index <= end : index >= end);
            if (in_range) { r_outputs[id + ":index"] = index; runtime_flow_state[id] = index + step; selected = "body"; }
            else { runtime_flow_state.erase(id); runtime_flow_state.erase(SNAME("loop_break_requested")); selected = "completed"; }
        } else if (definition == "flow.foreach") {
            const Array items = _resolve_input_value(p_node, "list", p_outputs, p_incoming);
            int index = int(runtime_flow_state.get(id, 0)); if (bool(runtime_flow_state.get(SNAME("loop_break_requested"), false))) index = items.size(); runtime_flow_state.erase(SNAME("loop_continue_requested"));
            if (index < items.size()) { r_outputs[id + ":index"] = index; r_outputs[id + ":item"] = items[index]; runtime_flow_state[id] = index + 1; selected = "body"; }
            else { runtime_flow_state.erase(id); runtime_flow_state.erase(SNAME("loop_break_requested")); selected = "completed"; }
        }
        r_outputs[id + ":selected_port"] = selected;
        return true;
    }
    if (definition == "debug.log.trace" || definition == "debug.log.info" || definition == "debug.log.warning" || definition == "debug.log.error" || definition == "debug.log.assert" || definition == "debug.log.breakpoint" || definition == "debug.log.watch") {
        const String message = String(_resolve_input_value(p_node, "message", p_outputs, p_incoming));
        if (definition.ends_with("assert")) { if (!bool(_resolve_input_value(p_node, "condition", p_outputs, p_incoming))) { r_error = message.is_empty() ? "Asserção NoCode falhou." : message; return false; } }
        else if (definition.ends_with("breakpoint")) { r_error = message.is_empty() ? "Breakpoint NoCode alcançado." : message; return false; }
        else if (definition.ends_with("watch")) { Variant value = _resolve_input_value(p_node, "value", p_outputs, p_incoming); runtime_flow_state["watch:" + mgs_string(p_node, SNAME("id"))] = value; print_line(vformat("[NoCode Watch] %s = %s", message, String(value))); }
        else if (definition.ends_with("warning")) WARN_PRINT(message); else if (definition.ends_with("error")) ERR_PRINT(message); else print_line(definition.ends_with("trace") ? "[NoCode Trace] " + message : message);
        return true;
    }
    if (definition == "variable.set") {
        const String name = String(_resolve_input_value(p_node, "name", p_outputs, p_incoming));
        if (name.is_empty()) { r_error = "Nome de variável ausente."; return false; }
        runtime_variables[name] = _resolve_input_value(p_node, "value", p_outputs, p_incoming);
        return true;
    }
    if (definition == "variable.get") {
        const String name = String(_resolve_input_value(p_node, "name", p_outputs, p_incoming));
        r_outputs[mgs_string(p_node, SNAME("id")) + ":value"] = runtime_variables.get(name, Variant());
        return true;
    }
    if (definition == "variable.add") {
        const String name = String(_resolve_input_value(p_node, "name", p_outputs, p_incoming));
        const double current = double(runtime_variables.get(name, 0.0));
        const double amount = double(_resolve_input_value(p_node, "amount", p_outputs, p_incoming));
        runtime_variables[name] = current + amount;
        r_outputs[mgs_string(p_node, SNAME("id")) + ":value"] = current + amount;
        return true;
    }
    if (operation.begins_with("math.") && !definition.begins_with("math.range.")) {
        const double a = double(_resolve_input_value(p_node, "a", p_outputs, p_incoming));
        const double b = double(_resolve_input_value(p_node, "b", p_outputs, p_incoming));
        const String op = operation.trim_prefix("math.");
        Variant value;
        if (op == "add") value = a + b;
        else if (op == "subtract") value = a - b;
        else if (op == "multiply") value = a * b;
        else if (op == "divide") { if (Math::is_zero_approx(b)) { r_error = "Divisão por zero."; return false; } value = a / b; }
        else if (op == "modulo") { if (Math::is_zero_approx(b)) { r_error = "Módulo por zero."; return false; } value = std::fmod(a, b); }
        else if (op == "power") value = std::pow(a, b);
        else if (op == "minimum") value = MIN(a, b);
        else if (op == "maximum") value = MAX(a, b);
        else if (op == "average") value = (a + b) * 0.5;
        else if (op == "atan2") value = std::atan2(a, b);
        else if (op == "log_base") { if (a <= 0.0 || b <= 0.0 || Math::is_equal_approx(b, 1.0)) { r_error = "Base ou valor inválido para logaritmo."; return false; } value = std::log(a) / std::log(b); }
        else if (op == "copy_sign") value = std::copysign(a, b);
        else if (op == "absolute") value = std::abs(a);
        else if (op == "negative") value = -a;
        else if (op == "sqrt") { if (a < 0.0) { r_error = "Raiz quadrada de número negativo."; return false; } value = std::sqrt(a); }
        else if (op == "cube_root") value = std::cbrt(a);
        else if (op == "exp") value = std::exp(a);
        else if (op == "log") { if (a <= 0.0) { r_error = "Logaritmo exige valor positivo."; return false; } value = std::log(a); }
        else if (op == "log10") { if (a <= 0.0) { r_error = "Log10 exige valor positivo."; return false; } value = std::log10(a); }
        else if (op == "floor") value = std::floor(a);
        else if (op == "ceil") value = std::ceil(a);
        else if (op == "round") value = std::round(a);
        else if (op == "truncate") value = std::trunc(a);
        else if (op == "fraction") value = a - std::floor(a);
        else if (op == "sign") value = a > 0.0 ? 1.0 : (a < 0.0 ? -1.0 : 0.0);
        else if (op == "sin") value = std::sin(a);
        else if (op == "cos") value = std::cos(a);
        else if (op == "tan") value = std::tan(a);
        else if (op == "asin") value = std::asin(CLAMP(a, -1.0, 1.0));
        else if (op == "acos") value = std::acos(CLAMP(a, -1.0, 1.0));
        else if (op == "atan") value = std::atan(a);
        else if (op == "degrees") value = Math::rad_to_deg(a);
        else if (op == "radians") value = Math::deg_to_rad(a);
        else if (op == "saturate") value = CLAMP(a, 0.0, 1.0);
        else if (op == "is_finite") value = std::isfinite(a);
        else if (op == "is_nan") value = std::isnan(a);
        else { r_error = vformat("Operação matemática não implementada: %s.", op); return false; }
        if (definition.begins_with("math.integer.") && value.get_type() != Variant::BOOL) value = int64_t(double(value));
        const String id = mgs_string(p_node, SNAME("id"));
        r_outputs[id + ":value"] = value;
        r_outputs[id + ":result"] = value;
        return true;
    }
    if (definition.begins_with("math.range.")) {
        const String op = definition.trim_prefix("math.range.");
        const double value_in = double(_resolve_input_value(p_node, "value", p_outputs, p_incoming));
        const double a = double(_resolve_input_value(p_node, "a", p_outputs, p_incoming));
        const double b = double(_resolve_input_value(p_node, "b", p_outputs, p_incoming));
        const double weight = double(_resolve_input_value(p_node, "weight", p_outputs, p_incoming));
        double value = value_in;
        if (op == "clamp") value = CLAMP(value_in, MIN(a, b), MAX(a, b));
        else if (op == "lerp") value = Math::lerp(a, b, weight);
        else if (op == "inverse_lerp") { if (Math::is_equal_approx(a, b)) { r_error = "Inverse Lerp exige limites diferentes."; return false; } value = Math::inverse_lerp(a, b, value_in); }
        else if (op == "smoothstep") value = Math::smoothstep(a, b, value_in);
        else if (op == "move_towards") value = Math::move_toward(a, b, std::abs(weight));
        else if (op == "random_range") value = Math::random(a, b);
        else if (op == "remap") {
            const double out_a = double(_resolve_input_value(p_node, "out_min", p_outputs, p_incoming));
            const double out_b = double(_resolve_input_value(p_node, "out_max", p_outputs, p_incoming));
            if (Math::is_equal_approx(a, b)) { r_error = "Remap exige faixa de entrada não vazia."; return false; }
            value = Math::remap(value_in, a, b, out_a, out_b);
        } else { r_error = vformat("Operação de faixa não implementada: %s.", op); return false; }
        const String id = mgs_string(p_node, SNAME("id"));
        r_outputs[id + ":value"] = value;
        r_outputs[id + ":result"] = value;
        return true;
    }
    if (operation.begins_with("compare.")) {
        Variant a = _resolve_input_value(p_node, "a", p_outputs, p_incoming);
        Variant b = _resolve_input_value(p_node, "b", p_outputs, p_incoming);
        const String op = operation.trim_prefix("compare.");
        bool value = false;
        if (op == "equal") value = a == b;
        else if (op == "not_equal") value = a != b;
        else if (op == "is_null") {
            Object *object = nullptr;
            if (a.get_type() == Variant::OBJECT) object = a;
            value = a.get_type() == Variant::NIL || (a.get_type() == Variant::OBJECT && object == nullptr);
        }
        else {
            if (!a.is_num() || (!b.is_num() && op != "between" && op != "outside")) { r_error = vformat("Comparação %s exige números.", op); return false; }
            const double av = double(a);
            const double bv = double(b);
            if (op == "greater") value = av > bv;
            else if (op == "greater_equal") value = av >= bv;
            else if (op == "less") value = av < bv;
            else if (op == "less_equal") value = av <= bv;
            else if (op == "approximately") {
                const double tolerance = double(_resolve_input_value(p_node, "tolerance", p_outputs, p_incoming));
                value = std::abs(av - bv) <= (tolerance > 0.0 ? tolerance : CMP_EPSILON);
            } else if (op == "between" || op == "outside") {
                const double minimum = double(_resolve_input_value(p_node, "minimum", p_outputs, p_incoming));
                const double maximum = double(_resolve_input_value(p_node, "maximum", p_outputs, p_incoming));
                const bool inside = av >= MIN(minimum, maximum) && av <= MAX(minimum, maximum);
                value = op == "between" ? inside : !inside;
            } else { r_error = vformat("Comparação não implementada: %s.", op); return false; }
        }
        r_outputs[mgs_string(p_node, SNAME("id")) + ":value"] = value;
        r_outputs[mgs_string(p_node, SNAME("id")) + ":result"] = value;
        return true;
    }

    if (definition.begins_with("text.")) {
        const String op = definition.trim_prefix("text.");
        const String input = String(_resolve_input_value(p_node, "text", p_outputs, p_incoming));
        const String value_text = String(_resolve_input_value(p_node, "value", p_outputs, p_incoming));
        Variant result;
        if (op == "append") result = input + value_text;
        else if (op == "prepend") result = value_text + input;
        else if (op == "join") {
            Array values = _resolve_input_value(p_node, "list", p_outputs, p_incoming);
            const String separator = String(_resolve_input_value(p_node, "separator", p_outputs, p_incoming));
            String joined;
            for (int i = 0; i < values.size(); i++) { if (i > 0) joined += separator; joined += String(values[i]); }
            result = joined;
        } else if (op == "split") result = input.split(String(_resolve_input_value(p_node, "separator", p_outputs, p_incoming)), true);
        else if (op == "replace") result = input.replace(String(_resolve_input_value(p_node, "search", p_outputs, p_incoming)), String(_resolve_input_value(p_node, "replacement", p_outputs, p_incoming)));
        else if (op == "replace_first") result = input.replace_first(String(_resolve_input_value(p_node, "search", p_outputs, p_incoming)), String(_resolve_input_value(p_node, "replacement", p_outputs, p_incoming)));
        else if (op == "contains") result = input.contains(String(_resolve_input_value(p_node, "search", p_outputs, p_incoming)));
        else if (op == "starts_with") result = input.begins_with(String(_resolve_input_value(p_node, "prefix", p_outputs, p_incoming)));
        else if (op == "ends_with") result = input.ends_with(String(_resolve_input_value(p_node, "suffix", p_outputs, p_incoming)));
        else if (op == "equals_ignore_case") result = input.nocasecmp_to(value_text) == 0;
        else if (op == "uppercase") result = input.to_upper();
        else if (op == "lowercase") result = input.to_lower();
        else if (op == "capitalize") result = input.capitalize();
        else if (op == "trim") result = input.strip_edges();
        else if (op == "trim_start") result = input.strip_edges(true, false);
        else if (op == "trim_end") result = input.strip_edges(false, true);
        else if (op == "substring") result = input.substr(int(_resolve_input_value(p_node, "start", p_outputs, p_incoming)), int(_resolve_input_value(p_node, "length", p_outputs, p_incoming)));
        else if (op == "character_at") {
            const int index = int(_resolve_input_value(p_node, "index", p_outputs, p_incoming));
            if (index < 0 || index >= input.length()) { r_error = "Índice de caractere fora do texto."; return false; }
            result = input.substr(index, 1);
        } else if (op == "length") result = input.length();
        else if (op == "is_empty") result = input.is_empty();
        else if (op == "is_blank") result = input.strip_edges().is_empty();
        else if (op == "pad_start" || op == "pad_end") {
            const int length = int(_resolve_input_value(p_node, "length", p_outputs, p_incoming));
            String fill = String(_resolve_input_value(p_node, "fill", p_outputs, p_incoming));
            if (fill.is_empty()) fill = " ";
            String padded = input;
            while (padded.length() < length) padded = op == "pad_start" ? fill + padded : padded + fill;
            result = padded.length() > length ? (op == "pad_start" ? padded.substr(padded.length() - length, length) : padded.substr(0, length)) : padded;
        } else if (op == "repeat") result = input.repeat(MAX(0, int(_resolve_input_value(p_node, "count", p_outputs, p_incoming))));
        else if (op == "reverse") result = input.reverse();
        else if (op == "format") { Variant format_values = _resolve_input_value(p_node, "values", p_outputs, p_incoming); if (format_values.get_type() == Variant::DICTIONARY || format_values.get_type() == Variant::ARRAY) result = input.format(format_values); else result = input.replace("{value}", String(format_values)); }
        else if (op == "number_to_text" || op == "bool_to_text" || op == "vector_to_text") result = String(_resolve_input_value(p_node, "value", p_outputs, p_incoming));
        else if (op == "parse_number") {
            if (!input.is_valid_float()) { r_error = "Texto não representa um número."; return false; }
            result = input.to_float();
        } else if (op == "parse_bool") {
            const String normalized = input.strip_edges().to_lower();
            if (normalized != "true" && normalized != "false") { r_error = "Texto precisa ser true ou false."; return false; }
            result = normalized == "true";
        } else if (op.begins_with("regex_")) {
            Ref<RegEx> regex;
            regex.instantiate();
            const String pattern = String(_resolve_input_value(p_node, "pattern", p_outputs, p_incoming));
            if (regex->compile(pattern) != OK) { r_error = "Expressão regular inválida."; return false; }
            if (op == "regex_matches") result = regex->search(input).is_valid();
            else if (op == "regex_find") {
                Ref<RegExMatch> match = regex->search(input);
                result = match.is_valid() ? match->get_string(0) : String();
            } else result = regex->sub(input, String(_resolve_input_value(p_node, "replacement", p_outputs, p_incoming)), true);
        } else if (op == "lines") result = input.split("\n", true);
        else if (op == "words") result = input.split(" ", false);
        else { r_error = vformat("Operação de texto não implementada: %s.", op); return false; }
        const String id = mgs_string(p_node, SNAME("id"));
        r_outputs[id + ":value"] = result;
        r_outputs[id + ":result"] = result;
        return true;
    }

    if (definition.begins_with("list.")) {
        const PackedStringArray parts = definition.split(".");
        const String kind = parts.size() == 3 ? parts[1] : String();
        const String op = parts.size() == 3 ? parts[2] : String();
        Variant list_value = _resolve_input_value(p_node, "list", p_outputs, p_incoming);
        Array list = list_value.get_type() == Variant::ARRAY ? Array(list_value).duplicate(true) : Array();
        const Variant item = _resolve_input_value(p_node, "value", p_outputs, p_incoming);
        const int index = int(_resolve_input_value(p_node, "index", p_outputs, p_incoming));
        Variant result;
        if (op == "create") result = Array();
        else if (op == "add") { list.push_back(item); result = list; }
        else if (op == "insert") { if (index < 0 || index > list.size()) { r_error = "Índice de inserção fora da lista."; return false; } list.insert(index, item); result = list; }
        else if (op == "set") { if (index < 0 || index >= list.size()) { r_error = "Índice fora da lista."; return false; } list[index] = item; result = list; }
        else if (op == "get") { if (index < 0 || index >= list.size()) { r_error = "Índice fora da lista."; return false; } result = list[index]; }
        else if (op == "first") { if (list.is_empty()) { r_error = "Lista vazia não possui primeiro item."; return false; } result = list.front(); }
        else if (op == "last") { if (list.is_empty()) { r_error = "Lista vazia não possui último item."; return false; } result = list.back(); }
        else if (op == "remove") { const int found = list.find(item); if (found >= 0) list.remove_at(found); result = list; }
        else if (op == "remove_at") { if (index < 0 || index >= list.size()) { r_error = "Índice fora da lista."; return false; } list.remove_at(index); result = list; }
        else if (op == "clear") { list.clear(); result = list; }
        else if (op == "contains") result = list.has(item);
        else if (op == "index_of") result = list.find(item);
        else if (op == "last_index_of") result = list.rfind(item);
        else if (op == "count") result = list.size();
        else if (op == "is_empty") result = list.is_empty();
        else if (op == "reverse") { list.reverse(); result = list; }
        else if (op == "shuffle") { list.shuffle(); result = list; }
        else if (op == "sort") { list.sort(); result = list; }
        else if (op == "distinct") { Array unique; for (int i = 0; i < list.size(); i++) if (!unique.has(list[i])) unique.push_back(list[i]); result = unique; }
        else if (op == "slice") {
            const int start = int(_resolve_input_value(p_node, "start", p_outputs, p_incoming));
            const int length = int(_resolve_input_value(p_node, "length", p_outputs, p_incoming));
            result = list.slice(CLAMP(start, 0, list.size()), CLAMP(start + MAX(0, length), 0, list.size()));
        } else if (op == "concat") {
            Variant other_value = _resolve_input_value(p_node, "other", p_outputs, p_incoming);
            if (other_value.get_type() != Variant::ARRAY) { r_error = "Concat exige outra Array."; return false; }
            list.append_array(Array(other_value)); result = list;
        } else if (op == "filter") {
            const String mode = String(_resolve_input_value(p_node, "mode", p_outputs, p_incoming)).to_lower();
            Array filtered;
            for (int i = 0; i < list.size(); i++) {
                const bool matches = mode == "not_equal" ? list[i] != item : list[i] == item;
                if (matches) filtered.push_back(list[i]);
            }
            result = filtered;
        } else if (op == "map") {
            const String mode = String(_resolve_input_value(p_node, "mode", p_outputs, p_incoming)).to_lower();
            const double amount = double(_resolve_input_value(p_node, "amount", p_outputs, p_incoming));
            Array mapped;
            for (int i = 0; i < list.size(); i++) {
                if (kind == "number") { if (!list[i].is_num()) { r_error = "Map numérico encontrou item não numérico."; return false; } const double current = double(list[i]); mapped.push_back(mode == "add" ? current + amount : current * amount); }
                else if (kind == "text") { String current = String(list[i]); if (mode == "uppercase") current = current.to_upper(); else if (mode == "lowercase") current = current.to_lower(); else if (mode == "reverse") current = current.reverse(); else if (mode == "prepend") current = String(_resolve_input_value(p_node, "text", p_outputs, p_incoming)) + current; else if (mode == "append") current += String(_resolve_input_value(p_node, "text", p_outputs, p_incoming)); mapped.push_back(current); }
                else if (kind == "bool") mapped.push_back(mode == "identity" ? bool(list[i]) : !bool(list[i]));
                else if (kind == "vector3") { if (list[i].get_type() != Variant::VECTOR3) { r_error = "Map Vector3 encontrou item incompatível."; return false; } Vector3 current = list[i]; Variant vector_amount = _resolve_input_value(p_node, "vector", p_outputs, p_incoming); mapped.push_back(mode == "add" && vector_amount.get_type() == Variant::VECTOR3 ? current + Vector3(vector_amount) : current * amount); }
                else mapped.push_back(list[i]);
            }
            result = mapped;
        } else if (op == "reduce") {
            const String mode = String(_resolve_input_value(p_node, "mode", p_outputs, p_incoming)).to_lower();
            if (kind == "number") { double accumulator = double(_resolve_input_value(p_node, "initial", p_outputs, p_incoming)); for (int i = 0; i < list.size(); i++) { if (!list[i].is_num()) { r_error = "Reduce numérico encontrou item não numérico."; return false; } const double current = double(list[i]); accumulator = mode == "multiply" ? accumulator * current : accumulator + current; } result = accumulator; }
            else if (kind == "text") { String accumulator = String(_resolve_input_value(p_node, "initial", p_outputs, p_incoming)); const String separator = String(_resolve_input_value(p_node, "separator", p_outputs, p_incoming)); for (int i = 0; i < list.size(); i++) { if (!accumulator.is_empty() && !separator.is_empty()) accumulator += separator; accumulator += String(list[i]); } result = accumulator; }
            else if (kind == "bool") { bool accumulator = mode == "all"; for (int i = 0; i < list.size(); i++) accumulator = mode == "all" ? accumulator && bool(list[i]) : accumulator || bool(list[i]); result = accumulator; }
            else if (kind == "vector3") { Vector3 accumulator; Variant initial = _resolve_input_value(p_node, "initial", p_outputs, p_incoming); if (initial.get_type() == Variant::VECTOR3) accumulator = initial; for (int i = 0; i < list.size(); i++) { if (list[i].get_type() != Variant::VECTOR3) { r_error = "Reduce Vector3 encontrou item incompatível."; return false; } accumulator += Vector3(list[i]); } result = accumulator; }
            else result = list.is_empty() ? Variant() : (mode == "last" ? list.back() : list.front());
        } else if (op == "random") {
            if (list.is_empty()) { r_error = "Lista vazia não possui item aleatório."; return false; }
            result = list[Math::rand() % list.size()];
        } else { r_error = vformat("Operação de lista não implementada: %s.", op); return false; }
        const String id = mgs_string(p_node, SNAME("id"));
        r_outputs[id + ":value"] = result;
        r_outputs[id + ":result"] = result;
        r_outputs[id + ":list"] = result;
        return true;
    }

    if (definition.begins_with("vector.")) {
        const PackedStringArray parts = definition.split(".");
        const String kind = parts[1];
        const String op = parts[2];
        const int dimensions = kind == "vector2" ? 2 : (kind == "vector3" ? 3 : 4);
        auto to_vector4 = [&](const Variant &p_value, Vector4 &r_value) -> bool {
            if (dimensions == 2 && p_value.get_type() == Variant::VECTOR2) { Vector2 v = p_value; r_value = Vector4(v.x, v.y, 0, 0); return true; }
            if (dimensions == 3 && p_value.get_type() == Variant::VECTOR3) { Vector3 v = p_value; r_value = Vector4(v.x, v.y, v.z, 0); return true; }
            if (dimensions == 4 && p_value.get_type() == Variant::VECTOR4) { r_value = p_value; return true; }
            return false;
        };
        auto from_vector4 = [&](const Vector4 &p_value) -> Variant {
            if (dimensions == 2) return Vector2(p_value.x, p_value.y);
            if (dimensions == 3) return Vector3(p_value.x, p_value.y, p_value.z);
            return p_value;
        };
        Variant a_value = _resolve_input_value(p_node, "a", p_outputs, p_incoming);
        if (a_value.get_type() == Variant::NIL) a_value = _resolve_input_value(p_node, "value", p_outputs, p_incoming);
        Variant b_value = _resolve_input_value(p_node, "b", p_outputs, p_incoming);
        Vector4 a, b;
        const bool has_a = to_vector4(a_value, a);
        const bool has_b = to_vector4(b_value, b);
        const double scalar = double(_resolve_input_value(p_node, "scalar", p_outputs, p_incoming));
        auto dot_n = [&](const Vector4 &p_a, const Vector4 &p_b) -> double { double sum = p_a.x * p_b.x + p_a.y * p_b.y; if (dimensions > 2) sum += p_a.z * p_b.z; if (dimensions > 3) sum += p_a.w * p_b.w; return sum; };
        auto length_n = [&](const Vector4 &p_v) -> double { return std::sqrt(dot_n(p_v, p_v)); };
        Variant result;
        Vector4 out;
        if (op == "make") {
            out = Vector4(double(_resolve_input_value(p_node, "x", p_outputs, p_incoming)), double(_resolve_input_value(p_node, "y", p_outputs, p_incoming)), double(_resolve_input_value(p_node, "z", p_outputs, p_incoming)), double(_resolve_input_value(p_node, "w", p_outputs, p_incoming)));
            result = from_vector4(out);
        } else {
            if (!has_a) { r_error = vformat("%s exige entrada %s.", op, kind); return false; }
            if (op == "split") result = from_vector4(a);
            else if (op.begins_with("with_")) {
                out = a; const double component = double(_resolve_input_value(p_node, "component", p_outputs, p_incoming));
                if (op == "with_x") out.x = component; else if (op == "with_y") out.y = component; else if (op == "with_z") out.z = component; else out.w = component;
                result = from_vector4(out);
            } else if (op == "length") result = length_n(a);
            else if (op == "length_squared") result = dot_n(a, a);
            else if (op == "is_zero") result = Math::is_zero_approx(length_n(a));
            else if (op == "is_finite") result = std::isfinite(a.x) && std::isfinite(a.y) && (dimensions < 3 || std::isfinite(a.z)) && (dimensions < 4 || std::isfinite(a.w));
            else {
                if ((op == "add" || op == "subtract" || op == "multiply" || op == "divide" || op == "minimum" || op == "maximum" || op == "distance" || op == "dot" || op == "cross" || op == "lerp" || op == "move_towards" || op == "reflect" || op == "project" || op == "angle" || op == "snap") && !has_b) { r_error = vformat("%s exige duas entradas %s.", op, kind); return false; }
                if (op == "add") out = a + b;
                else if (op == "subtract") out = a - b;
                else if (op == "multiply") out = Vector4(a.x*b.x,a.y*b.y,a.z*b.z,a.w*b.w);
                else if (op == "divide") { if (Math::is_zero_approx(b.x)||Math::is_zero_approx(b.y)||(dimensions>2&&Math::is_zero_approx(b.z))||(dimensions>3&&Math::is_zero_approx(b.w))) { r_error="Divisão vetorial por zero."; return false; } out=Vector4(a.x/b.x,a.y/b.y,dimensions>2?a.z/b.z:0,dimensions>3?a.w/b.w:0); }
                else if (op == "scale") out = a * scalar;
                else if (op == "normalize") { const double len=length_n(a); out = Math::is_zero_approx(len) ? Vector4() : a / len; }
                else if (op == "distance") { Vector4 delta=a-b; result=length_n(delta); }
                else if (op == "dot") result=dot_n(a,b);
                else if (op == "cross") { if(dimensions==2) result=a.x*b.y-a.y*b.x; else { Vector3 c=Vector3(a.x,a.y,a.z).cross(Vector3(b.x,b.y,b.z)); out=Vector4(c.x,c.y,c.z,dimensions==4?a.w:0); } }
                else if (op == "lerp") out=a+(b-a)*double(_resolve_input_value(p_node,"weight",p_outputs,p_incoming));
                else if (op == "move_towards") { Vector4 d=b-a; double len=length_n(d); double delta=std::abs(double(_resolve_input_value(p_node,"delta",p_outputs,p_incoming))); out=len<=delta||Math::is_zero_approx(len)?b:a+d/len*delta; }
                else if (op == "reflect") { double denom=dot_n(b,b); if(Math::is_zero_approx(denom)){r_error="Normal de reflexão não pode ser zero.";return false;} out=a-b*(2.0*dot_n(a,b)/denom); }
                else if (op == "project") { double denom=dot_n(b,b); if(Math::is_zero_approx(denom)){r_error="Vetor de projeção não pode ser zero.";return false;} out=b*(dot_n(a,b)/denom); }
                else if (op == "angle") { double denom=length_n(a)*length_n(b); if(Math::is_zero_approx(denom)){r_error="Ângulo exige vetores não nulos.";return false;} result=std::acos(CLAMP(dot_n(a,b)/denom,-1.0,1.0)); }
                else if (op == "clamp_length") { double len=length_n(a); double max_len=std::abs(double(_resolve_input_value(p_node,"max_length",p_outputs,p_incoming))); out=len>max_len&&!Math::is_zero_approx(len)?a/len*max_len:a; }
                else if (op == "minimum") out=Vector4(MIN(a.x,b.x),MIN(a.y,b.y),MIN(a.z,b.z),MIN(a.w,b.w));
                else if (op == "maximum") out=Vector4(MAX(a.x,b.x),MAX(a.y,b.y),MAX(a.z,b.z),MAX(a.w,b.w));
                else if (op == "absolute") out=Vector4(std::abs(a.x),std::abs(a.y),std::abs(a.z),std::abs(a.w));
                else if (op == "floor") out=Vector4(std::floor(a.x),std::floor(a.y),std::floor(a.z),std::floor(a.w));
                else if (op == "ceil") out=Vector4(std::ceil(a.x),std::ceil(a.y),std::ceil(a.z),std::ceil(a.w));
                else if (op == "round") out=Vector4(std::round(a.x),std::round(a.y),std::round(a.z),std::round(a.w));
                else if (op == "snap") out=Vector4(Math::snapped(a.x,b.x),Math::snapped(a.y,b.y),dimensions>2?Math::snapped(a.z,b.z):0,dimensions>3?Math::snapped(a.w,b.w):0);
                else if (op == "rotate") { double angle=double(_resolve_input_value(p_node,"angle",p_outputs,p_incoming)); if(dimensions==2){double c=std::cos(angle),s=std::sin(angle);out=Vector4(a.x*c-a.y*s,a.x*s+a.y*c,0,0);}else{Vector3 axis=_resolve_input_value(p_node,"axis",p_outputs,p_incoming);if(axis.is_zero_approx())axis=Vector3(0,1,0);Vector3 rotated=Vector3(a.x,a.y,a.z).rotated(axis.normalized(),angle);out=Vector4(rotated.x,rotated.y,rotated.z,a.w);} }
                else if (op == "inverse") { if(Math::is_zero_approx(a.x)||Math::is_zero_approx(a.y)||(dimensions>2&&Math::is_zero_approx(a.z))||(dimensions>3&&Math::is_zero_approx(a.w))){r_error="Inverso vetorial exige componentes não nulos.";return false;}out=Vector4(1.0/a.x,1.0/a.y,dimensions>2?1.0/a.z:0,dimensions>3?1.0/a.w:0); }
                else { r_error=vformat("Operação vetorial não implementada: %s.",op);return false; }
                if (result.get_type()==Variant::NIL) result=from_vector4(out);
            }
        }
        const String id=mgs_string(p_node,SNAME("id")); r_outputs[id+":value"]=result; r_outputs[id+":result"]=result;
        if (result.get_type()==Variant::VECTOR2){Vector2 v=result;r_outputs[id+":x"]=v.x;r_outputs[id+":y"]=v.y;}
        else if(result.get_type()==Variant::VECTOR3){Vector3 v=result;r_outputs[id+":x"]=v.x;r_outputs[id+":y"]=v.y;r_outputs[id+":z"]=v.z;}
        else if(result.get_type()==Variant::VECTOR4){Vector4 v=result;r_outputs[id+":x"]=v.x;r_outputs[id+":y"]=v.y;r_outputs[id+":z"]=v.z;r_outputs[id+":w"]=v.w;}
        return true;
    }

    if (definition.begins_with("color.")) {
        const String op=definition.trim_prefix("color.");
        Variant a_value=_resolve_input_value(p_node,"a",p_outputs,p_incoming);
        if(a_value.get_type()==Variant::NIL)a_value=_resolve_input_value(p_node,"color",p_outputs,p_incoming);
        Variant b_value=_resolve_input_value(p_node,"b",p_outputs,p_incoming);
        Color a=a_value.get_type()==Variant::COLOR?Color(a_value):Color();
        Color b=b_value.get_type()==Variant::COLOR?Color(b_value):Color();
        const double amount=double(_resolve_input_value(p_node,"amount",p_outputs,p_incoming));
        Variant result;
        if(op=="make_rgb"||op=="make_rgba") result=Color(double(_resolve_input_value(p_node,"r",p_outputs,p_incoming)),double(_resolve_input_value(p_node,"g",p_outputs,p_incoming)),double(_resolve_input_value(p_node,"b",p_outputs,p_incoming)),op=="make_rgba"?double(_resolve_input_value(p_node,"a",p_outputs,p_incoming)):1.0);
        else if(op=="split_rgb"||op=="split_rgba") result=a;
        else if(op=="from_hex") { const String hex=String(_resolve_input_value(p_node,"hex",p_outputs,p_incoming)); if(!Color::html_is_valid(hex)){r_error="Cor hexadecimal inválida.";return false;} result=Color::html(hex); }
        else if(op=="to_hex") result=a.to_html(bool(_resolve_input_value(p_node,"include_alpha",p_outputs,p_incoming)));
        else if(op=="from_hsv") result=Color::from_hsv(double(_resolve_input_value(p_node,"h",p_outputs,p_incoming)),double(_resolve_input_value(p_node,"s",p_outputs,p_incoming)),double(_resolve_input_value(p_node,"v",p_outputs,p_incoming)),double(_resolve_input_value(p_node,"a",p_outputs,p_incoming)));
        else if(op=="to_hsv") result=Vector3(a.get_h(),a.get_s(),a.get_v());
        else if(op=="lerp") result=a.lerp(b,CLAMP(double(_resolve_input_value(p_node,"weight",p_outputs,p_incoming)),0.0,1.0));
        else if(op=="blend_add") result=Color(CLAMP(a.r+b.r,0.0,1.0),CLAMP(a.g+b.g,0.0,1.0),CLAMP(a.b+b.b,0.0,1.0),CLAMP(a.a+b.a,0.0,1.0));
        else if(op=="blend_multiply") result=Color(a.r*b.r,a.g*b.g,a.b*b.b,a.a*b.a);
        else if(op=="blend_screen") result=Color(1-(1-a.r)*(1-b.r),1-(1-a.g)*(1-b.g),1-(1-a.b)*(1-b.b),MAX(a.a,b.a));
        else if(op=="blend_overlay") { auto overlay=[](double x,double y){return x<0.5?2*x*y:1-2*(1-x)*(1-y);}; result=Color(overlay(a.r,b.r),overlay(a.g,b.g),overlay(a.b,b.b),MAX(a.a,b.a)); }
        else if(op=="lighten") result=a.lightened(CLAMP(amount,0.0,1.0));
        else if(op=="darken") result=a.darkened(CLAMP(amount,0.0,1.0));
        else if(op=="saturate"||op=="desaturate") { double saturation=CLAMP(a.get_s()+(op=="saturate"?amount:-amount),0.0,1.0); result=Color::from_hsv(a.get_h(),saturation,a.get_v(),a.a); }
        else if(op=="invert") result=Color(1-a.r,1-a.g,1-a.b,a.a);
        else if(op=="grayscale") { double l=a.get_luminance(); result=Color(l,l,l,a.a); }
        else if(op=="alpha") result=a.a;
        else if(op=="with_alpha") { a.a=CLAMP(double(_resolve_input_value(p_node,"alpha",p_outputs,p_incoming)),0.0,1.0); result=a; }
        else if(op=="luminance") result=a.get_luminance();
        else if(op=="contrast") { double factor=amount; result=Color(CLAMP((a.r-.5)*factor+.5,0.0,1.0),CLAMP((a.g-.5)*factor+.5,0.0,1.0),CLAMP((a.b-.5)*factor+.5,0.0,1.0),a.a); }
        else if(op=="temperature") { double normalized=CLAMP(amount,-1.0,1.0); result=Color(CLAMP(a.r+MAX(0.0,normalized)*.2,0.0,1.0),a.g,CLAMP(a.b+MAX(0.0,-normalized)*.2,0.0,1.0),a.a); }
        else {r_error=vformat("Operação de cor não implementada: %s.",op);return false;}
        const String id=mgs_string(p_node,SNAME("id"));r_outputs[id+":value"]=result;r_outputs[id+":result"]=result;
        if(result.get_type()==Variant::COLOR){Color c=result;r_outputs[id+":r"]=c.r;r_outputs[id+":g"]=c.g;r_outputs[id+":b"]=c.b;r_outputs[id+":a"]=c.a;}
        else if(result.get_type()==Variant::VECTOR3){Vector3 hsv=result;r_outputs[id+":h"]=hsv.x;r_outputs[id+":s"]=hsv.y;r_outputs[id+":v"]=hsv.z;}
        return true;
    }

    if (definition.begins_with("save.")) {
        const PackedStringArray parts=definition.split(".");
        const String kind=parts[1]; const String op=parts[2];
        const String key=String(_resolve_input_value(p_node,"key",p_outputs,p_incoming)).strip_edges();
        if(key.is_empty()){r_error="Save Game exige uma chave não vazia.";return false;}
        Variant result;
        if(op=="save") {
            Variant value=_resolve_input_value(p_node,"value",p_outputs,p_incoming);
            if(value.get_type()==Variant::NIL){r_error="Valor de save ausente.";return false;}
            save_values[key]=value;
            if(!_store_save_values(r_error))return false;
            result=value;
            execute_event("event.save.completed",key);
        } else if(op=="load") {
            Variant fallback=_resolve_input_value(p_node,"default",p_outputs,p_incoming);
            result=save_values.get(key,fallback);
            execute_event("event.save.loaded",key);
        } else if(op=="has") result=save_values.has(key);
        else if(op=="delete") { const bool existed=save_values.erase(key); if(!_store_save_values(r_error))return false; result=existed; }
        else {r_error=vformat("Operação de save não implementada: %s.",op);return false;}
        const String id=mgs_string(p_node,SNAME("id"));r_outputs[id+":value"]=result;r_outputs[id+":result"]=result;
        return true;
    }

    if (definition.begins_with("time.")) {
        const String op=definition.trim_prefix("time."); Variant result;
        if(op=="delta") result=get_process_delta_time();
        else if(op=="fixed_delta") result=get_physics_process_delta_time();
        else if(op=="elapsed"||op=="unscaled_elapsed") result=runtime_elapsed;
        else if(op=="frame") result=int64_t(Engine::get_singleton()->get_process_frames());
        else if(op=="fps") result=Engine::get_singleton()->get_frames_per_second();
        else if(op=="timestamp") result=Time::get_singleton()->get_unix_time_from_system();
        else if(op=="date") result=Time::get_singleton()->get_date_string_from_system();
        else if(op=="time") result=Time::get_singleton()->get_time_string_from_system();
        else if(op=="timezone") result=Time::get_singleton()->get_time_zone_from_system();
        else if(op.begins_with("timer_")) {
            const String name=String(_resolve_input_value(p_node,"timer_name",p_outputs,p_incoming)).strip_edges();
            if(name.is_empty()){r_error="Timer exige timer_name.";return false;}
            Dictionary timer=runtime_timers.get(name,Dictionary());
            if(op=="timer_start") { double duration=double(_resolve_input_value(p_node,"duration",p_outputs,p_incoming)); if(duration<=0.0)duration=double(_resolve_input_value(p_node,"seconds",p_outputs,p_incoming)); if(duration<=0.0){r_error="Duração do timer precisa ser positiva.";return false;} timer[SNAME("remaining")]=duration;timer[SNAME("paused")]=false;timer[SNAME("elapsed")]=false;runtime_timers[name]=timer;result=true; }
            else if(!runtime_timers.has(name)){r_error=vformat("Timer não encontrado: %s.",name);return false;}
            else if(op=="timer_pause"){timer[SNAME("paused")]=true;runtime_timers[name]=timer;result=true;}
            else if(op=="timer_resume"){timer[SNAME("paused")]=false;runtime_timers[name]=timer;result=true;}
            else if(op=="timer_stop"){result=runtime_timers.erase(name);}
            else if(op=="timer_remaining")result=double(timer.get(SNAME("remaining"),0.0));
            else if(op=="timer_elapsed")result=bool(timer.get(SNAME("elapsed"),false));
            else {r_error=vformat("Operação de timer não implementada: %s.",op);return false;}
        } else if(op=="format_duration") { int total=MAX(0,int(_resolve_input_value(p_node,"seconds",p_outputs,p_incoming))); result=vformat("%02d:%02d",total/60,total%60); }
        else if(op=="wait_seconds") result=MAX(0.0,double(_resolve_input_value(p_node,"seconds",p_outputs,p_incoming)));
        else {r_error=vformat("Operação de tempo não implementada: %s.",op);return false;}
        const String id=mgs_string(p_node,SNAME("id"));r_outputs[id+":value"]=result;r_outputs[id+":result"]=result;
        return true;
    }

    if (definition.begins_with("input.")) {
        const PackedStringArray parts = definition.split(".");
        if (parts.size() != 3) { r_error = vformat("ID de entrada inválido: %s.", definition); return false; }
        const String device = parts[1];
        const String operation = parts[2];
        Input *input = Input::get_singleton();
        const String action = String(_resolve_input_value(p_node, "action", p_outputs, p_incoming)).strip_edges();
        int index = int(_resolve_input_value(p_node, "index", p_outputs, p_incoming));
        if (index == 0) index = int(_resolve_input_value(p_node, "button", p_outputs, p_incoming));
        int device_id = int(_resolve_input_value(p_node, "device", p_outputs, p_incoming));
        Variant result;

        if (device == "keyboard") {
            const bool state = !action.is_empty() ? input->is_action_pressed(StringName(action)) : input->is_key_pressed(Key(index));
            if (operation == "pressed" || operation == "held") result = state;
            else if (operation == "released") result = !state;
            else if (operation == "axis") {
                const String negative = String(_resolve_input_value(p_node, "negative", p_outputs, p_incoming));
                const String positive = String(_resolve_input_value(p_node, "positive", p_outputs, p_incoming));
                result = input->get_axis(StringName(negative), StringName(positive));
            } else if (operation == "count") result = 1;
            else if (operation == "available") result = true;
            else if (operation == "name") result = "Keyboard";
            else if (operation == "position" || operation == "delta" || operation == "pressure") result = operation == "pressure" ? Variant(state ? 1.0 : 0.0) : Variant(Vector2());
        } else if (device == "mouse") {
            const bool state = input->is_mouse_button_pressed(MouseButton(index > 0 ? index : int(MouseButton::LEFT)));
            if (operation == "pressed" || operation == "held") result = state;
            else if (operation == "released") result = !state;
            else if (operation == "axis" || operation == "delta") result = last_pointer_delta;
            else if (operation == "position") result = get_viewport()->get_mouse_position();
            else if (operation == "pressure") result = state ? 1.0 : 0.0;
            else if (operation == "count") result = 1;
            else if (operation == "available") result = true;
            else if (operation == "name") result = "Mouse";
        } else if (device == "touch") {
            const bool state = pointer_positions.has(index);
            if (operation == "pressed" || operation == "held") result = state;
            else if (operation == "released") result = !state;
            else if (operation == "axis" || operation == "delta") result = last_pointer_delta;
            else if (operation == "position") result = pointer_positions.get(index, Vector2());
            else if (operation == "pressure") result = state ? 1.0 : 0.0;
            else if (operation == "count") result = pointer_positions.size();
            else if (operation == "available") result = DisplayServer::get_singleton()->is_touchscreen_available();
            else if (operation == "name") result = "Touchscreen";
        } else if (device == "gamepad") {
            const Array joypads = input->get_connected_joypads();
            if (operation == "pressed" || operation == "held") result = input->is_joy_button_pressed(device_id, JoyButton(index));
            else if (operation == "released") result = !input->is_joy_button_pressed(device_id, JoyButton(index));
            else if (operation == "axis") {
                Variant axis_value = _resolve_input_value(p_node, "axis", p_outputs, p_incoming);
                if (axis_value.get_type() == Variant::INT) result = input->get_joy_axis(device_id, JoyAxis(int(axis_value)));
                else {
                    const String negative = String(_resolve_input_value(p_node, "negative", p_outputs, p_incoming));
                    const String positive = String(_resolve_input_value(p_node, "positive", p_outputs, p_incoming));
                    result = input->get_axis(StringName(negative), StringName(positive));
                }
            } else if (operation == "position") result = Vector2(input->get_joy_axis(device_id, JoyAxis::LEFT_X), input->get_joy_axis(device_id, JoyAxis::LEFT_Y));
            else if (operation == "delta") result = Vector2(input->get_joy_axis(device_id, JoyAxis::RIGHT_X), input->get_joy_axis(device_id, JoyAxis::RIGHT_Y));
            else if (operation == "pressure") result = input->get_joy_axis(device_id, JoyAxis::TRIGGER_RIGHT);
            else if (operation == "count") result = joypads.size();
            else if (operation == "available") result = joypads.has(device_id);
            else if (operation == "name") result = input->get_joy_name(device_id);
        } else if (device == "sensor") {
            if (operation == "axis") result = input->get_gyroscope();
            else if (operation == "position") result = input->get_gravity();
            else if (operation == "delta") result = input->get_accelerometer();
            else if (operation == "pressure") result = input->get_magnetometer().length();
            else if (operation == "count") result = 4;
            else if (operation == "available") result = !input->get_gravity().is_zero_approx() || !input->get_accelerometer().is_zero_approx() || !input->get_gyroscope().is_zero_approx();
            else if (operation == "name") result = "Device Sensors";
            else if (operation == "pressed" || operation == "held") result = false;
            else if (operation == "released") result = true;
        }
        if (result.get_type() == Variant::NIL) { r_error = vformat("Operação de entrada não implementada: %s.", definition); return false; }
        const String id = mgs_string(p_node, SNAME("id"));
        r_outputs[id + ":value"] = result;
        r_outputs[id + ":result"] = result;
        r_outputs[id + ":axis"] = result;
        return true;
    }

    if (definition == "world.joystick_get_axis") {
        const String negative = String(_resolve_input_value(p_node, "negative", p_outputs, p_incoming));
        const String positive = String(_resolve_input_value(p_node, "positive", p_outputs, p_incoming));
        const double value = Input::get_singleton()->get_axis(
                negative.is_empty() ? StringName("ui_left") : StringName(negative),
                positive.is_empty() ? StringName("ui_right") : StringName(positive));
        const String id = mgs_string(p_node, SNAME("id"));
        r_outputs[id + ":value"] = value;
        r_outputs[id + ":axis"] = value;
        return true;
    }

    if (definition.begins_with("object.")) {
        const String op = definition.trim_prefix("object.");
        const String id = mgs_string(p_node, SNAME("id"));
        Node *scene_root = get_tree() ? get_tree()->get_current_scene() : nullptr;
        Variant result;
        if (op == "find_by_name" || op == "find_by_id" || op == "find_by_tag") {
            if (!scene_root) { r_error = "Cena atual indisponível para busca."; return false; }
            const String query = String(_resolve_input_value(p_node, op == "find_by_name" ? "name" : op == "find_by_id" ? "id" : "tag", p_outputs, p_incoming));
            Node *found = nullptr;
            TypedArray<Node> candidates = scene_root->find_children("*", "", true, false);
            candidates.push_front(scene_root);
            for (int i = 0; i < candidates.size() && !found; i++) {
                Node *candidate = Object::cast_to<Node>(candidates[i]);
                if (!candidate) continue;
                if (op == "find_by_name" && String(candidate->get_name()) == query) found = candidate;
                else if (op == "find_by_id" && String(candidate->get_meta(SNAME("mgs_id"), String())) == query) found = candidate;
                else if (op == "find_by_tag") {
                    const Array tags = candidate->get_meta(SNAME("mgs_tags"), Array());
                    if (tags.has(query)) found = candidate;
                }
            }
            result = found;
        } else if (op == "create") {
            const String path = String(_resolve_input_value(p_node, "scene", p_outputs, p_incoming));
            if (!path.begins_with("res://")) { r_error = "Create exige uma PackedScene em res://."; return false; }
            Ref<PackedScene> packed = ResourceLoader::load(path);
            if (packed.is_null()) { r_error = vformat("PackedScene não encontrada: %s.", path); return false; }
            Node *instance = packed->instantiate();
            Node *parent = _resolve_target(p_node);
            if (!parent) parent = scene_root;
            if (!instance || !parent) { if (instance) memdelete(instance); r_error = "Não foi possível instanciar o objeto."; return false; }
            parent->add_child(instance, true);
            result = instance;
            execute_event("event.object.created", instance);
        } else {
            target = _resolve_target(p_node);
            if (!target) { r_error = "Objeto alvo não encontrado."; return false; }
            auto find_component = [target](const String &p_type) -> Node * {
                const TypedArray<Node> matches = target->find_children("*", p_type, false, false);
                return matches.is_empty() ? nullptr : Object::cast_to<Node>(matches[0]);
            };
            if (op == "clone") { Node *copy = target->duplicate(); target->get_parent()->add_child(copy, true); result = copy; execute_event("event.object.created", copy); }
            else if (op == "destroy") { execute_event("event.object.destroyed", target); target->queue_free(); result = true; }
            else if (op == "enable" || op == "disable" || op == "toggle_enabled") {
                bool enabled = op == "enable" || (op == "toggle_enabled" && target->get_process_mode() == Node::PROCESS_MODE_DISABLED);
                target->set_process_mode(enabled ? Node::PROCESS_MODE_INHERIT : Node::PROCESS_MODE_DISABLED);
                if (CanvasItem *item = Object::cast_to<CanvasItem>(target)) item->set_visible(enabled);
                execute_event(enabled ? "event.object.enabled" : "event.object.disabled", target); result = enabled;
            } else if (op == "set_name") { target->set_name(StringName(String(_resolve_input_value(p_node, "name", p_outputs, p_incoming)))); result = String(target->get_name()); }
            else if (op == "get_name") result = String(target->get_name());
            else if (op == "set_parent") { Node *parent = Object::cast_to<Node>(_resolve_input_value(p_node, "parent", p_outputs, p_incoming)); if (!parent) { r_error = "Set Parent exige um Node válido."; return false; } target->reparent(parent, true); result = target; }
            else if (op == "get_parent") result = target->get_parent();
            else if (op == "add_child") { Node *child = Object::cast_to<Node>(_resolve_input_value(p_node, "child", p_outputs, p_incoming)); if (!child) { r_error = "Add Child exige um Node válido."; return false; } target->add_child(child, true); result = child; }
            else if (op == "remove_child") { Node *child = Object::cast_to<Node>(_resolve_input_value(p_node, "child", p_outputs, p_incoming)); if (!child || child->get_parent() != target) { r_error = "O filho informado não pertence ao alvo."; return false; } target->remove_child(child); result = child; }
            else if (op == "get_child") { int child_index = int(_resolve_input_value(p_node, "index", p_outputs, p_incoming)); if (child_index < 0 || child_index >= target->get_child_count()) { r_error = "Índice de filho fora do intervalo."; return false; } result = target->get_child(child_index); }
            else if (op == "child_count") result = target->get_child_count();
            else if (op == "add_tag" || op == "remove_tag" || op == "has_tag") { Array tags = target->get_meta(SNAME("mgs_tags"), Array()); String tag = String(_resolve_input_value(p_node, "tag", p_outputs, p_incoming)); if (tag.is_empty()) { r_error = "Tag vazia."; return false; } if (op == "add_tag" && !tags.has(tag)) tags.push_back(tag); else if (op == "remove_tag") tags.erase(tag); target->set_meta(SNAME("mgs_tags"), tags); result = tags.has(tag); }
            else if (op.begins_with("send_event")) { String event_name = String(_resolve_input_value(p_node, "event", p_outputs, p_incoming)); Variant event_value = _resolve_input_value(p_node, "value", p_outputs, p_incoming); Dictionary payload; payload[SNAME("event")] = event_name; payload[SNAME("value")] = event_value; payload[SNAME("target")] = target; result = execute_event("event.custom.received", payload); }
            else if (op == "get_component" || op == "has_component") { String type = String(_resolve_input_value(p_node, "type", p_outputs, p_incoming)); Node *component = find_component(type); result = op == "has_component" ? Variant(component != nullptr) : Variant(component); }
            else if (op == "add_component") { String type = String(_resolve_input_value(p_node, "type", p_outputs, p_incoming)); if (!ClassDB::class_exists(type) || !ClassDB::is_parent_class(type, "Node")) { r_error = "Componente precisa ser uma classe Node registrada."; return false; } Object *created = ClassDB::instantiate(type); Node *component = Object::cast_to<Node>(created); if (!component) { if (created) memdelete(created); r_error = "Falha ao criar componente Node."; return false; } target->add_child(component, true); result = component; }
            else if (op == "remove_component") { Node *component = Object::cast_to<Node>(_resolve_input_value(p_node, "component", p_outputs, p_incoming)); if (!component) { String type = String(_resolve_input_value(p_node, "type", p_outputs, p_incoming)); component = find_component(type); } if (!component || component->get_parent() != target) { r_error = "Componente não encontrado no alvo."; return false; } component->queue_free(); result = true; }
            else if (op == "set_layer" || op == "get_layer") { VisualInstance3D *visual = Object::cast_to<VisualInstance3D>(target); if (!visual) { r_error = "Camada 3D exige VisualInstance3D."; return false; } if (op == "set_layer") visual->set_layer_mask(uint32_t(int64_t(_resolve_input_value(p_node, "layer", p_outputs, p_incoming)))); result = int64_t(visual->get_layer_mask()); }
            else if (op == "set_visible" || op == "is_visible") { if (CanvasItem *item = Object::cast_to<CanvasItem>(target)) { if (op == "set_visible") item->set_visible(bool(_resolve_input_value(p_node, "visible", p_outputs, p_incoming))); result = item->is_visible(); } else if (Node3D *node = Object::cast_to<Node3D>(target)) { if (op == "set_visible") node->set_visible(bool(_resolve_input_value(p_node, "visible", p_outputs, p_incoming))); result = node->is_visible(); } else { r_error = "Visibilidade exige CanvasItem ou Node3D."; return false; } }
            else if (op == "set_static" || op == "is_static") { if (op == "set_static") target->set_meta(SNAME("mgs_static"), bool(_resolve_input_value(p_node, "static", p_outputs, p_incoming))); result = bool(target->get_meta(SNAME("mgs_static"), false)); }
            else { r_error = vformat("Operação de objeto não implementada: %s.", op); return false; }
        }
        r_outputs[id + ":value"] = result; r_outputs[id + ":result"] = result; r_outputs[id + ":object"] = result;
        return true;
    }

    target = _resolve_target(p_node);
    if (!target) { r_error = "Objeto alvo não encontrado."; return false; }

    if (definition == "debug.log.draw_line" || definition == "debug.log.draw_ray" || definition == "debug.log.draw_sphere") {
        Node3D *parent = Object::cast_to<Node3D>(target); if (!parent) { r_error = "Debug Draw exige alvo Node3D."; return false; }
        MeshInstance3D *visual = memnew(MeshInstance3D); visual->set_name("NoCodeDebugShape"); parent->add_child(visual); visual->set_as_top_level(true);
        Ref<StandardMaterial3D> material; material.instantiate(); material->set_shading_mode(BaseMaterial3D::SHADING_MODE_UNSHADED); material->set_albedo(Color(_resolve_input_value(p_node, "color", p_outputs, p_incoming)));
        if (definition.ends_with("draw_sphere")) { Ref<SphereMesh> sphere; sphere.instantiate(); double radius = MAX(0.001, double(_resolve_input_value(p_node, "radius", p_outputs, p_incoming))); sphere->set_radius(radius); sphere->set_height(radius * 2.0); visual->set_mesh(sphere); visual->set_global_position(Vector3(_resolve_input_value(p_node, "position", p_outputs, p_incoming))); }
        else { Vector3 from = _resolve_input_value(p_node, "from", p_outputs, p_incoming); Vector3 to = definition.ends_with("draw_ray") ? from + Vector3(_resolve_input_value(p_node, "direction", p_outputs, p_incoming)) : Vector3(_resolve_input_value(p_node, "to", p_outputs, p_incoming)); Ref<ImmediateMesh> line; line.instantiate(); line->surface_begin(Mesh::PRIMITIVE_LINES); line->surface_add_vertex(from); line->surface_add_vertex(to); line->surface_end(); visual->set_mesh(line); }
        visual->set_material_override(material); double duration = MAX(0.01, double(_resolve_input_value(p_node, "duration", p_outputs, p_incoming))); Ref<SceneTreeTimer> timer = get_tree()->create_timer(duration); Callable cleanup = callable_mp(static_cast<Node *>(visual), &Node::queue_free); timer->connect(SNAME("timeout"), cleanup); return true;
    }

    if (definition.begins_with("transform.") && definition.count(".") >= 2 && definition != "transform.rotate.y" && definition != "transform.scale.uniform") {
        const PackedStringArray parts = definition.split(".");
        const String channel = parts[1];
        const String op = parts[2];
        const String id = mgs_string(p_node, SNAME("id"));
        Variant input_value = _resolve_input_value(p_node, "value", p_outputs, p_incoming);
        if (input_value.get_type() == Variant::NIL) input_value = _resolve_input_value(p_node, channel, p_outputs, p_incoming);
        const double weight = CLAMP(double(_resolve_input_value(p_node, "weight", p_outputs, p_incoming)), 0.0, 1.0);
        const double delta = MAX(0.0, double(_resolve_input_value(p_node, "delta", p_outputs, p_incoming)));
        Variant result;
        if (Node3D *node = Object::cast_to<Node3D>(target)) {
            Vector3 current = channel == "position" ? node->get_position() : channel == "rotation" ? node->get_rotation() : node->get_scale();
            Vector3 value;
            if (input_value.get_type() == Variant::VECTOR3) value = input_value;
            else if (input_value.get_type() == Variant::VECTOR2) { Vector2 v = input_value; value = Vector3(v.x, v.y, 0.0); }
            else { const double scalar = input_value.get_type() == Variant::NIL ? 0.0 : double(input_value); value = Vector3(scalar, scalar, scalar); }
            if (op == "get") result = current;
            else if (op == "set") result = value;
            else if (op == "add") result = current + value;
            else if (op == "subtract") result = current - value;
            else if (op == "multiply") result = current * value;
            else if (op == "lerp") result = current.lerp(value, weight);
            else if (op == "move_towards") result = current.move_toward(value, delta);
            else if (op == "reset") result = channel == "scale" ? Variant(Vector3(1, 1, 1)) : Variant(Vector3());
            else if (op == "local_to_world") result = channel == "position" ? Variant(node->to_global(value)) : Variant(node->get_global_basis().xform(value));
            else if (op == "world_to_local") result = channel == "position" ? Variant(node->to_local(value)) : Variant(node->get_global_basis().inverse().xform(value));
            else if (op == "look_at" || op == "face_direction") {
                Vector3 point = op == "face_direction" ? node->get_global_position() + value : value;
                if (point.is_equal_approx(node->get_global_position())) { r_error = "Look At exige destino diferente da posição atual."; return false; }
                node->look_at(point, Vector3(0, 1, 0), bool(_resolve_input_value(p_node, "use_model_front", p_outputs, p_incoming)));
                result = channel == "rotation" ? Variant(node->get_rotation()) : Variant(current);
            } else { r_error = vformat("Operação de transformação 3D não implementada: %s.", definition); return false; }
            if (op != "get" && op != "local_to_world" && op != "world_to_local" && op != "look_at" && op != "face_direction") {
                const Vector3 applied = result;
                if (channel == "position") node->set_position(applied); else if (channel == "rotation") node->set_rotation(applied); else node->set_scale(applied);
            }
        } else if (Node2D *node = Object::cast_to<Node2D>(target)) {
            if (channel == "rotation") {
                const double current = node->get_rotation(); const double value = input_value.get_type() == Variant::NIL ? 0.0 : double(input_value);
                if (op == "get") result = current; else if (op == "set") result = value; else if (op == "add") result = current + value; else if (op == "subtract") result = current - value; else if (op == "multiply") result = current * value; else if (op == "lerp") result = Math::lerp_angle(current, value, weight); else if (op == "move_towards") result = Math::move_toward(current, value, delta); else if (op == "reset") result = 0.0; else if (op == "look_at" || op == "face_direction") { Vector2 v = input_value; node->look_at(op == "face_direction" ? node->get_global_position() + v : v); result = node->get_rotation(); } else { r_error = vformat("Operação de rotação 2D incompatível: %s.", op); return false; }
                if (op != "get" && op != "look_at" && op != "face_direction") node->set_rotation(double(result));
            } else {
                Vector2 current = channel == "position" ? node->get_position() : node->get_scale(); Vector2 value = input_value.get_type() == Variant::VECTOR2 ? Vector2(input_value) : Vector2(double(input_value), double(input_value));
                if (op == "get") result = current; else if (op == "set") result = value; else if (op == "add") result = current + value; else if (op == "subtract") result = current - value; else if (op == "multiply") result = current * value; else if (op == "lerp") result = current.lerp(value, weight); else if (op == "move_towards") result = current.move_toward(value, delta); else if (op == "reset") result = channel == "scale" ? Variant(Vector2(1, 1)) : Variant(Vector2()); else if (op == "local_to_world") result = node->to_global(value); else if (op == "world_to_local") result = node->to_local(value); else if (op == "look_at" || op == "face_direction") { node->look_at(op == "face_direction" ? node->get_global_position() + value : value); result = current; } else { r_error = vformat("Operação de transformação 2D incompatível: %s.", op); return false; }
                if (op != "get" && op != "local_to_world" && op != "world_to_local" && op != "look_at" && op != "face_direction") { if (channel == "position") node->set_position(Vector2(result)); else node->set_scale(Vector2(result)); }
            }
        } else { r_error = "Transform exige Node3D ou Node2D."; return false; }
        r_outputs[id + ":value"] = result; r_outputs[id + ":result"] = result; r_outputs[id + ":" + channel] = result;
        return true;
    }

    if (definition.begins_with("physics.")) {
        const String op = definition.trim_prefix("physics.");
        const String id = mgs_string(p_node, SNAME("id"));
        Variant result;
        RigidBody3D *rigid = Object::cast_to<RigidBody3D>(target);
        CharacterBody3D *character = Object::cast_to<CharacterBody3D>(target);
        PhysicsBody3D *body = Object::cast_to<PhysicsBody3D>(target);
        auto vector_input = [&](const String &p_name) -> Vector3 { Variant v = _resolve_input_value(p_node, p_name, p_outputs, p_incoming); return v.get_type() == Variant::VECTOR3 ? Vector3(v) : Vector3(); };
        if (op == "add_force" || op == "add_impulse" || op == "add_torque") {
            if (!rigid) { r_error = vformat("%s exige RigidBody3D.", op); return false; }
            Vector3 value = vector_input(op == "add_torque" ? "torque" : op == "add_impulse" ? "impulse" : "force");
            if (op == "add_force") rigid->apply_central_force(value); else if (op == "add_impulse") rigid->apply_central_impulse(value); else rigid->apply_torque(value);
            result = value;
        } else if (op == "set_velocity" || op == "get_velocity") {
            if (!rigid && !character) { r_error = "Velocity exige RigidBody3D ou CharacterBody3D."; return false; }
            if (op == "set_velocity") { Vector3 velocity = vector_input("velocity"); if (rigid) rigid->set_linear_velocity(velocity); else character->set_velocity(velocity); }
            result = rigid ? Variant(rigid->get_linear_velocity()) : Variant(character->get_velocity());
        } else if (op == "set_angular_velocity" || op == "get_angular_velocity") {
            if (!rigid) { r_error = "Angular Velocity exige RigidBody3D."; return false; }
            if (op == "set_angular_velocity") rigid->set_angular_velocity(vector_input("angular_velocity")); result = rigid->get_angular_velocity();
        } else if (op == "set_mass" || op == "get_mass") {
            if (!rigid) { r_error = "Mass exige RigidBody3D."; return false; }
            if (op == "set_mass") { double mass = double(_resolve_input_value(p_node, "mass", p_outputs, p_incoming)); if (mass <= 0.0) { r_error = "Massa precisa ser positiva."; return false; } rigid->set_mass(mass); } result = rigid->get_mass();
        } else if (op == "set_gravity" || op == "use_gravity") {
            if (!rigid) { r_error = "Gravity exige RigidBody3D."; return false; }
            double scale = op == "use_gravity" ? (bool(_resolve_input_value(p_node, "enabled", p_outputs, p_incoming)) ? 1.0 : 0.0) : double(_resolve_input_value(p_node, "gravity_scale", p_outputs, p_incoming)); rigid->set_gravity_scale(scale); result = scale;
        } else if (op == "set_kinematic") {
            if (!rigid) { r_error = "Set Kinematic exige RigidBody3D."; return false; }
            const bool enabled = bool(_resolve_input_value(p_node, "enabled", p_outputs, p_incoming)); rigid->set_freeze_mode(RigidBody3D::FREEZE_MODE_KINEMATIC); rigid->set_freeze_enabled(enabled); result = enabled;
        } else if (op == "freeze_position" || op == "freeze_rotation") {
            if (!body) { r_error = "Freeze exige PhysicsBody3D."; return false; }
            const bool enabled = bool(_resolve_input_value(p_node, "enabled", p_outputs, p_incoming));
            const int offset = op == "freeze_position" ? int(PhysicsServer3D::BODY_AXIS_LINEAR_X) : int(PhysicsServer3D::BODY_AXIS_ANGULAR_X);
            for (int axis = 0; axis < 3; axis++) body->set_axis_lock(PhysicsServer3D::BodyAxis(offset + axis), enabled); result = enabled;
        } else if (op == "raycast" || op == "sphere_cast" || op == "box_cast" || op == "overlap_sphere" || op == "overlap_box") {
            World3D *world = Object::cast_to<Node3D>(target) ? Object::cast_to<Node3D>(target)->get_world_3d().ptr() : nullptr;
            if (!world || !world->get_direct_space_state()) { r_error = "Consulta física exige alvo Node3D dentro de um World3D."; return false; }
            PhysicsDirectSpaceState3D *space = world->get_direct_space_state();
            const Vector3 from = vector_input("from"); const Vector3 to = vector_input("to");
            const Variant mask_value = _resolve_input_value(p_node, "collision_mask", p_outputs, p_incoming);
            const uint32_t mask = mask_value.get_type() == Variant::NIL ? UINT32_MAX : uint32_t(int64_t(mask_value));
            if (op == "raycast") {
                PhysicsDirectSpaceState3D::RayParameters query; query.from = from; query.to = to; query.collision_mask = mask; query.collide_with_areas = bool(_resolve_input_value(p_node, "collide_with_areas", p_outputs, p_incoming));
                PhysicsDirectSpaceState3D::RayResult hit;
                Dictionary data; const bool collided = space->intersect_ray(query, hit); data[SNAME("hit")] = collided;
                if (collided) { data[SNAME("position")] = hit.position; data[SNAME("normal")] = hit.normal; data[SNAME("collider")] = hit.collider; data[SNAME("shape")] = hit.shape; }
                result = data;
            } else {
                Ref<Shape3D> shape;
                if (op.contains("sphere")) { Ref<SphereShape3D> sphere; sphere.instantiate(); sphere->set_radius(MAX(0.001, double(_resolve_input_value(p_node, "radius", p_outputs, p_incoming)))); shape = sphere; }
                else { Ref<BoxShape3D> box; box.instantiate(); Variant size_value = _resolve_input_value(p_node, "size", p_outputs, p_incoming); box->set_size(size_value.get_type() == Variant::VECTOR3 ? Vector3(size_value) : Vector3(1, 1, 1)); shape = box; }
                PhysicsDirectSpaceState3D::ShapeParameters query; query.shape_rid = shape->get_rid(); query.transform.origin = from; query.motion = op.begins_with("overlap") ? Vector3() : to - from; query.collision_mask = mask; query.collide_with_areas = bool(_resolve_input_value(p_node, "collide_with_areas", p_outputs, p_incoming));
                PhysicsDirectSpaceState3D::ShapeResult hits[32]; const int count = space->intersect_shape(query, hits, 32); Array data;
                for (int i = 0; i < count; i++) { Dictionary hit; hit[SNAME("collider")] = hits[i].collider; hit[SNAME("shape")] = hits[i].shape; data.push_back(hit); } result = data;
            }
        } else if (op == "ignore_collision") {
            if (!body) { r_error = "Ignore Collision exige PhysicsBody3D."; return false; } Node *other = Object::cast_to<Node>(_resolve_input_value(p_node, "other", p_outputs, p_incoming)); if (!Object::cast_to<PhysicsBody3D>(other)) { r_error = "Outro objeto precisa ser PhysicsBody3D."; return false; } body->add_collision_exception_with(other); result = true;
        } else if (op == "set_friction" || op == "set_bounciness") {
            if (!rigid) { r_error = "Material físico exige RigidBody3D."; return false; } Ref<PhysicsMaterial> material = rigid->get_physics_material_override(); if (material.is_null()) { material.instantiate(); rigid->set_physics_material_override(material); } double value = double(_resolve_input_value(p_node, "value", p_outputs, p_incoming)); if (op == "set_friction") material->set_friction(value); else material->set_bounce(value); result = value;
        } else if (op == "wake_up" || op == "sleep") {
            if (!rigid) { r_error = "Sleep/Wake exige RigidBody3D."; return false; } rigid->set_sleeping(op == "sleep"); result = rigid->is_sleeping();
        } else { r_error = vformat("Operação de física não implementada: %s.", op); return false; }
        r_outputs[id + ":value"] = result; r_outputs[id + ":result"] = result;
        if (result.get_type() == Variant::DICTIONARY) { Dictionary data = result; for (const Variant &key : data.keys()) r_outputs[id + ":" + String(key)] = data[key]; }
        return true;
    }

    if (definition.begins_with("ui.")) {
        const String op = definition.trim_prefix("ui."); const String id = mgs_string(p_node, SNAME("id")); Variant result;
        Control *control = Object::cast_to<Control>(target);
        if (!control) { r_error = "Operação UI exige um Control como alvo."; return false; }
        auto set_text = [&](const String &p_text) -> bool { if (Label *v = Object::cast_to<Label>(control)) v->set_text(p_text); else if (Button *v = Object::cast_to<Button>(control)) v->set_text(p_text); else if (LineEdit *v = Object::cast_to<LineEdit>(control)) v->set_text(p_text); else if (TextEdit *v = Object::cast_to<TextEdit>(control)) v->set_text(p_text); else if (RichTextLabel *v = Object::cast_to<RichTextLabel>(control)) v->set_text(p_text); else return false; return true; };
        auto get_text = [&]() -> Variant { if (Label *v = Object::cast_to<Label>(control)) return v->get_text(); if (Button *v = Object::cast_to<Button>(control)) return v->get_text(); if (LineEdit *v = Object::cast_to<LineEdit>(control)) return v->get_text(); if (TextEdit *v = Object::cast_to<TextEdit>(control)) return v->get_text(); if (RichTextLabel *v = Object::cast_to<RichTextLabel>(control)) return v->get_text(); return Variant(); };
        if (op == "show" || op == "hide" || op == "toggle" || op == "open_panel" || op == "close_panel") { bool visible = op == "show" || op == "open_panel" || (op == "toggle" && !control->is_visible()); control->set_visible(visible); result = visible; }
        else if (op == "set_text") { String text = String(_resolve_input_value(p_node, "text", p_outputs, p_incoming)); if (!set_text(text)) { r_error = "Set Text exige Label, Button, LineEdit, TextEdit ou RichTextLabel."; return false; } result = text; }
        else if (op == "get_text") { result = get_text(); if (result.get_type() == Variant::NIL) { r_error = "Get Text exige controle textual compatível."; return false; } }
        else if (op == "set_image") { TextureRect *image = Object::cast_to<TextureRect>(control); if (!image) { r_error = "Set Image exige TextureRect."; return false; } Variant source = _resolve_input_value(p_node, "texture", p_outputs, p_incoming); Ref<Texture2D> texture; if (source.get_type() == Variant::OBJECT) texture = source; else if (source.get_type() == Variant::STRING) texture = ResourceLoader::load(String(source)); if (texture.is_null()) { r_error = "Textura inválida ou não encontrada."; return false; } image->set_texture(texture); result = texture; }
        else if (op == "set_color") { Color color = _resolve_input_value(p_node, "color", p_outputs, p_incoming); control->set_modulate(color); result = color; }
        else if (op == "set_value" || op == "get_value" || op == "set_min" || op == "set_max" || op == "set_progress" || op == "animate_value") { Range *range = Object::cast_to<Range>(control); if (!range) { r_error = "Operação de valor exige Range, Slider ou ProgressBar."; return false; } if (op == "set_min") range->set_min(double(_resolve_input_value(p_node, "value", p_outputs, p_incoming))); else if (op == "set_max") range->set_max(double(_resolve_input_value(p_node, "value", p_outputs, p_incoming))); else if (op == "set_value" || op == "set_progress") range->set_value(double(_resolve_input_value(p_node, "value", p_outputs, p_incoming))); else if (op == "animate_value") { const double value = double(_resolve_input_value(p_node, "value", p_outputs, p_incoming)); const double duration = MAX(0.001, double(_resolve_input_value(p_node, "duration", p_outputs, p_incoming))); Ref<Tween> tween = get_tree()->create_tween(); tween->bind_node(this); tween->tween_property(range, NodePath("value"), value, duration); } result = range->get_value(); }
        else if (op == "set_interactable" || op == "is_interactable") { bool enabled = true; if (BaseButton *button = Object::cast_to<BaseButton>(control)) { if (op == "set_interactable") button->set_disabled(!bool(_resolve_input_value(p_node, "enabled", p_outputs, p_incoming))); enabled = !button->is_disabled(); } else { if (op == "set_interactable") control->set_mouse_filter(bool(_resolve_input_value(p_node, "enabled", p_outputs, p_incoming)) ? Control::MOUSE_FILTER_STOP : Control::MOUSE_FILTER_IGNORE); enabled = control->get_mouse_filter() != Control::MOUSE_FILTER_IGNORE; } result = enabled; }
        else if (op == "focus") { control->grab_focus(); result = control->has_focus(); }
        else if (op == "unfocus") { control->release_focus(); result = !control->has_focus(); }
        else if (op == "set_position") { Vector2 value = _resolve_input_value(p_node, "position", p_outputs, p_incoming); control->set_position(value); result = control->get_position(); }
        else if (op == "set_size") { Vector2 value = _resolve_input_value(p_node, "size", p_outputs, p_incoming); control->set_size(value); result = control->get_size(); }
        else if (op == "set_anchor") { Variant anchor_value = _resolve_input_value(p_node, "anchor", p_outputs, p_incoming); if (anchor_value.get_type() == Variant::VECTOR4) { Vector4 a = anchor_value; control->set_anchors_preset(Control::PRESET_TOP_LEFT); control->set_anchor(SIDE_LEFT, a.x); control->set_anchor(SIDE_TOP, a.y); control->set_anchor(SIDE_RIGHT, a.z); control->set_anchor(SIDE_BOTTOM, a.w); } else { float a = float(anchor_value); for (int side = 0; side < 4; side++) control->set_anchor(Side(side), a); } result = true; }
        else if (op == "toast") { String text = String(_resolve_input_value(p_node, "text", p_outputs, p_incoming)); Label *toast = memnew(Label); toast->set_text(text); toast->set_mouse_filter(Control::MOUSE_FILTER_IGNORE); control->add_child(toast); toast->set_position(Vector2(24, 24)); const double duration = MAX(0.1, double(_resolve_input_value(p_node, "duration", p_outputs, p_incoming))); Ref<SceneTreeTimer> timer = get_tree()->create_timer(duration); Callable cleanup = callable_mp(static_cast<Node *>(toast), &Node::queue_free); timer->connect(SNAME("timeout"), cleanup); result = toast; }
        else if (op == "set_placeholder") { LineEdit *line = Object::cast_to<LineEdit>(control); if (!line) { r_error = "Set Placeholder exige LineEdit."; return false; } String text = String(_resolve_input_value(p_node, "text", p_outputs, p_incoming)); line->set_placeholder(text); result = text; }
        else { r_error = vformat("Operação de interface não implementada: %s.", op); return false; }
        r_outputs[id + ":value"] = result; r_outputs[id + ":result"] = result; return true;
    }

    if (definition.begins_with("audio.")) {
        const String op = definition.trim_prefix("audio."); const String id = mgs_string(p_node, SNAME("id")); Variant result;
        AudioStreamPlayer *player = Object::cast_to<AudioStreamPlayer>(target); AudioStreamPlayer2D *player_2d = Object::cast_to<AudioStreamPlayer2D>(target); AudioStreamPlayer3D *player_3d = Object::cast_to<AudioStreamPlayer3D>(target);
        if (!player && !player_2d && !player_3d && op != "stop_all") { r_error = "Operação de áudio exige AudioStreamPlayer, AudioStreamPlayer2D ou AudioStreamPlayer3D."; return false; }
        auto play = [&]() { if (player) player->play(); else if (player_2d) player_2d->play(); else player_3d->play(); };
        auto stop = [&]() { if (player) player->stop(); else if (player_2d) player_2d->stop(); else player_3d->stop(); };
        auto set_paused = [&](bool p_paused) { if (player) player->set_stream_paused(p_paused); else if (player_2d) player_2d->set_stream_paused(p_paused); else player_3d->set_stream_paused(p_paused); };
        auto is_playing = [&]() -> bool { return player ? player->is_playing() : player_2d ? player_2d->is_playing() : player_3d->is_playing(); };
        auto get_volume = [&]() -> double { return player ? player->get_volume_db() : player_2d ? player_2d->get_volume_db() : player_3d->get_volume_db(); };
        auto set_volume = [&](double p_value) { if (player) player->set_volume_db(p_value); else if (player_2d) player_2d->set_volume_db(p_value); else player_3d->set_volume_db(p_value); };
        auto get_pitch = [&]() -> double { return player ? player->get_pitch_scale() : player_2d ? player_2d->get_pitch_scale() : player_3d->get_pitch_scale(); };
        auto set_pitch = [&](double p_value) { if (player) player->set_pitch_scale(p_value); else if (player_2d) player_2d->set_pitch_scale(p_value); else player_3d->set_pitch_scale(p_value); };
        auto set_bus = [&](const StringName &p_bus) { if (player) player->set_bus(p_bus); else if (player_2d) player_2d->set_bus(p_bus); else player_3d->set_bus(p_bus); };
        if (op == "play" || op == "play_3d" || op == "play_loop" || op == "play_3d_loop") { const bool loop = op.ends_with("loop"); target->set_meta(SNAME("mgs_loop"), loop); if (loop && !bool(target->get_meta(SNAME("mgs_loop_connected"), false))) { target->connect(SNAME("finished"), callable_mp(this, &MGSNoCodeRunner::_restart_looping_audio).bind(target)); target->set_meta(SNAME("mgs_loop_connected"), true); } play(); result = true; }
        else if (op == "pause") { set_paused(true); result = true; }
        else if (op == "resume") { set_paused(false); result = true; }
        else if (op == "stop") { target->set_meta(SNAME("mgs_loop"), false); stop(); result = true; }
        else if (op == "stop_all") { Node *root = get_tree()->get_current_scene(); TypedArray<Node> nodes = root ? root->find_children("*", "AudioStreamPlayer", true, false) : TypedArray<Node>(); TypedArray<Node> nodes2 = root ? root->find_children("*", "AudioStreamPlayer2D", true, false) : TypedArray<Node>(); TypedArray<Node> nodes3 = root ? root->find_children("*", "AudioStreamPlayer3D", true, false) : TypedArray<Node>(); for (int i = 0; i < nodes.size(); i++) Object::cast_to<AudioStreamPlayer>(nodes[i])->stop(); for (int i = 0; i < nodes2.size(); i++) Object::cast_to<AudioStreamPlayer2D>(nodes2[i])->stop(); for (int i = 0; i < nodes3.size(); i++) Object::cast_to<AudioStreamPlayer3D>(nodes3[i])->stop(); result = nodes.size() + nodes2.size() + nodes3.size(); }
        else if (op == "set_volume") { set_volume(double(_resolve_input_value(p_node, "volume_db", p_outputs, p_incoming))); result = get_volume(); }
        else if (op == "get_volume") result = get_volume();
        else if (op == "fade_in" || op == "fade_out") { const double duration = MAX(0.001, double(_resolve_input_value(p_node, "duration", p_outputs, p_incoming))); const double target_db = op == "fade_in" ? double(_resolve_input_value(p_node, "volume_db", p_outputs, p_incoming)) : -80.0; if (op == "fade_in") { set_volume(-80.0); play(); } Ref<Tween> tween = get_tree()->create_tween(); tween->bind_node(target); tween->tween_property(target, NodePath("volume_db"), target_db, duration); result = target_db; }
        else if (op == "set_pitch") { double value = double(_resolve_input_value(p_node, "pitch", p_outputs, p_incoming)); if (value <= 0.0) { r_error = "Pitch precisa ser maior que zero."; return false; } set_pitch(value); result = get_pitch(); }
        else if (op == "get_pitch") result = get_pitch();
        else if (op == "set_pan") { double value = double(_resolve_input_value(p_node, "pan", p_outputs, p_incoming)); if (player_2d) player_2d->set_panning_strength(value); else if (player_3d) player_3d->set_panning_strength(value); else { r_error = "Pan espacial exige player 2D ou 3D."; return false; } result = value; }
        else if (op == "set_spatial_blend") result = player_3d ? 1.0 : 0.0;
        else if (op == "set_min_distance") { if (!player_3d) { r_error = "Min Distance exige AudioStreamPlayer3D."; return false; } player_3d->set_unit_size(double(_resolve_input_value(p_node, "distance", p_outputs, p_incoming))); result = player_3d->get_unit_size(); }
        else if (op == "set_max_distance") { double value = double(_resolve_input_value(p_node, "distance", p_outputs, p_incoming)); if (player_3d) player_3d->set_max_distance(value); else if (player_2d) player_2d->set_max_distance(value); else { r_error = "Max Distance exige player 2D ou 3D."; return false; } result = value; }
        else if (op == "is_playing") result = is_playing();
        else if (op == "set_bus") { StringName bus = StringName(String(_resolve_input_value(p_node, "bus", p_outputs, p_incoming))); set_bus(bus); result = String(bus); }
        else { r_error = vformat("Operação de áudio não implementada: %s.", op); return false; }
        r_outputs[id + ":value"] = result; r_outputs[id + ":result"] = result; return true;
    }

    if (definition.begins_with("animation.")) {
        const String op = definition.trim_prefix("animation."); const String id = mgs_string(p_node, SNAME("id")); Variant result;
        AnimationPlayer *player = Object::cast_to<AnimationPlayer>(target); AnimationTree *tree = Object::cast_to<AnimationTree>(target);
        if (!player && !tree) { r_error = "Operação de animação exige AnimationPlayer ou AnimationTree."; return false; }
        const StringName animation = StringName(String(_resolve_input_value(p_node, "animation", p_outputs, p_incoming)));
        if (op == "play" || op == "play_crossfade" || op == "play_additive") { if (!player) { r_error = "Play exige AnimationPlayer."; return false; } if (!player->has_animation(animation)) { r_error = vformat("Animação não encontrada: %s.", String(animation)); return false; } const double blend = op == "play" ? -1.0 : MAX(0.0, double(_resolve_input_value(p_node, "duration", p_outputs, p_incoming))); player->play(animation, blend); if (!bool(player->get_meta(SNAME("mgs_finished_connected"), false))) { player->connect(SNAME("animation_finished"), callable_mp(this, &MGSNoCodeRunner::_animation_finished)); player->set_meta(SNAME("mgs_finished_connected"), true); } execute_event("event.animation.started", String(animation)); result = true; }
        else if (op == "pause") { if (!player) { r_error = "Pause exige AnimationPlayer."; return false; } player->pause(); result = true; }
        else if (op == "resume") { if (!player) { r_error = "Resume exige AnimationPlayer."; return false; } player->play(); result = true; }
        else if (op == "stop") { if (!player) { r_error = "Stop exige AnimationPlayer."; return false; } player->stop(); result = true; }
        else if (op == "rewind") { if (!player) { r_error = "Rewind exige AnimationPlayer."; return false; } player->seek(0.0, true); result = 0.0; }
        else if (op == "set_speed" || op == "get_speed") { if (!player) { r_error = "Speed exige AnimationPlayer."; return false; } if (op == "set_speed") player->set_speed_scale(double(_resolve_input_value(p_node, "speed", p_outputs, p_incoming))); result = player->get_speed_scale(); }
        else if (op == "set_time" || op == "get_time") { if (!player) { r_error = "Time exige AnimationPlayer."; return false; } if (player->get_current_animation().is_empty()) { r_error = "AnimationPlayer não possui animação ativa para consultar o tempo."; return false; } if (op == "set_time") player->seek(MAX(0.0, double(_resolve_input_value(p_node, "time", p_outputs, p_incoming))), true); result = player->get_current_animation_position(); }
        else if (op == "set_loop") { if (!player || !player->has_animation(animation)) { r_error = "Set Loop exige animação existente no AnimationPlayer."; return false; } Ref<Animation> resource = player->get_animation(animation); resource->set_loop_mode(bool(_resolve_input_value(p_node, "enabled", p_outputs, p_incoming)) ? Animation::LOOP_LINEAR : Animation::LOOP_NONE); result = resource->get_loop_mode() != Animation::LOOP_NONE; }
        else if (op == "is_playing") { if (!player) { r_error = "Is Playing exige AnimationPlayer."; return false; } result = player->is_playing(); }
        else if (op == "get_state") { if (player) result = String(player->get_current_animation()); else result = tree->is_active() ? "active" : "inactive"; }
        else if (op == "set_bool" || op == "set_number" || op == "set_trigger" || op == "reset_trigger" || op == "set_weight" || op == "blend") { if (!tree) { r_error = "Parâmetros e blend exigem AnimationTree."; return false; } const String parameter = String(_resolve_input_value(p_node, "parameter", p_outputs, p_incoming)).strip_edges(); if (parameter.is_empty()) { r_error = "Nome do parâmetro de AnimationTree está vazio."; return false; } Variant value; if (op == "set_bool") value = bool(_resolve_input_value(p_node, "value", p_outputs, p_incoming)); else if (op == "set_trigger") value = int(AnimationNodeOneShot::ONE_SHOT_REQUEST_FIRE); else if (op == "reset_trigger") value = int(AnimationNodeOneShot::ONE_SHOT_REQUEST_ABORT); else value = double(_resolve_input_value(p_node, "value", p_outputs, p_incoming)); const StringName path = StringName("parameters/" + parameter); bool valid = false; tree->set(path, value, &valid); if (!valid) { r_error = vformat("Parâmetro AnimationTree inexistente: %s.", parameter); return false; } result = value; }
        else { r_error = vformat("Operação de animação não implementada: %s.", op); return false; }
        r_outputs[id + ":value"] = result; r_outputs[id + ":result"] = result; return true;
    }

    if (definition.begins_with("material.")) {
        const String op = definition.trim_prefix("material."); const String id = mgs_string(p_node, SNAME("id")); Variant result;
        MeshInstance3D *mesh = Object::cast_to<MeshInstance3D>(target); if (!mesh) { r_error = "Operação de material exige MeshInstance3D."; return false; }
        int surface = int(_resolve_input_value(p_node, "surface", p_outputs, p_incoming)); if (surface < 0 || surface >= mesh->get_surface_override_material_count()) { r_error = "Índice de superfície fora do intervalo do MeshInstance3D."; return false; }
        Ref<Material> material = mesh->get_active_material(surface);
        if (op == "set") { material = _resolve_input_value(p_node, "material", p_outputs, p_incoming); if (material.is_null()) { r_error = "Material inválido."; return false; } mesh->set_surface_override_material(surface, material); result = material; }
        else if (op == "get") result = material;
        else if (op == "clone") { if (material.is_null()) { r_error = "Não há material para clonar."; return false; } material = material->duplicate(true); mesh->set_surface_override_material(surface, material); result = material; }
        else {
            if (material.is_null()) { Ref<StandardMaterial3D> created; created.instantiate(); material = created; mesh->set_surface_override_material(surface, material); }
            Ref<BaseMaterial3D> standard = material; Ref<ShaderMaterial> shader = material;
            const StringName parameter = StringName(String(_resolve_input_value(p_node, "parameter", p_outputs, p_incoming)));
            if (op == "set_color" || op == "get_color") { if (standard.is_valid() && parameter.is_empty()) { if (op == "set_color") standard->set_albedo(Color(_resolve_input_value(p_node, "value", p_outputs, p_incoming))); result = standard->get_albedo(); } else if (shader.is_valid() && !parameter.is_empty()) { if (op == "set_color") shader->set_shader_parameter(parameter, _resolve_input_value(p_node, "value", p_outputs, p_incoming)); result = shader->get_shader_parameter(parameter); } else { r_error = "Color exige StandardMaterial3D ou parâmetro de ShaderMaterial."; return false; } }
            else if (op == "set_number" || op == "get_number" || op == "set_vector" || op == "get_vector" || op == "set_texture" || op == "get_texture") { if (!shader.is_valid() || parameter.is_empty()) { r_error = "Parâmetro genérico exige ShaderMaterial e nome de uniform."; return false; } if (op.begins_with("set_")) shader->set_shader_parameter(parameter, _resolve_input_value(p_node, "value", p_outputs, p_incoming)); result = shader->get_shader_parameter(parameter); }
            else if (op == "set_emission") { if (!standard.is_valid()) { r_error = "Emission exige StandardMaterial3D."; return false; } standard->set_feature(BaseMaterial3D::FEATURE_EMISSION, true); standard->set_emission(Color(_resolve_input_value(p_node, "color", p_outputs, p_incoming))); result = standard->get_emission(); }
            else if (op == "set_metallic") { if (!standard.is_valid()) { r_error = "Metallic exige StandardMaterial3D."; return false; } standard->set_metallic(double(_resolve_input_value(p_node, "value", p_outputs, p_incoming))); result = standard->get_metallic(); }
            else if (op == "set_roughness") { if (!standard.is_valid()) { r_error = "Roughness exige StandardMaterial3D."; return false; } standard->set_roughness(double(_resolve_input_value(p_node, "value", p_outputs, p_incoming))); result = standard->get_roughness(); }
            else if (op == "set_opacity") { if (!standard.is_valid()) { r_error = "Opacity exige StandardMaterial3D."; return false; } Color color = standard->get_albedo(); color.a = CLAMP(double(_resolve_input_value(p_node, "value", p_outputs, p_incoming)), 0.0, 1.0); standard->set_albedo(color); standard->set_transparency(color.a < 1.0 ? BaseMaterial3D::TRANSPARENCY_ALPHA : BaseMaterial3D::TRANSPARENCY_DISABLED); result = color.a; }
            else if (op == "set_uv_offset" || op == "set_uv_scale") { if (!standard.is_valid()) { r_error = "UV exige StandardMaterial3D."; return false; } Vector3 value = _resolve_input_value(p_node, "value", p_outputs, p_incoming); if (op == "set_uv_offset") standard->set_uv1_offset(value); else standard->set_uv1_scale(value); result = value; }
            else if (op == "set_uv_rotation") { if (!shader.is_valid()) { r_error = "UV Rotation exige ShaderMaterial com uniform uv_rotation."; return false; } result = _resolve_input_value(p_node, "value", p_outputs, p_incoming); shader->set_shader_parameter(SNAME("uv_rotation"), result); }
            else if (op == "enable_keyword" || op == "disable_keyword" || op == "has_keyword") { if (!shader.is_valid()) { r_error = "Keyword exige ShaderMaterial e uniform booleano."; return false; } StringName keyword = StringName(String(_resolve_input_value(p_node, "keyword", p_outputs, p_incoming))); if (keyword.is_empty()) { r_error = "Keyword vazio."; return false; } if (op != "has_keyword") shader->set_shader_parameter(keyword, op == "enable_keyword"); result = bool(shader->get_shader_parameter(keyword)); }
            else { r_error = vformat("Operação de material não implementada: %s.", op); return false; }
        }
        r_outputs[id + ":value"] = result; r_outputs[id + ":result"] = result; r_outputs[id + ":material"] = material; return true;
    }

    if (definition.begins_with("vehicle.")) {
        const String op = definition.trim_prefix("vehicle."); const String id = mgs_string(p_node, SNAME("id")); Variant result;
        MGSVehicle3D *vehicle = Object::cast_to<MGSVehicle3D>(target); if (!vehicle) { r_error = "Operação Vehicle exige MGSVehicle3D."; return false; }
        const int wheel = int(_resolve_input_value(p_node, "wheel", p_outputs, p_incoming)); const double value = double(_resolve_input_value(p_node, "value", p_outputs, p_incoming));
        if (op == "enter") { Node3D *driver = Object::cast_to<Node3D>(_resolve_input_value(p_node, "driver", p_outputs, p_incoming)); result = vehicle->enter_vehicle(driver); if (bool(result)) execute_event("vehicle.on_entered", driver); }
        else if (op == "exit") { Node3D *driver = vehicle->exit_vehicle(); result = driver; if (driver) execute_event("vehicle.on_exited", driver); }
        else if (op == "can_enter") result = vehicle->can_enter(); else if (op == "get_driver") result = vehicle->get_driver();
        else if (op == "open_door" || op == "close_door" || op == "toggle_door") { StringName part = StringName(String(_resolve_input_value(p_node, "part", p_outputs, p_incoming))); if (part.is_empty()) part = SNAME("DriverDoor"); bool open = op == "open_door" || (op == "toggle_door" && !vehicle->is_part_open(part)); vehicle->set_part_open(part, open); result = open; if (open) execute_event("vehicle.on_door_opened", String(part)); }
        else if (op == "open_hood" || op == "close_hood" || op == "open_trunk" || op == "close_trunk") { StringName part = op.contains("hood") ? SNAME("Hood") : SNAME("Trunk"); bool open = op.begins_with("open"); vehicle->set_part_open(part, open); result = open; }
        else if (op == "set_throttle") { vehicle->set_throttle_input(value); result = vehicle->get_throttle_input(); } else if (op == "get_throttle") result = vehicle->get_throttle_input();
        else if (op == "set_brake") { vehicle->set_brake_input(value); result = vehicle->get_brake_input(); } else if (op == "get_brake") result = vehicle->get_brake_input();
        else if (op == "set_handbrake") { vehicle->set_handbrake(bool(_resolve_input_value(p_node, "enabled", p_outputs, p_incoming))); result = vehicle->is_handbrake(); }
        else if (op == "set_steering") { vehicle->set_steering_input(value); result = vehicle->get_steering_input(); } else if (op == "get_steering") result = vehicle->get_steering_input();
        else if (op == "shift_up") { vehicle->shift_up(); result = vehicle->get_gear(); } else if (op == "shift_down") { vehicle->shift_down(); result = vehicle->get_gear(); } else if (op == "set_gear") { vehicle->set_gear(int(value)); result = vehicle->get_gear(); } else if (op == "get_gear") result = vehicle->get_gear();
        else if (op == "get_speed") result = vehicle->get_speed_kph(); else if (op == "get_rpm") result = vehicle->get_engine_rpm(); else if (op == "get_wheel_speed") result = vehicle->get_wheel_speed(wheel); else if (op == "get_slip_ratio") result = vehicle->get_slip_ratio(wheel); else if (op == "get_lateral_slip") result = vehicle->get_lateral_slip(wheel);
        else if (op == "set_mass") { vehicle->set_mass(MAX(0.001, value)); result = vehicle->get_mass(); } else if (op == "set_engine_power" || op == "set_max_torque") { vehicle->set_max_torque(value); result = value; } else if (op == "set_redline_rpm") { vehicle->set_redline_rpm(value); result = value; } else if (op == "set_top_speed") { vehicle->set_top_speed(value); result = value; }
        else if (op == "set_drive_type") { StringName type = StringName(String(_resolve_input_value(p_node, "type", p_outputs, p_incoming))); vehicle->set_drive_type(type); result = String(type); }
        else if (op == "set_gear_ratios") { PackedFloat32Array ratios = _resolve_input_value(p_node, "ratios", p_outputs, p_incoming); vehicle->set_gear_ratios(ratios); result = ratios; }
        else if (op == "set_final_drive") { vehicle->set_final_drive(value); result = value; } else if (op == "set_drivetrain_efficiency") { vehicle->set_drivetrain_efficiency(value); result = value; }
        else if (op == "set_tire_grip") { vehicle->set_tire_grip(wheel, value); result = value; } else if (op == "set_lateral_grip") { vehicle->set_lateral_grip(wheel, value); result = value; }
        else if (op == "set_traction_control") { vehicle->set_traction_control(bool(_resolve_input_value(p_node, "enabled", p_outputs, p_incoming))); result = true; } else if (op == "set_abs") { vehicle->set_abs_enabled(bool(_resolve_input_value(p_node, "enabled", p_outputs, p_incoming))); result = true; } else if (op == "set_stability_assist") { vehicle->set_stability_assist(bool(_resolve_input_value(p_node, "enabled", p_outputs, p_incoming))); result = true; }
        else if (op == "set_steering_angle") { vehicle->set_steering_angle(value); result = value; } else if (op == "set_steering_response") { vehicle->set_steering_response(value); result = value; }
        else if (op == "set_wheel_radius" || op == "set_wheel_position" || op == "set_wheel_driven" || op == "set_wheel_steerable" || op == "set_suspension_travel" || op == "set_spring_strength" || op == "set_suspension_damping") { Dictionary config; if (op == "set_wheel_radius") config[SNAME("radius")] = value; else if (op == "set_wheel_position") config[SNAME("position")] = _resolve_input_value(p_node, "position", p_outputs, p_incoming); else if (op == "set_wheel_driven") config[SNAME("driven")] = bool(_resolve_input_value(p_node, "enabled", p_outputs, p_incoming)); else if (op == "set_wheel_steerable") config[SNAME("steerable")] = bool(_resolve_input_value(p_node, "enabled", p_outputs, p_incoming)); else if (op == "set_suspension_travel") config[SNAME("travel")] = value; else if (op == "set_spring_strength") config[SNAME("spring")] = value; else config[SNAME("damping")] = value; vehicle->configure_wheel(wheel, config); result = true; }
        else if (op == "get_suspension_compression") result = vehicle->get_suspension_compression(wheel);
        else if (op == "set_center_of_mass") { vehicle->set_center_of_mass_mode(RigidBody3D::CENTER_OF_MASS_MODE_CUSTOM); vehicle->set_center_of_mass(Vector3(_resolve_input_value(p_node, "position", p_outputs, p_incoming))); result = vehicle->get_center_of_mass(); }
        else if (op == "set_downforce") { vehicle->set_downforce(value); result = value; } else if (op == "set_aero_drag") { vehicle->set_aero_drag(value); result = value; } else if (op == "set_rolling_resistance") { vehicle->set_rolling_resistance(value); result = value; }
        else if (op == "reset_upright") { vehicle->reset_upright(); result = true; } else if (op == "teleport") { Transform3D transform = _resolve_input_value(p_node, "transform", p_outputs, p_incoming); if (transform == Transform3D()) transform.origin = Vector3(_resolve_input_value(p_node, "position", p_outputs, p_incoming)); vehicle->teleport(transform); result = true; } else if (op == "repair") { vehicle->repair(); result = true; }
        else if (op == "enable_collision" || op == "disable_collision") { vehicle->set_collision_enabled(op == "enable_collision"); result = op == "enable_collision"; }
        else { r_error = vformat("Operação de veículo não implementada: %s.", op); return false; }
        r_outputs[id + ":value"] = result; r_outputs[id + ":result"] = result; return true;
    }

    if (definition.begins_with("world.") && !definition.begins_with("world.character_") && !definition.begins_with("world.joystick_")) {
        const String op = definition.trim_prefix("world."); const String id = mgs_string(p_node, SNAME("id")); Variant result;
        if (op == "load" || op == "reload") { String path = op == "reload" ? get_tree()->get_current_scene()->get_scene_file_path() : String(_resolve_input_value(p_node, "path", p_outputs, p_incoming)); if (!path.begins_with("res://") || get_tree()->change_scene_to_file(path) != OK) { r_error = vformat("Falha ao carregar cena: %s.", path); return false; } result = true; }
        else if (op == "load_additive") { String path = String(_resolve_input_value(p_node, "path", p_outputs, p_incoming)); Ref<PackedScene> packed = ResourceLoader::load(path); if (packed.is_null()) { r_error = "Cena aditiva não encontrada."; return false; } Node *instance = packed->instantiate(); get_tree()->get_current_scene()->add_child(instance, true); result = instance; execute_event("event.world.loaded", instance); }
        else if (op == "unload") { if (target == get_tree()->get_current_scene()) { r_error = "Unload aditivo exige uma subcena, não a raiz atual."; return false; } execute_event("event.world.unloaded", target); target->queue_free(); result = true; }
        else if (op == "set_active") { Node *scene = Object::cast_to<Node>(_resolve_input_value(p_node, "scene", p_outputs, p_incoming)); if (!scene) scene = target; get_tree()->set_current_scene(scene); result = scene; }
        else if (op == "get_active") result = get_tree()->get_current_scene();
        else if (op == "pause" || op == "resume") { get_tree()->set_pause(op == "pause"); result = get_tree()->is_paused(); }
        else if (op == "set_time_scale") { double scale = MAX(0.0, double(_resolve_input_value(p_node, "value", p_outputs, p_incoming))); Engine::get_singleton()->set_time_scale(scale); result = scale; }
        else if (op == "get_time_scale") result = Engine::get_singleton()->get_time_scale();
        else if (op == "set_ambient_color" || op == "set_skybox" || op == "set_fog") { WorldEnvironment *world_environment = Object::cast_to<WorldEnvironment>(target); if (!world_environment) { r_error = "Ambiente exige WorldEnvironment."; return false; } Ref<Environment> environment = world_environment->get_environment(); if (environment.is_null()) { environment.instantiate(); world_environment->set_environment(environment); } if (op == "set_ambient_color") { Color color = _resolve_input_value(p_node, "color", p_outputs, p_incoming); environment->set_ambient_source(Environment::AMBIENT_SOURCE_COLOR); environment->set_ambient_light_color(color); result = color; } else if (op == "set_skybox") { Ref<Sky> sky = _resolve_input_value(p_node, "sky", p_outputs, p_incoming); if (sky.is_null()) { r_error = "Sky inválido."; return false; } environment->set_sky(sky); environment->set_background(Environment::BG_SKY); result = sky; } else { bool enabled = bool(_resolve_input_value(p_node, "enabled", p_outputs, p_incoming)); environment->set_fog_enabled(enabled); Variant density = _resolve_input_value(p_node, "density", p_outputs, p_incoming); if (density.get_type() != Variant::NIL) environment->set_fog_density(double(density)); result = enabled; } }
        else if (op == "set_gravity") { double gravity = double(_resolve_input_value(p_node, "gravity", p_outputs, p_incoming)); GLOBAL_DEF("physics/3d/default_gravity", gravity); ProjectSettings::get_singleton()->set_setting("physics/3d/default_gravity", gravity); result = gravity; }
        else if (op == "find_spawn") { String name = String(_resolve_input_value(p_node, "name", p_outputs, p_incoming)); Node *root = get_tree()->get_current_scene(); result = root ? root->find_child(name.is_empty() ? "Spawn*" : name, true, false) : nullptr; }
        else if (op == "spawn_at") { String path = String(_resolve_input_value(p_node, "scene", p_outputs, p_incoming)); Ref<PackedScene> packed = ResourceLoader::load(path); if (packed.is_null()) { r_error = "PackedScene de spawn inválida."; return false; } Node3D *instance = Object::cast_to<Node3D>(packed->instantiate()); if (!instance) { r_error = "Spawn At exige raiz Node3D."; return false; } Node *parent = get_tree()->get_current_scene(); parent->add_child(instance, true); instance->set_global_position(Vector3(_resolve_input_value(p_node, "position", p_outputs, p_incoming))); result = instance; execute_event("event.object.created", instance); }
        else if (op == "destroy_all") { String tag = String(_resolve_input_value(p_node, "tag", p_outputs, p_incoming)); Node *root = get_tree()->get_current_scene(); int count = 0; if (root) { TypedArray<Node> nodes = root->find_children("*", "", true, false); for (int i = 0; i < nodes.size(); i++) { Node *node = Object::cast_to<Node>(nodes[i]); Array tags = node->get_meta(SNAME("mgs_tags"), Array()); if (tag.is_empty() || tags.has(tag)) { node->queue_free(); count++; } } } result = count; }
        else if (op == "preload") { String path = String(_resolve_input_value(p_node, "path", p_outputs, p_incoming)); Ref<Resource> resource = ResourceLoader::load(path); if (resource.is_null()) { r_error = "Recurso não encontrado para preload."; return false; } result = resource; }
        else if (op == "release") { result = true; }
        else if (op == "quit") { get_tree()->quit(int(_resolve_input_value(p_node, "exit_code", p_outputs, p_incoming))); result = true; }
        else if (op.begins_with("terrain_")) {
            MGSTerrain3D *terrain = Object::cast_to<MGSTerrain3D>(target); if (!terrain) { r_error = "Operação de terreno exige MGSTerrain3D."; return false; }
            const Vector3 position = _resolve_input_value(p_node, "position", p_outputs, p_incoming); const float radius = MAX(0.01, double(_resolve_input_value(p_node, "radius", p_outputs, p_incoming))); const float strength = CLAMP(double(_resolve_input_value(p_node, "strength", p_outputs, p_incoming)), 0.0, 1.0);
            if (op == "terrain_get_height") result = terrain->sample_height(position);
            else if (op == "terrain_set_height") { terrain->set_height(position, double(_resolve_input_value(p_node, "height", p_outputs, p_incoming))); result = true; }
            else if (op == "terrain_raise" || op == "terrain_lower" || op == "terrain_smooth" || op == "terrain_flatten") { terrain->apply_brush(position, radius, strength, StringName(op.trim_prefix("terrain_")), double(_resolve_input_value(p_node, "height", p_outputs, p_incoming))); result = true; }
            else if (op == "terrain_add_noise") { terrain->add_noise(strength, MAX(0.001, double(_resolve_input_value(p_node, "scale", p_outputs, p_incoming))), int(_resolve_input_value(p_node, "seed", p_outputs, p_incoming))); result = true; }
            else if (op == "terrain_paint_layer") { terrain->paint_layer(StringName(String(_resolve_input_value(p_node, "layer", p_outputs, p_incoming))), position, radius, double(_resolve_input_value(p_node, "weight", p_outputs, p_incoming))); result = true; }
            else if (op == "terrain_get_layer_weight") result = terrain->get_layer_weight(StringName(String(_resolve_input_value(p_node, "layer", p_outputs, p_incoming))), position);
            else if (op == "terrain_apply_auto_tile") { terrain->apply_auto_tile(); result = true; }
            else if (op == "terrain_add_auto_tile_rule") { Dictionary rule; rule[SNAME("layer")] = _resolve_input_value(p_node, "layer", p_outputs, p_incoming); rule[SNAME("min_height")] = _resolve_input_value(p_node, "min_height", p_outputs, p_incoming); rule[SNAME("max_height")] = _resolve_input_value(p_node, "max_height", p_outputs, p_incoming); terrain->add_auto_tile_rule(rule); result = true; }
            else if (op == "terrain_remove_auto_tile_rule") result = terrain->remove_auto_tile_rule(StringName(String(_resolve_input_value(p_node, "layer", p_outputs, p_incoming))));
            else if (op == "terrain_set_material") { Ref<Material> material = _resolve_input_value(p_node, "material", p_outputs, p_incoming); if (material.is_null()) { r_error = "Material de terreno inválido."; return false; } terrain->set_terrain_material(material); result = material; }
            else if (op == "terrain_set_texture_rotation") { Ref<ShaderMaterial> shader_material = terrain->get_terrain_material(); if (shader_material.is_null()) { Ref<Shader> shader; shader.instantiate(); shader->set_code("shader_type spatial; uniform sampler2D albedo_texture : source_color; uniform float uv_rotation = 0.0; void fragment(){ vec2 p=UV-vec2(0.5); float c=cos(uv_rotation),s=sin(uv_rotation); vec2 uv=mat2(vec2(c,-s),vec2(s,c))*p+vec2(0.5); ALBEDO=texture(albedo_texture,uv).rgb; }"); shader_material.instantiate(); shader_material->set_shader(shader); terrain->set_terrain_material(shader_material); } double rotation = double(_resolve_input_value(p_node, "value", p_outputs, p_incoming)); shader_material->set_shader_parameter(SNAME("uv_rotation"), rotation); result = rotation; }
            else if (op == "terrain_set_texture_scale" || op == "terrain_set_texture_offset" || op == "terrain_set_roughness" || op == "terrain_set_metallic") { Ref<BaseMaterial3D> material = terrain->get_terrain_material(); if (material.is_null()) { Ref<StandardMaterial3D> created; created.instantiate(); terrain->set_terrain_material(created); material = created; } if (op == "terrain_set_texture_scale") material->set_uv1_scale(Vector3(_resolve_input_value(p_node, "value", p_outputs, p_incoming))); else if (op == "terrain_set_texture_offset") material->set_uv1_offset(Vector3(_resolve_input_value(p_node, "value", p_outputs, p_incoming))); else if (op == "terrain_set_roughness") material->set_roughness(double(_resolve_input_value(p_node, "value", p_outputs, p_incoming))); else material->set_metallic(double(_resolve_input_value(p_node, "value", p_outputs, p_incoming))); result = true; }
            else if (op == "terrain_import_heightmap") result = terrain->import_heightmap(String(_resolve_input_value(p_node, "path", p_outputs, p_incoming)));
            else if (op == "terrain_export_heightmap") result = terrain->export_heightmap(String(_resolve_input_value(p_node, "path", p_outputs, p_incoming)));
            else if (op == "terrain_generate_semi_arid") { terrain->generate_semi_arid(int(_resolve_input_value(p_node, "seed", p_outputs, p_incoming)), strength); result = true; }
            else if (op == "terrain_scatter_tiles") { Ref<PackedScene> scene = _resolve_input_value(p_node, "scene", p_outputs, p_incoming); result = terrain->scatter_scene(scene, int(_resolve_input_value(p_node, "count", p_outputs, p_incoming)), int(_resolve_input_value(p_node, "seed", p_outputs, p_incoming))); }
            else if (op == "terrain_clear_tiles") { terrain->clear_scattered(); result = true; }
            else { r_error = vformat("Operação de terreno não implementada: %s.", op); return false; }
        } else { r_error = vformat("Operação de mundo não implementada: %s.", op); return false; }
        r_outputs[id + ":value"] = result; r_outputs[id + ":result"] = result; return true;
    }

    if (definition == "world.character_set_camera_first_person" || definition == "world.character_set_camera_third_person" || definition == "world.character_set_camera_top_down") {
        Node3D *character = Object::cast_to<Node3D>(target); if (!character) { r_error = "Modo de câmera exige personagem Node3D."; return false; }
        TypedArray<Node> cameras = character->find_children("*", "Camera3D", true, false); Camera3D *camera = cameras.is_empty() ? nullptr : Object::cast_to<Camera3D>(cameras[0]); if (!camera) { r_error = "Nenhuma Camera3D foi encontrada sob o personagem."; return false; }
        if (definition.ends_with("first_person")) { camera->set_position(Vector3(0, 1.65, 0)); camera->set_rotation(Vector3()); camera->set_projection(Camera3D::PROJECTION_PERSPECTIVE); }
        else if (definition.ends_with("third_person")) { camera->set_position(Vector3(0, 2.2, 4.5)); camera->set_rotation_degrees(Vector3(-12, 180, 0)); camera->set_projection(Camera3D::PROJECTION_PERSPECTIVE); }
        else { camera->set_position(Vector3(0, 12, 0)); camera->set_rotation_degrees(Vector3(-90, 0, 0)); camera->set_projection(Camera3D::PROJECTION_ORTHOGONAL); camera->set_size(12.0); }
        camera->set_current(true); return true;
    }
    if (definition == "world.character_set_look_sensitivity") { double value = MAX(0.0001, double(_resolve_input_value(p_node, "sensitivity", p_outputs, p_incoming))); target->set_meta(SNAME("mgs_look_sensitivity"), value); return true; }
    if (definition == "world.joystick_set_dead_zone") { double value = CLAMP(double(_resolve_input_value(p_node, "dead_zone", p_outputs, p_incoming)), 0.0, 0.99); for (const String &key : { String("negative"), String("positive"), String("action") }) { String action = String(_resolve_input_value(p_node, key, p_outputs, p_incoming)); if (!action.is_empty() && InputMap::get_singleton()->has_action(action)) InputMap::get_singleton()->action_set_deadzone(action, value); } return true; }
    if (definition == "world.character_set_speed") {
        const double speed = double(_resolve_input_value(p_node, "speed", p_outputs, p_incoming));
        target->set_meta(SNAME("mgs_character_speed"), speed > 0.0 ? speed : 5.0);
        return true;
    }
    if (definition == "world.character_move") {
        CharacterBody3D *body = Object::cast_to<CharacterBody3D>(target);
        if (!body) { r_error = "Mover personagem exige CharacterBody3D."; return false; }
        double x = double(_resolve_input_value(p_node, "x", p_outputs, p_incoming));
        double y = double(_resolve_input_value(p_node, "y", p_outputs, p_incoming));
        if (Math::is_zero_approx(x) && Math::is_zero_approx(y)) {
            x = Input::get_singleton()->get_axis(SNAME("ui_left"), SNAME("ui_right"));
            y = Input::get_singleton()->get_axis(SNAME("ui_up"), SNAME("ui_down"));
        }
        const double speed = double(target->get_meta(SNAME("mgs_character_speed"), 5.0));
        Vector3 velocity = body->get_velocity();
        Vector3 direction(x, 0.0, y);
        if (direction.length_squared() > 1.0) direction.normalize();
        // Movement follows the camera yaw, matching the direction visible to
        // the player after rotating the third-person view.
        Node3D *camera_pivot = Object::cast_to<Node3D>(body->get_node_or_null(NodePath("CameraPivot")));
        if (camera_pivot) {
            direction = camera_pivot->get_global_basis().xform(direction);
            direction.y = 0.0;
            if (!direction.is_zero_approx()) direction.normalize();
        }
        velocity.x = direction.x * speed;
        velocity.z = direction.z * speed;
        if (!body->is_on_floor()) velocity.y -= 18.0 * get_physics_process_delta_time();
        else if (velocity.y < 0.0) velocity.y = 0.0;
        body->set_velocity(velocity);
        body->move_and_slide();
        return true;
    }
    if (definition == "world.character_look") {
        Node3D *pivot = Object::cast_to<Node3D>(target);
        if (!pivot) { r_error = "Girar camera exige um Node3D como pivo."; return false; }
        const double horizontal = InputMap::get_singleton()->has_action(SNAME("look_left")) && InputMap::get_singleton()->has_action(SNAME("look_right")) ? Input::get_singleton()->get_axis(SNAME("look_left"), SNAME("look_right")) : 0.0;
        const double vertical = InputMap::get_singleton()->has_action(SNAME("look_up")) && InputMap::get_singleton()->has_action(SNAME("look_down")) ? Input::get_singleton()->get_axis(SNAME("look_up"), SNAME("look_down")) : 0.0;
        const double configured = double(_resolve_input_value(p_node, "sensitivity", p_outputs, p_incoming));
        const double sensitivity = configured > 0.0 ? configured : double(target->get_meta(SNAME("mgs_look_sensitivity"), 0.055));
        Vector3 rotation = pivot->get_rotation();
        rotation.y -= horizontal * sensitivity;
        rotation.x = CLAMP(rotation.x - vertical * sensitivity, Math::deg_to_rad(-65.0), Math::deg_to_rad(35.0));
        pivot->set_rotation(rotation);
        return true;
    }
    if (definition == "world.character_jump") {
        CharacterBody3D *body = Object::cast_to<CharacterBody3D>(target);
        if (!body) { r_error = "Pular exige CharacterBody3D."; return false; }
        if (body->is_on_floor()) {
            Vector3 velocity = body->get_velocity();
            velocity.y = double(_resolve_input_value(p_node, "force", p_outputs, p_incoming));
            if (velocity.y <= 0.0) velocity.y = 6.5;
            body->set_velocity(velocity);
            body->set_meta(SNAME("mgs_last_jump_ok"), true);
        }
        return true;
    }

    if (definition == "object.set_visible") {
        const bool visible = bool(_resolve_input_value(p_node, "visible", p_outputs, p_incoming));
        if (Node3D *node_3d = Object::cast_to<Node3D>(target)) node_3d->set_visible(visible);
        else if (CanvasItem *canvas_item = Object::cast_to<CanvasItem>(target)) canvas_item->set_visible(visible);
        else { r_error = "O alvo não possui visibilidade."; return false; }
        return true;
    }
    if (definition == "object.set_enabled") {
        const bool enabled = bool(_resolve_input_value(p_node, "enabled", p_outputs, p_incoming));
        target->set_process_mode(enabled ? Node::PROCESS_MODE_INHERIT : Node::PROCESS_MODE_DISABLED);
        return true;
    }
    if (definition == "transform.set_position" || definition == "transform.move" || definition == "transform.rotate.y" || definition == "transform.scale.uniform") {
        Node3D *node_3d = Object::cast_to<Node3D>(target);
        if (!node_3d) { r_error = "A ação de Transform exige Node3D."; return false; }
        if (definition == "transform.set_position") {
            Variant value = _resolve_input_value(p_node, "position", p_outputs, p_incoming);
            if (value.get_type() != Variant::VECTOR3) { r_error = "Posição Vector3 inválida."; return false; }
            node_3d->set_position(value);
        } else if (definition == "transform.move") {
            Variant value = _resolve_input_value(p_node, "offset", p_outputs, p_incoming);
            if (value.get_type() != Variant::VECTOR3) { r_error = "Deslocamento Vector3 inválido."; return false; }
            node_3d->set_position(node_3d->get_position() + Vector3(value));
        } else if (definition == "transform.rotate.y") {
            double degrees = double(_resolve_input_value(p_node, "degrees", p_outputs, p_incoming));
            if (degrees == 0.0 && p_node.has(SNAME("numberValue"))) degrees = double(p_node[SNAME("numberValue")]);
            Vector3 rotation = node_3d->get_rotation_degrees();
            rotation.y += degrees;
            node_3d->set_rotation_degrees(rotation);
        } else {
            double scale = double(_resolve_input_value(p_node, "scale", p_outputs, p_incoming));
            if (scale == 0.0 && p_node.has(SNAME("numberValue"))) scale = double(p_node[SNAME("numberValue")]);
            if (scale <= 0.0) { r_error = "Escala precisa ser maior que zero."; return false; }
            node_3d->set_scale(Vector3(scale, scale, scale));
        }
        return true;
    }
    if (definition == "world.change_scene") {
        const String path = String(_resolve_input_value(p_node, "path", p_outputs, p_incoming));
        if (!path.begins_with("res://") || !path.ends_with(".tscn")) { r_error = "Caminho de cena inválido."; return false; }
        Error error = get_tree()->change_scene_to_file(path);
        if (error != OK) { r_error = vformat("Falha ao trocar de cena: %d.", error); return false; }
        return true;
    }

    r_error = vformat("Nó ainda não suportado pelo runtime: %s.", definition);
    return false;
}

void MGSNoCodeRunner::_process_pending_continuations(double p_delta) {
    Array ready;
    for (int i = pending_continuations.size() - 1; i >= 0; i--) {
        Dictionary pending = pending_continuations[i];
        double remaining = double(pending.get(SNAME("remaining"), 0.0)) - p_delta;
        if (remaining > 0.0) { pending[SNAME("remaining")] = remaining; pending_continuations[i] = pending; continue; }
        ready.push_back(pending); pending_continuations.remove_at(i);
    }
    for (int i = ready.size() - 1; i >= 0; i--) {
        Dictionary pending = ready[i];
        const String key = String(pending.get(SNAME("cancel_key"), String()));
        if (!key.is_empty() && bool(runtime_flow_state.get("cancel:" + key, false))) continue;
        _drain_queue(String(pending[SNAME("event_id")]), pending[SNAME("queue")], pending[SNAME("outputs")], pending[SNAME("incoming")], int(pending.get(SNAME("executed"), 0)));
    }
}

bool MGSNoCodeRunner::_drain_queue(const String &p_event_id, Array p_queue, Dictionary p_outputs, const Dictionary &p_incoming, int p_executed) {
    if (graph.is_null()) return false;
    Dictionary by_id; const Array nodes = graph->get_nodes();
    for (int i = 0; i < nodes.size(); i++) { Dictionary node = nodes[i]; by_id[mgs_string(node, SNAME("id"))] = node; }
    HashMap<String, int> visits;
    while (!p_queue.is_empty()) {
        String node_id = p_queue.pop_front(); Dictionary node = by_id.get(node_id, Dictionary()); if (node.is_empty()) continue;
        if (++p_executed > max_executed_nodes) { emit_signal(SNAME("graph_error"), "Limite de execução excedido.", node_id); return false; }
        int visit_count = visits.has(node_id) ? visits[node_id] + 1 : 1; visits[node_id] = visit_count;
        if (visit_count > 64) { emit_signal(SNAME("graph_error"), "Possível ciclo infinito detectado.", node_id); return false; }
        const String definition = graph->get_definition_id(node); String error;
        if (!_execute_node(node, p_outputs, p_incoming, p_outputs, error)) { emit_signal(SNAME("graph_error"), error, node_id); return false; }
        emit_signal(SNAME("node_executed"), node_id, definition);
        String selected_port = String(p_outputs.get(node_id + ":selected_port", "flow")); if (selected_port == "blocked") continue;
        Array next = _flow_connections_from(node_id, selected_port); if (next.is_empty() && definition.begins_with("flow.switch_")) next = _flow_connections_from(node_id, "default");

        if (definition == "flow.delay" || definition == "flow.debounce" || definition == "time.wait_seconds") {
            double seconds = MAX(0.0, double(_resolve_input_value(node, "seconds", p_outputs, p_incoming)));
            if (seconds <= 0.0) seconds = MAX(0.0, double(_resolve_input_value(node, "duration", p_outputs, p_incoming)));
            if (definition == "flow.debounce") for (int i = pending_continuations.size() - 1; i >= 0; i--) if (String(Dictionary(pending_continuations[i]).get(SNAME("source_node"), String())) == node_id) pending_continuations.remove_at(i);
            Array delayed_queue; for (int i = 0; i < next.size(); i++) { Dictionary connection = next[i]; String to = mgs_string(connection, SNAME("toNodeId"), SNAME("to_node_id")); if (!to.is_empty()) delayed_queue.push_back(to); }
            Dictionary pending; pending[SNAME("remaining")] = seconds; pending[SNAME("event_id")] = p_event_id; pending[SNAME("queue")] = delayed_queue; pending[SNAME("outputs")] = p_outputs.duplicate(true); pending[SNAME("incoming")] = p_incoming; pending[SNAME("executed")] = p_executed; pending[SNAME("source_node")] = node_id; pending[SNAME("cancel_key")] = String(_resolve_input_value(node, "key", p_outputs, p_incoming)); pending_continuations.push_back(pending); continue;
        }
        if (definition == "flow.race" && next.size() > 1) next.resize(1);
        if ((definition == "flow.for" || definition == "flow.foreach" || definition == "flow.while") && selected_port == "body") p_queue.push_front(node_id);
        for (int i = next.size() - 1; i >= 0; i--) { Dictionary connection = next[i]; String to = mgs_string(connection, SNAME("toNodeId"), SNAME("to_node_id")); if (!to.is_empty()) p_queue.push_front(to); }
    }
    emit_signal(SNAME("graph_finished"), p_event_id, p_executed); return true;
}

bool MGSNoCodeRunner::execute_event(const String &p_event_id, const Variant &p_payload) {
    if (graph.is_null()) { emit_signal(SNAME("graph_error"), "Nenhum grafo configurado.", ""); return false; }
    PackedStringArray validation = graph->validate();
    if (!validation.is_empty()) { emit_signal(SNAME("graph_error"), validation[0], ""); return false; }

    Array nodes = graph->get_nodes();
    Dictionary by_id;
    Dictionary incoming;
    Array queue;
    Dictionary outputs;
    for (int i = 0; i < nodes.size(); i++) {
        Dictionary node = nodes[i];
        String id = mgs_string(node, SNAME("id"));
        by_id[id] = node;
        String definition = graph->get_definition_id(node);
        if (definition != p_event_id) continue;
        Dictionary values = mgs_values(node);
        Dictionary payload_dictionary = p_payload.get_type() == Variant::DICTIONARY ? Dictionary(p_payload) : Dictionary();
        if (definition == "event.input.button_pressed" || definition == "event.input.button_released") {
            String expected = String(values.get(SNAME("action"), node.get(SNAME("textValue"), String())));
            String actual = payload_dictionary.is_empty() ? String(p_payload) : String(payload_dictionary.get(SNAME("action"), String()));
            if (!expected.is_empty() && expected != actual) continue;
        }
        if (definition == "event.input.key_down" || definition == "event.input.key_up") {
            const int64_t expected = int64_t(values.get(SNAME("keycode"), values.get(SNAME("key"), int64_t(0))));
            const int64_t actual = int64_t(payload_dictionary.get(SNAME("keycode"), int64_t(0)));
            if (expected != 0 && expected != actual) continue;
        }
        if (definition == "event.timer.elapsed") {
            String expected = String(values.get(SNAME("timer_name"), node.get(SNAME("textValue"), String())));
            String actual = payload_dictionary.is_empty() ? String(p_payload) : String(payload_dictionary.get(SNAME("timer_name"), String()));
            if (!expected.is_empty() && expected != actual) continue;
        }
        if (definition == "event.custom.received") {
            String expected = String(values.get(SNAME("event"), node.get(SNAME("textValue"), String())));
            String actual = payload_dictionary.is_empty() ? String(p_payload) : String(payload_dictionary.get(SNAME("event"), String()));
            if (!expected.is_empty() && expected != actual) continue;
        }
        queue.push_back(id);
        outputs[id + ":value"] = p_payload;
        if (!payload_dictionary.is_empty()) {
            const Array payload_keys = payload_dictionary.keys();
            for (int key_index = 0; key_index < payload_keys.size(); key_index++) {
                const String key = String(payload_keys[key_index]);
                outputs[id + ":" + key] = payload_dictionary[payload_keys[key_index]];
            }
        }
    }
    Array connections = graph->get_connections();
    for (int i = 0; i < connections.size(); i++) {
        Dictionary connection = connections[i];
        String to = mgs_string(connection, SNAME("toNodeId"), SNAME("to_node_id"));
        Array list = incoming.get(to, Array());
        list.push_back(connection);
        incoming[to] = list;
    }

    emit_signal(SNAME("graph_started"), p_event_id);
    return _drain_queue(p_event_id, queue, outputs, incoming, 0);
}

bool MGSNoCodeRunner::emit_button(const StringName &p_action) {
    Dictionary payload;
    payload[SNAME("action")] = String(p_action);
    payload[SNAME("strength")] = Input::get_singleton()->get_action_strength(p_action);
    return execute_event("event.input.button_pressed", payload);
}
bool MGSNoCodeRunner::emit_custom(const String &p_event_name, const Variant &p_value) {
    Dictionary payload;
    payload[SNAME("event")] = p_event_name;
    payload[SNAME("value")] = p_value;
    return execute_event("event.custom.received", payload);
}
