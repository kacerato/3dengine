#pragma once

#include "mgs_nocode_graph.h"
#include "scene/main/node.h"
#include "core/templates/hash_set.h"

class InputEvent;

class MGSNoCodeRunner : public Node {
    GDCLASS(MGSNoCodeRunner, Node);

    Ref<MGSNoCodeGraph> graph;
    NodePath default_target;
    bool run_on_ready = true;
    int max_executed_nodes = 128;
    Dictionary runtime_variables;
    HashSet<StringName> watched_actions;

    Node *_resolve_target(const Dictionary &p_node) const;
    Variant _resolve_input_value(const Dictionary &p_node, const String &p_key, const Dictionary &p_outputs, const Dictionary &p_incoming) const;
    bool _execute_node(const Dictionary &p_node, const Dictionary &p_outputs, const Dictionary &p_incoming, Dictionary &r_outputs, String &r_error);
    Array _flow_connections_from(const String &p_node_id, const String &p_selected_port = String()) const;
    void _refresh_watched_actions();
    void _poll_input_events();

protected:
    static void _bind_methods();
    void _notification(int p_what);

public:
    void set_graph(const Ref<MGSNoCodeGraph> &p_graph);
    Ref<MGSNoCodeGraph> get_graph() const;
    void set_default_target(const NodePath &p_path);
    NodePath get_default_target() const;
    void set_run_on_ready(bool p_enabled);
    bool is_run_on_ready() const;
    void set_max_executed_nodes(int p_limit);
    int get_max_executed_nodes() const;
    Dictionary get_runtime_variables() const;
    void reset_runtime_variables();

    bool execute_event(const String &p_event_id, const Variant &p_payload = Variant());
    bool emit_button(const StringName &p_action);
    bool emit_custom(const String &p_event_name, const Variant &p_value = Variant());
};
