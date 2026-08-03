#pragma once

#include "scene/3d/node_3d.h"

class MeshInstance3D;
class StaticBody3D;
class CollisionShape3D;
class Material;

class MGSTerrain3D : public Node3D {
    GDCLASS(MGSTerrain3D, Node3D);

    int resolution = 65;
    float width = 64.0f;
    float max_height = 16.0f;
    PackedFloat32Array heights;
    Dictionary layer_weights;
    Array auto_tile_rules;
    MeshInstance3D *mesh_instance = nullptr;
    StaticBody3D *static_body = nullptr;
    CollisionShape3D *collision_shape = nullptr;

    int _index(int p_x, int p_z) const;
    Vector2i _grid_at(const Vector3 &p_local_position) const;
    void _ensure_nodes();

protected:
    static void _bind_methods();
    void _notification(int p_what);

public:
    void configure(int p_resolution, float p_width, float p_max_height);
    int get_resolution() const { return resolution; }
    float get_width() const { return width; }
    float get_max_height() const { return max_height; }
    PackedFloat32Array get_heights() const { return heights; }
    void set_heights(const PackedFloat32Array &p_heights);
    float sample_height(const Vector3 &p_local_position) const;
    void set_height(const Vector3 &p_local_position, float p_height);
    void apply_brush(const Vector3 &p_local_position, float p_radius, float p_strength, const StringName &p_mode, float p_target_height = 0.0f);
    void add_noise(float p_strength, float p_scale, int p_seed);
    void smooth_all(int p_iterations, float p_strength);
    void generate_semi_arid(int p_seed, float p_strength);
    void paint_layer(const StringName &p_layer, const Vector3 &p_local_position, float p_radius, float p_weight);
    float get_layer_weight(const StringName &p_layer, const Vector3 &p_local_position) const;
    void apply_auto_tile();
    void add_auto_tile_rule(const Dictionary &p_rule);
    bool remove_auto_tile_rule(const StringName &p_layer);
    void set_terrain_material(const Ref<Material> &p_material);
    Ref<Material> get_terrain_material() const;
    bool import_heightmap(const String &p_path);
    bool export_heightmap(const String &p_path) const;
    int scatter_scene(const Ref<PackedScene> &p_scene, int p_count, int p_seed);
    void clear_scattered();
    void rebuild();
};
