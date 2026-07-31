extends Node3D

@export_range(0.0, 180.0, 1.0) var rotation_speed_degrees := 32.0
@export var animate_in_editor_test := true

@onready var editable_cube: MeshInstance3D = $EditableCube

func _process(delta: float) -> void:
	if animate_in_editor_test:
		editable_cube.rotate_y(deg_to_rad(rotation_speed_degrees) * delta)
