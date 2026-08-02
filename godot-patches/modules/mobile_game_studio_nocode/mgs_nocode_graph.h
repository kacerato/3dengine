#pragma once

#include "core/io/resource.h"

class MGSNoCodeGraph : public Resource {
    GDCLASS(MGSNoCodeGraph, Resource);

    int schema_version = 2;
    String graph_id;
    String graph_name = "Novo fluxo";
    Array nodes;
    Array connections;
    Dictionary variables;

    static String _definition_for_node(const Dictionary &p_node);
    static String _read_string(const Dictionary &p_dictionary, const StringName &p_camel, const StringName &p_snake = StringName());

protected:
    static void _bind_methods();

public:
    void set_schema_version(int p_version);
    int get_schema_version() const;
    void set_graph_id(const String &p_id);
    String get_graph_id() const;
    void set_graph_name(const String &p_name);
    String get_graph_name() const;
    void set_nodes(const Array &p_nodes);
    Array get_nodes() const;
    void set_connections(const Array &p_connections);
    Array get_connections() const;
    void set_variables(const Dictionary &p_variables);
    Dictionary get_variables() const;

    PackedStringArray validate() const;
    bool is_valid_graph() const;
    Error import_legacy_json(const String &p_json);
    Error load_legacy_file(const String &p_path);
    Error save_legacy_file(const String &p_path) const;
    Dictionary to_dictionary() const;
    Dictionary get_node_by_id(const String &p_id) const;
    String get_definition_id(const Dictionary &p_node) const;
};
