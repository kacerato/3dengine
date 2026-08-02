extends Node3D

var runner: MGSNoCodeRunner

func _ready() -> void:
	var graph := MGSNoCodeGraph.new()
	var source := FileAccess.get_file_as_string("res://main.graph.json")
	assert(graph.import_legacy_json(source) == OK)
	runner = MGSNoCodeRunner.new()
	runner.name = "NoCodeRuntime"
	runner.run_on_ready = false
	runner.graph = graph
	add_child(runner)
	runner.node_executed.connect(_on_nocode_node_executed)
	runner.graph_error.connect(_on_nocode_error)
	$HUD/MobileControls.jump_requested.connect(_on_jump_requested)
	assert(runner.execute_event("event.scene.start"))
	$HUD/Status.text = "NoCode ativo • joystick para mover • botão para pular"

func _process(_delta: float) -> void:
	var player := $Player as CharacterBody3D
	$HUD/Debug.text = "Posição: %.1f, %.1f, %.1f" % [player.position.x, player.position.y, player.position.z]

func _on_jump_requested() -> void:
	# Input é apenas adaptado aqui; a decisão e o impulso pertencem ao grafo.
	assert(runner.emit_button("jump"))

func _on_nocode_node_executed(node_id: String, definition_id: String) -> void:
	if node_id == "jump":
		$HUD/Status.text = "NoCode confirmou: world.character_jump executado"
	elif node_id == "look":
		$HUD/Debug.tooltip_text = "NoCode ativo: " + definition_id

func _on_nocode_error(message: String, node_id: String) -> void:
	$HUD/Status.text = "Erro NoCode em %s: %s" % [node_id, message]
