#pragma once

#include "editor/plugins/editor_plugin.h"
#include "../mgs_nocode_catalog.h"
#include "../mgs_nocode_graph.h"

class EditorFileDialog;
class GraphEdit;
class GraphNode;
class ItemList;
class Label;
class LineEdit;
class PopupPanel;
class VBoxContainer;

class MGSNoCodeEditorPlugin : public EditorPlugin {
    GDCLASS(MGSNoCodeEditorPlugin, EditorPlugin);

    VBoxContainer *panel = nullptr;
    GraphEdit *graph_edit = nullptr;
    Label *status = nullptr;
    EditorFileDialog *open_dialog = nullptr;
    EditorFileDialog *save_dialog = nullptr;
    PopupPanel *catalog_popup = nullptr;
    LineEdit *catalog_search = nullptr;
    ItemList *catalog_list = nullptr;
    Label *catalog_count = nullptr;
    Vector<int> filtered_catalog;
    String selected_catalog_id;
    Ref<MGSNoCodeGraph> graph;
    int node_serial = 1;

    void _new_graph();
    void _open_graph();
    void _save_graph();
    void _validate_graph();
    void _arrange_graph();
    void _file_opened(const String &p_path);
    void _file_saved(const String &p_path);
    void _open_catalog();
    void _filter_catalog(const String &p_query);
    void _catalog_item_selected(int64_t p_index);
    void _catalog_item_activated(int64_t p_index);
    void _add_catalog_selection();
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
