extends SceneTree

func _initialize() -> void:
    call_deferred("_run")

func _run() -> void:
    await process_frame
    var case_name := ""
    for argument in OS.get_cmdline_user_args():
        if argument.begins_with("--case="):
            case_name = argument.trim_prefix("--case=")
    var packed: PackedScene = load("res://dummy.tscn")
    var scene := packed.instantiate()
    root.add_child(scene)
    current_scene = scene
    var runner := MGSNoCodeRunner.new()
    runner.run_on_ready = false
    scene.add_child(runner)
    var definition := {
        "load": "world.load",
        "reload": "world.reload",
        "set_active": "world.set_active",
        "quit": "world.quit",
        "warning": "debug.log.warning",
        "error": "debug.log.error"
    }.get(case_name, "") as String
    if definition.is_empty():
        push_error("Caso especial desconhecido: %s" % case_name)
        quit(2)
        return
    var target: Node = scene
    if case_name == "set_active":
        target = Node3D.new()
        target.name = "ActiveScene"
        root.add_child(target)
    var values := {"path": "res://dummy.tscn", "message": "special_%s" % case_name, "exit_code": 0}
    var report := runner.debug_execute_definition(definition, values, target)
    if case_name == "quit":
        print("NATIVE_NOCODE_SPECIAL_PASS quit")
        return
    if bool(report.ok):
        print("NATIVE_NOCODE_SPECIAL_PASS ", case_name)
        quit(0)
    else:
        push_error("%s: %s" % [definition, report.error])
        quit(1)
