# Runtime NoCode mobile: movimento, câmera e pulo

## Projeto de referência

Abra `godot-fixtures/mobile-nocode-world/project.godot`. A cena contém mundo plano com colisão, `CharacterBody3D`, câmera em terceira pessoa com `SpringArm3D`, controles multitoque e o grafo `main.graph.json`.

## Grafo executado

```text
Ao iniciar ──> Definir velocidade (Player = 6)
Atualizar ──> Mover personagem ──> Girar câmera
Botão "jump" ──> Pular
```

### `world.character_move`

- alvo `../Player`, obrigatoriamente `CharacterBody3D`;
- lê `ui_left/right/up/down`;
- normaliza diagonal, aplica velocidade e gravidade;
- transforma a direção pela rotação Y do `CameraPivot`, portanto frente/trás continuam coerentes depois de girar a câmera;
- chama `move_and_slide()` a cada frame.

### `world.character_look`

- alvo `../Player/CameraPivot`, obrigatoriamente `Node3D`;
- lê `look_left/right/up/down` produzidos pelo arrasto;
- aplica `sensitivity` e limita o eixo vertical entre -65° e 35°.

### `world.character_jump`

- alvo `../Player`;
- aplica `force` somente quando `is_on_floor()`;
- é disparado pelo evento de botão filtrado para `jump`.
- o controle emite `jump_requested`, e `main.gd` encaminha essa entrada para `runner.emit_button("jump")`; a decisão e o impulso continuam dentro do NoCode.

## Zonas de toque

- metade esquerda: joystick flutuante;
- lado direito fora do botão: arrasto de câmera;
- círculo inferior direito: pulo;
- IDs de toque independentes permitem mover, olhar e pular simultaneamente.

## Teste no aparelho

1. execute a cena principal;
2. mova o joystick e confirme alteração de X/Z;
3. arraste o lado direito e confirme giro da câmera;
4. andando, toque em **PULAR** e confirme subida/queda de Y;
5. teste dois dedos simultâneos;
6. importe `main.graph.json`, toque **Organizar** e confirme três cadeias alinhadas.

Se não responder, execute **Validar**, confira os NodePaths acima e confirme as ações `ui_*`, `look_*` e `jump` no `project.godot`.
