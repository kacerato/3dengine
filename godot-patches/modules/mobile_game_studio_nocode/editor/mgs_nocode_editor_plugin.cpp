#include "mgs_nocode_editor_plugin.h"

#include "editor/gui/editor_file_dialog.h"
#include "editor/themes/editor_scale.h"
#include "scene/gui/box_container.h"
#include "scene/gui/button.h"
#include "scene/gui/graph_edit.h"
#include "scene/gui/graph_node.h"
#include "scene/gui/label.h"
#include "scene/gui/line_edit.h"
#include "scene/gui/menu_button.h"
#include "scene/gui/popup_menu.h"
#include "scene/gui/separator.h"

static String mgs_editor_string(const Dictionary &p_dictionary, const StringName &p_key, const StringName &p_fallback = StringName()) {
    if (p_dictionary.has(p_key)) return p_dictionary[p_key];
    if (!p_fallback.is_empty() && p_dictionary.has(p_fallback)) return p_dictionary[p_fallback];
    return String();
}

void MGSNoCodeEditorPlugin::_bind_methods() {
}

void MGSNoCodeEditorPlugin::_set_status(const String &p_text, bool p_error) {
    status->set_text(p_text);
    status->add_theme_color_override(SceneStringName(font_color), p_error ? Color(1.0, 0.42, 0.42) : Color(0.72, 0.84, 1.0));
}

String MGSNoCodeEditorPlugin::_title_for_definition(const String &p_definition) const {
    if (p_definition == "event.scene.start") return "Ao iniciar";
    if (p_definition == "event.input.button_pressed") return "Botão pressionado";
    if (p_definition == "flow.sequence.2") return "Sequência";
    if (p_definition == "flow.branch") return "Condição";
    if (p_definition == "debug.log.info") return "Mostrar no log";
    if (p_definition == "variable.set") return "Definir variável";
    if (p_definition == "variable.get") return "Ler variável";
    if (p_definition == "variable.add") return "Somar variável";
    if (p_definition == "object.set_visible") return "Visibilidade";
    if (p_definition == "object.set_enabled") return "Ativar objeto";
    if (p_definition == "transform.set_position") return "Definir posição";
    if (p_definition == "transform.move") return "Mover objeto";
    if (p_definition == "transform.rotate.y") return "Girar no eixo Y";
    if (p_definition == "transform.scale.uniform") return "Escala uniforme";
    if (p_definition == "world.change_scene") return "Trocar cena";
    return p_definition;
}

Dictionary MGSNoCodeEditorPlugin::_make_node(const String &p_definition, const Vector2 &p_position) {
    Dictionary node;
    node[SNAME("id")] = vformat("node-%d", node_serial++);
    node[SNAME("type")] = "CATALOG";
    node[SNAME("definitionId")] = p_definition;
    node[SNAME("positionX")] = p_position.x;
    node[SNAME("positionY")] = p_position.y;
    Dictionary values;
    if (p_definition == "event.input.button_pressed") values[SNAME("action")] = "interact";
    if (p_definition == "debug.log.info") values[SNAME("message")] = "Mobile Game Studio NoCode";
    if (p_definition.begins_with("variable.")) values[SNAME("name")] = "score";
    if (p_definition == "variable.set") values[SNAME("value")] = "0";
    if (p_definition == "variable.add") values[SNAME("amount")] = "1";
    if (p_definition == "flow.branch") values[SNAME("condition")] = "true";
    if (p_definition == "object.set_visible") values[SNAME("visible")] = "true";
    if (p_definition == "object.set_enabled") values[SNAME("enabled")] = "true";
    if (p_definition == "transform.set_position") values[SNAME("position")] = "0, 0, 0";
    if (p_definition == "transform.move") values[SNAME("offset")] = "0, 0, -1";
    if (p_definition == "transform.rotate.y") values[SNAME("degrees")] = "15";
    if (p_definition == "transform.scale.uniform") values[SNAME("scale")] = "1";
    if (p_definition == "world.change_scene") values[SNAME("path")] = "res://main.tscn";
    if (p_definition.begins_with("object.") || p_definition.begins_with("transform.")) values[SNAME("target_path")] = ".";
    node[SNAME("values")] = values;
    return node;
}

void MGSNoCodeEditorPlugin::_create_default_graph() {
    graph.instantiate();
    graph->set_graph_id("main");
    graph->set_graph_name("Lógica principal");
    Array nodes;
    Dictionary start = _make_node("event.scene.start", Vector2(60, 80));
    Dictionary log = _make_node("debug.log.info", Vector2(380, 80));
    nodes.push_back(start);
    nodes.push_back(log);
    Array connections;
    Dictionary connection;
    connection[SNAME("fromNodeId")] = start[SNAME("id")];
    connection[SNAME("toNodeId")] = log[SNAME("id")];
    connection[SNAME("fromPortId")] = "flow";
    connection[SNAME("toPortId")] = "flow";
    connections.push_back(connection);
    graph->set_nodes(nodes);
    graph->set_connections(connections);
}

void MGSNoCodeEditorPlugin::_new_graph() {
    _create_default_graph();
    _rebuild_graph();
    _set_status("Novo grafo funcional criado: Ao iniciar → Mostrar no log.");
}

void MGSNoCodeEditorPlugin::_open_graph() {
    open_dialog->popup_file_dialog();
}

void MGSNoCodeEditorPlugin::_save_graph() {
    _sync_node_positions_and_values();
    PackedStringArray errors = graph->validate();
    if (!errors.is_empty()) {
        _set_status("Não foi possível salvar: " + errors[0], true);
        return;
    }
    save_dialog->popup_file_dialog();
}

void MGSNoCodeEditorPlugin::_validate_graph() {
    _sync_node_positions_and_values();
    PackedStringArray errors = graph->validate();
    if (errors.is_empty()) _set_status(vformat("Grafo válido: %d nós e %d conexões.", graph->get_nodes().size(), graph->get_connections().size()));
    else _set_status(vformat("%d problema(s): %s", errors.size(), errors[0]), true);
}

void MGSNoCodeEditorPlugin::_file_opened(const String &p_path) {
    Ref<MGSNoCodeGraph> imported;
    imported.instantiate();
    Error error = imported->load_legacy_file(p_path);
    if (error != OK) {
        _set_status(vformat("Falha ao importar %s (erro %d).", p_path, error), true);
        return;
    }
    graph = imported;
    int highest = 0;
    Array nodes = graph->get_nodes();
    for (int i = 0; i < nodes.size(); i++) {
        String id = mgs_editor_string(Dictionary(nodes[i]), SNAME("id"));
        if (id.begins_with("node-")) highest = MAX(highest, id.trim_prefix("node-").to_int());
    }
    node_serial = highest + 1;
    _rebuild_graph();
    _set_status(vformat("Grafo legado importado: %d nós.", graph->get_nodes().size()));
}

void MGSNoCodeEditorPlugin::_file_saved(const String &p_path) {
    String path = p_path;
    if (!path.ends_with(".graph.json")) path += ".graph.json";
    Error error = graph->save_legacy_file(path);
    if (error != OK) _set_status(vformat("Falha ao salvar (erro %d).", error), true);
    else _set_status("Grafo salvo em " + path);
}

String MGSNoCodeEditorPlugin::_flow_port_id(const String &p_definition, int p_port, bool p_output) const {
    if (!p_output) return "flow";
    if (p_definition == "flow.branch") return p_port == 0 ? "true" : "false";
    if (p_definition == "flow.sequence.2") return p_port == 0 ? "then0" : "then1";
    return "flow";
}

int MGSNoCodeEditorPlugin::_flow_port_index(const String &p_definition, const String &p_port_id, bool p_output) const {
    if (!p_output) return 0;
    if (p_definition == "flow.branch") return p_port_id == "false" ? 1 : 0;
    if (p_definition == "flow.sequence.2") return p_port_id == "then1" ? 1 : 0;
    return 0;
}

GraphNode *MGSNoCodeEditorPlugin::_make_graph_node(const Dictionary &p_node) {
    const String id = mgs_editor_string(p_node, SNAME("id"));
    const String definition = graph->get_definition_id(p_node);
    Dictionary values = p_node.get(SNAME("values"), Dictionary());

    GraphNode *visual = memnew(GraphNode);
    visual->set_name(id);
    visual->set_title(_title_for_definition(definition));
    visual->set_position_offset(Vector2(float(p_node.get(SNAME("positionX"), 0.0)), float(p_node.get(SNAME("positionY"), 0.0))));
    visual->set_meta(SNAME("node_data"), p_node);
    visual->set_custom_minimum_size(Size2(230, 96) * EDSCALE);

    auto add_field = [&](const String &label_text, const StringName &key, const String &default_value) {
        VBoxContainer *box = memnew(VBoxContainer);
        Label *label = memnew(Label(label_text));
        box->add_child(label);
        LineEdit *field = memnew(LineEdit);
        field->set_text(String(values.get(key, default_value)));
        field->set_meta(SNAME("value_key"), key);
        field->set_custom_minimum_size(Size2(190, 42) * EDSCALE);
        box->add_child(field);
        visual->add_child(box);
        return box;
    };

    if (definition == "event.input.button_pressed") add_field("Ação de entrada", SNAME("action"), "interact");
    else if (definition == "debug.log.info") add_field("Mensagem", SNAME("message"), "NoCode executado");
    else if (definition == "flow.branch") add_field("Condição", SNAME("condition"), "true");
    else if (definition == "variable.set") { add_field("Variável", SNAME("name"), "score"); add_field("Valor", SNAME("value"), "0"); }
    else if (definition == "variable.get") add_field("Variável", SNAME("name"), "score");
    else if (definition == "variable.add") { add_field("Variável", SNAME("name"), "score"); add_field("Quantidade", SNAME("amount"), "1"); }
    else if (definition == "object.set_visible") { add_field("Visível", SNAME("visible"), "true"); add_field("NodePath alvo", SNAME("target_path"), "."); }
    else if (definition == "object.set_enabled") { add_field("Ativo", SNAME("enabled"), "true"); add_field("NodePath alvo", SNAME("target_path"), "."); }
    else if (definition == "transform.set_position") { add_field("Posição X, Y, Z", SNAME("position"), "0, 0, 0"); add_field("NodePath alvo", SNAME("target_path"), "."); }
    else if (definition == "transform.move") { add_field("Deslocamento X, Y, Z", SNAME("offset"), "0, 0, -1"); add_field("NodePath alvo", SNAME("target_path"), "."); }
    else if (definition == "transform.rotate.y") { add_field("Graus", SNAME("degrees"), "15"); add_field("NodePath alvo", SNAME("target_path"), "."); }
    else if (definition == "transform.scale.uniform") { add_field("Escala", SNAME("scale"), "1"); add_field("NodePath alvo", SNAME("target_path"), "."); }
    else if (definition == "world.change_scene") add_field("Cena .tscn", SNAME("path"), "res://main.tscn");
    else {
        Label *description = memnew(Label(definition.begins_with("event.") ? "Evento" : "Fluxo"));
        description->set_custom_minimum_size(Size2(190, 42) * EDSCALE);
        visual->add_child(description);
    }

    const bool is_event = definition.begins_with("event.");
    const bool has_input = !is_event;
    const bool has_output = definition != "world.change_scene";
    const Color flow_color(0.61, 0.35, 1.0);
    const int row_count = MAX(1, visual->get_child_count());
    visual->set_slot(0, has_input, 0, flow_color, has_output, 0, flow_color);
    if (definition == "flow.branch" || definition == "flow.sequence.2") {
        if (row_count < 2) {
            Label *second = memnew(Label(definition == "flow.branch" ? "Saída alternativa" : "Próximo 2"));
            visual->add_child(second);
        }
        visual->set_slot(1, false, 0, flow_color, true, 0, flow_color);
    }
    return visual;
}

void MGSNoCodeEditorPlugin::_clear_graph_controls() {
    Vector<Node *> remove;
    for (int i = 0; i < graph_edit->get_child_count(); i++) {
        Node *child = graph_edit->get_child(i);
        if (Object::cast_to<GraphNode>(child)) remove.push_back(child);
    }
    for (Node *child : remove) {
        graph_edit->remove_child(child);
        child->queue_free();
    }
    graph_edit->clear_connections();
}

void MGSNoCodeEditorPlugin::_rebuild_graph() {
    _clear_graph_controls();
    Array nodes = graph->get_nodes();
    for (int i = 0; i < nodes.size(); i++) graph_edit->add_child(_make_graph_node(Dictionary(nodes[i])));
    Array connections = graph->get_connections();
    for (int i = 0; i < connections.size(); i++) {
        Dictionary connection = connections[i];
        StringName from = mgs_editor_string(connection, SNAME("fromNodeId"), SNAME("from_node_id"));
        StringName to = mgs_editor_string(connection, SNAME("toNodeId"), SNAME("to_node_id"));
        Dictionary from_node = graph->get_node_by_id(String(from));
        Dictionary to_node = graph->get_node_by_id(String(to));
        if (from_node.is_empty() || to_node.is_empty()) continue;
        int from_port = _flow_port_index(graph->get_definition_id(from_node), mgs_editor_string(connection, SNAME("fromPortId"), SNAME("from_port_id")), true);
        int to_port = _flow_port_index(graph->get_definition_id(to_node), mgs_editor_string(connection, SNAME("toPortId"), SNAME("to_port_id")), false);
        graph_edit->connect_node(from, from_port, to, to_port);
    }
}

void MGSNoCodeEditorPlugin::_sync_node_positions_and_values() {
    Array updated;
    Array source_nodes = graph->get_nodes();
    for (int i = 0; i < source_nodes.size(); i++) {
        Dictionary original = source_nodes[i];
        String id = mgs_editor_string(original, SNAME("id"));
        GraphNode *visual = Object::cast_to<GraphNode>(graph_edit->get_node_or_null(NodePath(id)));
        if (!visual) { updated.push_back(original); continue; }
        Dictionary node = original.duplicate(true);
        node[SNAME("positionX")] = visual->get_position_offset().x;
        node[SNAME("positionY")] = visual->get_position_offset().y;
        Dictionary values = node.get(SNAME("values"), Dictionary());
        for (int child_index = 0; child_index < visual->get_child_count(); child_index++) {
            Node *child = visual->get_child(child_index);
            for (int nested = 0; nested < child->get_child_count(); nested++) {
                LineEdit *field = Object::cast_to<LineEdit>(child->get_child(nested));
                if (field && field->has_meta(SNAME("value_key"))) values[field->get_meta(SNAME("value_key"))] = field->get_text();
            }
        }
        node[SNAME("values")] = values;
        updated.push_back(node);
    }
    graph->set_nodes(updated);
}

void MGSNoCodeEditorPlugin::_connection_requested(const StringName &p_from_node, int p_from_port, const StringName &p_to_node, int p_to_port) {
    if (p_from_node == p_to_node) { _set_status("Um nó não pode conectar a si mesmo.", true); return; }
    Dictionary from_node = graph->get_node_by_id(String(p_from_node));
    Dictionary to_node = graph->get_node_by_id(String(p_to_node));
    if (from_node.is_empty() || to_node.is_empty()) return;
    Dictionary connection;
    connection[SNAME("fromNodeId")] = String(p_from_node);
    connection[SNAME("toNodeId")] = String(p_to_node);
    connection[SNAME("fromPortId")] = _flow_port_id(graph->get_definition_id(from_node), p_from_port, true);
    connection[SNAME("toPortId")] = _flow_port_id(graph->get_definition_id(to_node), p_to_port, false);
    Array connections = graph->get_connections();
    connections.push_back(connection);
    graph->set_connections(connections);
    if (!graph->validate().is_empty()) {
        connections.pop_back();
        graph->set_connections(connections);
        _set_status("Conexão recusada pelo validador.", true);
        return;
    }
    graph_edit->connect_node(p_from_node, p_from_port, p_to_node, p_to_port);
    _set_status("Conexão criada.");
}

void MGSNoCodeEditorPlugin::_disconnection_requested(const StringName &p_from_node, int p_from_port, const StringName &p_to_node, int p_to_port) {
    Dictionary from_node = graph->get_node_by_id(String(p_from_node));
    Dictionary to_node = graph->get_node_by_id(String(p_to_node));
    const String from_port_id = _flow_port_id(graph->get_definition_id(from_node), p_from_port, true);
    const String to_port_id = _flow_port_id(graph->get_definition_id(to_node), p_to_port, false);
    Array result;
    Array connections = graph->get_connections();
    for (int i = 0; i < connections.size(); i++) {
        Dictionary connection = connections[i];
        const bool matches = mgs_editor_string(connection, SNAME("fromNodeId"), SNAME("from_node_id")) == String(p_from_node) &&
                mgs_editor_string(connection, SNAME("toNodeId"), SNAME("to_node_id")) == String(p_to_node) &&
                mgs_editor_string(connection, SNAME("fromPortId"), SNAME("from_port_id")) == from_port_id &&
                mgs_editor_string(connection, SNAME("toPortId"), SNAME("to_port_id")) == to_port_id;
        if (!matches) result.push_back(connection);
    }
    graph->set_connections(result);
    graph_edit->disconnect_node(p_from_node, p_from_port, p_to_node, p_to_port);
    _set_status("Conexão removida.");
}

void MGSNoCodeEditorPlugin::_delete_nodes_request(const Array &p_nodes) {
    HashSet<String> removed;
    for (int i = 0; i < p_nodes.size(); i++) removed.insert(String(p_nodes[i]));
    Array nodes;
    Array source_nodes = graph->get_nodes();
    for (int i = 0; i < source_nodes.size(); i++) {
        Dictionary node = source_nodes[i];
        if (!removed.has(mgs_editor_string(node, SNAME("id")))) nodes.push_back(node);
    }
    Array connections;
    Array source_connections = graph->get_connections();
    for (int i = 0; i < source_connections.size(); i++) {
        Dictionary connection = source_connections[i];
        if (!removed.has(mgs_editor_string(connection, SNAME("fromNodeId"), SNAME("from_node_id"))) && !removed.has(mgs_editor_string(connection, SNAME("toNodeId"), SNAME("to_node_id")))) connections.push_back(connection);
    }
    graph->set_nodes(nodes);
    graph->set_connections(connections);
    _rebuild_graph();
    _set_status(vformat("%d nó(s) removido(s).", removed.size()));
}

void MGSNoCodeEditorPlugin::_add_node_selected(int p_id) {
    String definition;
    switch (p_id) {
        case ADD_EVENT_START: definition = "event.scene.start"; break;
        case ADD_EVENT_BUTTON: definition = "event.input.button_pressed"; break;
        case ADD_FLOW_SEQUENCE: definition = "flow.sequence.2"; break;
        case ADD_FLOW_BRANCH: definition = "flow.branch"; break;
        case ADD_DEBUG_LOG: definition = "debug.log.info"; break;
        case ADD_VARIABLE_SET: definition = "variable.set"; break;
        case ADD_VARIABLE_GET: definition = "variable.get"; break;
        case ADD_VARIABLE_ADD: definition = "variable.add"; break;
        case ADD_OBJECT_VISIBLE: definition = "object.set_visible"; break;
        case ADD_OBJECT_ENABLED: definition = "object.set_enabled"; break;
        case ADD_TRANSFORM_POSITION: definition = "transform.set_position"; break;
        case ADD_TRANSFORM_MOVE: definition = "transform.move"; break;
        case ADD_TRANSFORM_ROTATE_Y: definition = "transform.rotate.y"; break;
        case ADD_TRANSFORM_SCALE: definition = "transform.scale.uniform"; break;
        case ADD_SCENE_CHANGE: definition = "world.change_scene"; break;
        default: return;
    }
    Array nodes = graph->get_nodes();
    Vector2 position = graph_edit->get_scroll_offset() + Vector2(180, 120);
    nodes.push_back(_make_node(definition, position));
    graph->set_nodes(nodes);
    _rebuild_graph();
    _set_status("Nó adicionado: " + _title_for_definition(definition));
}

MGSNoCodeEditorPlugin::MGSNoCodeEditorPlugin() {
    panel = memnew(VBoxContainer);
    panel->set_custom_minimum_size(Size2(760, 390) * EDSCALE);

    HBoxContainer *toolbar = memnew(HBoxContainer);
    toolbar->add_theme_constant_override("separation", int(8 * EDSCALE));
    panel->add_child(toolbar);

    auto add_button = [&](const String &text, const Callable &callable) {
        Button *button = memnew(Button(text));
        button->set_custom_minimum_size(Size2(104, 44) * EDSCALE);
        button->connect(SceneStringName(pressed), callable);
        toolbar->add_child(button);
    };
    add_button("Novo", callable_mp(this, &MGSNoCodeEditorPlugin::_new_graph));
    add_button("Importar", callable_mp(this, &MGSNoCodeEditorPlugin::_open_graph));
    add_button("Salvar", callable_mp(this, &MGSNoCodeEditorPlugin::_save_graph));
    add_button("Validar", callable_mp(this, &MGSNoCodeEditorPlugin::_validate_graph));

    toolbar->add_child(memnew(VSeparator));
    add_node_menu = memnew(MenuButton("Adicionar nó"));
    add_node_menu->set_custom_minimum_size(Size2(150, 44) * EDSCALE);
    toolbar->add_child(add_node_menu);
    PopupMenu *popup = add_node_menu->get_popup();
    popup->add_item("Evento · Ao iniciar", ADD_EVENT_START);
    popup->add_item("Evento · Botão pressionado", ADD_EVENT_BUTTON);
    popup->add_separator("Fluxo");
    popup->add_item("Sequência", ADD_FLOW_SEQUENCE);
    popup->add_item("Condição", ADD_FLOW_BRANCH);
    popup->add_separator("Dados e depuração");
    popup->add_item("Mostrar no log", ADD_DEBUG_LOG);
    popup->add_item("Definir variável", ADD_VARIABLE_SET);
    popup->add_item("Ler variável", ADD_VARIABLE_GET);
    popup->add_item("Somar variável", ADD_VARIABLE_ADD);
    popup->add_separator("Cena");
    popup->add_item("Visibilidade", ADD_OBJECT_VISIBLE);
    popup->add_item("Ativar objeto", ADD_OBJECT_ENABLED);
    popup->add_item("Definir posição", ADD_TRANSFORM_POSITION);
    popup->add_item("Mover objeto", ADD_TRANSFORM_MOVE);
    popup->add_item("Girar no eixo Y", ADD_TRANSFORM_ROTATE_Y);
    popup->add_item("Escala uniforme", ADD_TRANSFORM_SCALE);
    popup->add_item("Trocar cena", ADD_SCENE_CHANGE);
    popup->connect(SceneStringName(id_pressed), callable_mp(this, &MGSNoCodeEditorPlugin::_add_node_selected));

    status = memnew(Label("NoCode pronto."));
    status->set_h_size_flags(Control::SIZE_EXPAND_FILL);
    status->set_text_overrun_behavior(TextServer::OVERRUN_TRIM_ELLIPSIS);
    toolbar->add_child(status);

    graph_edit = memnew(GraphEdit);
    graph_edit->set_v_size_flags(Control::SIZE_EXPAND_FILL);
    graph_edit->set_h_size_flags(Control::SIZE_EXPAND_FILL);
    graph_edit->set_minimap_enabled(true);
    graph_edit->set_right_disconnects(true);
    graph_edit->add_valid_connection_type(0, 0);
    graph_edit->connect(SNAME("connection_request"), callable_mp(this, &MGSNoCodeEditorPlugin::_connection_requested));
    graph_edit->connect(SNAME("disconnection_request"), callable_mp(this, &MGSNoCodeEditorPlugin::_disconnection_requested));
    graph_edit->connect(SNAME("delete_nodes_request"), callable_mp(this, &MGSNoCodeEditorPlugin::_delete_nodes_request));
    panel->add_child(graph_edit);

    open_dialog = memnew(EditorFileDialog);
    open_dialog->set_access(FileDialog::ACCESS_RESOURCES);
    open_dialog->set_file_mode(FileDialog::FILE_MODE_OPEN_FILE);
    open_dialog->add_filter("*.graph.json", "Mobile Game Studio NoCode");
    open_dialog->connect(SNAME("file_selected"), callable_mp(this, &MGSNoCodeEditorPlugin::_file_opened));
    panel->add_child(open_dialog);

    save_dialog = memnew(EditorFileDialog);
    save_dialog->set_access(FileDialog::ACCESS_RESOURCES);
    save_dialog->set_file_mode(FileDialog::FILE_MODE_SAVE_FILE);
    save_dialog->add_filter("*.graph.json", "Mobile Game Studio NoCode");
    save_dialog->set_current_file("main.graph.json");
    save_dialog->connect(SNAME("file_selected"), callable_mp(this, &MGSNoCodeEditorPlugin::_file_saved));
    panel->add_child(save_dialog);

    add_control_to_bottom_panel(panel, "NoCode");
    _create_default_graph();
    _rebuild_graph();
}

MGSNoCodeEditorPlugin::~MGSNoCodeEditorPlugin() {
    if (panel) {
        remove_control_from_bottom_panel(panel);
        memdelete(panel);
        panel = nullptr;
    }
}
