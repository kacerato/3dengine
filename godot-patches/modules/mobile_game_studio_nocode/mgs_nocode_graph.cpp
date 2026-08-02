#include "mgs_nocode_graph.h"

#include "core/io/file_access.h"
#include "core/io/json.h"
#include "core/object/class_db.h"
#include "core/templates/hash_set.h"

String MGSNoCodeGraph::_read_string(const Dictionary &p_dictionary, const StringName &p_camel, const StringName &p_snake) {
    if (p_dictionary.has(p_camel)) {
        return p_dictionary[p_camel];
    }
    if (!p_snake.is_empty() && p_dictionary.has(p_snake)) {
        return p_dictionary[p_snake];
    }
    return String();
}

String MGSNoCodeGraph::_definition_for_node(const Dictionary &p_node) {
    const String explicit_definition = _read_string(p_node, SNAME("definitionId"), SNAME("definition_id"));
    if (!explicit_definition.is_empty()) {
        return explicit_definition;
    }

    Variant type_value = p_node.get(SNAME("type"), Variant());
    if (type_value.get_type() == Variant::INT) {
        switch (int(type_value)) {
            case 0: return "event.scene.start";
            case 1: return "event.object.touch";
            case 2: return "event.input.button_pressed";
            case 3: return "transform.rotate.y";
            case 4: return "transform.scale.uniform";
            case 5: return "debug.log.info";
            case 6: return "flow.sequence.2";
            default: return String();
        }
    }

    String legacy_type = String(type_value).to_upper();
    if (legacy_type == "ON_START") return "event.scene.start";
    if (legacy_type == "ON_TOUCH") return "event.object.touch";
    if (legacy_type == "ON_BUTTON_PRESSED") return "event.input.button_pressed";
    if (legacy_type == "ROTATE_OBJECT") return "transform.rotate.y";
    if (legacy_type == "SET_SCALE") return "transform.scale.uniform";
    if (legacy_type == "PRINT_LOG") return "debug.log.info";
    if (legacy_type == "SEQUENCE") return "flow.sequence.2";
    return String();
}

void MGSNoCodeGraph::_bind_methods() {
    ClassDB::bind_method(D_METHOD("set_schema_version", "version"), &MGSNoCodeGraph::set_schema_version);
    ClassDB::bind_method(D_METHOD("get_schema_version"), &MGSNoCodeGraph::get_schema_version);
    ClassDB::bind_method(D_METHOD("set_graph_id", "id"), &MGSNoCodeGraph::set_graph_id);
    ClassDB::bind_method(D_METHOD("get_graph_id"), &MGSNoCodeGraph::get_graph_id);
    ClassDB::bind_method(D_METHOD("set_graph_name", "name"), &MGSNoCodeGraph::set_graph_name);
    ClassDB::bind_method(D_METHOD("get_graph_name"), &MGSNoCodeGraph::get_graph_name);
    ClassDB::bind_method(D_METHOD("set_nodes", "nodes"), &MGSNoCodeGraph::set_nodes);
    ClassDB::bind_method(D_METHOD("get_nodes"), &MGSNoCodeGraph::get_nodes);
    ClassDB::bind_method(D_METHOD("set_connections", "connections"), &MGSNoCodeGraph::set_connections);
    ClassDB::bind_method(D_METHOD("get_connections"), &MGSNoCodeGraph::get_connections);
    ClassDB::bind_method(D_METHOD("set_variables", "variables"), &MGSNoCodeGraph::set_variables);
    ClassDB::bind_method(D_METHOD("get_variables"), &MGSNoCodeGraph::get_variables);
    ClassDB::bind_method(D_METHOD("validate"), &MGSNoCodeGraph::validate);
    ClassDB::bind_method(D_METHOD("is_valid_graph"), &MGSNoCodeGraph::is_valid_graph);
    ClassDB::bind_method(D_METHOD("import_legacy_json", "json"), &MGSNoCodeGraph::import_legacy_json);
    ClassDB::bind_method(D_METHOD("load_legacy_file", "path"), &MGSNoCodeGraph::load_legacy_file);
    ClassDB::bind_method(D_METHOD("save_legacy_file", "path"), &MGSNoCodeGraph::save_legacy_file);
    ClassDB::bind_method(D_METHOD("to_dictionary"), &MGSNoCodeGraph::to_dictionary);
    ClassDB::bind_method(D_METHOD("get_node_by_id", "id"), &MGSNoCodeGraph::get_node_by_id);
    ClassDB::bind_method(D_METHOD("get_definition_id", "node"), &MGSNoCodeGraph::get_definition_id);

    ADD_PROPERTY(PropertyInfo(Variant::INT, "schema_version", PROPERTY_HINT_RANGE, "1,2,1"), "set_schema_version", "get_schema_version");
    ADD_PROPERTY(PropertyInfo(Variant::STRING, "graph_id"), "set_graph_id", "get_graph_id");
    ADD_PROPERTY(PropertyInfo(Variant::STRING, "graph_name"), "set_graph_name", "get_graph_name");
    ADD_PROPERTY(PropertyInfo(Variant::ARRAY, "nodes"), "set_nodes", "get_nodes");
    ADD_PROPERTY(PropertyInfo(Variant::ARRAY, "connections"), "set_connections", "get_connections");
    ADD_PROPERTY(PropertyInfo(Variant::DICTIONARY, "variables"), "set_variables", "get_variables");
}

void MGSNoCodeGraph::set_schema_version(int p_version) { schema_version = p_version; }
int MGSNoCodeGraph::get_schema_version() const { return schema_version; }
void MGSNoCodeGraph::set_graph_id(const String &p_id) { graph_id = p_id.strip_edges().substr(0, 128); }
String MGSNoCodeGraph::get_graph_id() const { return graph_id; }
void MGSNoCodeGraph::set_graph_name(const String &p_name) { graph_name = p_name.strip_edges().substr(0, 128); }
String MGSNoCodeGraph::get_graph_name() const { return graph_name; }
void MGSNoCodeGraph::set_nodes(const Array &p_nodes) { nodes = p_nodes.duplicate(true); emit_changed(); }
Array MGSNoCodeGraph::get_nodes() const { return nodes; }
void MGSNoCodeGraph::set_connections(const Array &p_connections) { connections = p_connections.duplicate(true); emit_changed(); }
Array MGSNoCodeGraph::get_connections() const { return connections; }
void MGSNoCodeGraph::set_variables(const Dictionary &p_variables) { variables = p_variables.duplicate(true); emit_changed(); }
Dictionary MGSNoCodeGraph::get_variables() const { return variables; }

String MGSNoCodeGraph::get_definition_id(const Dictionary &p_node) const {
    return _definition_for_node(p_node);
}

Dictionary MGSNoCodeGraph::get_node_by_id(const String &p_id) const {
    for (int i = 0; i < nodes.size(); i++) {
        if (nodes[i].get_type() != Variant::DICTIONARY) {
            continue;
        }
        Dictionary node = nodes[i];
        if (_read_string(node, SNAME("id")) == p_id) {
            return node;
        }
    }
    return Dictionary();
}

PackedStringArray MGSNoCodeGraph::validate() const {
    PackedStringArray errors;
    if (schema_version < 1 || schema_version > 2) errors.push_back("Versão de grafo não suportada.");
    if (nodes.size() > 512) errors.push_back("O grafo excede 512 nós.");
    if (connections.size() > 1024) errors.push_back("O grafo excede 1024 conexões.");

    HashSet<String> ids;
    HashSet<String> flow_edges;
    for (int i = 0; i < nodes.size(); i++) {
        if (nodes[i].get_type() != Variant::DICTIONARY) {
            errors.push_back(vformat("Nó %d não é um objeto válido.", i));
            continue;
        }
        Dictionary node = nodes[i];
        const String id = _read_string(node, SNAME("id")).strip_edges();
        if (id.is_empty()) {
            errors.push_back(vformat("Nó %d não possui ID.", i));
        } else if (ids.has(id)) {
            errors.push_back(vformat("ID de nó duplicado: %s.", id));
        } else {
            ids.insert(id);
        }
        if (_definition_for_node(node).is_empty()) {
            errors.push_back(vformat("Nó %s não possui uma definição conhecida.", id));
        }
    }

    for (int i = 0; i < connections.size(); i++) {
        if (connections[i].get_type() != Variant::DICTIONARY) {
            errors.push_back(vformat("Conexão %d não é um objeto válido.", i));
            continue;
        }
        Dictionary connection = connections[i];
        const String from = _read_string(connection, SNAME("fromNodeId"), SNAME("from_node_id"));
        const String to = _read_string(connection, SNAME("toNodeId"), SNAME("to_node_id"));
        const String from_port = _read_string(connection, SNAME("fromPortId"), SNAME("from_port_id"));
        const String to_port = _read_string(connection, SNAME("toPortId"), SNAME("to_port_id"));
        if (!ids.has(from) || !ids.has(to)) errors.push_back(vformat("Conexão %d referencia nó inexistente.", i));
        if (from == to && !from.is_empty()) errors.push_back(vformat("Auto conexão não permitida no nó %s.", from));
        const String edge = from + ":" + from_port + ">" + to + ":" + to_port;
        if (flow_edges.has(edge)) errors.push_back(vformat("Conexão duplicada: %s.", edge));
        flow_edges.insert(edge);
    }
    return errors;
}

bool MGSNoCodeGraph::is_valid_graph() const { return validate().is_empty(); }

Error MGSNoCodeGraph::import_legacy_json(const String &p_json) {
    Variant parsed = JSON::parse_string(p_json);
    if (parsed.get_type() != Variant::DICTIONARY) return ERR_PARSE_ERROR;
    Dictionary document = parsed;
    schema_version = int(document.get(SNAME("schemaVersion"), document.get(SNAME("schema_version"), 1)));
    graph_id = _read_string(document, SNAME("graphId"), SNAME("graph_id"));
    graph_name = _read_string(document, SNAME("name"), SNAME("graph_name"));
    nodes = Array(document.get(SNAME("nodes"), Array())).duplicate(true);
    connections = Array(document.get(SNAME("connections"), Array())).duplicate(true);
    variables = Dictionary(document.get(SNAME("variables"), Dictionary())).duplicate(true);
    if (graph_name.is_empty()) graph_name = "Grafo importado";
    if (!is_valid_graph()) return ERR_INVALID_DATA;
    emit_changed();
    return OK;
}

Error MGSNoCodeGraph::load_legacy_file(const String &p_path) {
    Error error = OK;
    const String text = FileAccess::get_file_as_string(p_path, &error);
    if (error != OK) return error;
    return import_legacy_json(text);
}

Dictionary MGSNoCodeGraph::to_dictionary() const {
    Dictionary document;
    document[SNAME("schemaVersion")] = schema_version;
    document[SNAME("graphId")] = graph_id;
    document[SNAME("name")] = graph_name;
    document[SNAME("nodes")] = nodes;
    document[SNAME("connections")] = connections;
    document[SNAME("variables")] = variables;
    return document;
}

Error MGSNoCodeGraph::save_legacy_file(const String &p_path) const {
    Ref<FileAccess> file = FileAccess::open(p_path, FileAccess::WRITE);
    if (file.is_null()) return FileAccess::get_open_error();
    file->store_string(JSON::stringify(to_dictionary(), "  "));
    file->flush();
    return OK;
}
