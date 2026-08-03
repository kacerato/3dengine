#include "mgs_vehicle_3d.h"

#include "scene/3d/physics/collision_shape_3d.h"
#include "scene/3d/physics/vehicle_body_3d.h"

MGSVehicle3D::MGSVehicle3D() {
    gear_ratios.push_back(-3.1f); gear_ratios.push_back(0.0f); gear_ratios.push_back(3.2f); gear_ratios.push_back(2.1f); gear_ratios.push_back(1.52f); gear_ratios.push_back(1.18f); gear_ratios.push_back(0.94f); gear_ratios.push_back(0.78f);
    set_contact_monitor(true); set_max_contacts_reported(8); set_mass(1250.0f);
}

void MGSVehicle3D::_bind_methods() {
    ClassDB::bind_method(D_METHOD("enter_vehicle", "driver"), &MGSVehicle3D::enter_vehicle);
    ClassDB::bind_method(D_METHOD("exit_vehicle"), &MGSVehicle3D::exit_vehicle);
    ClassDB::bind_method(D_METHOD("can_enter"), &MGSVehicle3D::can_enter);
    ClassDB::bind_method(D_METHOD("get_driver"), &MGSVehicle3D::get_driver);
    ClassDB::bind_method(D_METHOD("set_throttle_input", "value"), &MGSVehicle3D::set_throttle_input);
    ClassDB::bind_method(D_METHOD("get_throttle_input"), &MGSVehicle3D::get_throttle_input);
    ClassDB::bind_method(D_METHOD("set_brake_input", "value"), &MGSVehicle3D::set_brake_input);
    ClassDB::bind_method(D_METHOD("get_brake_input"), &MGSVehicle3D::get_brake_input);
    ClassDB::bind_method(D_METHOD("set_steering_input", "value"), &MGSVehicle3D::set_steering_input);
    ClassDB::bind_method(D_METHOD("get_steering_input"), &MGSVehicle3D::get_steering_input);
    ClassDB::bind_method(D_METHOD("set_gear", "gear"), &MGSVehicle3D::set_gear);
    ClassDB::bind_method(D_METHOD("get_gear"), &MGSVehicle3D::get_gear);
    ClassDB::bind_method(D_METHOD("get_speed_kph"), &MGSVehicle3D::get_speed_kph);
    ClassDB::bind_method(D_METHOD("get_engine_rpm"), &MGSVehicle3D::get_engine_rpm);
    ADD_SIGNAL(MethodInfo("driver_entered", PropertyInfo(Variant::OBJECT, "driver")));
    ADD_SIGNAL(MethodInfo("driver_exited", PropertyInfo(Variant::OBJECT, "driver")));
    ADD_SIGNAL(MethodInfo("door_opened", PropertyInfo(Variant::STRING_NAME, "part")));
    ADD_SIGNAL(MethodInfo("vehicle_collision", PropertyInfo(Variant::OBJECT, "body")));
}

Vector<VehicleWheel3D *> MGSVehicle3D::_wheels() const { Vector<VehicleWheel3D *> result; TypedArray<Node> nodes = find_children("*", "VehicleWheel3D", true, false); for (int i = 0; i < nodes.size(); i++) if (VehicleWheel3D *wheel = Object::cast_to<VehicleWheel3D>(nodes[i])) result.push_back(wheel); return result; }
VehicleWheel3D *MGSVehicle3D::_wheel(int p_index) const { Vector<VehicleWheel3D *> wheels = _wheels(); return p_index >= 0 && p_index < wheels.size() ? wheels[p_index] : nullptr; }
Node3D *MGSVehicle3D::_part(const StringName &p_name) const { return Object::cast_to<Node3D>(find_child(String(p_name), true, false)); }

void MGSVehicle3D::_notification(int p_what) {
    if (p_what == NOTIFICATION_READY && !is_connected(SNAME("body_entered"), callable_mp(this, &MGSVehicle3D::_body_entered))) connect(SNAME("body_entered"), callable_mp(this, &MGSVehicle3D::_body_entered));
    if (p_what != NOTIFICATION_PHYSICS_PROCESS) return;
    const float delta = get_physics_process_delta_time(); const float speed = get_speed_kph(); const float rpm = get_engine_rpm(); float effective_throttle = throttle_input;
    if (traction_control) { for (VehicleWheel3D *wheel : _wheels()) if (wheel->get_skidinfo() < 0.65f) effective_throttle *= 0.55f; }
    const float torque_curve = CLAMP(1.0f - Math::pow(MAX(0.0f, rpm - redline_rpm * 0.55f) / MAX(1.0f, redline_rpm * 0.45f), 2.0f), 0.0f, 1.0f);
    float ratio = gear + 1 >= 0 && gear + 1 < gear_ratios.size() ? gear_ratios[gear + 1] : 0.0f;
    set_engine_force(speed >= top_speed_kph && effective_throttle > 0.0f ? 0.0f : effective_throttle * max_torque * ratio * final_drive * drivetrain_efficiency * torque_curve);
    float applied_brake = brake_input * 35.0f + (handbrake ? 55.0f : 0.0f); if (abs_enabled && applied_brake > 0.0f) { for (VehicleWheel3D *wheel : _wheels()) if (wheel->get_skidinfo() < 0.45f) applied_brake *= 0.5f; } set_brake(applied_brake);
    float current = get_steering(); set_steering(Math::move_toward(current, steering_target * steering_angle, steering_response * delta));
    Vector3 velocity = get_linear_velocity(); if (!velocity.is_zero_approx()) { apply_central_force(-velocity * velocity.length() * aero_drag); apply_central_force(-velocity.normalized() * rolling_resistance * get_mass() * 9.81f); }
    apply_central_force(-get_global_basis().get_column(1) * downforce * velocity.length_squared());
    if (stability_assist) { Vector3 angular = get_angular_velocity(); angular.x *= Math::pow(0.25f, delta); angular.z *= Math::pow(0.25f, delta); set_angular_velocity(angular); }
}

void MGSVehicle3D::_body_entered(Node *p_body) { health = MAX(0.0f, health - get_linear_velocity().length() * 0.0025f); emit_signal(SNAME("vehicle_collision"), p_body); }

bool MGSVehicle3D::can_enter() const { return driver_id.is_null(); }
Node3D *MGSVehicle3D::get_driver() const { return driver_id.is_null() ? nullptr : Object::cast_to<Node3D>(ObjectDB::get_instance(driver_id)); }
bool MGSVehicle3D::enter_vehicle(Node3D *p_driver) { if (!p_driver || !can_enter()) return false; driver_id = p_driver->get_instance_id(); p_driver->set_process_mode(Node::PROCESS_MODE_DISABLED); p_driver->set_visible(false); emit_signal(SNAME("driver_entered"), p_driver); return true; }
Node3D *MGSVehicle3D::exit_vehicle() { Node3D *driver = get_driver(); if (!driver) return nullptr; driver_id = ObjectID(); driver->set_global_position(get_global_position() + get_global_basis().get_column(0) * -2.0f + Vector3(0, 1, 0)); driver->set_visible(true); driver->set_process_mode(Node::PROCESS_MODE_INHERIT); emit_signal(SNAME("driver_exited"), driver); return driver; }

void MGSVehicle3D::_set_part_open(const StringName &p_name, bool p_open) { Node3D *part = _part(p_name); if (!part) return; part->set_meta(SNAME("mgs_open"), p_open); Vector3 rotation = part->get_rotation(); rotation.y = p_open ? Math::deg_to_rad(65.0f) : 0.0f; part->set_rotation(rotation); if (p_open) emit_signal(SNAME("door_opened"), p_name); }
void MGSVehicle3D::set_part_open(const StringName &p_part, bool p_open) { _set_part_open(p_part, p_open); }
bool MGSVehicle3D::is_part_open(const StringName &p_part) const { Node3D *part = _part(p_part); return part && bool(part->get_meta(SNAME("mgs_open"), false)); }
void MGSVehicle3D::set_throttle_input(float p_value) { throttle_input = CLAMP(p_value, -1.0f, 1.0f); }
void MGSVehicle3D::set_brake_input(float p_value) { brake_input = CLAMP(p_value, 0.0f, 1.0f); }
void MGSVehicle3D::set_gear(int p_gear) { gear = CLAMP(p_gear, -1, gear_ratios.size() - 2); }
void MGSVehicle3D::shift_up() { set_gear(gear + 1); }
void MGSVehicle3D::shift_down() { set_gear(gear - 1); }
float MGSVehicle3D::get_speed_kph() const { return get_linear_velocity().length() * 3.6f; }
float MGSVehicle3D::get_engine_rpm() const { float ratio = gear + 1 >= 0 && gear + 1 < gear_ratios.size() ? Math::abs(gear_ratios[gear + 1]) : 0.0f; return CLAMP(idle_rpm + get_speed_kph() * ratio * final_drive * 9.2f, idle_rpm, redline_rpm * 1.08f); }
float MGSVehicle3D::get_wheel_speed(int p_index) const { VehicleWheel3D *wheel = _wheel(p_index); return wheel ? get_speed_kph() * (wheel->is_in_contact() ? 1.0f : 0.0f) : 0.0f; }
float MGSVehicle3D::get_slip_ratio(int p_index) const { VehicleWheel3D *wheel = _wheel(p_index); return wheel ? 1.0f - wheel->get_skidinfo() : 0.0f; }
float MGSVehicle3D::get_lateral_slip(int p_index) const { VehicleWheel3D *wheel = _wheel(p_index); return wheel ? (1.0f - wheel->get_skidinfo()) * Math::abs(get_steering()) : 0.0f; }
void MGSVehicle3D::set_gear_ratios(const PackedFloat32Array &p_values) { if (p_values.size() >= 3) gear_ratios = p_values; }

void MGSVehicle3D::set_drive_type(const StringName &p_type) { Vector<VehicleWheel3D *> wheels = _wheels(); for (int i = 0; i < wheels.size(); i++) { bool driven = p_type == "awd" || p_type == "all" || (p_type == "fwd" && wheels[i]->get_position().z < 0.0f) || (p_type == "rwd" && wheels[i]->get_position().z >= 0.0f); wheels[i]->set_use_as_traction(driven); } }
void MGSVehicle3D::set_tire_grip(int p_index, float p_value) { if (VehicleWheel3D *wheel = _wheel(p_index)) wheel->set_friction_slip(MAX(0.01f, p_value)); }
void MGSVehicle3D::set_lateral_grip(int p_index, float p_value) { set_tire_grip(p_index, p_value); }
void MGSVehicle3D::configure_wheel(int p_index, const Dictionary &v) { VehicleWheel3D *wheel = _wheel(p_index); if (!wheel) return; if (v.has("radius")) wheel->set_radius(MAX(0.01f, float(v["radius"]))); if (v.has("position")) wheel->set_position(Vector3(v["position"])); if (v.has("driven")) wheel->set_use_as_traction(bool(v["driven"])); if (v.has("steerable")) wheel->set_use_as_steering(bool(v["steerable"])); if (v.has("travel")) wheel->set_suspension_travel(MAX(0.0f, float(v["travel"]))); if (v.has("spring")) wheel->set_suspension_stiffness(MAX(0.0f, float(v["spring"]))); if (v.has("damping")) { wheel->set_damping_compression(MAX(0.0f, float(v["damping"]))); wheel->set_damping_relaxation(MAX(0.0f, float(v["damping"]))); } }
float MGSVehicle3D::get_suspension_compression(int p_index) const { VehicleWheel3D *wheel = _wheel(p_index); return wheel && wheel->is_in_contact() ? 1.0f - wheel->get_skidinfo() : 0.0f; }
void MGSVehicle3D::reset_upright() { Transform3D transform = get_global_transform(); Vector3 forward = -transform.basis.get_column(2); forward.y = 0; if (forward.is_zero_approx()) forward = Vector3(0, 0, -1); transform.basis = Basis::looking_at(forward.normalized(), Vector3(0, 1, 0)); transform.origin.y += 0.5f; set_global_transform(transform); set_linear_velocity(Vector3()); set_angular_velocity(Vector3()); }
void MGSVehicle3D::teleport(const Transform3D &p_transform) { set_global_transform(p_transform); set_linear_velocity(Vector3()); set_angular_velocity(Vector3()); }
void MGSVehicle3D::set_collision_enabled(bool p_enabled) { TypedArray<Node> shapes = find_children("*", "CollisionShape3D", true, false); for (int i = 0; i < shapes.size(); i++) if (CollisionShape3D *shape = Object::cast_to<CollisionShape3D>(shapes[i])) shape->set_disabled(!p_enabled); }
