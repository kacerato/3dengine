#pragma once

#include "editor/plugins/editor_plugin.h"
#include "../mgs_nocode_graph.h"

class EditorFileDialog;
class GraphEdit;
class GraphNode;
class Label;
class MenuButton;
class VBoxContainer;

class MGSNoCodeEditorPlugin : public EditorPlugin {
    GDCLASS(MGSNoCodeEditorPlugin, EditorPlugin);

    enum AddNodeMenu {
        ADD_EVENT_START,
        ADD_EVENT_BUTTON,
        ADD_FLOW_SEQUENCE,
        ADD_FLOW_BRANCH,
        ADD_DEBUG_LOG,
        ADD_VARIABLE_SET,
        ADD_VARIABLE_GET,
        ADD_VARIABLE_ADD,
        ADD_OBJECT_VISIBLE,
        ADD_OBJECT_ENABLED,
        ADD_TRANSFORM_POSITION,
        ADD_TRANSFORM_MOVE,
        ADD_TRANSFORM_ROTATE_Y,
        ADD_TRANSFORM_SCALE,
        ADD_SCENE_CHANGE,
    };

    VBoxContainer *panel = nullptr;
    GraphEdit *graph_edit = nullptr;
    Label *status = nullptr;
    MenuButton *add_node_menu = nullptr;
    EditorFileDialog *open_dialog = nullptr;
    EditorFileDialog *save_dialog = nullptr;
    Ref<MGSNoCodeGraph> graph;
    int node_serial = 1;

    void _new_graph();
    void _open_graph();
    void _save_graph();
    void _validate_graph();
    void _file_opened(const String &p_path);
    void _file_saved(const String &p_path);
    void _add_node_selected(int p_id);
    void _connection_requested(const StringName &p_from_node, int p_from_port, const StringName &p_to_node, int p_to_port);
    void _disconnection_requested(const StringName &p_from_node, int p_from_port, const StringName &p_to_node, int p_to_port);
    void _delete_nodes_request(const Array &p_nodes);

    void _create_default_graph();
    void _rebuild_graph();
    void _clear_graph_controls();
    void _sync_node_positions_and_values();
    Dictionary _make_node(const String &p_definition, const Vector2 &p_position = Vector2());
    GraphNode *_make_graph_node(const Dictionary &p_node);
    String _title_for_definition(const String &p_definition) const;
    String _flow_port_id(const String &p_definition, int p_port, bool p_output) const;
    int _flow_port_index(const String &p_definition, const String &p_port_id, bool p_output) const;
    void _set_status(const String &p_text, bool p_error = false);

protected:
    static void _bind_methods();

public:
    virtual String get_plugin_name() const override { return "NoCode"; }
    MGSNoCodeEditorPlugin();
    ~MGSNoCodeEditorPlugin();
};
