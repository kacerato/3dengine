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


FAMILY_NAMES = {
    "physics": "física 3D", "vehicle": "veículo", "audio": "áudio", "animation": "animação",
    "material": "material", "ui": "interface", "world": "mundo", "object": "objeto da cena",
}

OPERATION_HELP = {
    "set_angular_velocity": ("Define diretamente a velocidade de rotação de um corpo físico nos eixos X, Y e Z, em radianos por segundo.", "`target_path`: `RigidBody3D`; `value`: `Vector3` com a rotação por eixo.", "Atualiza `angular_velocity` e continua pelo pino `flow`.", "Faça uma plataforma girar: `Start → Set Angular Velocity`, alvo `../Plataforma`, valor `Vector3(0, 1.5, 0)` para girar no eixo Y."),
    "get_angular_velocity": ("Lê a velocidade de rotação atual de um corpo físico nos eixos X, Y e Z.", "`target_path`: `RigidBody3D` que será consultado.", "Retorna um `Vector3` em `value`; não altera o corpo.", "Exiba a rotação de uma roda: `Update → Get Angular Velocity → Vector Length → UI Set Text`."),
    "add_force": ("Aplica uma força contínua ao corpo; use em atualizações de física para aceleração sustentada.", "`target_path`: `RigidBody3D`; `force`: `Vector3`; `position` local é opcional.", "Altera a velocidade física ao longo do tempo e emite `flow`.", "Empurre uma caixa: `Button Pressed → Add Force`, força `Vector3(0, 0, -40)`."),
    "add_impulse": ("Aplica um impulso instantâneo ao corpo, ideal para impactos, explosões ou saltos físicos.", "`target_path`: `RigidBody3D`; `impulse`: `Vector3`; `position` é opcional.", "Muda imediatamente a velocidade linear e emite `flow`.", "Explosão: `Collision Enter → Add Impulse`, impulso calculado por `Direction × 12`."),
    "add_torque": ("Aplica força de rotação contínua a um corpo físico.", "`target_path`: `RigidBody3D`; `torque`: `Vector3` por eixo.", "Acelera a rotação do corpo e emite `flow`.", "Gire uma hélice: `Fixed Update → Add Torque`, torque `Vector3(0, 8, 0)`."),
    "set_velocity": ("Define a velocidade linear do corpo em unidades por segundo.", "`target_path`: corpo físico compatível; `value`: `Vector3(x, y, z)`.", "Substitui a velocidade atual e emite `flow`.", "Lance um projétil: `Created → Set Velocity`, valor `Forward × 25`."),
    "get_velocity": ("Lê a velocidade linear atual do corpo.", "`target_path`: corpo físico compatível.", "Retorna a velocidade como `Vector3` em `value`.", "Velocímetro: `Update → Get Velocity → Vector Length → UI Set Text`."),
    "raycast": ("Dispara um raio entre dois pontos para detectar o primeiro collider atingido.", "`origin`, `direction`, `distance` e máscara de colisão opcional.", "Retorna acerto, objeto, posição e normal; não altera a cena.", "Tiro: `Button Pressed → Raycast`; se `hit`, conecte a `Object Send Event` no objeto atingido."),
}

EVENT_HELP = {
    "event.input.key_down": (
        "Dispara uma vez no instante em que uma tecla física é pressionada. Use para ações pontuais, como abrir uma porta, pausar, recarregar ou começar a correr; para movimento contínuo enquanto a tecla permanece pressionada, use `Input Keyboard Held`.",
        "`key` ou `physical_keycode`: tecla que deve ativar o fluxo, por exemplo `E`, `Escape` ou `Shift`; opcionalmente use `action` para uma ação configurada no Input Map, como `interact`. O evento não precisa de `target_path`.",
        "Emite `flow` uma vez por pressionamento. O payload informa a tecla recebida, código físico, modificadores (Shift/Ctrl/Alt) e repetição do teclado quando disponíveis.",
        "Abrir uma porta com E: adicione `Key Down`, defina `key = E`, conecte `flow → Object Send Event`, selecione `../Door` como alvo e envie o evento `open`. Ao pressionar E, a porta recebe `open` uma única vez; manter E segurado não repete a ação, salvo se a repetição estiver habilitada.",
    ),
    "event.input.key_up": (
        "Dispara uma vez quando uma tecla física é solta. Use para encerrar uma ação iniciada no pressionamento, como parar corrida, soltar um objeto ou finalizar carregamento de ataque.",
        "`key`/`physical_keycode` ou uma `action` do Input Map. Não usa alvo de cena.",
        "Emite `flow` e entrega a tecla e os modificadores no payload.",
        "Corrida com Shift: `Key Down (Shift) → Character Set Speed (9)` e `Key Up (Shift) → Character Set Speed (5)`. O personagem corre somente enquanto Shift estiver apertado.",
    ),
    "event.input.button_pressed": (
        "Dispara quando uma ação do Input Map ou botão mobile é pressionado. É o evento recomendado para pulo, interação, ataque e botões da interface porque funciona com teclado, controle e toque quando todos estão mapeados para a mesma ação.",
        "`action`: nome configurado no Input Map, por exemplo `jump`; opcionalmente `device` e `button_index`.",
        "Emite `flow` uma vez e disponibiliza ação, dispositivo e intensidade no payload.",
        "Pulo multiplataforma: configure a ação `jump`, conecte `Button Pressed (jump) → Character Jump`, alvo `../Player`, força `6.5`. O mesmo grafo responde à barra de espaço, botão do gamepad e botão touch.",
    ),
    "event.pointer.drag": (
        "Dispara enquanto o usuário arrasta o dedo ou mouse. Use para girar câmera, mover peças, controlar uma mira ou deslizar painéis.",
        "Filtro opcional de dedo/botão e região da tela. O payload fornece posição inicial, posição atual e `delta` desde a última atualização.",
        "Emite `flow`, `position` e `delta` como `Vector2`.",
        "Câmera mobile: `Pointer Drag → Character Look`; conecte `delta` em `look_delta`, selecione `../Player/CameraPivot` e use sensibilidade `0.003`.",
    ),
}


def contract(node_id: str, title: str) -> tuple[str, str, str, str]:
    if node_id == "world.character_move":
        return ("Move um `CharacterBody3D` usando o joystick relativo à direção da câmera, aplica gravidade e chama `move_and_slide()`.", "`target_path`: personagem; `speed`: unidades por segundo; eixo vindo de `Joystick Get Axis` ou das ações `ui_left/right/up/down`.", "Atualiza a velocidade horizontal, preserva a gravidade e emite `flow`.", "Controle mobile: `Update → Joystick Get Axis → Character Move`, alvo `../Player` e velocidade `5.0`.")
    if node_id == "world.character_look":
        return ("Gira o personagem no eixo horizontal e o pivô da câmera no vertical, limitando o pitch para evitar que a visão vire ao contrário.", "`target_path`: personagem/pivô; `look_delta`: movimento do toque; `sensitivity`: multiplicador da rotação.", "Altera yaw e pitch e emite `flow`.", "Câmera mobile: `Pointer Drag → Character Look`, usando o delta do arrasto e sensibilidade `0.003`.")
    if node_id == "world.character_jump":
        return ("Faz um `CharacterBody3D` pular somente quando `is_on_floor()` confirma contato com o chão.", "`target_path`: personagem; `force`: velocidade vertical positiva; evento recomendado `Button Pressed` com ação `jump`.", "Define a velocidade Y do personagem e emite `flow`; no ar, não aplica um segundo pulo.", "Pulo mobile: `Button Pressed (jump) → Character Jump`, alvo `../Player`, força `6.5`.")
    if node_id.startswith("event."):
        if node_id in EVENT_HELP:
            return EVENT_HELP[node_id]
        event = node_id.removeprefix("event.").replace("_", " ")
        subject, action = event.rsplit(".", 1) if "." in event else ("engine", event)
        return (f"Dispara o fluxo quando `{subject}` informa `{action}`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.", f"Filtros exibidos no bloco limitam qual `{subject}` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.", "Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.", f"Exemplo de gameplay: conecte `{title}` a uma ação relacionada a `{subject}`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.")
    if node_id.startswith("flow.sequence."):
        count = node_id.rsplit(".", 1)[-1]
        return (f"Executa {count} ramificações de fluxo em ordem, da saída 1 até a {count}.", "Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.", f"Emite {count} saídas sequenciais no mesmo quadro.", f"`Button Pressed → Sequência {count}` para tocar som, atualizar UI e executar outras ações em ordem.")

    parts = node_id.split(".")
    prefix, operation = parts[0], parts[-1]
    if operation in OPERATION_HELP:
        return OPERATION_HELP[operation]
    readable = operation.replace("_", " ")
    kind = parts[-2].replace("_", " ") if len(parts) > 2 else prefix
    if prefix == "input":
        device = parts[1]
        return (f"Lê `{readable}` do dispositivo `{device}` sem precisar escrever código de plataforma.", f"Nome da ação/controle e índice do dispositivo quando aplicável; `{operation}` pode exigir eixo ou botão.", "Retorna o estado, valor, posição ou disponibilidade em `value`.", f"`Update → {title} → Debug Info` para visualizar o valor recebido do {device}.")
    if prefix in ("math", "vector", "compare"):
        if operation.startswith("is_"):
            inputs = f"`value`: valor {kind} que será testado."
        elif operation in ("length", "normalize", "absolute", "negative", "floor", "ceil", "round", "sqrt"):
            inputs = f"`value`: valor {kind} de entrada."
        else:
            inputs = f"`a` e `b`: valores {kind}; parâmetros adicionais aparecem quando a operação exige limite ou fator."
        return (f"Calcula `{readable}` para valores do tipo {kind}; não modifica objetos da cena.", inputs, "Retorna o cálculo tipado em `value`/`result`.", f"Conecte constantes ou saídas anteriores a `{title}` e use o resultado em `Debug Info` ou em outro bloco compatível.")
    if prefix == "list":
        return (f"Executa `{readable}` em uma lista de {kind}.", "`list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.", "Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.", f"`List {kind.title()} Create → {title} → Debug Info` demonstra o resultado da operação.")
    if prefix == "save":
        return (f"Executa `{readable}` para um valor persistente do tipo {kind} no armazenamento do jogo.", "`key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.", "Retorna o valor carregado/estado da chave e emite `flow` após concluir.", f"Use a chave `player_{kind}`: `Button Pressed → {title}` e conecte o resultado à interface.")
    if prefix in FAMILY_NAMES:
        family = FAMILY_NAMES[prefix]
        if operation.startswith("set_"):
            prop = operation.removeprefix("set_").replace("_", " ")
            return (f"Define `{prop}` no sistema de {family} do alvo indicado.", f"`target_path`: nó compatível; `value`: novo valor de {prop}, pelo inspetor ou por conexão tipada.", f"Atualiza {prop} no alvo e emite `flow`.", f"`Button Pressed → {title}`, selecione o alvo da cena e conecte uma constante ao pino `value`.")
        if operation.startswith("get_"):
            prop = operation.removeprefix("get_").replace("_", " ")
            return (f"Consulta `{prop}` no sistema de {family} sem alterar o alvo.", "`target_path`: nó compatível que será consultado.", f"Retorna {prop} em `value` e permite continuar o fluxo.", f"`Update → {title} → Debug Info` mostra o valor atual de {prop}.")
        return (f"Executa a ação `{readable}` no sistema de {family} usando a API segura registrada pela engine.", "`target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.", "Aplica a ação e emite `flow`; operações de consulta também retornam `value`.", f"`Button Pressed → {title}`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.")
    if prefix == "transform":
        prop = parts[1].replace("_", " ")
        return (f"Executa `{readable}` sobre a {prop} de um `Node2D`/`Node3D`.", f"`target_path`: nó da cena; valor de {prop}, destino ou fator conforme a operação.", f"Retorna ou modifica a {prop} e emite `flow` quando houver efeito na cena.", f"`Update → {title}`, alvo `../Player`; conecte um Vector compatível ao pino de valor.")
    return (f"Executa a operação registrada `{node_id}` ({readable}) no runtime NoCode.", "Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.", "Retorna `value`/`result` para dados e `flow` para encadear ações.", f"Adicione `{title}` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.")


def errors_for(node_id: str) -> str:
    if node_id == "event.input.key_down":
        return "Se não disparar, confira se a janela do jogo está em foco, se a tecla física escolhida corresponde ao layout do aparelho e se `action` existe no Input Map. Não use este evento para teclado virtual Android; nesse caso, prefira uma ação ligada a botão touch."
    if node_id.startswith("event.input."):
        return "Se não disparar, verifique foco da janela, nome exato da ação no Input Map, dispositivo selecionado e se outro Control está consumindo o evento."
    if node_id.startswith(("object.", "transform.", "physics.", "vehicle.", "audio.", "animation.", "material.", "ui.")):
        return "Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada."
    if node_id.startswith(("math.", "vector.", "compare.")):
        return "Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch."
    if node_id.startswith("list."):
        return "Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável."
    if node_id.startswith("save."):
        return "Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos."
    return "Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários."


def main() -> None:
    definitions = catalog(SOURCE.read_text(encoding="utf-8"))
    lines = [
        "# Catálogo nativo NoCode — 961 operações", "",
        "> Gerado por `tools/godot/generate_native_nocode_docs.py`. Não editar manualmente.", "",
        "Cada entrada abaixo documenta o contrato persistido no `.graph.json`. A presença no catálogo não substitui a validação do tipo do alvo: operações de cena falham explicitamente quando o NodePath ou componente é incompatível.", "",
    ]
    for index, (node_id, category, title) in enumerate(definitions, 1):
        purpose, inputs, outputs, example = contract(node_id, title)
        lines += [
            f"## {index}. {title}", "",
            f"- **ID:** `{node_id}`", f"- **Categoria:** {category}",
            f"- **Finalidade:** {purpose}", f"- **Entradas/alvo:** {inputs}", f"- **Saídas/efeito:** {outputs}",
            f"- **Exemplo:** {example}",
            f"- **Erros:** {errors_for(node_id)}", "",
        ]
    OUTPUT.write_text("\n".join(lines), encoding="utf-8")
    print(f"{OUTPUT}: {len(definitions)} operações documentadas")


if __name__ == "__main__":
    main()
