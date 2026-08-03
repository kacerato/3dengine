#include "register_types.h"

#include "mgs_nocode_graph.h"
#include "mgs_nocode_runner.h"
#include "mgs_terrain_3d.h"
#include "mgs_vehicle_3d.h"
#include "core/object/class_db.h"

#ifdef TOOLS_ENABLED
#include "editor/mgs_nocode_editor_plugin.h"
#include "editor/plugins/editor_plugin.h"
#endif

void initialize_mobile_game_studio_nocode_module(ModuleInitializationLevel p_level) {
    if (p_level == MODULE_INITIALIZATION_LEVEL_SCENE) {
        GDREGISTER_CLASS(MGSNoCodeGraph);
        GDREGISTER_CLASS(MGSNoCodeRunner);
        GDREGISTER_CLASS(MGSTerrain3D);
        GDREGISTER_CLASS(MGSVehicle3D);
    }
#ifdef TOOLS_ENABLED
    if (p_level == MODULE_INITIALIZATION_LEVEL_EDITOR) {
        EditorPlugins::add_by_type<MGSNoCodeEditorPlugin>();
    }
#endif
}

void uninitialize_mobile_game_studio_nocode_module(ModuleInitializationLevel p_level) {
}
