#pragma once

#include "mgs_nocode_graph.h"
#include "scene/main/node.h"
#include "core/templates/hash_set.h"

class InputEvent;
class Control;

class MGSNoCodeRunner : public Node {
    GDCLASS(MGSNoCodeRunner, Node);

    Ref<MGSNoCodeGraph> graph;
    NodePath default_target;
    bool run_on_ready = true;
    int max_executed_nodes = 128;
    Dictionary runtime_variables;
    Dictionary runtime_timers;
    Dictionary runtime_flow_state;
    Dictionary save_values;
    Dictionary pointer_positions;
    Array pending_continuations;
    Dictionary active_overlap_events;
    Vector2 last_pointer_delta;
    double runtime_elapsed = 0.0;
    HashSet<StringName> watched_actions;

    Node *_resolve_target(const Dictionary &p_node) const;
    Variant _resolve_input_value(const Dictionary &p_node, const String &p_key, const Dictionary &p_outputs, const Dictionary &p_incoming) const;
    bool _execute_node(const Dictionary &p_node, const Dictionary &p_outputs, const Dictionary &p_incoming, Dictionary &r_outputs, String &r_error);
    Array _flow_connections_from(const String &p_node_id, const String &p_selected_port = String()) const;
    void _refresh_watched_actions();
    void _poll_input_events();
    void _load_save_values();
    bool _store_save_values(String &r_error);
    void _restart_looping_audio(Node *p_player);
    void _animation_finished(const StringName &p_animation);
    void _vehicle_collision(Node *p_body);
    void _connect_runtime_sources();
    void _body_event_entered(Node *p_body, const String &p_prefix);
    void _body_event_exited(Node *p_body, const String &p_prefix);
    void _object_input_event(Node *p_camera, const Ref<InputEvent> &p_event, const Vector3 &p_position, const Vector3 &p_normal, int p_shape);
    void _ui_focused(Control *p_control);
    void _ui_value_changed(double p_value, Control *p_control);
    void _network_connected(int p_peer_id);
    void _network_disconnected(int p_peer_id);
    bool _drain_queue(const String &p_event_id, Array p_queue, Dictionary p_outputs, const Dictionary &p_incoming, int p_executed = 0);
    void _process_pending_continuations(double p_delta);

protected:
    static void _bind_methods();
    void _notification(int p_what);
    void input(const Ref<InputEvent> &p_event) override;

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
    PackedStringArray get_catalog_ids() const;
    Dictionary debug_execute_definition(const String &p_definition, const Dictionary &p_values, Node *p_target = nullptr);

    bool execute_event(const String &p_event_id, const Variant &p_payload = Variant());
    bool emit_button(const StringName &p_action);
    bool emit_custom(const String &p_event_name, const Variant &p_value = Variant());
};
