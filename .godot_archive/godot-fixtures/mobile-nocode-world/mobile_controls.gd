extends Control

signal jump_requested

var stick_touch := -1
var look_touch := -1
var jump_touch := -1
var stick_origin := Vector2.ZERO
var stick_value := Vector2.ZERO
var look_value := Vector2.ZERO

func _ready() -> void:
	mouse_filter = Control.MOUSE_FILTER_IGNORE
	queue_redraw()

func _input(event: InputEvent) -> void:
	if event is InputEventScreenTouch:
		if event.pressed and event.position.x < size.x * 0.55 and stick_touch < 0:
			stick_touch = event.index
			stick_origin = event.position
			_set_stick(Vector2.ZERO)
		elif event.pressed and event.position.distance_to(_jump_center()) <= 90.0 and jump_touch < 0:
			jump_touch = event.index
			jump_requested.emit()
		elif event.pressed and event.position.x >= size.x * 0.45 and look_touch < 0:
			look_touch = event.index
		elif not event.pressed and event.index == stick_touch:
			stick_touch = -1
			_set_stick(Vector2.ZERO)
		elif not event.pressed and event.index == jump_touch:
			jump_touch = -1
		elif not event.pressed and event.index == look_touch:
			look_touch = -1
			_set_look(Vector2.ZERO)
	elif event is InputEventScreenDrag and event.index == stick_touch:
		_set_stick((event.position - stick_origin) / 90.0)
	elif event is InputEventScreenDrag and event.index == look_touch:
		_set_look(event.relative / 18.0)

func _set_stick(value: Vector2) -> void:
	stick_value = value.limit_length(1.0)
	_set_action("ui_left", maxf(-stick_value.x, 0.0))
	_set_action("ui_right", maxf(stick_value.x, 0.0))
	_set_action("ui_up", maxf(-stick_value.y, 0.0))
	_set_action("ui_down", maxf(stick_value.y, 0.0))
	queue_redraw()

func _set_action(action: StringName, strength: float) -> void:
	if strength > 0.01:
		Input.action_press(action, strength)
	else:
		Input.action_release(action)

func _set_look(value: Vector2) -> void:
	look_value = value.limit_length(1.0)
	_set_action("look_left", maxf(-look_value.x, 0.0))
	_set_action("look_right", maxf(look_value.x, 0.0))
	_set_action("look_up", maxf(-look_value.y, 0.0))
	_set_action("look_down", maxf(look_value.y, 0.0))

func _jump_center() -> Vector2:
	return Vector2(size.x - 125, size.y - 125)

func _draw() -> void:
	var origin := stick_origin if stick_touch >= 0 else Vector2(125, size.y - 125)
	draw_circle(origin, 76, Color(0.10, 0.07, 0.16, 0.72))
	draw_arc(origin, 76, 0, TAU, 48, Color(0.55, 0.30, 0.95, 0.9), 4)
	draw_circle(origin + stick_value * 48, 31, Color(0.64, 0.35, 1.0, 0.92))
	var jump_center := _jump_center()
	draw_circle(jump_center, 58, Color(0.10, 0.07, 0.16, 0.72))
	draw_arc(jump_center, 58, 0, TAU, 48, Color(0.55, 0.30, 0.95, 0.9), 4)
	draw_string(ThemeDB.fallback_font, jump_center + Vector2(-24, 7), "PULAR", HORIZONTAL_ALIGNMENT_LEFT, -1, 18, Color.WHITE)
