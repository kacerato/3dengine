#include "mgs_terrain_3d.h"

#include "core/io/image.h"
#include "core/math/random_pcg.h"
#include "scene/3d/physics/collision_shape_3d.h"
#include "scene/3d/mesh_instance_3d.h"
#include "scene/3d/physics/static_body_3d.h"
#include "scene/resources/3d/concave_polygon_shape_3d.h"
#include "scene/resources/mesh.h"
#include "scene/resources/material.h"
#include "scene/resources/packed_scene.h"

int MGSTerrain3D::_index(int p_x, int p_z) const { return CLAMP(p_z, 0, resolution - 1) * resolution + CLAMP(p_x, 0, resolution - 1); }

Vector2i MGSTerrain3D::_grid_at(const Vector3 &p) const {
    const float nx = CLAMP(p.x / width + 0.5f, 0.0f, 1.0f);
    const float nz = CLAMP(p.z / width + 0.5f, 0.0f, 1.0f);
    return Vector2i(Math::round(nx * (resolution - 1)), Math::round(nz * (resolution - 1)));
}

void MGSTerrain3D::_bind_methods() {
    ClassDB::bind_method(D_METHOD("configure", "resolution", "width", "max_height"), &MGSTerrain3D::configure);
    ClassDB::bind_method(D_METHOD("sample_height", "local_position"), &MGSTerrain3D::sample_height);
    ClassDB::bind_method(D_METHOD("set_height", "local_position", "height"), &MGSTerrain3D::set_height);
    ClassDB::bind_method(D_METHOD("apply_brush", "local_position", "radius", "strength", "mode", "target_height"), &MGSTerrain3D::apply_brush, DEFVAL(0.0f));
    ClassDB::bind_method(D_METHOD("rebuild"), &MGSTerrain3D::rebuild);
    ClassDB::bind_method(D_METHOD("get_resolution"), &MGSTerrain3D::get_resolution);
    ClassDB::bind_method(D_METHOD("get_width"), &MGSTerrain3D::get_width);
    ClassDB::bind_method(D_METHOD("get_max_height"), &MGSTerrain3D::get_max_height);
    ClassDB::bind_method(D_METHOD("get_heights"), &MGSTerrain3D::get_heights);
    ClassDB::bind_method(D_METHOD("set_heights", "heights"), &MGSTerrain3D::set_heights);
    ADD_PROPERTY(PropertyInfo(Variant::INT, "resolution", PROPERTY_HINT_RANGE, "3,513,1"), "", "get_resolution");
    ADD_PROPERTY(PropertyInfo(Variant::FLOAT, "width", PROPERTY_HINT_RANGE, "1,8192,0.1"), "", "get_width");
    ADD_PROPERTY(PropertyInfo(Variant::FLOAT, "max_height", PROPERTY_HINT_RANGE, "0.1,2048,0.1"), "", "get_max_height");
    ADD_PROPERTY(PropertyInfo(Variant::PACKED_FLOAT32_ARRAY, "heights"), "set_heights", "get_heights");
}

void MGSTerrain3D::_notification(int p_what) {
    if (p_what == NOTIFICATION_READY) { _ensure_nodes(); if (heights.size() != resolution * resolution) { heights.resize(resolution * resolution); heights.fill(0.0f); } rebuild(); }
}

void MGSTerrain3D::_ensure_nodes() {
    mesh_instance = Object::cast_to<MeshInstance3D>(get_node_or_null(NodePath("TerrainMesh")));
    if (!mesh_instance) { mesh_instance = memnew(MeshInstance3D); mesh_instance->set_name("TerrainMesh"); add_child(mesh_instance); }
    static_body = Object::cast_to<StaticBody3D>(get_node_or_null(NodePath("TerrainBody")));
    if (!static_body) { static_body = memnew(StaticBody3D); static_body->set_name("TerrainBody"); add_child(static_body); }
    collision_shape = Object::cast_to<CollisionShape3D>(static_body->get_node_or_null(NodePath("TerrainCollision")));
    if (!collision_shape) { collision_shape = memnew(CollisionShape3D); collision_shape->set_name("TerrainCollision"); static_body->add_child(collision_shape); }
}

void MGSTerrain3D::configure(int p_resolution, float p_width, float p_max_height) {
    resolution = CLAMP(p_resolution, 3, 513); width = MAX(1.0f, p_width); max_height = MAX(0.1f, p_max_height);
    heights.resize(resolution * resolution); heights.fill(0.0f); layer_weights.clear(); rebuild();
}

void MGSTerrain3D::set_heights(const PackedFloat32Array &p_heights) {
    if (p_heights.size() != resolution * resolution) { ERR_PRINT("MGSTerrain3D: height array size mismatch."); return; }
    heights = p_heights; for (int i = 0; i < heights.size(); i++) heights.set(i, CLAMP(heights[i], 0.0f, 1.0f)); rebuild();
}

float MGSTerrain3D::sample_height(const Vector3 &p) const {
    if (heights.is_empty()) return 0.0f;
    const float gx = CLAMP(p.x / width + 0.5f, 0.0f, 1.0f) * (resolution - 1); const float gz = CLAMP(p.z / width + 0.5f, 0.0f, 1.0f) * (resolution - 1);
    const int x0 = Math::floor(gx), z0 = Math::floor(gz), x1 = MIN(x0 + 1, resolution - 1), z1 = MIN(z0 + 1, resolution - 1); const float tx = gx - x0, tz = gz - z0;
    return Math::lerp(Math::lerp(heights[_index(x0, z0)], heights[_index(x1, z0)], tx), Math::lerp(heights[_index(x0, z1)], heights[_index(x1, z1)], tx), tz) * max_height;
}

void MGSTerrain3D::set_height(const Vector3 &p, float p_height) { Vector2i grid = _grid_at(p); heights.set(_index(grid.x, grid.y), CLAMP(p_height / max_height, 0.0f, 1.0f)); rebuild(); }

void MGSTerrain3D::apply_brush(const Vector3 &p, float p_radius, float p_strength, const StringName &p_mode, float p_target_height) {
    const float radius = MAX(width / (resolution - 1), p_radius); const float strength = CLAMP(p_strength, 0.0f, 1.0f); PackedFloat32Array source = heights;
    for (int z = 0; z < resolution; z++) for (int x = 0; x < resolution; x++) {
        Vector3 point((float(x) / (resolution - 1) - 0.5f) * width, 0, (float(z) / (resolution - 1) - 0.5f) * width); float distance = Vector2(point.x - p.x, point.z - p.z).length(); if (distance > radius) continue;
        const float falloff = Math::smoothstep(1.0f, 0.0f, distance / radius) * strength; const int index = _index(x, z); float value = source[index];
        if (p_mode == "raise") value += falloff * 0.05f; else if (p_mode == "lower") value -= falloff * 0.05f; else if (p_mode == "flatten") value = Math::lerp(value, CLAMP(p_target_height / max_height, 0.0f, 1.0f), falloff); else if (p_mode == "smooth") { float sum = 0; int count = 0; for (int dz = -1; dz <= 1; dz++) for (int dx = -1; dx <= 1; dx++) { sum += source[_index(x + dx, z + dz)]; count++; } value = Math::lerp(value, sum / count, falloff); }
        heights.set(index, CLAMP(value, 0.0f, 1.0f));
    }
    rebuild();
}

void MGSTerrain3D::add_noise(float p_strength, float p_scale, int p_seed) { for (int z = 0; z < resolution; z++) for (int x = 0; x < resolution; x++) { float n = 0.5f + 0.25f * Math::sin((x + p_seed * 0.13f) * p_scale) + 0.25f * Math::cos((z - p_seed * 0.17f) * p_scale * 1.37f); int i = _index(x, z); heights.set(i, CLAMP(heights[i] + (n - 0.5f) * p_strength, 0.0f, 1.0f)); } rebuild(); }
void MGSTerrain3D::smooth_all(int p_iterations, float p_strength) { for (int iteration = 0; iteration < MAX(1, p_iterations); iteration++) { PackedFloat32Array source = heights; for (int z = 0; z < resolution; z++) for (int x = 0; x < resolution; x++) { float sum = 0; int count = 0; for (int dz = -1; dz <= 1; dz++) for (int dx = -1; dx <= 1; dx++) { sum += source[_index(x + dx, z + dz)]; count++; } int i = _index(x, z); heights.set(i, Math::lerp(source[i], sum / count, CLAMP(p_strength, 0.0f, 1.0f))); } } rebuild(); }
void MGSTerrain3D::generate_semi_arid(int p_seed, float p_strength) { heights.fill(0.18f); add_noise(p_strength, 0.11f, p_seed); smooth_all(2, 0.35f); }

void MGSTerrain3D::paint_layer(const StringName &p_layer, const Vector3 &p, float p_radius, float p_weight) { PackedFloat32Array weights = layer_weights.get(p_layer, PackedFloat32Array()); if (weights.size() != heights.size()) { weights.resize(heights.size()); weights.fill(0.0f); } for (int z = 0; z < resolution; z++) for (int x = 0; x < resolution; x++) { Vector2 point((float(x) / (resolution - 1) - 0.5f) * width, (float(z) / (resolution - 1) - 0.5f) * width); float d = point.distance_to(Vector2(p.x, p.z)); if (d <= p_radius) weights.set(_index(x, z), Math::lerp(weights[_index(x, z)], CLAMP(p_weight, 0.0f, 1.0f), Math::smoothstep(1.0f, 0.0f, d / MAX(p_radius, 0.001f)))); } layer_weights[p_layer] = weights; }
float MGSTerrain3D::get_layer_weight(const StringName &p_layer, const Vector3 &p) const { PackedFloat32Array weights = layer_weights.get(p_layer, PackedFloat32Array()); if (weights.size() != heights.size()) return 0.0f; Vector2i grid = _grid_at(p); return weights[_index(grid.x, grid.y)]; }
void MGSTerrain3D::add_auto_tile_rule(const Dictionary &p_rule) { auto_tile_rules.push_back(p_rule); }
bool MGSTerrain3D::remove_auto_tile_rule(const StringName &p_layer) { for (int i = auto_tile_rules.size() - 1; i >= 0; i--) { Dictionary rule = auto_tile_rules[i]; if (StringName(rule.get("layer", StringName())) == p_layer) { auto_tile_rules.remove_at(i); return true; } } return false; }
void MGSTerrain3D::apply_auto_tile() { for (const Variant &entry : auto_tile_rules) { Dictionary rule = entry; StringName layer = rule.get("layer", StringName()); float min_height = float(rule.get("min_height", 0.0)); float max_rule_height = float(rule.get("max_height", 1.0)); PackedFloat32Array weights; weights.resize(heights.size()); for (int i = 0; i < heights.size(); i++) weights.set(i, heights[i] >= min_height && heights[i] <= max_rule_height ? 1.0f : 0.0f); layer_weights[layer] = weights; } }
void MGSTerrain3D::set_terrain_material(const Ref<Material> &p_material) { _ensure_nodes(); mesh_instance->set_material_override(p_material); }
Ref<Material> MGSTerrain3D::get_terrain_material() const { return mesh_instance ? mesh_instance->get_material_override() : Ref<Material>(); }

bool MGSTerrain3D::import_heightmap(const String &p_path) { Ref<Image> image = Image::load_from_file(p_path); if (image.is_null() || image->is_empty()) return false; image->resize(resolution, resolution, Image::INTERPOLATE_BILINEAR); for (int z = 0; z < resolution; z++) for (int x = 0; x < resolution; x++) heights.set(_index(x, z), image->get_pixel(x, z).get_luminance()); rebuild(); return true; }
bool MGSTerrain3D::export_heightmap(const String &p_path) const { Ref<Image> image = Image::create_empty(resolution, resolution, false, Image::FORMAT_L8); for (int z = 0; z < resolution; z++) for (int x = 0; x < resolution; x++) image->set_pixel(x, z, Color(heights[_index(x, z)], 0, 0)); return image->save_png(p_path) == OK; }

int MGSTerrain3D::scatter_scene(const Ref<PackedScene> &p_scene, int p_count, int p_seed) { if (p_scene.is_null()) return 0; RandomPCG random(p_seed); int created = 0; for (int i = 0; i < MAX(0, p_count); i++) { Node3D *instance = Object::cast_to<Node3D>(p_scene->instantiate()); if (!instance) continue; float x = random.random(-width * 0.5f, width * 0.5f), z = random.random(-width * 0.5f, width * 0.5f); instance->set_position(Vector3(x, sample_height(Vector3(x, 0, z)), z)); instance->set_meta("mgs_terrain_scatter", true); add_child(instance, true); created++; } return created; }
void MGSTerrain3D::clear_scattered() { for (int i = get_child_count() - 1; i >= 0; i--) { Node *child = get_child(i); if (bool(child->get_meta("mgs_terrain_scatter", false))) child->queue_free(); } }

void MGSTerrain3D::rebuild() {
    if (!is_inside_tree()) return; _ensure_nodes(); if (heights.size() != resolution * resolution) return;
    PackedVector3Array vertices, normals; PackedVector2Array uvs; PackedInt32Array indices; vertices.resize(resolution * resolution); normals.resize(resolution * resolution); uvs.resize(resolution * resolution);
    const float cell = width / (resolution - 1); for (int z = 0; z < resolution; z++) for (int x = 0; x < resolution; x++) { int i = _index(x, z); vertices.set(i, Vector3((x - (resolution - 1) * 0.5f) * cell, heights[i] * max_height, (z - (resolution - 1) * 0.5f) * cell)); float dx = (heights[_index(x - 1, z)] - heights[_index(x + 1, z)]) * max_height; float dz = (heights[_index(x, z - 1)] - heights[_index(x, z + 1)]) * max_height; normals.set(i, Vector3(dx, cell * 2.0f, dz).normalized()); uvs.set(i, Vector2(float(x) / (resolution - 1), float(z) / (resolution - 1))); }
    for (int z = 0; z < resolution - 1; z++) for (int x = 0; x < resolution - 1; x++) { int a = _index(x, z), b = _index(x + 1, z), c = _index(x, z + 1), d = _index(x + 1, z + 1); indices.push_back(a); indices.push_back(c); indices.push_back(b); indices.push_back(b); indices.push_back(c); indices.push_back(d); }
    Array arrays; arrays.resize(Mesh::ARRAY_MAX); arrays[Mesh::ARRAY_VERTEX] = vertices; arrays[Mesh::ARRAY_NORMAL] = normals; arrays[Mesh::ARRAY_TEX_UV] = uvs; arrays[Mesh::ARRAY_INDEX] = indices; Ref<ArrayMesh> mesh; mesh.instantiate(); mesh->add_surface_from_arrays(Mesh::PRIMITIVE_TRIANGLES, arrays); mesh_instance->set_mesh(mesh);
    PackedVector3Array faces; faces.resize(indices.size()); for (int i = 0; i < indices.size(); i++) faces.set(i, vertices[indices[i]]); Ref<ConcavePolygonShape3D> collision; collision.instantiate(); collision->set_faces(faces); collision_shape->set_shape(collision);
}
