extends SceneTree

var failures: Array[String] = []

func _initialize() -> void:
	call_deferred("_run")

func _fail(message: String) -> void:
	failures.append(message)
	push_error("MOBILE_NOCODE_VALIDATION: " + message)

func _physics_frames(count: int) -> void:
	for _index in count:
		await physics_frame

func _run() -> void:
	var packed := load("res://main.tscn") as PackedScene
	if packed == null:
		_fail("main.tscn não carregou")
		quit(1)
		return
	var scene := packed.instantiate()
	root.add_child(scene)
	current_scene = scene
	await process_frame
	await _physics_frames(45)

	var player := scene.get_node("Player") as CharacterBody3D
	var pivot := scene.get_node("Player/CameraPivot") as Node3D
	var runner := scene.runner as MGSNoCodeRunner
	if runner == null:
		_fail("MGSNoCodeRunner não foi criado pelo projeto")
	else:
		var executed: Array[String] = []
		runner.node_executed.connect(func(node_id: String, _definition_id: String) -> void: executed.append(node_id))

		var start_position := player.global_position
		Input.action_press("ui_up", 1.0)
		await _physics_frames(35)
		Input.action_release("ui_up")
		if player.global_position.z >= start_position.z - 0.35:
			_fail("frente está invertido ou não moveu: z inicial=%.3f, final=%.3f" % [start_position.z, player.global_position.z])
		if not executed.has("move"):
			_fail("world.character_move não foi executado pelo grafo")

		var yaw_before := pivot.rotation.y
		Input.action_press("look_right", 1.0)
		await _physics_frames(12)
		Input.action_release("look_right")
		if pivot.rotation.y >= yaw_before - 0.01:
			_fail("visão para a direita não girou no sentido esperado")
		if not executed.has("look"):
			_fail("world.character_look não foi executado pelo grafo")

		await _physics_frames(10)
		var floor_y := player.global_position.y
		print("MOBILE_NOCODE_JUMP_PRE floor=%s y=%.3f velocity=%s" % [player.is_on_floor(), floor_y, player.velocity])
		if not runner.emit_button("jump"):
			_fail("evento event.input.button_pressed não encontrou o caminho jump")
		await physics_frame
		if not executed.has("jump"):
			_fail("world.character_jump não foi executado pelo grafo")
		if player.velocity.y <= 0.1:
			_fail("pulo não aplicou velocidade vertical positiva")
		await _physics_frames(8)
		if player.global_position.y <= floor_y + 0.05:
			_fail("personagem não saiu do chão após o pulo")

	Input.action_release("ui_up")
	Input.action_release("look_right")
	if failures.is_empty():
		print("MOBILE_NOCODE_WORLD_PASS move=graph look=graph jump=graph")
		quit(0)
	else:
		print("MOBILE_NOCODE_WORLD_FAIL count=%d" % failures.size())
		quit(1)
