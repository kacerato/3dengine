#!/usr/bin/env python3
"""Generate the exhaustive native NoCode catalog reference from the C++ source."""

from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
SOURCE = ROOT / "godot-patches/modules/mobile_game_studio_nocode/mgs_nocode_catalog.cpp"
OUTPUT = ROOT / "docs/nocode/NATIVE_NODE_CATALOG.md"


def csv(source: str, variable: str) -> list[str]:
    match = re.search(rf'{re.escape(variable)}\s*=\s*mgs_items\("([^"]+)"\)', source)
    if not match:
        raise RuntimeError(f"Lista ausente: {variable}")
    return match.group(1).split(",")


def humanize(node_id: str) -> str:
    return node_id.rsplit(".", 1)[-1].replace("_", " ").title()


def add(result: list[tuple[str, str, str]], node_id: str, category: str, title: str = "") -> None:
    result.append((node_id, category, title or humanize(node_id)))


def catalog(source: str) -> list[tuple[str, str, str]]:
    result: list[tuple[str, str, str]] = []
    for item in csv(source, "const PackedStringArray events"):
        add(result, f"event.{item}", "Eventos")
    for count in (2, 3, 4, 5, 6, 8, 10, 12):
        add(result, f"flow.sequence.{count}", "Fluxo", f"Sequência {count}")
    for item in re.search(r'for \(const String &item : mgs_items\("([^"]+)"\)\) mgs_add\(result, "flow\."', source).group(1).split(","):
        add(result, f"flow.{item}", "Fluxo")
    devices = re.search(r'for \(const String &device : mgs_items\("([^"]+)"\)\)', source).group(1).split(",")
    input_ops = re.search(r'for \(const String &operation : mgs_items\("([^"]+)"\)\) mgs_add\(result, "input\."', source).group(1).split(",")
    for device in devices:
        for operation in input_ops:
            add(result, f"input.{device}.{operation}", "Entrada")
    binary, unary = csv(source, "const PackedStringArray math_binary"), csv(source, "const PackedStringArray math_unary")
    for kind in ("number", "integer", "angle"):
        for operation in binary + unary:
            add(result, f"math.{kind}.{operation}", "Matemática")
    for operation in ("clamp", "lerp", "inverse_lerp", "remap", "smoothstep", "move_towards", "random_range"):
        add(result, f"math.range.{operation}", "Matemática")
    for kind in ("boolean", "number", "text", "vector2", "vector3", "color", "object", "asset"):
        for operation in ("equal", "not_equal", "greater", "greater_equal", "less", "less_equal", "between", "outside", "approximately", "is_null"):
            add(result, f"compare.{kind}.{operation}", "Comparação")
    vector_ops = "add,subtract,multiply,divide,scale,normalize,length,length_squared,distance,dot,cross,lerp,move_towards,reflect,project,angle,clamp_length,minimum,maximum,absolute,floor,ceil,round,snap,rotate,inverse,is_zero,is_finite,make,split,with_x,with_y,with_z,with_w".split(",")
    for kind in ("vector2", "vector3", "vector4"):
        for operation in vector_ops:
            add(result, f"vector.{kind}.{operation}", "Vetor")
    simple = {
        "color": ("Cor", "make_rgb,make_rgba,split_rgb,split_rgba,from_hex,to_hex,from_hsv,to_hsv,lerp,blend_add,blend_multiply,blend_screen,blend_overlay,lighten,darken,saturate,desaturate,invert,grayscale,alpha,with_alpha,luminance,contrast,temperature"),
        "text": ("Texto", "append,prepend,join,split,replace,replace_first,contains,starts_with,ends_with,equals_ignore_case,uppercase,lowercase,capitalize,trim,trim_start,trim_end,substring,character_at,length,is_empty,is_blank,pad_start,pad_end,repeat,reverse,format,number_to_text,bool_to_text,vector_to_text,parse_number,parse_bool,regex_matches,regex_find,regex_replace,lines,words"),
        "object": ("Objeto", "find_by_name,find_by_tag,find_by_id,create,clone,destroy,enable,disable,toggle_enabled,set_name,get_name,set_parent,get_parent,add_child,remove_child,get_child,child_count,add_tag,remove_tag,has_tag,send_event,send_event_bool,send_event_number,send_event_text,get_component,has_component,add_component,remove_component,set_layer,get_layer,set_visible,is_visible,set_static,is_static"),
    }
    for prefix, (category, operations) in simple.items():
        for operation in operations.split(","):
            add(result, f"{prefix}.{operation}", category)
    list_ops = "create,add,insert,set,get,first,last,remove,remove_at,clear,contains,index_of,last_index_of,count,is_empty,reverse,shuffle,sort,distinct,slice,concat,filter,map,reduce,random".split(",")
    for kind in ("number", "text", "bool", "vector3", "object"):
        for operation in list_ops:
            add(result, f"list.{kind}.{operation}", "Listas")
    transform_ops = "get,set,add,subtract,multiply,lerp,move_towards,local_to_world,world_to_local,reset,look_at,face_direction".split(",")
    for prop in ("position", "rotation", "scale"):
        for operation in transform_ops:
            add(result, f"transform.{prop}.{operation}", "Transform")
    add(result, "transform.rotate.y", "Transform", "Girar no eixo Y")
    add(result, "transform.scale.uniform", "Transform", "Escala uniforme")
    for category, prefix, operations in re.findall(r'\{ "([^"]+)", "([^"]+)", "([^"]+)" \}', source):
        for operation in operations.split(","):
            add(result, f"{prefix}.{operation}", category)
    add(result, "world.character_move", "Mundo", "Mover personagem")
    add(result, "world.character_look", "Mundo", "Girar câmera do personagem")
    for kind in ("bool", "number", "integer", "text", "vector2", "vector3", "color", "object_id", "list"):
        for operation in ("save", "load", "has", "delete"):
            add(result, f"save.{kind}.{operation}", "Save Game")
    for operation in "delta,fixed_delta,elapsed,unscaled_elapsed,frame,fps,timestamp,date,time,timezone,timer_start,timer_pause,timer_resume,timer_stop,timer_remaining,timer_elapsed,format_duration,wait_seconds".split(","):
        add(result, f"time.{operation}", "Tempo")
    for operation in "trace,info,warning,error,assert,draw_line,draw_ray,draw_sphere,breakpoint,watch".split(","):
        add(result, f"debug.log.{operation}", "Debug")
    if len(result) != 961 or len({item[0] for item in result}) != 961:
        from collections import Counter
        raise RuntimeError(f"Catálogo gerado inválido: {len(result)} entradas; {dict(Counter(item[1] for item in result))}")
    return result


def contract(node_id: str) -> tuple[str, str, str]:
    target = "Não usa alvo; opera somente sobre valores ou estado global."
    inputs = "Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas."
    outputs = "Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo."
    if node_id.startswith(("object.", "transform.", "physics.", "vehicle.", "audio.", "animation.", "material.", "ui.")):
        target = "Requer `values.target_path` apontando para um nó Godot compatível na cena."
    if node_id == "world.character_move":
        return ("Move um `CharacterBody3D` a cada frame, aplica gravidade e chama `move_and_slide()`.", "`target_path`, `speed`; lê `ui_left/right/up/down`.", "Fluxo; altera posição e velocidade do personagem.")
    if node_id == "world.character_look":
        return ("Gira um pivô `Node3D`, com limite vertical para a câmera mobile.", "`target_path`, `sensitivity`; lê `look_left/right/up/down`.", "Fluxo; altera a rotação do pivô da câmera.")
    if node_id == "world.character_jump":
        return ("Aplica impulso vertical somente quando o `CharacterBody3D` está no chão.", "`target_path`, `force`; normalmente ligado ao evento de botão `jump`.", "Fluxo; altera a velocidade vertical.")
    if node_id.startswith("event."):
        return ("Inicia execução quando o evento correspondente é emitido pela engine.", "Filtros opcionais em `values`, conforme o evento.", "`flow` e, quando aplicável, `value` com o payload.")
    return (target, inputs, outputs)


def main() -> None:
    definitions = catalog(SOURCE.read_text(encoding="utf-8"))
    lines = [
        "# Catálogo nativo NoCode — 961 operações", "",
        "> Gerado por `tools/godot/generate_native_nocode_docs.py`. Não editar manualmente.", "",
        "Cada entrada abaixo documenta o contrato persistido no `.graph.json`. A presença no catálogo não substitui a validação do tipo do alvo: operações de cena falham explicitamente quando o NodePath ou componente é incompatível.", "",
    ]
    for index, (node_id, category, title) in enumerate(definitions, 1):
        purpose, inputs, outputs = contract(node_id)
        lines += [
            f"## {index}. {title}", "",
            f"- **ID:** `{node_id}`", f"- **Categoria:** {category}",
            f"- **Finalidade:** {purpose}", f"- **Entradas/alvo:** {inputs}", f"- **Saídas/efeito:** {outputs}",
            "- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.", "",
        ]
    OUTPUT.write_text("\n".join(lines), encoding="utf-8")
    print(f"{OUTPUT}: {len(definitions)} operações documentadas")


if __name__ == "__main__":
    main()
