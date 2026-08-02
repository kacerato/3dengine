extends Node3D

func _ready() -> void:
	var graph := MGSNoCodeGraph.new()
	var graph_text := FileAccess.get_file_as_string("res://main.graph.json")
	assert(graph.import_legacy_json(graph_text) == OK)

	var runner := MGSNoCodeRunner.new()
	runner.run_on_ready = false
	runner.graph = graph
	add_child(runner)
	assert(runner.execute_event("event.scene.start"))
	assert(is_equal_approx(float(runner.get_runtime_variables()["score"]), 5.0))
	assert(is_equal_approx($Player.rotation_degrees.y, 15.0))
	assert($Player.scale.is_equal_approx(Vector3(2.0, 2.0, 2.0)))
	print("NOCODE_DEMO_PASS score=5 rotation_y=15 scale=2")
	get_tree().quit(0)
