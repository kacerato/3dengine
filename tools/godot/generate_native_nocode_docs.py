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
        event_actions = {"scene":"carregar a configuração inicial da fase", "frame":"atualizar movimento ou interface", "object":"alterar o Node recebido no payload", "collision":"aplicar dano ao objeto que colidiu", "trigger":"abrir uma porta ou iniciar uma área", "animation":"encadear a próxima animação", "audio":"atualizar a interface quando o som terminar", "ui":"responder à alteração do controle", "timer":"liberar uma habilidade após o tempo", "network":"mostrar o estado da conexão", "save":"atualizar a tela depois da gravação", "world":"configurar a fase carregada", "custom":"reagir ao evento nomeado", "component":"sincronizar a interface com o componente"}
        use = event_actions.get(subject, "iniciar a resposta de gameplay")
        return (f"Dispara o fluxo quando `{subject}` informa `{action}`. Use este evento para {use} exatamente no momento da ocorrência, sem consultar o estado a cada quadro.", f"Defina o filtro de `{subject}` apresentado pelo evento. Quando houver objeto envolvido, sua referência chega no payload; eventos nomeados recebem o nome esperado.", "Emite `flow` uma vez por ocorrência e entrega o payload específico nos pinos de dados.", f"Mecânica: `{title} → Sequence 2`; na primeira saída, {use}; na segunda, use `Audio Play` ou `UI Set Text` para dar retorno ao jogador.")
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
    if prefix in FAMILY_NAMES:
        family = FAMILY_NAMES[prefix]
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
        parameters = parameter_hints.get(operation, f"`target_path` e `value` de `{readable}` com o tipo indicado no conector")
        return (f"{action.capitalize()} no sistema de {family}. Use este bloco quando a mecânica precisa aplicar `{readable}` ao componente selecionado durante o jogo.", parameters.capitalize() + ".", f"Executa `{readable}` no alvo e, após concluir, libera a saída `flow` para a próxima ação.", f"Mecânica: conecte o evento que inicia a ação a `{title}`, preencha {parameters} e use `flow` para atualizar a interface ou encadear o próximo comportamento.")
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
        return (f"Aplica `{readable}` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.", "`text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.", "Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.", f"Exemplo: conecte `UI Get Text → {title} → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.")
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
