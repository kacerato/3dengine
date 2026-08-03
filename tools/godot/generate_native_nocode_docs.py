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
    if node_id == "audio.play_3d_loop":
        return (
            "Inicia um som espacial repetido em um `AudioStreamPlayer3D`. O áudio acompanha a posição do Node e perde volume conforme o ouvinte se afasta; use para motor, cachoeira, máquina ou ambiente contínuo no mundo.",
            "`target_path`: `AudioStreamPlayer3D`; `stream`: áudio; `volume_db`; `min_distance` em metros com volume cheio; `max_distance` em metros para deixar de ouvir. O stream precisa repetir ou o bloco deve habilitar loop.",
            "Inicia a reprodução em loop e libera `flow`. O som continua até `Stop`, remoção do player ou troca de cena.",
            "Motor de carro: crie `Car/EngineAudio` como `AudioStreamPlayer3D`; ligue `Vehicle Enter → Play 3D Loop`, alvo `../Car/EngineAudio`, mínimo `2 m`, máximo `40 m`; ligue `Vehicle Exit → Stop` no mesmo alvo.",
        )
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
        event_guides = {
            "event.scene.start": ("inicializar a fase na primeira execução", "`Start → Variable Set`, nome `score`, valor `0`; depois `Start → Audio Play`, alvo `../Music`"),
            "event.scene.ready": ("configurar objetos assim que a SceneTree terminou de prepará-los", "`Ready → Object Find By Name (Player) → Camera Set Target` para ligar a câmera ao personagem existente"),
            "event.scene.exit": ("salvar ou liberar estado antes de a cena sair", "`Exit → Save Vector3`, chave `player_position`, valor vindo de `Transform Position Get`"),
            "event.frame.update": ("atualizar lógica visual dependente de cada quadro", "`Update → Joystick Get Axis → Character Move`, multiplicando velocidade por `Delta` quando necessário"),
            "event.frame.fixed_update": ("executar física no passo fixo", "`Fixed Update → Add Force`, alvo `../Ball`, força `Vector3(0, 0, -8)`"),
            "event.object.touch": ("reagir quando um objeto 3D/2D é tocado", "`Touch → Material Set Emission`, usando o objeto do payload para destacar o item selecionado"),
            "event.object.click": ("executar uma ação pontual ao clicar em um objeto", "`Click → Object Send Event`, evento `inspect`, alvo vindo do objeto clicado"),
            "event.object.enabled": ("reagir quando um Node volta a processar", "`Enabled → Animation Play`, animação `wake_up`, no objeto habilitado"),
            "event.object.disabled": ("reagir quando um Node deixa de processar", "`Disabled → Audio Stop`, alvo de áudio filho do objeto desativado"),
            "event.object.created": ("configurar uma instância recém-criada", "`Created → Transform Scale Set`, valor `Vector3(0.5,0.5,0.5)`, alvo vindo do payload"),
            "event.object.destroyed": ("atualizar contadores após remover um objeto", "`Destroyed → Variable Add`, nome `enemies_defeated`, quantidade `1`"),
            "event.input.button_released": ("encerrar uma ação quando o botão é solto", "`Button Released (aim) → Camera Set FOV`, valor `75`, retornando a visão após mirar"),
            "event.input.axis": ("receber mudanças de um eixo configurado", "`Axis (move_x) → Vector3 Make → Character Move` para dirigir o personagem lateralmente"),
            "event.pointer.down": ("iniciar interação no instante em que o dedo toca a tela", "`Pointer Down → UI Set Position`, levando a mira para `position` do toque"),
            "event.pointer.up": ("finalizar uma interação quando o dedo sai da tela", "`Pointer Up → Object Send Event`, evento `release`, para soltar o item arrastado"),
            "event.pointer.move": ("acompanhar a posição do ponteiro sem exigir arrasto", "`Pointer Move → UI Set Position`, alvo `../HUD/Cursor`, valor `position`"),
            "event.collision.enter": ("agir no primeiro contato entre colliders", "`Collision Enter → Variable Add`, nome `health`, quantidade `-10`, usando o corpo atingido do payload"),
            "event.collision.stay": ("aplicar efeito enquanto a colisão continua", "`Collision Stay → Add Force`, força `Vector3(0,12,0)`, criando uma corrente de ar"),
            "event.collision.exit": ("agir quando os colliders deixam de se tocar", "`Collision Exit → UI Hide`, alvo `../HUD/CollisionHint`"),
            "event.trigger.enter": ("ativar uma área quando um corpo entra", "`Trigger Enter → Object Enable`, alvo `../Enemies/AmbushGroup`"),
            "event.trigger.stay": ("manter um efeito enquanto o corpo permanece na área", "`Trigger Stay → Variable Add`, nome `oxygen`, quantidade `-0.1 × Delta`"),
            "event.trigger.exit": ("encerrar o efeito quando o corpo sai da área", "`Trigger Exit → Object Disable`, alvo `../Zone/DamageEffect`"),
            "event.animation.started": ("sincronizar efeitos com o começo de uma animação", "`Animation Started (attack) → Audio Play`, alvo `../SwordSwing`"),
            "event.animation.finished": ("encadear estado após uma animação terminar", "`Animation Finished (death) → Object Destroy`, alvo do personagem que terminou a animação"),
            "event.audio.finished": ("continuar uma sequência quando o áudio termina", "`Audio Finished → World Load`, cena `res://levels/next_level.tscn` após a narração"),
            "event.ui.focused": ("mostrar ajuda para o controle de interface selecionado", "`UI Focused → UI Set Text`, alvo `../Help`, texto `Pressione para confirmar`"),
            "event.ui.value_changed": ("aplicar imediatamente o novo valor de slider/campo", "`Value Changed → Audio Set Volume`, conectando `value` ao volume do bus principal"),
            "event.timer.elapsed": ("executar algo quando uma contagem nomeada termina", "`Timer Elapsed (spawn_delay) → Object Create`, cena `res://enemy.tscn`"),
            "event.network.connected": ("liberar recursos online após conectar", "`Connected → UI Set Text`, texto `Online`, alvo `../HUD/NetworkStatus`"),
            "event.network.disconnected": ("bloquear ações online e informar perda de conexão", "`Disconnected → UI Open Panel`, alvo `../HUD/ReconnectPanel`"),
            "event.save.loaded": ("aplicar dados depois que um save foi carregado", "`Save Loaded → Transform Position Set`, alvo `../Player`, valor `player_position` carregado"),
            "event.save.completed": ("confirmar visualmente uma gravação concluída", "`Save Completed → UI Toast`, texto `Jogo salvo`"),
            "event.world.loaded": ("preparar uma fase depois do carregamento", "`World Loaded → Object Find By Tag (spawn) → Transform Position Set` para posicionar o jogador"),
            "event.world.unloaded": ("limpar estado ligado ao mundo removido", "`World Unloaded → List Object Clear`, lista `tracked_enemies`"),
            "event.custom.received": ("receber uma mensagem definida pelo próprio projeto", "`Custom Received (quest_complete) → UI Open Panel`, alvo `../HUD/QuestReward`"),
            "event.component.changed": ("sincronizar sistemas quando uma propriedade muda", "`Component Changed (health) → UI Set Value`, alvo `../HUD/HealthBar`, valor do payload"),
        }
        use, example = event_guides[node_id]
        return (f"Dispara o fluxo quando `{subject}` informa `{action}`. Use para {use}, somente no momento da ocorrência.", f"Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.", "Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.", f"Mecânica: {example}.")
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
        input_uses = {
            "pressed": ("detecta o instante em que o controle é pressionado", "`action`/botão e índice opcional do dispositivo", "`true` somente no primeiro quadro", "inicie um ataque sem repeti-lo enquanto o botão estiver segurado"),
            "released": ("detecta o instante em que o controle é solto", "`action`/botão e índice opcional", "`true` no quadro da liberação", "solte uma flecha depois de carregar o arco"),
            "held": ("informa se o controle continua pressionado", "`action`/botão", "booleano atualizado a cada quadro", "mantenha corrida ou disparo contínuo enquanto houver pressão"),
            "axis": ("lê um eixo analógico ou par negativo/positivo", "ações negativa e positiva, eixo e dispositivo", "número entre `-1.0` e `1.0`", "controle movimento ou direção com joystick/teclas"),
            "position": ("lê a posição atual do ponteiro/toque", "índice do toque ou ponteiro", "`Vector2` em pixels da viewport", "posicione uma mira onde o jogador toca"),
            "delta": ("lê quanto o ponteiro/toque se moveu", "índice do toque ou ponteiro", "`Vector2` desde a leitura anterior", "gire a câmera pela distância arrastada"),
            "pressure": ("lê a intensidade de pressão disponível", "índice do toque/caneta", "número normalmente entre `0.0` e `1.0`", "varie a espessura de pintura ou força de uma ação"),
            "count": ("conta controles/toques ativos", "tipo ou índice do dispositivo quando disponível", "quantidade inteira", "ative gesto de zoom somente com dois dedos"),
            "available": ("verifica se o dispositivo/recurso existe", "índice opcional do dispositivo", "booleano", "mostre controles touch quando não houver gamepad"),
            "name": ("obtém o nome apresentado pelo dispositivo", "índice do dispositivo", "texto com o nome", "mostre `Xbox Controller` na tela de controles"),
        }
        action, inputs, result, use = input_uses[operation]
        return (f"No dispositivo `{device}`, {action}. Use para {use}.", inputs.capitalize() + ".", result.capitalize() + " em `value`.", f"Mecânica: `Update → {title}`; conecte `value` a um `Branch`, movimento, câmera ou UI para {use}.")
    if prefix in ("math", "vector", "compare"):
        if operation.startswith("is_"):
            inputs = f"`value`: valor {kind} que será testado."
        elif operation in ("length", "normalize", "absolute", "negative", "floor", "ceil", "round", "sqrt"):
            inputs = f"`value`: valor {kind} de entrada."
        else:
            inputs = f"`a` e `b`: valores {kind}; parâmetros adicionais aparecem quando a operação exige limite ou fator."
        math_uses = {
            "add": "somar 100 pontos à pontuação", "subtract": "retirar dano da vida", "multiply": "aplicar um multiplicador de dano", "divide": "calcular a média por jogador", "modulo": "executar algo a cada N quadros", "power": "criar uma curva exponencial", "minimum": "limitar ao menor valor", "maximum": "garantir um valor mínimo", "average": "calcular média de valores", "absolute": "remover o sinal", "negative": "inverter direção/sinal", "sqrt": "obter uma raiz", "floor": "arredondar para baixo", "ceil": "arredondar para cima", "round": "arredondar ao inteiro mais próximo", "sin": "produzir oscilação suave", "cos": "produzir oscilação deslocada", "lerp": "interpolar suavemente", "move_towards": "aproximar sem ultrapassar", "distance": "medir distância entre pontos", "normalize": "obter somente a direção", "length": "obter magnitude/velocidade", "dot": "medir alinhamento entre direções", "cross": "obter o eixo perpendicular", "equal": "testar igualdade", "not_equal": "testar diferença", "greater": "testar se ultrapassou um limite", "less": "testar se ficou abaixo de um limite", "greater_equal": "testar limite mínimo inclusivo", "less_equal": "testar limite máximo inclusivo", "between": "testar se está dentro de uma faixa", "outside": "testar se saiu de uma faixa", "approximately": "comparar números com tolerância", "is_null": "verificar ausência de objeto",
        }
        use = math_uses.get(operation, f"calcular {readable} antes de alimentar outro bloco")
        if prefix == "compare":
            example = f"`Update → {title} → Branch`; use a saída True para {use} e a False para manter o estado atual."
        elif prefix == "vector":
            example = f"`Get Velocity → {title} → UI Set Text` ou conecte o vetor resultante a movimento/força para {use}."
        else:
            example = f"Conecte os valores a `{title}` e leve `result` a `Variable Set` ou `UI Set Text` para {use}."
        return (f"Calcula `{readable}` para valores do tipo {kind}; use para {use}. Não modifica a cena sozinho.", inputs, "Retorna o cálculo tipado em `value` e `result`.", example)
    if prefix == "list":
        list_behaviors = {
            "create": ("cria uma lista vazia", "nenhuma entrada", "uma nova lista vazia", "use a saída como inventário inicial"),
            "add": ("adiciona um item ao final", "`list` e `value`", "a lista com o novo item", "adicione uma moeda coletada ao inventário"),
            "insert": ("insere um item em uma posição", "`list`, `index` e `value`", "a lista com o item inserido", "insira uma missão no topo usando índice `0`"),
            "set": ("substitui o item de uma posição", "`list`, `index` e `value`", "a lista atualizada", "troque o item do slot selecionado"),
            "get": ("obtém o item de uma posição", "`list` e `index`", "o item encontrado em `value`", "leia o item do slot `2` e mostre seu nome"),
            "first": ("obtém o primeiro item", "`list`", "o primeiro item ou valor vazio", "selecione a primeira missão da fila"),
            "last": ("obtém o último item", "`list`", "o último item ou valor vazio", "recupere o checkpoint mais recente"),
            "remove": ("remove a primeira ocorrência de um valor", "`list` e `value`", "a lista sem o item e um booleano de sucesso", "remova a chave usada do inventário"),
            "remove_at": ("remove o item de um índice", "`list` e `index`", "a lista sem aquela posição", "exclua o slot `1` da barra rápida"),
            "clear": ("remove todos os itens", "`list`", "a mesma lista vazia", "limpe inimigos rastreados ao trocar de fase"),
            "contains": ("verifica se um valor existe", "`list` e `value`", "`true` ou `false`", "use Branch para permitir uma porta somente se houver uma chave"),
            "index_of": ("procura a primeira posição de um valor", "`list` e `value`", "índice ou `-1`", "localize a primeira poção no inventário"),
            "last_index_of": ("procura a última posição de um valor", "`list` e `value`", "índice ou `-1`", "localize o último checkpoint repetido"),
            "count": ("conta os itens", "`list`", "quantidade inteira", "atualize `Itens: 8` na interface"),
            "is_empty": ("verifica se não há itens", "`list`", "`true` quando a lista está vazia", "encerre a onda quando a lista de inimigos ficar vazia"),
            "reverse": ("inverte a ordem", "`list`", "lista em ordem inversa", "mostre o histórico do mais recente ao mais antigo"),
            "shuffle": ("embaralha a ordem", "`list`", "lista embaralhada", "embaralhe cartas antes de distribuí-las"),
            "sort": ("ordena os valores", "`list` e direção opcional", "lista ordenada", "ordene pontuações antes do placar"),
            "distinct": ("remove valores duplicados", "`list`", "lista apenas com valores únicos", "elimine IDs de alvos repetidos"),
            "slice": ("recorta um intervalo", "`list`, `start` e `length`", "uma nova sublista", "mostre somente os primeiros dez resultados"),
            "concat": ("une duas listas", "`list` e `other`", "uma lista com ambas em sequência", "junte inventário normal e itens temporários"),
            "filter": ("mantém itens aprovados por uma condição", "`list` e condição/filtro", "lista filtrada", "mantenha somente inimigos ainda vivos"),
            "map": ("transforma cada item", "`list` e transformação", "nova lista transformada", "converta pontuações numéricas para textos"),
            "reduce": ("combina todos os itens em um resultado", "`list`, valor inicial e operação", "valor acumulado", "some todos os danos para obter o dano total"),
            "random": ("escolhe um item aleatório", "`list`", "um item da lista", "escolha aleatoriamente um ponto de spawn"),
        }
        action, inputs, result, use = list_behaviors[operation]
        return (f"{action.capitalize()} em uma lista de {kind}. Use para {use}.", inputs.capitalize() + ".", result.capitalize() + ". A lista de entrada permanece disponível para outras conexões.", f"Mecânica: crie ou carregue a lista de {kind}, conecte-a a `{title}` e use a saída para {use}.")
    if prefix == "save":
        return (f"Executa `{readable}` para um valor persistente do tipo {kind} no armazenamento do jogo.", "`key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.", "Retorna o valor carregado/estado da chave e emite `flow` após concluir.", f"Use a chave `player_{kind}`: `Button Pressed → {title}` e conecte o resultado à interface.")
    if prefix == "world" and operation.startswith("terrain_"):
        terrain_operation = operation.removeprefix("terrain_")
        terrain_guides = {
            "get_height": ("lê a altura do terreno em uma coordenada X/Z", "`target_path`: `MGSTerrain3D`; `position`: `Vector3` ou X/Z do ponto consultado", "altura Y numérica em `value`", "posicionar `../Player` sobre o solo ao nascer, somando a altura retornada ao transform"),
            "set_height": ("define a altura absoluta dos vértices dentro do pincel", "`target_path`, `position`, `radius` e `height`", "malha e colisão reconstruídas com a nova altura", "criar uma plataforma plana em Y=4 no centro da arena"),
            "raise": ("eleva o terreno gradualmente dentro do pincel", "`target_path`, `position`, `radius` e `strength` positivo", "vértices elevados e colisão sincronizada", "formar uma colina onde o jogador segura o botão de edição"),
            "lower": ("rebaixa o terreno gradualmente dentro do pincel", "`target_path`, `position`, `radius` e `strength`", "vértices rebaixados e colisão sincronizada", "escavar uma cratera no ponto atingido por um projétil"),
            "smooth": ("suaviza diferenças bruscas de altura usando os vértices vizinhos", "`target_path`, `position`, `radius` e `strength` entre 0 e 1", "encostas menos serrilhadas sem apagar o terreno inteiro", "alisar a passagem entre uma estrada e uma montanha"),
            "flatten": ("nivela a área do pincel para uma altura comum", "`target_path`, `position`, `radius` e `height` opcional", "área plana com mesh e collider atualizados", "preparar o chão para colocar uma casa"),
            "add_noise": ("adiciona variação procedural às alturas", "`target_path`, `seed`, `frequency`, `amplitude` e região opcional", "relevo reproduzível pela mesma seed", "gerar pequenas ondulações naturais em um mapa inicialmente plano"),
            "paint_layer": ("pinta o peso de uma camada de textura no terreno", "`target_path`, `position`, `radius`, `layer` e `weight` de 0 a 1", "mapa de pesos alterado para mesclar a camada", "pintar terra sob uma estrada sem trocar o material do terreno inteiro"),
            "get_layer_weight": ("consulta quanto uma camada influencia um ponto", "`target_path`, `position` e índice/nome de `layer`", "peso entre 0 e 1 em `value`", "detectar se o personagem está sobre areia para trocar o som dos passos"),
            "apply_auto_tile": ("recalcula as camadas automáticas a partir das regras cadastradas", "`target_path` e região opcional", "pesos de textura atualizados conforme altura e inclinação", "aplicar rocha nas encostas e grama nas áreas planas após editar o relevo"),
            "add_auto_tile_rule": ("cadastra uma regra de textura por altura e inclinação", "`target_path`, `layer`, limites de `height`/`slope` e intensidade", "regra armazenada no `MGSTerrain3D`", "definir neve acima de Y=25 e somente em superfícies pouco inclinadas"),
            "remove_auto_tile_rule": ("remove uma regra automática existente", "`target_path` e índice/nome da regra", "regra removida; use Apply Auto Tile para recalcular", "desativar a regra de neve quando a fase muda para verão"),
            "set_material": ("atribui o material usado para renderizar a malha do terreno", "`target_path` e `material` (`StandardMaterial3D`/`ShaderMaterial`)", "material aplicado ao mesh gerado", "usar um shader triplanar para evitar textura esticada nas encostas"),
            "set_texture_scale": ("ajusta a repetição da textura do terreno", "`target_path` e `scale` maior que zero", "UV/parametro de material atualizado", "reduzir a escala para que pedras não pareçam gigantes"),
            "set_texture_rotation": ("gira a orientação da textura sobre o terreno", "`target_path` e `rotation` em graus", "orientação do material atualizada", "alinhar a textura de uma estrada diagonal"),
            "set_texture_offset": ("desloca a textura sem mover a geometria", "`target_path` e `offset` `Vector2`", "origem UV/parametro do shader atualizado", "alinhar as faixas de uma estrada com o começo da pista"),
            "set_roughness": ("define quão fosca ou refletiva é a superfície", "`target_path` e `roughness` entre 0 e 1", "rugosidade aplicada ao material do terreno", "usar 0.9 para solo seco e 0.25 para lama molhada"),
            "set_metallic": ("define a resposta metálica da superfície", "`target_path` e `metallic` entre 0 e 1", "metallic aplicado ao material", "usar valor alto somente em um terreno estilizado de metal"),
            "import_heightmap": ("carrega alturas de uma imagem em tons de cinza", "`target_path`, `path` da imagem e escala vertical", "terreno redimensionado/reconstruído a partir do heightmap", "importar `res://maps/island_height.png` para criar a ilha jogável"),
            "export_heightmap": ("grava as alturas atuais em uma imagem", "`target_path` e `path` de destino gravável", "arquivo de heightmap criado e caminho retornado", "salvar o terreno editado para reutilizá-lo em outra fase"),
            "generate_semi_arid": ("gera relevo procedural semiárido com planícies e elevações", "`target_path`, `seed`, tamanho, resolução e amplitude", "mesh, normais, UVs e collider gerados", "criar um mapa de teste reproduzível usando seed 42"),
            "scatter_tiles": ("espalha instâncias sobre o terreno respeitando altura e normal", "`target_path`, cena/recurso, `density`, `seed` e região", "objetos instanciados como filhos do terreno", "distribuir pedras e arbustos de forma determinística"),
            "clear_tiles": ("remove as instâncias espalhadas pelo sistema de terreno", "`target_path` e grupo/camada opcional", "tiles removidos sem apagar a malha do terreno", "limpar as pedras antigas antes de gerar uma nova distribuição"),
        }
        meaning, inputs, output, example = terrain_guides[terrain_operation]
        return (f"{meaning.capitalize()}. A operação atua no `MGSTerrain3D` nativo e mantém renderização e colisão coerentes.", inputs[0].upper() + inputs[1:] + ".", output[0].upper() + output[1:] + "; emite `flow` quando a atualização termina.", f"Exemplo de uso: {example}.")
    if prefix in FAMILY_NAMES:
        family = FAMILY_NAMES[prefix]
        if prefix == "vehicle" and operation.startswith(("set_", "get_")) and operation != "get_driver":
            prop = operation[4:]
            vehicle_properties = {
                "throttle": ("abertura do acelerador, de 0 (solto) a 1 (total)", "fazer o carro acelerar conforme o eixo vertical do joystick"),
                "brake": ("intensidade do freio principal, de 0 a 1", "reduzir a velocidade enquanto o jogador segura o botão de freio"),
                "handbrake": ("freio de mão, usado para travar principalmente as rodas traseiras", "iniciar uma derrapagem em curva fechada"),
                "steering": ("comando de direção normalizado de -1 (esquerda) a 1 (direita)", "ligar o eixo horizontal do joystick às rodas direcionais"),
                "gear": ("marcha atual; valores negativos representam ré e zero representa neutro", "selecionar ré ao pressionar o botão R"),
                "speed": ("velocidade linear atual do veículo em unidades por segundo", "converter para km/h e atualizar o velocímetro"),
                "rpm": ("rotação atual do motor em rotações por minuto", "mover o ponteiro do conta-giros e decidir a troca de marcha"),
                "wheel_speed": ("velocidade angular/linear medida na roda indicada", "comparar roda e carro para detectar perda de tração"),
                "slip_ratio": ("diferença longitudinal entre rotação da roda e deslocamento do carro", "acionar controle de tração quando a roda patina"),
                "lateral_slip": ("escorregamento lateral da roda", "reduzir assistência ou produzir som de pneu em uma derrapagem"),
                "mass": ("massa da carroceria em quilogramas", "deixar um caminhão mais pesado que um kart"),
                "engine_power": ("potência usada pelo modelo do motor para produzir aceleração", "configurar um carro esportivo mais forte que o veículo inicial"),
                "max_torque": ("limite de torque que o motor entrega ao trem de força", "aumentar força em baixa rotação para um veículo off-road"),
                "redline_rpm": ("RPM máximo seguro antes do corte de giro", "impedir que o motor continue acelerando além de 7000 RPM"),
                "top_speed": ("velocidade máxima permitida pelo controlador", "limitar um veículo urbano a 120 km/h"),
                "drive_type": ("rodas que recebem tração: dianteira, traseira ou integral", "usar tração integral em um carro para terreno solto"),
                "gear_ratios": ("lista de relações de cada marcha", "dar primeira marcha curta e marchas finais longas"),
                "final_drive": ("relação final que multiplica todas as marchas", "priorizar aceleração com relação maior ou velocidade final com menor"),
                "drivetrain_efficiency": ("fração da força do motor que chega às rodas, entre 0 e 1", "simular perdas mecânicas do trem de força"),
                "tire_grip": ("aderência longitudinal usada para acelerar e frear", "dar mais tração ao pneu de corrida"),
                "lateral_grip": ("aderência lateral que resiste à derrapagem em curvas", "diferenciar pneu de asfalto e pneu sobre areia"),
                "traction_control": ("assistência que reduz torque quando as rodas patinam", "manter o carro controlável ao acelerar em piso molhado"),
                "abs": ("assistência que alivia o freio quando uma roda está prestes a travar", "preservar capacidade de virar durante uma frenagem forte"),
                "stability_assist": ("correção que combate rotação e derrapagem excessivas da carroceria", "ajudar jogadores mobile a recuperar o carro em curvas"),
                "steering_angle": ("ângulo máximo das rodas direcionais", "permitir curvas fechadas em baixa velocidade"),
                "steering_response": ("rapidez com que a direção alcança o comando solicitado", "suavizar mudanças bruscas do joystick"),
                "wheel_radius": ("raio físico da roda em metros/unidades do mundo", "sincronizar rotação e velocidade de uma roda maior"),
                "wheel_position": ("posição local da roda em relação à carroceria", "alinhar cada roda ao modelo visual do veículo"),
                "wheel_driven": ("define se a roda recebe torque do motor", "marcar somente as rodas traseiras em um carro RWD"),
                "wheel_steerable": ("define se a roda responde ao comando de direção", "marcar as rodas dianteiras como direcionais"),
                "suspension_travel": ("distância máxima que a suspensão pode comprimir/estender", "permitir maior curso em um veículo off-road"),
                "spring_strength": ("força da mola que sustenta a carroceria", "evitar que um veículo pesado encoste no chão"),
                "suspension_damping": ("amortecimento que reduz oscilações da mola", "impedir que o carro continue quicando após um obstáculo"),
                "suspension_compression": ("compressão atual da suspensão da roda", "animar visualmente o amortecedor ou detectar aterrissagem"),
                "center_of_mass": ("posição local do centro de massa da carroceria", "baixar o centro de massa para reduzir capotamentos"),
                "downforce": ("força aerodinâmica para baixo que cresce com a velocidade", "aumentar aderência de um carro de corrida em alta velocidade"),
                "aero_drag": ("resistência do ar contra o movimento", "controlar como a aceleração diminui perto da velocidade final"),
                "rolling_resistance": ("resistência constante dos pneus ao rolamento", "fazer o carro desacelerar naturalmente sem acelerador"),
            }
            meaning, example = vehicle_properties[prop]
            if operation.startswith("set_"):
                return (f"Define {meaning}. O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.", f"`target_path`: `MGSVehicle3D`; `value`: valor de {prop.replace('_', ' ')} no tipo/unidade descrito acima.", "Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.", f"Exemplo real: {example}.")
            return (f"Lê {meaning}, sem alterar o veículo.", "`target_path`: `MGSVehicle3D`; para dados de roda, informe também `wheel_index`.", "Retorna o valor atual por `value`/`result` e mantém o fluxo disponível.", f"Exemplo real: {example}.")
        if prefix == "object" and operation in ("enable", "disable", "toggle_enabled"):
            modes = {"enable": ("reativa", "ativo", "desativado"), "disable": ("desativa", "desativado", "ativo"), "toggle_enabled": ("alterna", "estado oposto", "estado atual")}
            verb, result_state, previous = modes[operation]
            return (f"{verb.capitalize()} o processamento de um Node da cena. Use `Enable` para devolver comportamento a inimigos, plataformas ou controladores que foram desativados; isso não é o mesmo que apenas torná-los visíveis.", "`target_path`: caminho do Node a controlar, por exemplo `../Enemies/Guard`. Não recebe valor adicional.", f"Coloca o alvo no estado {result_state} por meio do modo de processamento e emite `flow`. O Node continua existindo na SceneTree.", f"Inimigo por proximidade: `Trigger Enter → Enable`, alvo `../Enemies/Guard`; ao entrar na área, o guarda volta a processar IA e movimento. Use `Disable` no `Trigger Exit` para interrompê-lo novamente.")
        if operation.startswith("set_"):
            prop = operation.removeprefix("set_").replace("_", " ")
            return (f"Define `{prop}` no sistema de {family} do alvo indicado.", f"`target_path`: nó compatível; `value`: novo valor de {prop}, pelo inspetor ou por conexão tipada.", f"Atualiza {prop} no alvo e emite `flow`.", f"`Button Pressed → {title}`, selecione o alvo da cena e conecte uma constante ao pino `value`.")
        if operation.startswith("get_"):
            prop = operation.removeprefix("get_").replace("_", " ")
            return (f"Consulta `{prop}` no sistema de {family} sem alterar o alvo.", "`target_path`: Node que será consultado.", f"Retorna {prop} em `value` e permite continuar o fluxo.", f"`Update → {title} → UI Set Text` mostra {prop} no HUD; use `Number To Text` antes quando o retorno for numérico.")
        action_words = {
            "play": "inicia a reprodução", "pause": "pausa", "resume": "retoma", "stop": "interrompe", "destroy": "remove da cena", "clone": "duplica", "create": "cria", "show": "torna visível", "hide": "oculta", "focus": "move o foco", "unfocus": "remove o foco", "clear": "limpa", "repair": "restaura", "teleport": "reposiciona imediatamente", "quit": "encerra o jogo", "reload": "recarrega", "load": "carrega", "unload": "descarrega", "open_door": "abre a porta", "close_door": "fecha a porta", "shift_up": "aumenta a marcha", "shift_down": "reduz a marcha", "wake_up": "acorda o corpo físico", "sleep": "coloca o corpo físico em repouso",
        }
        action = action_words.get(operation, readable)
        parameter_hints = {
            "find_by_name":"`name`: nome exato procurado na SceneTree", "find_by_tag":"`tag`: etiqueta cadastrada", "find_by_id":"`id`: identificador persistente", "create":"`scene`/`class_name` e `parent_path`", "clone":"`target_path` e `parent_path` opcional", "destroy":"somente `target_path`", "add_child":"`target_path` do pai e `child_path`", "remove_child":"`target_path` do pai e `child_path`", "send_event":"`target_path` e `event_name`", "play":"`target_path` e recurso/nome a reproduzir", "pause":"somente `target_path`", "resume":"somente `target_path`", "stop":"somente `target_path`", "fade_in":"`target_path`, `duration` em segundos e volume final", "fade_out":"`target_path` e `duration` em segundos", "teleport":"`target_path`, `position` e rotação opcional", "raycast":"`origin`, `direction`, `distance` e máscara", "open_door":"`target_path` da porta", "close_door":"`target_path` da porta", "shift_up":"`target_path` do veículo", "shift_down":"`target_path` do veículo", "show":"`target_path` do Control/CanvasItem", "hide":"`target_path` do Control/CanvasItem", "quit":"nenhuma entrada", "reload":"cena/mundo ativo", "load":"`scene_path` ou recurso a carregar", "unload":"`scene_path`/identificador carregado",
        }
        target_types = {
            "object": "`Node` existente na SceneTree",
            "physics": "`RigidBody3D`, `CharacterBody3D` ou espaço físico compatível com a operação",
            "vehicle": "`MGSVehicle3D`/`VehicleBody3D` que representa o veículo controlado",
            "audio": "`AudioStreamPlayer`, `AudioStreamPlayer2D` ou `AudioStreamPlayer3D`, conforme o bloco",
            "animation": "`AnimationPlayer` ou `AnimationTree`",
            "material": "`MeshInstance3D` com `StandardMaterial3D` ou `ShaderMaterial`",
            "ui": "`Control` compatível, como `Label`, `Button`, `Range` ou `LineEdit`",
            "world": "nó de mundo compatível, como câmera, personagem, terreno ou ambiente",
        }
        scenario_templates = {
            "object": f"Em uma fase com `../Door`, use `{title}` para {action} quando o jogador interagir; o efeito acontece nesse Node, não em uma cópia desconectada.",
            "physics": f"Em `Fixed Update`, aplique `{title}` ao corpo `../Player` ou `../Ball`; observe o resultado na simulação física do quadro seguinte.",
            "vehicle": f"No veículo `../Car`, ligue um evento de direção ou estado a `{title}`; a operação {action} o componente nativo usado pelas rodas, motor e carroceria.",
            "audio": f"Para o áudio `../Audio`, use `{title}` quando a cena ou interação exigir; o bloco {action} o player real e a saída `flow` só segue depois de aceitar a operação.",
            "animation": f"No `AnimationPlayer`/`AnimationTree` de `../Player`, use `{title}` durante a mudança de estado; confira o nome da animação ou parâmetro antes de executar.",
            "material": f"No mesh `../Player/Mesh`, use `{title}` para {action} o material renderizado; a alteração fica visível no próprio objeto da cena.",
            "ui": f"No controle `../HUD/Status`, use `{title}` após o evento de gameplay; o bloco {action} o elemento que o jogador realmente vê ou manipula.",
            "world": f"Na cena ativa, use `{title}` sobre `../World` ou o alvo indicado; o bloco {action} o sistema nativo do mundo e o resultado aparece na mesma SceneTree.",
        }
        parameters = parameter_hints.get(operation)
        if parameters is None:
            parameter_name = operation.removeprefix("terrain_").removeprefix("camera_").replace("_", " ")
            parameters = f"`target_path`: {target_types[prefix]}; configure `{parameter_name}` no pino homônimo quando o bloco pedir um valor"
        purpose = f"{action.capitalize()} no sistema de {family}, atuando diretamente no componente da cena. Use quando o gameplay precisa {action} esse recurso em tempo de execução."
        outputs = f"Aplica `{readable}` pela API nativa registrada para {family} e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`."
        return (purpose, parameters.capitalize() + ".", outputs, scenario_templates[prefix])
    if prefix == "transform":
        prop = parts[1].replace("_", " ")
        transform_inputs = {
            "get": ("somente `target_path`", "lê o valor atual", "mostre a posição do jogador no HUD"),
            "set": (f"`target_path` e `value` com a nova {prop}", "substitui o valor atual", "teleporte o jogador para um ponto definido"),
            "add": (f"`target_path` e `value` a somar à {prop}", "soma o deslocamento", "mova uma plataforma 2 metros para cima"),
            "subtract": (f"`target_path` e `value` a subtrair da {prop}", "subtrai o deslocamento", "afaste um objeto do ponto atual"),
            "multiply": (f"`target_path` e `factor` para multiplicar a {prop}", "multiplica cada componente", "dobre a escala de um item coletado"),
            "lerp": (f"`target_path`, `target_value` e `weight` entre 0 e 1", "interpola entre valor atual e destino", "suavize a câmera até o ponto desejado"),
            "move_towards": (f"`target_path`, `target_value` e `delta` máximo", "aproxima sem ultrapassar o destino", "mova uma plataforma até a parada"),
            "local_to_world": ("`target_path` e coordenada local em `value`", "converte para coordenada global", "descubra onde fica o cano da arma no mundo"),
            "world_to_local": ("`target_path` e coordenada global em `value`", "converte para o espaço local", "converta o ponto atingido para coordenadas do objeto"),
            "reset": ("somente `target_path`", "restaura posição/rotação para zero ou escala para um", "reinicie a transformação após respawn"),
            "look_at": ("`target_path`, ponto global `target` e eixo superior opcional", "gira para olhar o ponto", "faça uma torre mirar no jogador"),
            "face_direction": ("`target_path` e vetor `direction`", "gira para a direção informada", "vire o personagem para o sentido do movimento"),
            "y": ("`target_path` e ângulo `value` em graus/radianos indicado pelo bloco", "gira somente no eixo Y", "gire uma moeda ou plataforma horizontalmente"),
            "uniform": ("`target_path` e número `value`", "aplica o mesmo tamanho em X, Y e Z", "aumente um power-up sem deformá-lo"),
        }
        inputs, result, use = transform_inputs[operation]
        return (f"Manipula a {prop} de um `Node2D`/`Node3D`: {result}. Use para {use}.", inputs.capitalize() + ". O caminho é relativo ao `MGSNoCodeRunner`.", f"{result.capitalize()} e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.", f"Mecânica: `Update → {title}`, alvo `../Player`; conecte a entrada descrita acima e use a saída para {use}.")
    if prefix == "time":
        time_guides = {
            "delta": ("tempo em segundos desde o quadro anterior", "multiplicar movimento por Delta para manter a mesma velocidade em aparelhos rápidos e lentos", "`Update → Delta → Multiply (speed) → Transform Position Add`"),
            "fixed_delta": ("intervalo fixo, em segundos, usado pela atualização de física", "calcular forças e física sem depender da taxa de quadros", "`Fixed Update → Fixed Delta → Multiply (acceleration) → Add Force`"),
            "elapsed": ("segundos transcorridos desde o início da execução", "criar animações, cronômetros ou dificuldade progressiva", "`Update → Elapsed → Math Sin → Material Set Emission`"),
            "unscaled_elapsed": ("tempo transcorrido ignorando pausa e escala de tempo", "animar menus e telas de pausa enquanto o jogo está congelado", "`Update → Unscaled Elapsed → UI Animate Value`"),
            "frame": ("número do quadro atualmente processado", "executar amostragem ou tarefas a cada quantidade de quadros", "`Update → Frame → Modulo (30) → Equal (0) → Branch`"),
            "fps": ("quantidade aproximada de quadros renderizados por segundo", "mostrar um contador de desempenho ou adaptar efeitos em aparelhos lentos", "`Update → Fps → Number To Text → UI Set Text`, alvo `../HUD/FpsLabel`"),
            "timestamp": ("instante atual como timestamp Unix", "registrar quando um save, partida ou recompensa ocorreu", "`Button Pressed → Timestamp → Save Integer`, chave `last_save_time`"),
            "date": ("data atual do sistema já formatada", "mostrar a data local em saves ou telas de perfil", "`Ready → Date → UI Set Text`, alvo `../HUD/DateLabel`"),
            "time": ("horário local atual do sistema", "exibir relógio ou criar eventos dependentes do horário", "`Timer Elapsed → Time → UI Set Text`, alvo `../HUD/ClockLabel`"),
            "timezone": ("fuso horário informado pelo sistema", "normalizar datas de placar ou explicar o horário mostrado", "`Ready → Timezone → Text Append → UI Set Text`"),
            "timer_start": ("inicia um temporizador identificado por nome", "criar cooldowns, contagens regressivas e eventos atrasados reutilizáveis", "`Button Pressed → Timer Start`, nome `dash_cooldown`, duração `2.0`"),
            "timer_pause": ("pausa um temporizador ativo preservando o tempo restante", "congelar uma missão ou contagem sem reiniciá-la", "`Button Pressed (pause) → Timer Pause`, nome `mission`"),
            "timer_resume": ("continua um temporizador anteriormente pausado", "retomar cooldowns e contagens", "`Button Pressed (resume) → Timer Resume`, nome `mission`"),
            "timer_stop": ("cancela e remove um temporizador ativo", "cancelar uma ação carregada ou prazo de missão", "`Collision Exit → Timer Stop`, nome `capture_zone`"),
            "timer_remaining": ("consulta quantos segundos faltam em um temporizador", "atualizar uma barra ou texto de cooldown", "`Update → Timer Remaining (dash_cooldown) → UI Set Text`"),
            "timer_elapsed": ("informa se um temporizador chegou ao fim", "liberar novamente uma habilidade ou concluir contagem", "`Update → Timer Elapsed (dash_cooldown) → Branch → UI Set Interactable`"),
            "format_duration": ("converte segundos para texto legível de duração", "mostrar `01:35` no lugar de `95.0` segundos", "`Timer Remaining → Format Duration → UI Set Text`"),
            "wait_seconds": ("aguarda a duração indicada antes de continuar o fluxo", "atrasar uma ação simples sem criar um Timer nomeado", "`Button Pressed → UI Hide → Wait Seconds (2) → UI Show`"),
        }
        meaning, use, example = time_guides[operation]
        needs_input = operation in ("format_duration", "wait_seconds") or operation.startswith("timer_")
        inputs = "Não possui entrada nem alvo; lê o relógio interno da engine." if not needs_input else "Recebe `seconds`/`duration` ou o `timer_name` indicado no bloco; não usa `target_path`."
        return (f"Retorna {meaning}. Use para {use}.", inputs, "Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.", example + ".")
    if prefix == "flow":
        flow_guides = {
            "branch": "escolhe entre as saídas True e False usando uma condição booleana", "gate": "abre ou fecha a passagem de pulsos sem desconectar o grafo", "once": "deixa o fluxo passar somente na primeira chamada até ser reiniciado", "do_n": "limita a passagem do fluxo a uma quantidade configurada", "while": "repete o corpo enquanto a condição permanecer verdadeira, respeitando o limite de segurança", "for": "repete usando índice inicial, final e passo", "foreach": "executa o corpo uma vez para cada item de uma lista", "delay": "continua o fluxo após uma duração", "debounce": "executa somente depois que chamadas rápidas pararem", "throttle": "limita quantas vezes um fluxo pode executar por intervalo", "race": "executa caminhos concorrentes e continua com o primeiro que terminar", "parallel": "inicia vários caminhos no mesmo disparo", "cancel": "cancela uma execução atrasada ou concorrente identificada", "break": "encerra o laço atual", "continue": "pula o restante da iteração e inicia a próxima", "switch_bool": "encaminha um booleano para uma saída nomeada", "switch_number": "encaminha um número para o caso correspondente", "switch_text": "encaminha um texto para o caso correspondente", "switch_object": "encaminha um objeto para o caso correspondente", "flip_flop": "alterna entre as saídas A e B a cada disparo",
        }
        return (f"Controla a ordem do grafo: {flow_guides[operation]}.", "Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.", "Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.", f"Mecânica: `Button Pressed → {title}`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.")
    if prefix == "text":
        text_guides = {
            "append": ("acrescenta texto ao final", "`text` e `value`", "texto combinado", "`Pontos: ` + `250` resulta em `Pontos: 250`"),
            "prepend": ("acrescenta texto no início", "`text` e `value`", "texto combinado", "`Lv. ` antes de `12` resulta em `Lv. 12`"),
            "join": ("une uma lista de textos usando um separador", "`list` e `separator`", "um único texto", "`[madeira, pedra, ferro]` com `, ` resulta em `madeira, pedra, ferro`"),
            "split": ("divide um texto onde encontrar o separador", "`text` e `separator`", "lista de partes", "`vida:80` separado por `:` resulta em `[vida, 80]`"),
            "replace": ("troca todas as ocorrências de um trecho", "`text`, `search` e `replacement`", "texto com todas as trocas", "trocar `{player}` por `Luna` em uma mensagem de diálogo"),
            "replace_first": ("troca somente a primeira ocorrência", "`text`, `search` e `replacement`", "texto com uma troca", "em `1-1-1`, trocar primeiro `1` por `2` resulta em `2-1-1`"),
            "contains": ("verifica se um trecho aparece no texto", "`text` e `search`", "booleano", "testar se `Chave Dourada` contém `Chave` antes de abrir uma porta"),
            "starts_with": ("verifica o começo do texto", "`text` e `prefix`", "booleano", "identificar comandos que começam com `/`"),
            "ends_with": ("verifica o final do texto", "`text` e `suffix`", "booleano", "confirmar se um arquivo termina em `.png`"),
            "equals_ignore_case": ("compara dois textos ignorando maiúsculas/minúsculas", "`a` e `b`", "booleano", "`PLAY` e `play` retornam `true`"),
            "uppercase": ("converte letras para maiúsculas", "`text`", "texto em caixa alta", "`missão concluída` resulta em `MISSÃO CONCLUÍDA`"),
            "lowercase": ("converte letras para minúsculas", "`text`", "texto em caixa baixa", "`PlayerName` resulta em `playername`"),
            "capitalize": ("coloca iniciais de palavras em maiúsculas", "`text`", "texto capitalizado", "`espada de fogo` resulta em `Espada De Fogo`"),
            "trim": ("remove espaços do início e do fim", "`text`", "texto sem espaços externos", "`  Luna  ` resulta em `Luna`"),
            "trim_start": ("remove espaços somente do início", "`text`", "texto sem espaços iniciais", "limpar indentação acidental de um nome digitado"),
            "trim_end": ("remove espaços somente do fim", "`text`", "texto sem espaços finais", "limpar espaços depois de um código digitado"),
            "substring": ("recorta parte do texto por posição", "`text`, `start` e `length`", "trecho recortado", "em `PLAYER_001`, início `7`, tamanho `3` retorna `001`"),
            "character_at": ("obtém o caractere de uma posição", "`text` e `index` começando em zero", "um caractere", "índice `0` de `Godot` retorna `G`"),
            "length": ("conta os caracteres", "`text`", "número inteiro", "limitar o nome do jogador a 16 caracteres"),
            "is_empty": ("verifica se o texto tem zero caracteres", "`text`", "booleano", "impedir save quando o nome é `\"\"`"),
            "is_blank": ("verifica se há somente espaços/quebras de linha", "`text`", "booleano", "rejeitar um nome digitado como `   `"),
            "pad_start": ("completa o início até atingir um tamanho", "`text`, `length` e `fill`", "texto preenchido", "`7` com tamanho `3` e `0` resulta em `007`"),
            "pad_end": ("completa o final até atingir um tamanho", "`text`, `length` e `fill`", "texto preenchido", "alinhar `HP` com espaços até 8 caracteres"),
            "repeat": ("repete o texto uma quantidade de vezes", "`text` e `count`", "texto repetido", "`★` repetido 3 vezes resulta em `★★★`"),
            "reverse": ("inverte a ordem dos caracteres", "somente `text`", "novo texto invertido", "`PORTA` resulta em `ATROP`; útil para puzzle de palavra ou efeito visual"),
            "format": ("substitui marcadores por valores", "`template` e valores nomeados/posicionais", "texto formatado", "`Vida: {0}/{1}` com `80` e `100` resulta em `Vida: 80/100`"),
            "number_to_text": ("converte número em texto", "`value` e casas decimais opcionais", "representação textual", "`12.5` com uma casa resulta em `12.5` para usar em `UI Set Text`"),
            "bool_to_text": ("converte booleano em texto", "`value`, texto para verdadeiro e texto para falso", "texto escolhido", "`true` com `Ligado/Desligado` resulta em `Ligado`"),
            "vector_to_text": ("converte vetor em texto legível", "`value` e precisão opcional", "componentes formatados", "`Vector3(1,2,3)` resulta em `(1, 2, 3)`"),
            "parse_number": ("interpreta texto como número", "`text` e valor padrão opcional", "número convertido", "`125.5` resulta em `125.5`; use antes de cálculos"),
            "parse_bool": ("interpreta texto como booleano", "`text` e valor padrão opcional", "booleano convertido", "`true` resulta em `true` para alimentar um `Branch`"),
            "regex_matches": ("verifica se o texto corresponde a uma expressão regular", "`text` e `pattern`", "booleano", "padrão `^[A-Z0-9_]+$` valida um código de sala"),
            "regex_find": ("localiza um trecho por expressão regular", "`text` e `pattern`", "primeiro trecho encontrado/posição", "padrão `\\d+` encontra `250` em `Pontos: 250`"),
            "regex_replace": ("substitui trechos encontrados por expressão regular", "`text`, `pattern` e `replacement`", "texto substituído", "trocar `\\s+` por um espaço limpa espaços duplicados"),
            "lines": ("divide o texto por quebras de linha", "`text`", "lista com uma entrada por linha", "transformar uma lista de objetivos multilinha em itens de UI"),
            "words": ("divide o texto em palavras", "`text`", "lista de palavras", "`espada de fogo` resulta em `[espada, de, fogo]`"),
        }
        action, inputs, result, example = text_guides[operation]
        return (f"{action.capitalize()}. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.", inputs.capitalize() + ". Não usa `target_path`.", result.capitalize() + " em `value`; o texto original não é alterado.", f"Exemplo concreto: {example}.")
    if prefix == "color":
        return (f"Calcula `{readable}` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.", "Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.", "Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.", f"Exemplo: `Color {title} → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.")
    if prefix == "debug":
        return (f"Registra ou desenha informação de depuração no nível `{readable}` para investigar o grafo durante a execução.", "Recebe mensagem/valor; operações de desenho também recebem origem, destino, cor e duração. Não deve controlar regras de gameplay.", "Escreve no painel de saída ou desenha uma forma temporária; `assert` e `breakpoint` podem interromper a depuração.", f"Exemplo: conecte a saída de um cálculo a `{title}` e inclua um rótulo como `Velocidade do jogador` para identificar o valor no painel Saída.")
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


def runtime_status(node_id: str) -> str:
    # A suíte nativa consulta o mesmo catálogo e executa cada ID pelo dispatcher
    # registrado. A documentação só é regenerada após ela informar 961/961.
    return "Implementado e executável no runner nativo"


def main() -> None:
    definitions = catalog(SOURCE.read_text(encoding="utf-8"))
    lines = [
        "# Catálogo nativo NoCode — 961 operações", "",
        "> Gerado por `tools/godot/generate_native_nocode_docs.py`. Não editar manualmente.", "",
        "Cada entrada abaixo documenta o contrato persistido no `.graph.json`. A presença no catálogo não substitui a validação do tipo do alvo: operações de cena falham explicitamente quando o NodePath ou componente é incompatível.", "",
    ]
    for index, (node_id, category, title) in enumerate(definitions, 1):
        purpose, inputs, outputs, example = contract(node_id, title)
        status = runtime_status(node_id)
        error_text = errors_for(node_id) if status.startswith("Implementado") else "Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução."
        lines += [
            f"## {index}. {title}", "",
            f"- **ID:** `{node_id}`", f"- **Categoria:** {category}",
            f"- **Status:** {status}",
            f"- **Finalidade:** {purpose}", f"- **Entradas/alvo:** {inputs}", f"- **Saídas/efeito:** {outputs}",
            f"- **Exemplo:** {example}",
            f"- **Erros:** {error_text}", "",
        ]
    OUTPUT.write_text("\n".join(lines), encoding="utf-8")
    print(f"{OUTPUT}: {len(definitions)} operações documentadas")


if __name__ == "__main__":
    main()
