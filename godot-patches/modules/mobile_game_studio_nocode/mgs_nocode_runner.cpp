#include "mgs_nocode_runner.h"

#include "core/config/engine.h"
#include "core/input/input.h"
#include "core/object/class_db.h"
#include "scene/3d/node_3d.h"
#include "scene/3d/physics/character_body_3d.h"
#include "scene/main/canvas_item.h"
#include "scene/main/scene_tree.h"

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
        _refresh_watched_actions();
        set_process(true);
        if (run_on_ready && !Engine::get_singleton()->is_editor_hint()) execute_event("event.scene.start");
    } else if (p_what == NOTIFICATION_PROCESS && !Engine::get_singleton()->is_editor_hint()) {
        _poll_input_events();
        execute_event("event.frame.update", get_process_delta_time());
    }
}

void MGSNoCodeRunner::set_graph(const Ref<MGSNoCodeGraph> &p_graph) {
    graph = p_graph;
    runtime_variables = graph.is_valid() ? graph->get_variables().duplicate(true) : Dictionary();
    _refresh_watched_actions();
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

void MGSNoCodeRunner::_refresh_watched_actions() {
    watched_actions.clear();
    if (graph.is_null()) return;
    Array nodes = graph->get_nodes();
    for (int i = 0; i < nodes.size(); i++) {
        if (nodes[i].get_type() != Variant::DICTIONARY) continue;
        Dictionary node = nodes[i];
        if (graph->get_definition_id(node) != "event.input.button_pressed") continue;
        Dictionary values = mgs_values(node);
        String action = String(values.get(SNAME("action"), node.get(SNAME("textValue"), String()))).strip_edges();
        if (!action.is_empty()) watched_actions.insert(StringName(action));
    }
}

void MGSNoCodeRunner::_poll_input_events() {
    for (const StringName &action : watched_actions) {
        if (Input::get_singleton()->is_action_just_pressed(action)) emit_button(action);
    }
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
        if (!flow_port) continue;
        if (!p_selected_port.is_empty() && port != p_selected_port && !(p_selected_port == "flow" && port.begins_with("then"))) continue;
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

    if (definition.begins_with("event.") || definition.begins_with("flow.")) return true;
    if (definition == "debug.log.info" || definition == "debug.log.warning" || definition == "debug.log.error") {
        const String message = String(_resolve_input_value(p_node, "message", p_outputs, p_incoming));
        if (definition.ends_with("warning")) WARN_PRINT(message); else if (definition.ends_with("error")) ERR_PRINT(message); else print_line(message);
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
    if (operation == "math.add" || operation == "math.subtract" || operation == "math.multiply" || operation == "math.divide") {
        const double a = double(_resolve_input_value(p_node, "a", p_outputs, p_incoming));
        const double b = double(_resolve_input_value(p_node, "b", p_outputs, p_incoming));
        double value = 0.0;
        if (operation == "math.add") value = a + b;
        else if (operation == "math.subtract") value = a - b;
        else if (operation == "math.multiply") value = a * b;
        else value = b == 0.0 ? 0.0 : a / b;
        r_outputs[mgs_string(p_node, SNAME("id")) + ":value"] = value;
        r_outputs[mgs_string(p_node, SNAME("id")) + ":result"] = value;
        return true;
    }
    if (operation == "compare.equal" || operation == "compare.greater" || operation == "compare.less") {
        Variant a = _resolve_input_value(p_node, "a", p_outputs, p_incoming);
        Variant b = _resolve_input_value(p_node, "b", p_outputs, p_incoming);
        bool value = false;
        if (operation == "compare.equal") value = a == b;
        else if (operation == "compare.greater") value = double(a) > double(b);
        else value = double(a) < double(b);
        r_outputs[mgs_string(p_node, SNAME("id")) + ":value"] = value;
        r_outputs[mgs_string(p_node, SNAME("id")) + ":result"] = value;
        return true;
    }

    if (definition == "input.gamepad.axis" || definition == "world.joystick_get_axis") {
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

    target = _resolve_target(p_node);
    if (!target) { r_error = "Objeto alvo não encontrado."; return false; }

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
        if (!body->is_on_floor()) velocity.y -= 18.0 * get_process_delta_time();
        else velocity.y = MIN(velocity.y, 0.0);
        body->set_velocity(velocity);
        body->move_and_slide();
        return true;
    }
    if (definition == "world.character_look") {
        Node3D *pivot = Object::cast_to<Node3D>(target);
        if (!pivot) { r_error = "Girar camera exige um Node3D como pivo."; return false; }
        const double horizontal = Input::get_singleton()->get_axis(SNAME("look_left"), SNAME("look_right"));
        const double vertical = Input::get_singleton()->get_axis(SNAME("look_up"), SNAME("look_down"));
        const double configured = double(_resolve_input_value(p_node, "sensitivity", p_outputs, p_incoming));
        const double sensitivity = configured > 0.0 ? configured : 0.055;
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
        if (definition == "event.input.button_pressed") {
            String expected = String(values.get(SNAME("action"), node.get(SNAME("textValue"), String())));
            if (!expected.is_empty() && expected != String(p_payload)) continue;
        }
        if (definition == "event.custom.received") {
            String expected = String(values.get(SNAME("event"), node.get(SNAME("textValue"), String())));
            if (!expected.is_empty() && expected != String(p_payload)) continue;
        }
        queue.push_back(id);
        outputs[id + ":value"] = p_payload;
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
    int executed = 0;
    HashMap<String, int> visits;
    while (!queue.is_empty()) {
        String node_id = queue.pop_front();
        Dictionary node = by_id.get(node_id, Dictionary());
        if (node.is_empty()) continue;
        if (++executed > max_executed_nodes) { emit_signal(SNAME("graph_error"), "Limite de execução excedido.", node_id); return false; }
        int visit_count = visits.has(node_id) ? visits[node_id] + 1 : 1;
        visits[node_id] = visit_count;
        if (visit_count > 16) { emit_signal(SNAME("graph_error"), "Possível ciclo infinito detectado.", node_id); return false; }

        const String definition = graph->get_definition_id(node);
        String error;
        if (!_execute_node(node, outputs, incoming, outputs, error)) { emit_signal(SNAME("graph_error"), error, node_id); return false; }
        emit_signal(SNAME("node_executed"), node_id, definition);

        String selected_port;
        if (definition == "flow.branch") {
            bool condition = bool(_resolve_input_value(node, "condition", outputs, incoming));
            selected_port = condition ? "true" : "false";
        } else {
            selected_port = "flow";
        }
        Array next = _flow_connections_from(node_id, selected_port);
        for (int i = 0; i < next.size(); i++) {
            Dictionary connection = next[i];
            String to = mgs_string(connection, SNAME("toNodeId"), SNAME("to_node_id"));
            if (!to.is_empty()) queue.push_back(to);
        }
    }
    emit_signal(SNAME("graph_finished"), p_event_id, executed);
    return true;
}

bool MGSNoCodeRunner::emit_button(const StringName &p_action) { return execute_event("event.input.button_pressed", String(p_action)); }
bool MGSNoCodeRunner::emit_custom(const String &p_event_name, const Variant &p_value) {
    Dictionary payload;
    payload[SNAME("event")] = p_event_name;
    payload[SNAME("value")] = p_value;
    return execute_event("event.custom.received", p_event_name);
}
