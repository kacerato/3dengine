#pragma once

#include "scene/3d/physics/vehicle_body_3d.h"

class MGSVehicle3D : public VehicleBody3D {
    GDCLASS(MGSVehicle3D, VehicleBody3D);

    ObjectID driver_id;
    float throttle_input = 0.0f;
    float brake_input = 0.0f;
    bool handbrake = false;
    int gear = 1;
    float max_torque = 420.0f;
    float redline_rpm = 7000.0f;
    float idle_rpm = 850.0f;
    float top_speed_kph = 220.0f;
    float final_drive = 3.42f;
    float drivetrain_efficiency = 0.86f;
    PackedFloat32Array gear_ratios;
    float downforce = 0.0f;
    float aero_drag = 0.34f;
    float rolling_resistance = 0.015f;
    bool traction_control = true;
    bool abs_enabled = true;
    bool stability_assist = true;
    float steering_angle = 0.55f;
    float steering_response = 5.0f;
    float steering_target = 0.0f;
    float health = 1.0f;

    Vector<VehicleWheel3D *> _wheels() const;
    VehicleWheel3D *_wheel(int p_index) const;
    Node3D *_part(const StringName &p_name) const;
    void _set_part_open(const StringName &p_name, bool p_open);
    void _body_entered(Node *p_body);

protected:
    static void _bind_methods();
    void _notification(int p_what);

public:
    MGSVehicle3D();
    bool enter_vehicle(Node3D *p_driver);
    Node3D *exit_vehicle();
    bool can_enter() const;
    Node3D *get_driver() const;
    void set_part_open(const StringName &p_part, bool p_open);
    bool is_part_open(const StringName &p_part) const;
    void set_throttle_input(float p_value);
    float get_throttle_input() const { return throttle_input; }
    void set_brake_input(float p_value);
    float get_brake_input() const { return brake_input; }
    void set_handbrake(bool p_enabled) { handbrake = p_enabled; }
    bool is_handbrake() const { return handbrake; }
    void set_steering_input(float p_value) { steering_target = CLAMP(p_value, -1.0f, 1.0f); }
    float get_steering_input() const { return steering_target; }
    void set_gear(int p_gear);
    int get_gear() const { return gear; }
    void shift_up();
    void shift_down();
    float get_speed_kph() const;
    float get_engine_rpm() const;
    float get_wheel_speed(int p_index) const;
    float get_slip_ratio(int p_index) const;
    float get_lateral_slip(int p_index) const;
    void set_max_torque(float p_value) { max_torque = MAX(0.0f, p_value); }
    void set_redline_rpm(float p_value) { redline_rpm = MAX(idle_rpm + 1.0f, p_value); }
    void set_top_speed(float p_value) { top_speed_kph = MAX(1.0f, p_value); }
    void set_gear_ratios(const PackedFloat32Array &p_values);
    void set_final_drive(float p_value) { final_drive = MAX(0.01f, p_value); }
    void set_drivetrain_efficiency(float p_value) { drivetrain_efficiency = CLAMP(p_value, 0.0f, 1.0f); }
    void set_drive_type(const StringName &p_type);
    void set_tire_grip(int p_index, float p_value);
    void set_lateral_grip(int p_index, float p_value);
    void set_traction_control(bool p_enabled) { traction_control = p_enabled; }
    void set_abs_enabled(bool p_enabled) { abs_enabled = p_enabled; }
    void set_stability_assist(bool p_enabled) { stability_assist = p_enabled; }
    void set_steering_angle(float p_value) { steering_angle = MAX(0.01f, p_value); }
    void set_steering_response(float p_value) { steering_response = MAX(0.01f, p_value); }
    void configure_wheel(int p_index, const Dictionary &p_values);
    float get_suspension_compression(int p_index) const;
    void set_downforce(float p_value) { downforce = MAX(0.0f, p_value); }
    void set_aero_drag(float p_value) { aero_drag = MAX(0.0f, p_value); }
    void set_rolling_resistance(float p_value) { rolling_resistance = MAX(0.0f, p_value); }
    void reset_upright();
    void teleport(const Transform3D &p_transform);
    void repair() { health = 1.0f; }
    void set_collision_enabled(bool p_enabled);
};
