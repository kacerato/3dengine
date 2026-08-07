extends Node

var runner: MGSNoCodeRunner

func _ready() -> void:
    runner = MGSNoCodeRunner.new()
    runner.run_on_ready = false
    add_child(runner)
    var ids := runner.get_catalog_ids()
    var unsupported: Array[String] = []
    var execution_failures: Array[String] = []
    var routed := 0
    var succeeded := 0
    for definition in ids:
        if definition in ["world.load", "world.reload", "world.set_active", "world.quit", "debug.log.warning", "debug.log.error"]:
            routed += 1
            continue
        var target := make_target(definition)
        var test_values := values_for(definition, target)
        var report := runner.debug_execute_definition(definition, test_values, target)
        var error := String(report.error)
        if error.contains("Nó ainda não suportado") or error.contains("Operação de") and error.contains("não implementada"):
            unsupported.append("%s: %s" % [definition, error])
        else:
            routed += 1
        if bool(report.ok) or definition == "debug.log.breakpoint" and error == "audit":
            succeeded += 1
        else:
            execution_failures.append("%s: %s" % [definition, error])
        if is_instance_valid(target) and target != self:
            target.queue_free()
        if definition == "object.remove_child" and is_instance_valid(test_values.child) and not test_values.child.is_inside_tree():
            test_values.child.free()
    print("NATIVE_NOCODE_CATALOG=%d ROUTED=%d UNSUPPORTED=%d" % [ids.size(), routed, unsupported.size()])
    print("NATIVE_NOCODE_EXECUTION_OK=%d EXECUTION_FAILED=%d SKIPPED=6" % [succeeded, execution_failures.size()])
    for failure in execution_failures:
        print("NOCODE_EXECUTION_FAIL ", failure)
    for failure in unsupported:
        push_error(failure)
    await get_tree().create_timer(0.05).timeout
    if ids.size() == 961 and unsupported.is_empty():
        print("NATIVE_NOCODE_ROUTING_PASS_961")
        get_tree().quit(0)
    else:
        get_tree().quit(1)

func make_target(definition: String) -> Node:
    var target: Node
    if definition.begins_with("physics."):
        target = RigidBody3D.new()
    elif definition.begins_with("ui."):
        if definition in ["ui.set_text", "ui.get_text"]:
            target = Label.new()
        elif definition == "ui.set_image":
            target = TextureRect.new()
        elif definition == "ui.set_placeholder":
            target = LineEdit.new()
        else:
            var progress := ProgressBar.new()
            progress.focus_mode = Control.FOCUS_ALL
            target = progress
    elif definition.begins_with("audio."):
        target = AudioStreamPlayer3D.new()
    elif definition.begins_with("animation."):
        if definition == "animation.set_bool":
            var tree := AnimationTree.new()
            var state_machine := AnimationNodeStateMachine.new()
            state_machine.add_node("A", AnimationNodeAnimation.new(), Vector2.ZERO)
            state_machine.add_node("B", AnimationNodeAnimation.new(), Vector2(200, 0))
            var transition := AnimationNodeStateMachineTransition.new()
            transition.advance_condition = "audit"
            state_machine.add_transition("A", "B", transition)
            tree.tree_root = state_machine
            target = tree
        elif definition in ["animation.set_trigger", "animation.reset_trigger"]:
            var tree := AnimationTree.new()
            var blend_tree := AnimationNodeBlendTree.new()
            blend_tree.add_node("audit", AnimationNodeOneShot.new(), Vector2.ZERO)
            tree.tree_root = blend_tree
            target = tree
        elif definition in ["animation.set_number", "animation.set_weight", "animation.blend"]:
            var tree := AnimationTree.new()
            var blend_tree := AnimationNodeBlendTree.new()
            blend_tree.add_node("audit", AnimationNodeTimeScale.new(), Vector2.ZERO)
            tree.tree_root = blend_tree
            target = tree
        else:
            var player := AnimationPlayer.new()
            var library := AnimationLibrary.new()
            var animation := Animation.new()
            animation.length = 0.1
            library.add_animation("idle", animation)
            player.add_animation_library("", library)
            player.play("idle")
            target = player
    elif definition.begins_with("material."):
        var mesh := MeshInstance3D.new()
        mesh.mesh = BoxMesh.new()
        if definition in ["material.set_number", "material.get_number", "material.set_vector", "material.get_vector", "material.set_texture", "material.get_texture", "material.enable_keyword", "material.disable_keyword", "material.has_keyword", "material.set_uv_rotation"]:
            var shader := Shader.new()
            shader.code = "shader_type spatial; uniform float audit = 0.0; uniform vec3 audit_vector = vec3(0.0); uniform sampler2D audit_texture; uniform bool audit_enabled = false; uniform float uv_rotation = 0.0;"
            var shader_material := ShaderMaterial.new()
            shader_material.shader = shader
            mesh.set_surface_override_material(0, shader_material)
        else:
            mesh.set_surface_override_material(0, StandardMaterial3D.new())
        target = mesh
    elif definition in ["object.set_layer", "object.get_layer"]:
        var visual := MeshInstance3D.new()
        visual.mesh = BoxMesh.new()
        target = visual
    elif definition in ["world.set_ambient_color", "world.set_skybox", "world.set_fog"]:
        var world_environment := WorldEnvironment.new()
        world_environment.environment = Environment.new()
        target = world_environment
    elif definition.begins_with("world.terrain_"):
        target = MGSTerrain3D.new()
    elif definition.begins_with("world.character_"):
        var body := CharacterBody3D.new()
        var camera := Camera3D.new()
        body.add_child(camera)
        target = body
    elif definition.begins_with("vehicle."):
        target = MGSVehicle3D.new()
    else:
        target = Node3D.new()
    target.name = "Target_%s" % definition.replace(".", "_")
    add_child(target)
    return target

func values_for(definition: String, target: Node) -> Dictionary:
    var values := {
        "a": 4.0, "b": 2.0, "value": 0.5, "amount": 0.25,
        "text": "Mobile Game Studio", "search": "Game", "replacement": "NoCode",
        "separator": ",", "prefix": "M", "suffix": "Studio", "index": 0, "length": 3,
        "list": [1.0, 2.0, 3.0], "other": [4.0, 5.0], "item": 2.0,
        "x": 0.25, "y": -0.5, "z": 0.75, "w": 1.0,
        "vector": Vector3(1, 2, 3), "position": Vector3(1, 0, 1), "size": Vector3.ONE,
        "color": Color(0.4, 0.5, 0.6, 1), "weight": 0.5,
        "condition": true, "open": true, "count": 2, "step": 1,
        "seconds": 0.01, "duration": 0.01, "timer_name": "audit", "key": "audit_key",
        "action": "ui_accept", "negative": "ui_left", "positive": "ui_right",
        "velocity": Vector3(1, 0, 0), "angular_velocity": Vector3(0, 1, 0),
        "force": Vector3(1, 0, 0), "impulse": Vector3(1, 0, 0), "torque": Vector3(0, 1, 0),
        "mass": 10.0, "gravity_scale": 1.0, "enabled": true,
        "from": Vector3.ZERO, "to": Vector3(0, 0, -2), "radius": 1.0,
        "name": "Audit", "tag": "audit", "id": "audit", "type": "Node3D",
        "visible": true, "static": true, "layer": 1,
        "volume_db": -6.0, "pitch": 1.0, "pan": 0.5, "distance": 8.0, "bus": "Master",
        "animation": "idle", "parameter": "audit", "speed": 1.0, "time": 0.0,
        "surface": 0, "keyword": "audit_enabled", "roughness": 0.5,
        "path": "res://dummy.tscn", "scene": "res://dummy.tscn", "height": 1.0,
        "strength": 0.5, "scale": 0.1, "seed": 42, "min_height": 0.0, "max_height": 1.0,
        "wheel": 0, "dead_zone": 0.15, "sensitivity": 0.05,
        "message": "audit", "direction": Vector3(0, 0, -1)
    }
    if definition.begins_with("vector.vector2."):
        values.a = Vector2(1, 2); values.b = Vector2(2, 1); values.value = Vector2(1, 2)
    elif definition.begins_with("vector.vector3."):
        values.a = Vector3(1, 2, 3); values.b = Vector3(2, 1, 1); values.value = Vector3(1, 2, 3)
    elif definition.begins_with("vector.vector4."):
        values.a = Vector4(1, 2, 3, 4); values.b = Vector4(2, 1, 1, 2); values.value = Vector4(1, 2, 3, 4)
    elif definition.begins_with("color."):
        values.a = Color(0.2, 0.4, 0.6, 1); values.b = Color(0.8, 0.3, 0.2, 1); values.value = Color(0.2, 0.4, 0.6, 1)
    elif definition.begins_with("list.vector2."):
        values.list = [Vector2.ONE, Vector2(2, 3)]; values.item = Vector2.ONE
    elif definition.begins_with("list.vector3."):
        values.list = [Vector3.ONE, Vector3(2, 3, 4)]; values.item = Vector3.ONE
    elif definition.begins_with("list.object."):
        values.list = [self]; values.item = self
    elif definition.begins_with("list.text."):
        values.list = ["a", "b"]; values.item = "a"
    if definition == "color.from_hex":
        values.hex = "#7f66ccff"
    elif definition == "text.parse_number":
        values.text = "42.5"
    elif definition == "text.parse_bool":
        values.text = "true"
    elif definition == "animation.set_bool":
        values.parameter = "conditions/audit"
    elif definition in ["animation.set_trigger", "animation.reset_trigger"]:
        values.parameter = "audit/request"
    elif definition.begins_with("animation.set_") or definition == "animation.blend":
        values.parameter = "audit/scale"
    elif definition.begins_with("material."):
        values.material = StandardMaterial3D.new()
        if definition in ["material.set_vector", "material.get_vector"]:
            values.parameter = "audit_vector"; values.value = Vector3.ONE
        elif definition in ["material.set_texture", "material.get_texture"]:
            values.parameter = "audit_texture"; values.value = GradientTexture1D.new()
        elif definition in ["material.enable_keyword", "material.disable_keyword", "material.has_keyword"]:
            values.keyword = "audit_enabled"
        elif definition in ["material.set_number", "material.get_number"]:
            values.parameter = "audit"
        else:
            values.parameter = ""
    elif definition == "object.set_parent":
        var parent := Node3D.new(); parent.name = "AuditParent"; add_child(parent); values.parent = parent
    elif definition == "object.add_child":
        var child := Node3D.new(); child.name = "AuditChild"; values.child = child
    elif definition in ["object.remove_child", "object.get_child"]:
        var child := Node3D.new(); child.name = "AuditChild"; target.add_child(child); values.child = child; values.index = 0
    elif definition == "object.remove_component":
        var component := Node3D.new(); component.name = "AuditComponent"; target.add_child(component); values.component = component
    elif definition == "physics.ignore_collision":
        var other_body := RigidBody3D.new(); other_body.name = "OtherBody"; add_child(other_body); values.other = other_body
    elif definition == "world.set_skybox":
        values.sky = Sky.new()
    elif definition == "world.terrain_set_material":
        values.material = StandardMaterial3D.new()
    elif definition == "ui.set_image":
        values.texture = GradientTexture1D.new()
    if definition == "flow.for":
        values.from = 0; values.to = 1
    elif definition == "world.terrain_import_heightmap":
        values.path = "res://heightmap.svg"
    elif definition == "world.terrain_export_heightmap":
        values.path = "user://nocode_audit_heightmap.png"
    elif definition == "world.terrain_scatter_tiles":
        values.scene = load("res://dummy.tscn")
    elif definition in ["time.timer_remaining", "time.timer_elapsed"]:
        runner.debug_execute_definition("time.timer_start", {"timer_name": "audit", "duration": 1.0}, target)
    return values
