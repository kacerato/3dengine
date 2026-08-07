#include "mgs_nocode_catalog.h"

#include "core/string/print_string.h"

static String mgs_humanize(const String &p_id) {
    String text = p_id.get_slice(".", p_id.get_slice_count(".") - 1).replace("_", " ");
    return text.capitalize();
}

static void mgs_add(Vector<MGSNoCodeDefinition> &r_catalog, const String &p_id, const String &p_category, const String &p_title = String()) {
    MGSNoCodeDefinition definition;
    definition.id = p_id;
    definition.category = p_category;
    definition.title = p_title.is_empty() ? mgs_humanize(p_id) : p_title;
    r_catalog.push_back(definition);
}

static PackedStringArray mgs_items(const char *p_csv) {
    return String::utf8(p_csv).split(",", false);
}

static Vector<MGSNoCodeDefinition> mgs_build_catalog() {
    Vector<MGSNoCodeDefinition> result;
    const PackedStringArray events = mgs_items("scene.start,scene.ready,scene.exit,frame.update,frame.fixed_update,object.touch,object.click,object.enabled,object.disabled,object.created,object.destroyed,input.button_pressed,input.button_released,input.key_down,input.key_up,input.axis,pointer.down,pointer.up,pointer.move,pointer.drag,collision.enter,collision.stay,collision.exit,trigger.enter,trigger.stay,trigger.exit,animation.started,animation.finished,audio.finished,ui.focused,ui.value_changed,timer.elapsed,network.connected,network.disconnected,save.loaded,save.completed,world.loaded,world.unloaded,custom.received,component.changed");
    for (const String &item : events) mgs_add(result, "event." + item, "Eventos");

    for (int count : { 2, 3, 4, 5, 6, 8, 10, 12 }) mgs_add(result, vformat("flow.sequence.%d", count), "Fluxo", vformat("Sequencia %d", count));
    for (const String &item : mgs_items("branch,gate,once,do_n,while,for,foreach,delay,debounce,throttle,race,parallel,cancel,break,continue,switch_bool,switch_number,switch_text,switch_object,flip_flop")) mgs_add(result, "flow." + item, "Fluxo");

    for (const String &device : mgs_items("keyboard,mouse,touch,gamepad,sensor"))
        for (const String &operation : mgs_items("pressed,released,held,axis,position,delta,pressure,count,available,name")) mgs_add(result, "input." + device + "." + operation, "Entrada");

    const PackedStringArray math_binary = mgs_items("add,subtract,multiply,divide,modulo,power,minimum,maximum,average,atan2,log_base,copy_sign");
    const PackedStringArray math_unary = mgs_items("absolute,negative,sqrt,cube_root,exp,log,log10,floor,ceil,round,truncate,fraction,sign,sin,cos,tan,asin,acos,atan,degrees,radians,saturate,is_finite,is_nan");
    for (const String &kind : mgs_items("number,integer,angle")) {
        for (const String &operation : math_binary) mgs_add(result, "math." + kind + "." + operation, "Matematica");
        for (const String &operation : math_unary) mgs_add(result, "math." + kind + "." + operation, "Matematica");
    }
    for (const String &operation : mgs_items("clamp,lerp,inverse_lerp,remap,smoothstep,move_towards,random_range")) mgs_add(result, "math.range." + operation, "Matematica");

    for (const String &kind : mgs_items("boolean,number,text,vector2,vector3,color,object,asset"))
        for (const String &operation : mgs_items("equal,not_equal,greater,greater_equal,less,less_equal,between,outside,approximately,is_null")) mgs_add(result, "compare." + kind + "." + operation, "Comparacao");

    for (const String &kind : mgs_items("vector2,vector3,vector4")) {
        for (const String &operation : mgs_items("add,subtract,multiply,divide,scale,normalize,length,length_squared,distance,dot,cross,lerp,move_towards,reflect,project,angle,clamp_length,minimum,maximum,absolute,floor,ceil,round,snap,rotate,inverse,is_zero,is_finite")) mgs_add(result, "vector." + kind + "." + operation, "Vetor");
        for (const String &operation : mgs_items("make,split,with_x,with_y,with_z,with_w")) mgs_add(result, "vector." + kind + "." + operation, "Vetor");
    }
    for (const String &operation : mgs_items("make_rgb,make_rgba,split_rgb,split_rgba,from_hex,to_hex,from_hsv,to_hsv,lerp,blend_add,blend_multiply,blend_screen,blend_overlay,lighten,darken,saturate,desaturate,invert,grayscale,alpha,with_alpha,luminance,contrast,temperature")) mgs_add(result, "color." + operation, "Cor");
    for (const String &operation : mgs_items("append,prepend,join,split,replace,replace_first,contains,starts_with,ends_with,equals_ignore_case,uppercase,lowercase,capitalize,trim,trim_start,trim_end,substring,character_at,length,is_empty,is_blank,pad_start,pad_end,repeat,reverse,format,number_to_text,bool_to_text,vector_to_text,parse_number,parse_bool,regex_matches,regex_find,regex_replace,lines,words")) mgs_add(result, "text." + operation, "Texto");
    for (const String &kind : mgs_items("number,text,bool,vector3,object"))
        for (const String &operation : mgs_items("create,add,insert,set,get,first,last,remove,remove_at,clear,contains,index_of,last_index_of,count,is_empty,reverse,shuffle,sort,distinct,slice,concat,filter,map,reduce,random")) mgs_add(result, "list." + kind + "." + operation, "Listas");

    for (const String &operation : mgs_items("find_by_name,find_by_tag,find_by_id,create,clone,destroy,enable,disable,toggle_enabled,set_name,get_name,set_parent,get_parent,add_child,remove_child,get_child,child_count,add_tag,remove_tag,has_tag,send_event,send_event_bool,send_event_number,send_event_text,get_component,has_component,add_component,remove_component,set_layer,get_layer,set_visible,is_visible,set_static,is_static")) mgs_add(result, "object." + operation, "Objeto");
    for (const String &property : mgs_items("position,rotation,scale"))
        for (const String &operation : mgs_items("get,set,add,subtract,multiply,lerp,move_towards,local_to_world,world_to_local,reset,look_at,face_direction")) mgs_add(result, "transform." + property + "." + operation, "Transform");
    mgs_add(result, "transform.rotate.y", "Transform", "Girar no eixo Y");
    mgs_add(result, "transform.scale.uniform", "Transform", "Escala uniforme");

    const struct Family { const char *category; const char *prefix; const char *items; } families[] = {
        { "Fisica", "physics", "add_force,add_impulse,add_torque,set_velocity,get_velocity,set_angular_velocity,get_angular_velocity,set_mass,get_mass,set_gravity,use_gravity,set_kinematic,freeze_position,freeze_rotation,raycast,sphere_cast,box_cast,overlap_sphere,overlap_box,ignore_collision,set_friction,set_bounciness,wake_up,sleep" },
        { "Veiculo", "vehicle", "enter,exit,can_enter,get_driver,open_door,close_door,toggle_door,open_hood,close_hood,open_trunk,close_trunk,set_throttle,get_throttle,set_brake,get_brake,set_handbrake,set_steering,get_steering,shift_up,shift_down,set_gear,get_gear,get_speed,get_rpm,get_wheel_speed,get_slip_ratio,get_lateral_slip,set_mass,set_engine_power,set_max_torque,set_redline_rpm,set_top_speed,set_drive_type,set_gear_ratios,set_final_drive,set_drivetrain_efficiency,set_tire_grip,set_lateral_grip,set_traction_control,set_abs,set_stability_assist,set_steering_angle,set_steering_response,set_wheel_radius,set_wheel_position,set_wheel_driven,set_wheel_steerable,set_suspension_travel,set_spring_strength,set_suspension_damping,get_suspension_compression,set_center_of_mass,set_downforce,set_aero_drag,set_rolling_resistance,reset_upright,teleport,repair,enable_collision,disable_collision,on_collision,on_entered,on_exited,on_door_opened" },
        { "Audio", "audio", "play,play_3d,play_loop,play_3d_loop,pause,resume,stop,stop_all,set_volume,get_volume,fade_in,fade_out,set_pitch,get_pitch,set_pan,set_spatial_blend,set_min_distance,set_max_distance,is_playing,set_bus" },
        { "Animacao", "animation", "play,play_crossfade,pause,resume,stop,rewind,set_speed,get_speed,set_time,get_time,set_loop,is_playing,set_bool,set_number,set_trigger,reset_trigger,get_state,set_weight,blend,play_additive" },
        { "Material", "material", "get,set,clone,set_color,get_color,set_number,get_number,set_vector,get_vector,set_texture,get_texture,set_emission,set_metallic,set_roughness,set_opacity,set_uv_offset,set_uv_scale,enable_keyword,disable_keyword,has_keyword" },
        { "Interface", "ui", "show,hide,toggle,set_text,get_text,set_image,set_color,set_value,get_value,set_min,set_max,set_interactable,is_interactable,focus,unfocus,set_position,set_size,set_anchor,set_progress,animate_value,toast,open_panel,close_panel,set_placeholder" },
        { "Mundo", "world", "load,load_additive,unload,reload,set_active,get_active,pause,resume,set_time_scale,get_time_scale,set_ambient_color,set_skybox,set_fog,set_gravity,find_spawn,spawn_at,destroy_all,preload,release,quit,terrain_get_height,terrain_set_height,terrain_raise,terrain_lower,terrain_smooth,terrain_flatten,terrain_add_noise,terrain_paint_layer,terrain_get_layer_weight,terrain_apply_auto_tile,terrain_add_auto_tile_rule,terrain_remove_auto_tile_rule,terrain_set_material,terrain_set_texture_scale,terrain_set_texture_rotation,terrain_set_texture_offset,terrain_set_roughness,terrain_set_metallic,terrain_import_heightmap,terrain_export_heightmap,terrain_generate_semi_arid,terrain_scatter_tiles,terrain_clear_tiles,character_set_camera_first_person,character_set_camera_third_person,character_set_camera_top_down,character_set_speed,character_jump,character_set_look_sensitivity,joystick_get_axis,joystick_set_dead_zone" },
    };
    for (const Family &family : families)
        for (const String &operation : mgs_items(family.items)) mgs_add(result, String(family.prefix) + "." + operation, family.category);
    mgs_add(result, "world.character_move", "Mundo", "Mover personagem");
    mgs_add(result, "world.character_look", "Mundo", "Girar camera do personagem");

    for (const String &kind : mgs_items("bool,number,integer,text,vector2,vector3,color,object_id,list"))
        for (const String &operation : mgs_items("save,load,has,delete")) mgs_add(result, "save." + kind + "." + operation, "Save Game");
    for (const String &operation : mgs_items("delta,fixed_delta,elapsed,unscaled_elapsed,frame,fps,timestamp,date,time,timezone,timer_start,timer_pause,timer_resume,timer_stop,timer_remaining,timer_elapsed,format_duration,wait_seconds")) mgs_add(result, "time." + operation, "Tempo");
    for (const String &operation : mgs_items("trace,info,warning,error,assert,draw_line,draw_ray,draw_sphere,breakpoint,watch")) mgs_add(result, "debug.log." + operation, "Debug");
    return result;
}

const Vector<MGSNoCodeDefinition> &MGSNoCodeCatalog::definitions() {
    static Vector<MGSNoCodeDefinition> catalog = mgs_build_catalog();
    DEV_ASSERT(catalog.size() == EXPECTED_SIZE);
    return catalog;
}

const MGSNoCodeDefinition *MGSNoCodeCatalog::find(const String &p_id) {
    const Vector<MGSNoCodeDefinition> &catalog = definitions();
    for (const MGSNoCodeDefinition &definition : catalog) if (definition.id == p_id) return &definition;
    return nullptr;
}

int MGSNoCodeCatalog::size() { return definitions().size(); }
