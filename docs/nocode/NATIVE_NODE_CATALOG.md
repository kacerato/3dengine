# Catálogo nativo NoCode — 961 operações

> Gerado por `tools/godot/generate_native_nocode_docs.py`. Não editar manualmente.

Cada entrada abaixo documenta o contrato persistido no `.graph.json`. A presença no catálogo não substitui a validação do tipo do alvo: operações de cena falham explicitamente quando o NodePath ou componente é incompatível.

## 1. Start

- **ID:** `event.scene.start`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `scene` informa `start`. Use para inicializar a fase na primeira execução, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Start → Variable Set`, nome `score`, valor `0`; depois `Start → Audio Play`, alvo `../Music`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 2. Ready

- **ID:** `event.scene.ready`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `scene` informa `ready`. Use para configurar objetos assim que a SceneTree terminou de prepará-los, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Ready → Object Find By Name (Player) → Camera Set Target` para ligar a câmera ao personagem existente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 3. Exit

- **ID:** `event.scene.exit`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `scene` informa `exit`. Use para salvar ou liberar estado antes de a cena sair, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Exit → Save Vector3`, chave `player_position`, valor vindo de `Transform Position Get`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 4. Update

- **ID:** `event.frame.update`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `frame` informa `update`. Use para atualizar lógica visual dependente de cada quadro, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Update → Joystick Get Axis → Character Move`, multiplicando velocidade por `Delta` quando necessário.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 5. Fixed Update

- **ID:** `event.frame.fixed_update`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `frame` informa `fixed update`. Use para executar física no passo fixo, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Fixed Update → Add Force`, alvo `../Ball`, força `Vector3(0, 0, -8)`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 6. Touch

- **ID:** `event.object.touch`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `object` informa `touch`. Use para reagir quando um objeto 3D/2D é tocado, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Touch → Material Set Emission`, usando o objeto do payload para destacar o item selecionado.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 7. Click

- **ID:** `event.object.click`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `object` informa `click`. Use para executar uma ação pontual ao clicar em um objeto, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Click → Object Send Event`, evento `inspect`, alvo vindo do objeto clicado.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 8. Enabled

- **ID:** `event.object.enabled`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `object` informa `enabled`. Use para reagir quando um Node volta a processar, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Enabled → Animation Play`, animação `wake_up`, no objeto habilitado.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 9. Disabled

- **ID:** `event.object.disabled`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `object` informa `disabled`. Use para reagir quando um Node deixa de processar, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Disabled → Audio Stop`, alvo de áudio filho do objeto desativado.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 10. Created

- **ID:** `event.object.created`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `object` informa `created`. Use para configurar uma instância recém-criada, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Created → Transform Scale Set`, valor `Vector3(0.5,0.5,0.5)`, alvo vindo do payload.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 11. Destroyed

- **ID:** `event.object.destroyed`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `object` informa `destroyed`. Use para atualizar contadores após remover um objeto, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Destroyed → Variable Add`, nome `enemies_defeated`, quantidade `1`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 12. Button Pressed

- **ID:** `event.input.button_pressed`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara quando uma ação do Input Map ou botão mobile é pressionado. É o evento recomendado para pulo, interação, ataque e botões da interface porque funciona com teclado, controle e toque quando todos estão mapeados para a mesma ação.
- **Entradas/alvo:** `action`: nome configurado no Input Map, por exemplo `jump`; opcionalmente `device` e `button_index`.
- **Saídas/efeito:** Emite `flow` uma vez e disponibiliza ação, dispositivo e intensidade no payload.
- **Exemplo:** Pulo multiplataforma: configure a ação `jump`, conecte `Button Pressed (jump) → Character Jump`, alvo `../Player`, força `6.5`. O mesmo grafo responde à barra de espaço, botão do gamepad e botão touch.
- **Erros:** Se não disparar, verifique foco da janela, nome exato da ação no Input Map, dispositivo selecionado e se outro Control está consumindo o evento.

## 13. Button Released

- **ID:** `event.input.button_released`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `input` informa `button released`. Use para encerrar uma ação quando o botão é solto, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Button Released (aim) → Camera Set FOV`, valor `75`, retornando a visão após mirar.
- **Erros:** Se não disparar, verifique foco da janela, nome exato da ação no Input Map, dispositivo selecionado e se outro Control está consumindo o evento.

## 14. Key Down

- **ID:** `event.input.key_down`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara uma vez no instante em que uma tecla física é pressionada. Use para ações pontuais, como abrir uma porta, pausar, recarregar ou começar a correr; para movimento contínuo enquanto a tecla permanece pressionada, use `Input Keyboard Held`.
- **Entradas/alvo:** `key` ou `physical_keycode`: tecla que deve ativar o fluxo, por exemplo `E`, `Escape` ou `Shift`; opcionalmente use `action` para uma ação configurada no Input Map, como `interact`. O evento não precisa de `target_path`.
- **Saídas/efeito:** Emite `flow` uma vez por pressionamento. O payload informa a tecla recebida, código físico, modificadores (Shift/Ctrl/Alt) e repetição do teclado quando disponíveis.
- **Exemplo:** Abrir uma porta com E: adicione `Key Down`, defina `key = E`, conecte `flow → Object Send Event`, selecione `../Door` como alvo e envie o evento `open`. Ao pressionar E, a porta recebe `open` uma única vez; manter E segurado não repete a ação, salvo se a repetição estiver habilitada.
- **Erros:** Se não disparar, confira se a janela do jogo está em foco, se a tecla física escolhida corresponde ao layout do aparelho e se `action` existe no Input Map. Não use este evento para teclado virtual Android; nesse caso, prefira uma ação ligada a botão touch.

## 15. Key Up

- **ID:** `event.input.key_up`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara uma vez quando uma tecla física é solta. Use para encerrar uma ação iniciada no pressionamento, como parar corrida, soltar um objeto ou finalizar carregamento de ataque.
- **Entradas/alvo:** `key`/`physical_keycode` ou uma `action` do Input Map. Não usa alvo de cena.
- **Saídas/efeito:** Emite `flow` e entrega a tecla e os modificadores no payload.
- **Exemplo:** Corrida com Shift: `Key Down (Shift) → Character Set Speed (9)` e `Key Up (Shift) → Character Set Speed (5)`. O personagem corre somente enquanto Shift estiver apertado.
- **Erros:** Se não disparar, verifique foco da janela, nome exato da ação no Input Map, dispositivo selecionado e se outro Control está consumindo o evento.

## 16. Axis

- **ID:** `event.input.axis`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `input` informa `axis`. Use para receber mudanças de um eixo configurado, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Axis (move_x) → Vector3 Make → Character Move` para dirigir o personagem lateralmente.
- **Erros:** Se não disparar, verifique foco da janela, nome exato da ação no Input Map, dispositivo selecionado e se outro Control está consumindo o evento.

## 17. Down

- **ID:** `event.pointer.down`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `pointer` informa `down`. Use para iniciar interação no instante em que o dedo toca a tela, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Pointer Down → UI Set Position`, levando a mira para `position` do toque.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 18. Up

- **ID:** `event.pointer.up`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `pointer` informa `up`. Use para finalizar uma interação quando o dedo sai da tela, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Pointer Up → Object Send Event`, evento `release`, para soltar o item arrastado.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 19. Move

- **ID:** `event.pointer.move`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `pointer` informa `move`. Use para acompanhar a posição do ponteiro sem exigir arrasto, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Pointer Move → UI Set Position`, alvo `../HUD/Cursor`, valor `position`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 20. Drag

- **ID:** `event.pointer.drag`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara enquanto o usuário arrasta o dedo ou mouse. Use para girar câmera, mover peças, controlar uma mira ou deslizar painéis.
- **Entradas/alvo:** Filtro opcional de dedo/botão e região da tela. O payload fornece posição inicial, posição atual e `delta` desde a última atualização.
- **Saídas/efeito:** Emite `flow`, `position` e `delta` como `Vector2`.
- **Exemplo:** Câmera mobile: `Pointer Drag → Character Look`; conecte `delta` em `look_delta`, selecione `../Player/CameraPivot` e use sensibilidade `0.003`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 21. Enter

- **ID:** `event.collision.enter`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `collision` informa `enter`. Use para agir no primeiro contato entre colliders, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Collision Enter → Variable Add`, nome `health`, quantidade `-10`, usando o corpo atingido do payload.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 22. Stay

- **ID:** `event.collision.stay`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `collision` informa `stay`. Use para aplicar efeito enquanto a colisão continua, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Collision Stay → Add Force`, força `Vector3(0,12,0)`, criando uma corrente de ar.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 23. Exit

- **ID:** `event.collision.exit`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `collision` informa `exit`. Use para agir quando os colliders deixam de se tocar, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Collision Exit → UI Hide`, alvo `../HUD/CollisionHint`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 24. Enter

- **ID:** `event.trigger.enter`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `trigger` informa `enter`. Use para ativar uma área quando um corpo entra, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Trigger Enter → Object Enable`, alvo `../Enemies/AmbushGroup`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 25. Stay

- **ID:** `event.trigger.stay`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `trigger` informa `stay`. Use para manter um efeito enquanto o corpo permanece na área, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Trigger Stay → Variable Add`, nome `oxygen`, quantidade `-0.1 × Delta`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 26. Exit

- **ID:** `event.trigger.exit`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `trigger` informa `exit`. Use para encerrar o efeito quando o corpo sai da área, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Trigger Exit → Object Disable`, alvo `../Zone/DamageEffect`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 27. Started

- **ID:** `event.animation.started`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `animation` informa `started`. Use para sincronizar efeitos com o começo de uma animação, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Animation Started (attack) → Audio Play`, alvo `../SwordSwing`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 28. Finished

- **ID:** `event.animation.finished`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `animation` informa `finished`. Use para encadear estado após uma animação terminar, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Animation Finished (death) → Object Destroy`, alvo do personagem que terminou a animação.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 29. Finished

- **ID:** `event.audio.finished`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `audio` informa `finished`. Use para continuar uma sequência quando o áudio termina, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Audio Finished → World Load`, cena `res://levels/next_level.tscn` após a narração.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 30. Focused

- **ID:** `event.ui.focused`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `ui` informa `focused`. Use para mostrar ajuda para o controle de interface selecionado, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `UI Focused → UI Set Text`, alvo `../Help`, texto `Pressione para confirmar`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 31. Value Changed

- **ID:** `event.ui.value_changed`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `ui` informa `value changed`. Use para aplicar imediatamente o novo valor de slider/campo, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Value Changed → Audio Set Volume`, conectando `value` ao volume do bus principal.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 32. Elapsed

- **ID:** `event.timer.elapsed`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `timer` informa `elapsed`. Use para executar algo quando uma contagem nomeada termina, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Timer Elapsed (spawn_delay) → Object Create`, cena `res://enemy.tscn`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 33. Connected

- **ID:** `event.network.connected`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `network` informa `connected`. Use para liberar recursos online após conectar, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Connected → UI Set Text`, texto `Online`, alvo `../HUD/NetworkStatus`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 34. Disconnected

- **ID:** `event.network.disconnected`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `network` informa `disconnected`. Use para bloquear ações online e informar perda de conexão, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Disconnected → UI Open Panel`, alvo `../HUD/ReconnectPanel`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 35. Loaded

- **ID:** `event.save.loaded`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `save` informa `loaded`. Use para aplicar dados depois que um save foi carregado, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Save Loaded → Transform Position Set`, alvo `../Player`, valor `player_position` carregado.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 36. Completed

- **ID:** `event.save.completed`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `save` informa `completed`. Use para confirmar visualmente uma gravação concluída, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Save Completed → UI Toast`, texto `Jogo salvo`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 37. Loaded

- **ID:** `event.world.loaded`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `world` informa `loaded`. Use para preparar uma fase depois do carregamento, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `World Loaded → Object Find By Tag (spawn) → Transform Position Set` para posicionar o jogador.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 38. Unloaded

- **ID:** `event.world.unloaded`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `world` informa `unloaded`. Use para limpar estado ligado ao mundo removido, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `World Unloaded → List Object Clear`, lista `tracked_enemies`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 39. Received

- **ID:** `event.custom.received`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `custom` informa `received`. Use para receber uma mensagem definida pelo próprio projeto, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Custom Received (quest_complete) → UI Open Panel`, alvo `../HUD/QuestReward`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 40. Changed

- **ID:** `event.component.changed`
- **Categoria:** Eventos
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara o fluxo quando `component` informa `changed`. Use para sincronizar sistemas quando uma propriedade muda, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Component Changed (health) → UI Set Value`, alvo `../HUD/HealthBar`, valor do payload.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 41. Sequência 2

- **ID:** `flow.sequence.2`
- **Categoria:** Fluxo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa 2 ramificações de fluxo em ordem, da saída 1 até a 2.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 2 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 2` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 42. Sequência 3

- **ID:** `flow.sequence.3`
- **Categoria:** Fluxo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa 3 ramificações de fluxo em ordem, da saída 1 até a 3.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 3 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 3` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 43. Sequência 4

- **ID:** `flow.sequence.4`
- **Categoria:** Fluxo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa 4 ramificações de fluxo em ordem, da saída 1 até a 4.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 4 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 4` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 44. Sequência 5

- **ID:** `flow.sequence.5`
- **Categoria:** Fluxo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa 5 ramificações de fluxo em ordem, da saída 1 até a 5.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 5 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 5` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 45. Sequência 6

- **ID:** `flow.sequence.6`
- **Categoria:** Fluxo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa 6 ramificações de fluxo em ordem, da saída 1 até a 6.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 6 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 6` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 46. Sequência 8

- **ID:** `flow.sequence.8`
- **Categoria:** Fluxo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa 8 ramificações de fluxo em ordem, da saída 1 até a 8.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 8 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 8` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 47. Sequência 10

- **ID:** `flow.sequence.10`
- **Categoria:** Fluxo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa 10 ramificações de fluxo em ordem, da saída 1 até a 10.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 10 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 10` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 48. Sequência 12

- **ID:** `flow.sequence.12`
- **Categoria:** Fluxo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa 12 ramificações de fluxo em ordem, da saída 1 até a 12.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 12 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 12` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 49. Branch

- **ID:** `flow.branch`
- **Categoria:** Fluxo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Controla a ordem do grafo: escolhe entre as saídas True e False usando uma condição booleana.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Branch`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 50. Gate

- **ID:** `flow.gate`
- **Categoria:** Fluxo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Controla a ordem do grafo: abre ou fecha a passagem de pulsos sem desconectar o grafo.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Gate`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 51. Once

- **ID:** `flow.once`
- **Categoria:** Fluxo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Controla a ordem do grafo: deixa o fluxo passar somente na primeira chamada até ser reiniciado.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Once`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 52. Do N

- **ID:** `flow.do_n`
- **Categoria:** Fluxo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Controla a ordem do grafo: limita a passagem do fluxo a uma quantidade configurada.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Do N`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 53. While

- **ID:** `flow.while`
- **Categoria:** Fluxo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Controla a ordem do grafo: repete o corpo enquanto a condição permanecer verdadeira, respeitando o limite de segurança.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → While`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 54. For

- **ID:** `flow.for`
- **Categoria:** Fluxo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Controla a ordem do grafo: repete usando índice inicial, final e passo.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → For`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 55. Foreach

- **ID:** `flow.foreach`
- **Categoria:** Fluxo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Controla a ordem do grafo: executa o corpo uma vez para cada item de uma lista.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Foreach`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 56. Delay

- **ID:** `flow.delay`
- **Categoria:** Fluxo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Controla a ordem do grafo: continua o fluxo após uma duração.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Delay`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 57. Debounce

- **ID:** `flow.debounce`
- **Categoria:** Fluxo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Controla a ordem do grafo: executa somente depois que chamadas rápidas pararem.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Debounce`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 58. Throttle

- **ID:** `flow.throttle`
- **Categoria:** Fluxo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Controla a ordem do grafo: limita quantas vezes um fluxo pode executar por intervalo.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Throttle`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 59. Race

- **ID:** `flow.race`
- **Categoria:** Fluxo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Controla a ordem do grafo: executa caminhos concorrentes e continua com o primeiro que terminar.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Race`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 60. Parallel

- **ID:** `flow.parallel`
- **Categoria:** Fluxo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Controla a ordem do grafo: inicia vários caminhos no mesmo disparo.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Parallel`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 61. Cancel

- **ID:** `flow.cancel`
- **Categoria:** Fluxo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Controla a ordem do grafo: cancela uma execução atrasada ou concorrente identificada.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Cancel`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 62. Break

- **ID:** `flow.break`
- **Categoria:** Fluxo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Controla a ordem do grafo: encerra o laço atual.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Break`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 63. Continue

- **ID:** `flow.continue`
- **Categoria:** Fluxo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Controla a ordem do grafo: pula o restante da iteração e inicia a próxima.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Continue`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 64. Switch Bool

- **ID:** `flow.switch_bool`
- **Categoria:** Fluxo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Controla a ordem do grafo: encaminha um booleano para uma saída nomeada.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Switch Bool`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 65. Switch Number

- **ID:** `flow.switch_number`
- **Categoria:** Fluxo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Controla a ordem do grafo: encaminha um número para o caso correspondente.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Switch Number`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 66. Switch Text

- **ID:** `flow.switch_text`
- **Categoria:** Fluxo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Controla a ordem do grafo: encaminha um texto para o caso correspondente.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Switch Text`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 67. Switch Object

- **ID:** `flow.switch_object`
- **Categoria:** Fluxo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Controla a ordem do grafo: encaminha um objeto para o caso correspondente.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Switch Object`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 68. Flip Flop

- **ID:** `flow.flip_flop`
- **Categoria:** Fluxo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Controla a ordem do grafo: alterna entre as saídas A e B a cada disparo.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Flip Flop`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 69. Pressed

- **ID:** `input.keyboard.pressed`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `keyboard`, detecta o instante em que o controle é pressionado. Use para inicie um ataque sem repeti-lo enquanto o botão estiver segurado.
- **Entradas/alvo:** `action`/botão e índice opcional do dispositivo.
- **Saídas/efeito:** `true` somente no primeiro quadro em `value`.
- **Exemplo:** Mecânica: `Update → Pressed`; conecte `value` a um `Branch`, movimento, câmera ou UI para inicie um ataque sem repeti-lo enquanto o botão estiver segurado.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 70. Released

- **ID:** `input.keyboard.released`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `keyboard`, detecta o instante em que o controle é solto. Use para solte uma flecha depois de carregar o arco.
- **Entradas/alvo:** `action`/botão e índice opcional.
- **Saídas/efeito:** `true` no quadro da liberação em `value`.
- **Exemplo:** Mecânica: `Update → Released`; conecte `value` a um `Branch`, movimento, câmera ou UI para solte uma flecha depois de carregar o arco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 71. Held

- **ID:** `input.keyboard.held`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `keyboard`, informa se o controle continua pressionado. Use para mantenha corrida ou disparo contínuo enquanto houver pressão.
- **Entradas/alvo:** `action`/botão.
- **Saídas/efeito:** Booleano atualizado a cada quadro em `value`.
- **Exemplo:** Mecânica: `Update → Held`; conecte `value` a um `Branch`, movimento, câmera ou UI para mantenha corrida ou disparo contínuo enquanto houver pressão.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 72. Axis

- **ID:** `input.keyboard.axis`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `keyboard`, lê um eixo analógico ou par negativo/positivo. Use para controle movimento ou direção com joystick/teclas.
- **Entradas/alvo:** Ações negativa e positiva, eixo e dispositivo.
- **Saídas/efeito:** Número entre `-1.0` e `1.0` em `value`.
- **Exemplo:** Mecânica: `Update → Axis`; conecte `value` a um `Branch`, movimento, câmera ou UI para controle movimento ou direção com joystick/teclas.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 73. Position

- **ID:** `input.keyboard.position`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `keyboard`, lê a posição atual do ponteiro/toque. Use para posicione uma mira onde o jogador toca.
- **Entradas/alvo:** Índice do toque ou ponteiro.
- **Saídas/efeito:** `vector2` em pixels da viewport em `value`.
- **Exemplo:** Mecânica: `Update → Position`; conecte `value` a um `Branch`, movimento, câmera ou UI para posicione uma mira onde o jogador toca.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 74. Delta

- **ID:** `input.keyboard.delta`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `keyboard`, lê quanto o ponteiro/toque se moveu. Use para gire a câmera pela distância arrastada.
- **Entradas/alvo:** Índice do toque ou ponteiro.
- **Saídas/efeito:** `vector2` desde a leitura anterior em `value`.
- **Exemplo:** Mecânica: `Update → Delta`; conecte `value` a um `Branch`, movimento, câmera ou UI para gire a câmera pela distância arrastada.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 75. Pressure

- **ID:** `input.keyboard.pressure`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `keyboard`, lê a intensidade de pressão disponível. Use para varie a espessura de pintura ou força de uma ação.
- **Entradas/alvo:** Índice do toque/caneta.
- **Saídas/efeito:** Número normalmente entre `0.0` e `1.0` em `value`.
- **Exemplo:** Mecânica: `Update → Pressure`; conecte `value` a um `Branch`, movimento, câmera ou UI para varie a espessura de pintura ou força de uma ação.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 76. Count

- **ID:** `input.keyboard.count`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `keyboard`, conta controles/toques ativos. Use para ative gesto de zoom somente com dois dedos.
- **Entradas/alvo:** Tipo ou índice do dispositivo quando disponível.
- **Saídas/efeito:** Quantidade inteira em `value`.
- **Exemplo:** Mecânica: `Update → Count`; conecte `value` a um `Branch`, movimento, câmera ou UI para ative gesto de zoom somente com dois dedos.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 77. Available

- **ID:** `input.keyboard.available`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `keyboard`, verifica se o dispositivo/recurso existe. Use para mostre controles touch quando não houver gamepad.
- **Entradas/alvo:** Índice opcional do dispositivo.
- **Saídas/efeito:** Booleano em `value`.
- **Exemplo:** Mecânica: `Update → Available`; conecte `value` a um `Branch`, movimento, câmera ou UI para mostre controles touch quando não houver gamepad.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 78. Name

- **ID:** `input.keyboard.name`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `keyboard`, obtém o nome apresentado pelo dispositivo. Use para mostre `Xbox Controller` na tela de controles.
- **Entradas/alvo:** Índice do dispositivo.
- **Saídas/efeito:** Texto com o nome em `value`.
- **Exemplo:** Mecânica: `Update → Name`; conecte `value` a um `Branch`, movimento, câmera ou UI para mostre `Xbox Controller` na tela de controles.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 79. Pressed

- **ID:** `input.mouse.pressed`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `mouse`, detecta o instante em que o controle é pressionado. Use para inicie um ataque sem repeti-lo enquanto o botão estiver segurado.
- **Entradas/alvo:** `action`/botão e índice opcional do dispositivo.
- **Saídas/efeito:** `true` somente no primeiro quadro em `value`.
- **Exemplo:** Mecânica: `Update → Pressed`; conecte `value` a um `Branch`, movimento, câmera ou UI para inicie um ataque sem repeti-lo enquanto o botão estiver segurado.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 80. Released

- **ID:** `input.mouse.released`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `mouse`, detecta o instante em que o controle é solto. Use para solte uma flecha depois de carregar o arco.
- **Entradas/alvo:** `action`/botão e índice opcional.
- **Saídas/efeito:** `true` no quadro da liberação em `value`.
- **Exemplo:** Mecânica: `Update → Released`; conecte `value` a um `Branch`, movimento, câmera ou UI para solte uma flecha depois de carregar o arco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 81. Held

- **ID:** `input.mouse.held`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `mouse`, informa se o controle continua pressionado. Use para mantenha corrida ou disparo contínuo enquanto houver pressão.
- **Entradas/alvo:** `action`/botão.
- **Saídas/efeito:** Booleano atualizado a cada quadro em `value`.
- **Exemplo:** Mecânica: `Update → Held`; conecte `value` a um `Branch`, movimento, câmera ou UI para mantenha corrida ou disparo contínuo enquanto houver pressão.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 82. Axis

- **ID:** `input.mouse.axis`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `mouse`, lê um eixo analógico ou par negativo/positivo. Use para controle movimento ou direção com joystick/teclas.
- **Entradas/alvo:** Ações negativa e positiva, eixo e dispositivo.
- **Saídas/efeito:** Número entre `-1.0` e `1.0` em `value`.
- **Exemplo:** Mecânica: `Update → Axis`; conecte `value` a um `Branch`, movimento, câmera ou UI para controle movimento ou direção com joystick/teclas.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 83. Position

- **ID:** `input.mouse.position`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `mouse`, lê a posição atual do ponteiro/toque. Use para posicione uma mira onde o jogador toca.
- **Entradas/alvo:** Índice do toque ou ponteiro.
- **Saídas/efeito:** `vector2` em pixels da viewport em `value`.
- **Exemplo:** Mecânica: `Update → Position`; conecte `value` a um `Branch`, movimento, câmera ou UI para posicione uma mira onde o jogador toca.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 84. Delta

- **ID:** `input.mouse.delta`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `mouse`, lê quanto o ponteiro/toque se moveu. Use para gire a câmera pela distância arrastada.
- **Entradas/alvo:** Índice do toque ou ponteiro.
- **Saídas/efeito:** `vector2` desde a leitura anterior em `value`.
- **Exemplo:** Mecânica: `Update → Delta`; conecte `value` a um `Branch`, movimento, câmera ou UI para gire a câmera pela distância arrastada.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 85. Pressure

- **ID:** `input.mouse.pressure`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `mouse`, lê a intensidade de pressão disponível. Use para varie a espessura de pintura ou força de uma ação.
- **Entradas/alvo:** Índice do toque/caneta.
- **Saídas/efeito:** Número normalmente entre `0.0` e `1.0` em `value`.
- **Exemplo:** Mecânica: `Update → Pressure`; conecte `value` a um `Branch`, movimento, câmera ou UI para varie a espessura de pintura ou força de uma ação.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 86. Count

- **ID:** `input.mouse.count`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `mouse`, conta controles/toques ativos. Use para ative gesto de zoom somente com dois dedos.
- **Entradas/alvo:** Tipo ou índice do dispositivo quando disponível.
- **Saídas/efeito:** Quantidade inteira em `value`.
- **Exemplo:** Mecânica: `Update → Count`; conecte `value` a um `Branch`, movimento, câmera ou UI para ative gesto de zoom somente com dois dedos.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 87. Available

- **ID:** `input.mouse.available`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `mouse`, verifica se o dispositivo/recurso existe. Use para mostre controles touch quando não houver gamepad.
- **Entradas/alvo:** Índice opcional do dispositivo.
- **Saídas/efeito:** Booleano em `value`.
- **Exemplo:** Mecânica: `Update → Available`; conecte `value` a um `Branch`, movimento, câmera ou UI para mostre controles touch quando não houver gamepad.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 88. Name

- **ID:** `input.mouse.name`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `mouse`, obtém o nome apresentado pelo dispositivo. Use para mostre `Xbox Controller` na tela de controles.
- **Entradas/alvo:** Índice do dispositivo.
- **Saídas/efeito:** Texto com o nome em `value`.
- **Exemplo:** Mecânica: `Update → Name`; conecte `value` a um `Branch`, movimento, câmera ou UI para mostre `Xbox Controller` na tela de controles.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 89. Pressed

- **ID:** `input.touch.pressed`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `touch`, detecta o instante em que o controle é pressionado. Use para inicie um ataque sem repeti-lo enquanto o botão estiver segurado.
- **Entradas/alvo:** `action`/botão e índice opcional do dispositivo.
- **Saídas/efeito:** `true` somente no primeiro quadro em `value`.
- **Exemplo:** Mecânica: `Update → Pressed`; conecte `value` a um `Branch`, movimento, câmera ou UI para inicie um ataque sem repeti-lo enquanto o botão estiver segurado.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 90. Released

- **ID:** `input.touch.released`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `touch`, detecta o instante em que o controle é solto. Use para solte uma flecha depois de carregar o arco.
- **Entradas/alvo:** `action`/botão e índice opcional.
- **Saídas/efeito:** `true` no quadro da liberação em `value`.
- **Exemplo:** Mecânica: `Update → Released`; conecte `value` a um `Branch`, movimento, câmera ou UI para solte uma flecha depois de carregar o arco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 91. Held

- **ID:** `input.touch.held`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `touch`, informa se o controle continua pressionado. Use para mantenha corrida ou disparo contínuo enquanto houver pressão.
- **Entradas/alvo:** `action`/botão.
- **Saídas/efeito:** Booleano atualizado a cada quadro em `value`.
- **Exemplo:** Mecânica: `Update → Held`; conecte `value` a um `Branch`, movimento, câmera ou UI para mantenha corrida ou disparo contínuo enquanto houver pressão.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 92. Axis

- **ID:** `input.touch.axis`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `touch`, lê um eixo analógico ou par negativo/positivo. Use para controle movimento ou direção com joystick/teclas.
- **Entradas/alvo:** Ações negativa e positiva, eixo e dispositivo.
- **Saídas/efeito:** Número entre `-1.0` e `1.0` em `value`.
- **Exemplo:** Mecânica: `Update → Axis`; conecte `value` a um `Branch`, movimento, câmera ou UI para controle movimento ou direção com joystick/teclas.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 93. Position

- **ID:** `input.touch.position`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `touch`, lê a posição atual do ponteiro/toque. Use para posicione uma mira onde o jogador toca.
- **Entradas/alvo:** Índice do toque ou ponteiro.
- **Saídas/efeito:** `vector2` em pixels da viewport em `value`.
- **Exemplo:** Mecânica: `Update → Position`; conecte `value` a um `Branch`, movimento, câmera ou UI para posicione uma mira onde o jogador toca.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 94. Delta

- **ID:** `input.touch.delta`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `touch`, lê quanto o ponteiro/toque se moveu. Use para gire a câmera pela distância arrastada.
- **Entradas/alvo:** Índice do toque ou ponteiro.
- **Saídas/efeito:** `vector2` desde a leitura anterior em `value`.
- **Exemplo:** Mecânica: `Update → Delta`; conecte `value` a um `Branch`, movimento, câmera ou UI para gire a câmera pela distância arrastada.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 95. Pressure

- **ID:** `input.touch.pressure`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `touch`, lê a intensidade de pressão disponível. Use para varie a espessura de pintura ou força de uma ação.
- **Entradas/alvo:** Índice do toque/caneta.
- **Saídas/efeito:** Número normalmente entre `0.0` e `1.0` em `value`.
- **Exemplo:** Mecânica: `Update → Pressure`; conecte `value` a um `Branch`, movimento, câmera ou UI para varie a espessura de pintura ou força de uma ação.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 96. Count

- **ID:** `input.touch.count`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `touch`, conta controles/toques ativos. Use para ative gesto de zoom somente com dois dedos.
- **Entradas/alvo:** Tipo ou índice do dispositivo quando disponível.
- **Saídas/efeito:** Quantidade inteira em `value`.
- **Exemplo:** Mecânica: `Update → Count`; conecte `value` a um `Branch`, movimento, câmera ou UI para ative gesto de zoom somente com dois dedos.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 97. Available

- **ID:** `input.touch.available`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `touch`, verifica se o dispositivo/recurso existe. Use para mostre controles touch quando não houver gamepad.
- **Entradas/alvo:** Índice opcional do dispositivo.
- **Saídas/efeito:** Booleano em `value`.
- **Exemplo:** Mecânica: `Update → Available`; conecte `value` a um `Branch`, movimento, câmera ou UI para mostre controles touch quando não houver gamepad.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 98. Name

- **ID:** `input.touch.name`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `touch`, obtém o nome apresentado pelo dispositivo. Use para mostre `Xbox Controller` na tela de controles.
- **Entradas/alvo:** Índice do dispositivo.
- **Saídas/efeito:** Texto com o nome em `value`.
- **Exemplo:** Mecânica: `Update → Name`; conecte `value` a um `Branch`, movimento, câmera ou UI para mostre `Xbox Controller` na tela de controles.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 99. Pressed

- **ID:** `input.gamepad.pressed`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `gamepad`, detecta o instante em que o controle é pressionado. Use para inicie um ataque sem repeti-lo enquanto o botão estiver segurado.
- **Entradas/alvo:** `action`/botão e índice opcional do dispositivo.
- **Saídas/efeito:** `true` somente no primeiro quadro em `value`.
- **Exemplo:** Mecânica: `Update → Pressed`; conecte `value` a um `Branch`, movimento, câmera ou UI para inicie um ataque sem repeti-lo enquanto o botão estiver segurado.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 100. Released

- **ID:** `input.gamepad.released`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `gamepad`, detecta o instante em que o controle é solto. Use para solte uma flecha depois de carregar o arco.
- **Entradas/alvo:** `action`/botão e índice opcional.
- **Saídas/efeito:** `true` no quadro da liberação em `value`.
- **Exemplo:** Mecânica: `Update → Released`; conecte `value` a um `Branch`, movimento, câmera ou UI para solte uma flecha depois de carregar o arco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 101. Held

- **ID:** `input.gamepad.held`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `gamepad`, informa se o controle continua pressionado. Use para mantenha corrida ou disparo contínuo enquanto houver pressão.
- **Entradas/alvo:** `action`/botão.
- **Saídas/efeito:** Booleano atualizado a cada quadro em `value`.
- **Exemplo:** Mecânica: `Update → Held`; conecte `value` a um `Branch`, movimento, câmera ou UI para mantenha corrida ou disparo contínuo enquanto houver pressão.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 102. Axis

- **ID:** `input.gamepad.axis`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `gamepad`, lê um eixo analógico ou par negativo/positivo. Use para controle movimento ou direção com joystick/teclas.
- **Entradas/alvo:** Ações negativa e positiva, eixo e dispositivo.
- **Saídas/efeito:** Número entre `-1.0` e `1.0` em `value`.
- **Exemplo:** Mecânica: `Update → Axis`; conecte `value` a um `Branch`, movimento, câmera ou UI para controle movimento ou direção com joystick/teclas.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 103. Position

- **ID:** `input.gamepad.position`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `gamepad`, lê a posição atual do ponteiro/toque. Use para posicione uma mira onde o jogador toca.
- **Entradas/alvo:** Índice do toque ou ponteiro.
- **Saídas/efeito:** `vector2` em pixels da viewport em `value`.
- **Exemplo:** Mecânica: `Update → Position`; conecte `value` a um `Branch`, movimento, câmera ou UI para posicione uma mira onde o jogador toca.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 104. Delta

- **ID:** `input.gamepad.delta`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `gamepad`, lê quanto o ponteiro/toque se moveu. Use para gire a câmera pela distância arrastada.
- **Entradas/alvo:** Índice do toque ou ponteiro.
- **Saídas/efeito:** `vector2` desde a leitura anterior em `value`.
- **Exemplo:** Mecânica: `Update → Delta`; conecte `value` a um `Branch`, movimento, câmera ou UI para gire a câmera pela distância arrastada.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 105. Pressure

- **ID:** `input.gamepad.pressure`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `gamepad`, lê a intensidade de pressão disponível. Use para varie a espessura de pintura ou força de uma ação.
- **Entradas/alvo:** Índice do toque/caneta.
- **Saídas/efeito:** Número normalmente entre `0.0` e `1.0` em `value`.
- **Exemplo:** Mecânica: `Update → Pressure`; conecte `value` a um `Branch`, movimento, câmera ou UI para varie a espessura de pintura ou força de uma ação.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 106. Count

- **ID:** `input.gamepad.count`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `gamepad`, conta controles/toques ativos. Use para ative gesto de zoom somente com dois dedos.
- **Entradas/alvo:** Tipo ou índice do dispositivo quando disponível.
- **Saídas/efeito:** Quantidade inteira em `value`.
- **Exemplo:** Mecânica: `Update → Count`; conecte `value` a um `Branch`, movimento, câmera ou UI para ative gesto de zoom somente com dois dedos.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 107. Available

- **ID:** `input.gamepad.available`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `gamepad`, verifica se o dispositivo/recurso existe. Use para mostre controles touch quando não houver gamepad.
- **Entradas/alvo:** Índice opcional do dispositivo.
- **Saídas/efeito:** Booleano em `value`.
- **Exemplo:** Mecânica: `Update → Available`; conecte `value` a um `Branch`, movimento, câmera ou UI para mostre controles touch quando não houver gamepad.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 108. Name

- **ID:** `input.gamepad.name`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `gamepad`, obtém o nome apresentado pelo dispositivo. Use para mostre `Xbox Controller` na tela de controles.
- **Entradas/alvo:** Índice do dispositivo.
- **Saídas/efeito:** Texto com o nome em `value`.
- **Exemplo:** Mecânica: `Update → Name`; conecte `value` a um `Branch`, movimento, câmera ou UI para mostre `Xbox Controller` na tela de controles.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 109. Pressed

- **ID:** `input.sensor.pressed`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `sensor`, detecta o instante em que o controle é pressionado. Use para inicie um ataque sem repeti-lo enquanto o botão estiver segurado.
- **Entradas/alvo:** `action`/botão e índice opcional do dispositivo.
- **Saídas/efeito:** `true` somente no primeiro quadro em `value`.
- **Exemplo:** Mecânica: `Update → Pressed`; conecte `value` a um `Branch`, movimento, câmera ou UI para inicie um ataque sem repeti-lo enquanto o botão estiver segurado.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 110. Released

- **ID:** `input.sensor.released`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `sensor`, detecta o instante em que o controle é solto. Use para solte uma flecha depois de carregar o arco.
- **Entradas/alvo:** `action`/botão e índice opcional.
- **Saídas/efeito:** `true` no quadro da liberação em `value`.
- **Exemplo:** Mecânica: `Update → Released`; conecte `value` a um `Branch`, movimento, câmera ou UI para solte uma flecha depois de carregar o arco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 111. Held

- **ID:** `input.sensor.held`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `sensor`, informa se o controle continua pressionado. Use para mantenha corrida ou disparo contínuo enquanto houver pressão.
- **Entradas/alvo:** `action`/botão.
- **Saídas/efeito:** Booleano atualizado a cada quadro em `value`.
- **Exemplo:** Mecânica: `Update → Held`; conecte `value` a um `Branch`, movimento, câmera ou UI para mantenha corrida ou disparo contínuo enquanto houver pressão.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 112. Axis

- **ID:** `input.sensor.axis`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `sensor`, lê um eixo analógico ou par negativo/positivo. Use para controle movimento ou direção com joystick/teclas.
- **Entradas/alvo:** Ações negativa e positiva, eixo e dispositivo.
- **Saídas/efeito:** Número entre `-1.0` e `1.0` em `value`.
- **Exemplo:** Mecânica: `Update → Axis`; conecte `value` a um `Branch`, movimento, câmera ou UI para controle movimento ou direção com joystick/teclas.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 113. Position

- **ID:** `input.sensor.position`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `sensor`, lê a posição atual do ponteiro/toque. Use para posicione uma mira onde o jogador toca.
- **Entradas/alvo:** Índice do toque ou ponteiro.
- **Saídas/efeito:** `vector2` em pixels da viewport em `value`.
- **Exemplo:** Mecânica: `Update → Position`; conecte `value` a um `Branch`, movimento, câmera ou UI para posicione uma mira onde o jogador toca.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 114. Delta

- **ID:** `input.sensor.delta`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `sensor`, lê quanto o ponteiro/toque se moveu. Use para gire a câmera pela distância arrastada.
- **Entradas/alvo:** Índice do toque ou ponteiro.
- **Saídas/efeito:** `vector2` desde a leitura anterior em `value`.
- **Exemplo:** Mecânica: `Update → Delta`; conecte `value` a um `Branch`, movimento, câmera ou UI para gire a câmera pela distância arrastada.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 115. Pressure

- **ID:** `input.sensor.pressure`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `sensor`, lê a intensidade de pressão disponível. Use para varie a espessura de pintura ou força de uma ação.
- **Entradas/alvo:** Índice do toque/caneta.
- **Saídas/efeito:** Número normalmente entre `0.0` e `1.0` em `value`.
- **Exemplo:** Mecânica: `Update → Pressure`; conecte `value` a um `Branch`, movimento, câmera ou UI para varie a espessura de pintura ou força de uma ação.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 116. Count

- **ID:** `input.sensor.count`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `sensor`, conta controles/toques ativos. Use para ative gesto de zoom somente com dois dedos.
- **Entradas/alvo:** Tipo ou índice do dispositivo quando disponível.
- **Saídas/efeito:** Quantidade inteira em `value`.
- **Exemplo:** Mecânica: `Update → Count`; conecte `value` a um `Branch`, movimento, câmera ou UI para ative gesto de zoom somente com dois dedos.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 117. Available

- **ID:** `input.sensor.available`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `sensor`, verifica se o dispositivo/recurso existe. Use para mostre controles touch quando não houver gamepad.
- **Entradas/alvo:** Índice opcional do dispositivo.
- **Saídas/efeito:** Booleano em `value`.
- **Exemplo:** Mecânica: `Update → Available`; conecte `value` a um `Branch`, movimento, câmera ou UI para mostre controles touch quando não houver gamepad.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 118. Name

- **ID:** `input.sensor.name`
- **Categoria:** Entrada
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** No dispositivo `sensor`, obtém o nome apresentado pelo dispositivo. Use para mostre `Xbox Controller` na tela de controles.
- **Entradas/alvo:** Índice do dispositivo.
- **Saídas/efeito:** Texto com o nome em `value`.
- **Exemplo:** Mecânica: `Update → Name`; conecte `value` a um `Branch`, movimento, câmera ou UI para mostre `Xbox Controller` na tela de controles.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 119. Add

- **ID:** `math.number.add`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `add` para valores do tipo number; use para somar 100 pontos à pontuação. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Add` e leve `result` a `Variable Set` ou `UI Set Text` para somar 100 pontos à pontuação.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 120. Subtract

- **ID:** `math.number.subtract`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `subtract` para valores do tipo number; use para retirar dano da vida. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Subtract` e leve `result` a `Variable Set` ou `UI Set Text` para retirar dano da vida.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 121. Multiply

- **ID:** `math.number.multiply`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `multiply` para valores do tipo number; use para aplicar um multiplicador de dano. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Multiply` e leve `result` a `Variable Set` ou `UI Set Text` para aplicar um multiplicador de dano.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 122. Divide

- **ID:** `math.number.divide`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `divide` para valores do tipo number; use para calcular a média por jogador. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Divide` e leve `result` a `Variable Set` ou `UI Set Text` para calcular a média por jogador.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 123. Modulo

- **ID:** `math.number.modulo`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `modulo` para valores do tipo number; use para executar algo a cada N quadros. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Modulo` e leve `result` a `Variable Set` ou `UI Set Text` para executar algo a cada N quadros.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 124. Power

- **ID:** `math.number.power`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `power` para valores do tipo number; use para criar uma curva exponencial. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Power` e leve `result` a `Variable Set` ou `UI Set Text` para criar uma curva exponencial.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 125. Minimum

- **ID:** `math.number.minimum`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `minimum` para valores do tipo number; use para limitar ao menor valor. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Minimum` e leve `result` a `Variable Set` ou `UI Set Text` para limitar ao menor valor.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 126. Maximum

- **ID:** `math.number.maximum`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `maximum` para valores do tipo number; use para garantir um valor mínimo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Maximum` e leve `result` a `Variable Set` ou `UI Set Text` para garantir um valor mínimo.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 127. Average

- **ID:** `math.number.average`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `average` para valores do tipo number; use para calcular média de valores. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Average` e leve `result` a `Variable Set` ou `UI Set Text` para calcular média de valores.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 128. Atan2

- **ID:** `math.number.atan2`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `atan2` para valores do tipo number; use para calcular atan2 antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Atan2` e leve `result` a `Variable Set` ou `UI Set Text` para calcular atan2 antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 129. Log Base

- **ID:** `math.number.log_base`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `log base` para valores do tipo number; use para calcular log base antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Log Base` e leve `result` a `Variable Set` ou `UI Set Text` para calcular log base antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 130. Copy Sign

- **ID:** `math.number.copy_sign`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `copy sign` para valores do tipo number; use para calcular copy sign antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Copy Sign` e leve `result` a `Variable Set` ou `UI Set Text` para calcular copy sign antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 131. Absolute

- **ID:** `math.number.absolute`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `absolute` para valores do tipo number; use para remover o sinal. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor number de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Absolute` e leve `result` a `Variable Set` ou `UI Set Text` para remover o sinal.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 132. Negative

- **ID:** `math.number.negative`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `negative` para valores do tipo number; use para inverter direção/sinal. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor number de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Negative` e leve `result` a `Variable Set` ou `UI Set Text` para inverter direção/sinal.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 133. Sqrt

- **ID:** `math.number.sqrt`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `sqrt` para valores do tipo number; use para obter uma raiz. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor number de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Sqrt` e leve `result` a `Variable Set` ou `UI Set Text` para obter uma raiz.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 134. Cube Root

- **ID:** `math.number.cube_root`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `cube root` para valores do tipo number; use para calcular cube root antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Cube Root` e leve `result` a `Variable Set` ou `UI Set Text` para calcular cube root antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 135. Exp

- **ID:** `math.number.exp`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `exp` para valores do tipo number; use para calcular exp antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Exp` e leve `result` a `Variable Set` ou `UI Set Text` para calcular exp antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 136. Log

- **ID:** `math.number.log`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `log` para valores do tipo number; use para calcular log antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Log` e leve `result` a `Variable Set` ou `UI Set Text` para calcular log antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 137. Log10

- **ID:** `math.number.log10`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `log10` para valores do tipo number; use para calcular log10 antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Log10` e leve `result` a `Variable Set` ou `UI Set Text` para calcular log10 antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 138. Floor

- **ID:** `math.number.floor`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `floor` para valores do tipo number; use para arredondar para baixo. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor number de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Floor` e leve `result` a `Variable Set` ou `UI Set Text` para arredondar para baixo.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 139. Ceil

- **ID:** `math.number.ceil`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `ceil` para valores do tipo number; use para arredondar para cima. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor number de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Ceil` e leve `result` a `Variable Set` ou `UI Set Text` para arredondar para cima.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 140. Round

- **ID:** `math.number.round`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `round` para valores do tipo number; use para arredondar ao inteiro mais próximo. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor number de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Round` e leve `result` a `Variable Set` ou `UI Set Text` para arredondar ao inteiro mais próximo.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 141. Truncate

- **ID:** `math.number.truncate`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `truncate` para valores do tipo number; use para calcular truncate antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Truncate` e leve `result` a `Variable Set` ou `UI Set Text` para calcular truncate antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 142. Fraction

- **ID:** `math.number.fraction`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `fraction` para valores do tipo number; use para calcular fraction antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Fraction` e leve `result` a `Variable Set` ou `UI Set Text` para calcular fraction antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 143. Sign

- **ID:** `math.number.sign`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `sign` para valores do tipo number; use para calcular sign antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Sign` e leve `result` a `Variable Set` ou `UI Set Text` para calcular sign antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 144. Sin

- **ID:** `math.number.sin`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `sin` para valores do tipo number; use para produzir oscilação suave. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Sin` e leve `result` a `Variable Set` ou `UI Set Text` para produzir oscilação suave.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 145. Cos

- **ID:** `math.number.cos`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `cos` para valores do tipo number; use para produzir oscilação deslocada. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Cos` e leve `result` a `Variable Set` ou `UI Set Text` para produzir oscilação deslocada.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 146. Tan

- **ID:** `math.number.tan`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `tan` para valores do tipo number; use para calcular tan antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Tan` e leve `result` a `Variable Set` ou `UI Set Text` para calcular tan antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 147. Asin

- **ID:** `math.number.asin`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `asin` para valores do tipo number; use para calcular asin antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Asin` e leve `result` a `Variable Set` ou `UI Set Text` para calcular asin antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 148. Acos

- **ID:** `math.number.acos`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `acos` para valores do tipo number; use para calcular acos antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Acos` e leve `result` a `Variable Set` ou `UI Set Text` para calcular acos antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 149. Atan

- **ID:** `math.number.atan`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `atan` para valores do tipo number; use para calcular atan antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Atan` e leve `result` a `Variable Set` ou `UI Set Text` para calcular atan antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 150. Degrees

- **ID:** `math.number.degrees`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `degrees` para valores do tipo number; use para calcular degrees antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Degrees` e leve `result` a `Variable Set` ou `UI Set Text` para calcular degrees antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 151. Radians

- **ID:** `math.number.radians`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `radians` para valores do tipo number; use para calcular radians antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Radians` e leve `result` a `Variable Set` ou `UI Set Text` para calcular radians antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 152. Saturate

- **ID:** `math.number.saturate`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `saturate` para valores do tipo number; use para calcular saturate antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Saturate` e leve `result` a `Variable Set` ou `UI Set Text` para calcular saturate antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 153. Is Finite

- **ID:** `math.number.is_finite`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `is finite` para valores do tipo number; use para calcular is finite antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor number que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Is Finite` e leve `result` a `Variable Set` ou `UI Set Text` para calcular is finite antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 154. Is Nan

- **ID:** `math.number.is_nan`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `is nan` para valores do tipo number; use para calcular is nan antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor number que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Is Nan` e leve `result` a `Variable Set` ou `UI Set Text` para calcular is nan antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 155. Add

- **ID:** `math.integer.add`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `add` para valores do tipo integer; use para somar 100 pontos à pontuação. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Add` e leve `result` a `Variable Set` ou `UI Set Text` para somar 100 pontos à pontuação.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 156. Subtract

- **ID:** `math.integer.subtract`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `subtract` para valores do tipo integer; use para retirar dano da vida. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Subtract` e leve `result` a `Variable Set` ou `UI Set Text` para retirar dano da vida.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 157. Multiply

- **ID:** `math.integer.multiply`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `multiply` para valores do tipo integer; use para aplicar um multiplicador de dano. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Multiply` e leve `result` a `Variable Set` ou `UI Set Text` para aplicar um multiplicador de dano.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 158. Divide

- **ID:** `math.integer.divide`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `divide` para valores do tipo integer; use para calcular a média por jogador. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Divide` e leve `result` a `Variable Set` ou `UI Set Text` para calcular a média por jogador.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 159. Modulo

- **ID:** `math.integer.modulo`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `modulo` para valores do tipo integer; use para executar algo a cada N quadros. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Modulo` e leve `result` a `Variable Set` ou `UI Set Text` para executar algo a cada N quadros.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 160. Power

- **ID:** `math.integer.power`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `power` para valores do tipo integer; use para criar uma curva exponencial. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Power` e leve `result` a `Variable Set` ou `UI Set Text` para criar uma curva exponencial.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 161. Minimum

- **ID:** `math.integer.minimum`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `minimum` para valores do tipo integer; use para limitar ao menor valor. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Minimum` e leve `result` a `Variable Set` ou `UI Set Text` para limitar ao menor valor.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 162. Maximum

- **ID:** `math.integer.maximum`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `maximum` para valores do tipo integer; use para garantir um valor mínimo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Maximum` e leve `result` a `Variable Set` ou `UI Set Text` para garantir um valor mínimo.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 163. Average

- **ID:** `math.integer.average`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `average` para valores do tipo integer; use para calcular média de valores. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Average` e leve `result` a `Variable Set` ou `UI Set Text` para calcular média de valores.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 164. Atan2

- **ID:** `math.integer.atan2`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `atan2` para valores do tipo integer; use para calcular atan2 antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Atan2` e leve `result` a `Variable Set` ou `UI Set Text` para calcular atan2 antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 165. Log Base

- **ID:** `math.integer.log_base`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `log base` para valores do tipo integer; use para calcular log base antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Log Base` e leve `result` a `Variable Set` ou `UI Set Text` para calcular log base antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 166. Copy Sign

- **ID:** `math.integer.copy_sign`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `copy sign` para valores do tipo integer; use para calcular copy sign antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Copy Sign` e leve `result` a `Variable Set` ou `UI Set Text` para calcular copy sign antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 167. Absolute

- **ID:** `math.integer.absolute`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `absolute` para valores do tipo integer; use para remover o sinal. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor integer de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Absolute` e leve `result` a `Variable Set` ou `UI Set Text` para remover o sinal.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 168. Negative

- **ID:** `math.integer.negative`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `negative` para valores do tipo integer; use para inverter direção/sinal. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor integer de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Negative` e leve `result` a `Variable Set` ou `UI Set Text` para inverter direção/sinal.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 169. Sqrt

- **ID:** `math.integer.sqrt`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `sqrt` para valores do tipo integer; use para obter uma raiz. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor integer de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Sqrt` e leve `result` a `Variable Set` ou `UI Set Text` para obter uma raiz.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 170. Cube Root

- **ID:** `math.integer.cube_root`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `cube root` para valores do tipo integer; use para calcular cube root antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Cube Root` e leve `result` a `Variable Set` ou `UI Set Text` para calcular cube root antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 171. Exp

- **ID:** `math.integer.exp`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `exp` para valores do tipo integer; use para calcular exp antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Exp` e leve `result` a `Variable Set` ou `UI Set Text` para calcular exp antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 172. Log

- **ID:** `math.integer.log`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `log` para valores do tipo integer; use para calcular log antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Log` e leve `result` a `Variable Set` ou `UI Set Text` para calcular log antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 173. Log10

- **ID:** `math.integer.log10`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `log10` para valores do tipo integer; use para calcular log10 antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Log10` e leve `result` a `Variable Set` ou `UI Set Text` para calcular log10 antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 174. Floor

- **ID:** `math.integer.floor`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `floor` para valores do tipo integer; use para arredondar para baixo. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor integer de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Floor` e leve `result` a `Variable Set` ou `UI Set Text` para arredondar para baixo.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 175. Ceil

- **ID:** `math.integer.ceil`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `ceil` para valores do tipo integer; use para arredondar para cima. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor integer de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Ceil` e leve `result` a `Variable Set` ou `UI Set Text` para arredondar para cima.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 176. Round

- **ID:** `math.integer.round`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `round` para valores do tipo integer; use para arredondar ao inteiro mais próximo. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor integer de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Round` e leve `result` a `Variable Set` ou `UI Set Text` para arredondar ao inteiro mais próximo.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 177. Truncate

- **ID:** `math.integer.truncate`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `truncate` para valores do tipo integer; use para calcular truncate antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Truncate` e leve `result` a `Variable Set` ou `UI Set Text` para calcular truncate antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 178. Fraction

- **ID:** `math.integer.fraction`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `fraction` para valores do tipo integer; use para calcular fraction antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Fraction` e leve `result` a `Variable Set` ou `UI Set Text` para calcular fraction antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 179. Sign

- **ID:** `math.integer.sign`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `sign` para valores do tipo integer; use para calcular sign antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Sign` e leve `result` a `Variable Set` ou `UI Set Text` para calcular sign antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 180. Sin

- **ID:** `math.integer.sin`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `sin` para valores do tipo integer; use para produzir oscilação suave. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Sin` e leve `result` a `Variable Set` ou `UI Set Text` para produzir oscilação suave.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 181. Cos

- **ID:** `math.integer.cos`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `cos` para valores do tipo integer; use para produzir oscilação deslocada. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Cos` e leve `result` a `Variable Set` ou `UI Set Text` para produzir oscilação deslocada.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 182. Tan

- **ID:** `math.integer.tan`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `tan` para valores do tipo integer; use para calcular tan antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Tan` e leve `result` a `Variable Set` ou `UI Set Text` para calcular tan antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 183. Asin

- **ID:** `math.integer.asin`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `asin` para valores do tipo integer; use para calcular asin antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Asin` e leve `result` a `Variable Set` ou `UI Set Text` para calcular asin antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 184. Acos

- **ID:** `math.integer.acos`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `acos` para valores do tipo integer; use para calcular acos antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Acos` e leve `result` a `Variable Set` ou `UI Set Text` para calcular acos antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 185. Atan

- **ID:** `math.integer.atan`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `atan` para valores do tipo integer; use para calcular atan antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Atan` e leve `result` a `Variable Set` ou `UI Set Text` para calcular atan antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 186. Degrees

- **ID:** `math.integer.degrees`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `degrees` para valores do tipo integer; use para calcular degrees antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Degrees` e leve `result` a `Variable Set` ou `UI Set Text` para calcular degrees antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 187. Radians

- **ID:** `math.integer.radians`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `radians` para valores do tipo integer; use para calcular radians antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Radians` e leve `result` a `Variable Set` ou `UI Set Text` para calcular radians antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 188. Saturate

- **ID:** `math.integer.saturate`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `saturate` para valores do tipo integer; use para calcular saturate antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Saturate` e leve `result` a `Variable Set` ou `UI Set Text` para calcular saturate antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 189. Is Finite

- **ID:** `math.integer.is_finite`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `is finite` para valores do tipo integer; use para calcular is finite antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor integer que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Is Finite` e leve `result` a `Variable Set` ou `UI Set Text` para calcular is finite antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 190. Is Nan

- **ID:** `math.integer.is_nan`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `is nan` para valores do tipo integer; use para calcular is nan antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor integer que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Is Nan` e leve `result` a `Variable Set` ou `UI Set Text` para calcular is nan antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 191. Add

- **ID:** `math.angle.add`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `add` para valores do tipo angle; use para somar 100 pontos à pontuação. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Add` e leve `result` a `Variable Set` ou `UI Set Text` para somar 100 pontos à pontuação.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 192. Subtract

- **ID:** `math.angle.subtract`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `subtract` para valores do tipo angle; use para retirar dano da vida. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Subtract` e leve `result` a `Variable Set` ou `UI Set Text` para retirar dano da vida.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 193. Multiply

- **ID:** `math.angle.multiply`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `multiply` para valores do tipo angle; use para aplicar um multiplicador de dano. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Multiply` e leve `result` a `Variable Set` ou `UI Set Text` para aplicar um multiplicador de dano.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 194. Divide

- **ID:** `math.angle.divide`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `divide` para valores do tipo angle; use para calcular a média por jogador. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Divide` e leve `result` a `Variable Set` ou `UI Set Text` para calcular a média por jogador.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 195. Modulo

- **ID:** `math.angle.modulo`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `modulo` para valores do tipo angle; use para executar algo a cada N quadros. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Modulo` e leve `result` a `Variable Set` ou `UI Set Text` para executar algo a cada N quadros.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 196. Power

- **ID:** `math.angle.power`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `power` para valores do tipo angle; use para criar uma curva exponencial. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Power` e leve `result` a `Variable Set` ou `UI Set Text` para criar uma curva exponencial.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 197. Minimum

- **ID:** `math.angle.minimum`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `minimum` para valores do tipo angle; use para limitar ao menor valor. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Minimum` e leve `result` a `Variable Set` ou `UI Set Text` para limitar ao menor valor.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 198. Maximum

- **ID:** `math.angle.maximum`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `maximum` para valores do tipo angle; use para garantir um valor mínimo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Maximum` e leve `result` a `Variable Set` ou `UI Set Text` para garantir um valor mínimo.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 199. Average

- **ID:** `math.angle.average`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `average` para valores do tipo angle; use para calcular média de valores. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Average` e leve `result` a `Variable Set` ou `UI Set Text` para calcular média de valores.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 200. Atan2

- **ID:** `math.angle.atan2`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `atan2` para valores do tipo angle; use para calcular atan2 antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Atan2` e leve `result` a `Variable Set` ou `UI Set Text` para calcular atan2 antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 201. Log Base

- **ID:** `math.angle.log_base`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `log base` para valores do tipo angle; use para calcular log base antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Log Base` e leve `result` a `Variable Set` ou `UI Set Text` para calcular log base antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 202. Copy Sign

- **ID:** `math.angle.copy_sign`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `copy sign` para valores do tipo angle; use para calcular copy sign antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Copy Sign` e leve `result` a `Variable Set` ou `UI Set Text` para calcular copy sign antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 203. Absolute

- **ID:** `math.angle.absolute`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `absolute` para valores do tipo angle; use para remover o sinal. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor angle de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Absolute` e leve `result` a `Variable Set` ou `UI Set Text` para remover o sinal.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 204. Negative

- **ID:** `math.angle.negative`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `negative` para valores do tipo angle; use para inverter direção/sinal. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor angle de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Negative` e leve `result` a `Variable Set` ou `UI Set Text` para inverter direção/sinal.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 205. Sqrt

- **ID:** `math.angle.sqrt`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `sqrt` para valores do tipo angle; use para obter uma raiz. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor angle de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Sqrt` e leve `result` a `Variable Set` ou `UI Set Text` para obter uma raiz.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 206. Cube Root

- **ID:** `math.angle.cube_root`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `cube root` para valores do tipo angle; use para calcular cube root antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Cube Root` e leve `result` a `Variable Set` ou `UI Set Text` para calcular cube root antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 207. Exp

- **ID:** `math.angle.exp`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `exp` para valores do tipo angle; use para calcular exp antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Exp` e leve `result` a `Variable Set` ou `UI Set Text` para calcular exp antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 208. Log

- **ID:** `math.angle.log`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `log` para valores do tipo angle; use para calcular log antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Log` e leve `result` a `Variable Set` ou `UI Set Text` para calcular log antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 209. Log10

- **ID:** `math.angle.log10`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `log10` para valores do tipo angle; use para calcular log10 antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Log10` e leve `result` a `Variable Set` ou `UI Set Text` para calcular log10 antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 210. Floor

- **ID:** `math.angle.floor`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `floor` para valores do tipo angle; use para arredondar para baixo. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor angle de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Floor` e leve `result` a `Variable Set` ou `UI Set Text` para arredondar para baixo.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 211. Ceil

- **ID:** `math.angle.ceil`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `ceil` para valores do tipo angle; use para arredondar para cima. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor angle de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Ceil` e leve `result` a `Variable Set` ou `UI Set Text` para arredondar para cima.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 212. Round

- **ID:** `math.angle.round`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `round` para valores do tipo angle; use para arredondar ao inteiro mais próximo. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor angle de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Round` e leve `result` a `Variable Set` ou `UI Set Text` para arredondar ao inteiro mais próximo.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 213. Truncate

- **ID:** `math.angle.truncate`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `truncate` para valores do tipo angle; use para calcular truncate antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Truncate` e leve `result` a `Variable Set` ou `UI Set Text` para calcular truncate antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 214. Fraction

- **ID:** `math.angle.fraction`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `fraction` para valores do tipo angle; use para calcular fraction antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Fraction` e leve `result` a `Variable Set` ou `UI Set Text` para calcular fraction antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 215. Sign

- **ID:** `math.angle.sign`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `sign` para valores do tipo angle; use para calcular sign antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Sign` e leve `result` a `Variable Set` ou `UI Set Text` para calcular sign antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 216. Sin

- **ID:** `math.angle.sin`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `sin` para valores do tipo angle; use para produzir oscilação suave. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Sin` e leve `result` a `Variable Set` ou `UI Set Text` para produzir oscilação suave.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 217. Cos

- **ID:** `math.angle.cos`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `cos` para valores do tipo angle; use para produzir oscilação deslocada. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Cos` e leve `result` a `Variable Set` ou `UI Set Text` para produzir oscilação deslocada.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 218. Tan

- **ID:** `math.angle.tan`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `tan` para valores do tipo angle; use para calcular tan antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Tan` e leve `result` a `Variable Set` ou `UI Set Text` para calcular tan antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 219. Asin

- **ID:** `math.angle.asin`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `asin` para valores do tipo angle; use para calcular asin antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Asin` e leve `result` a `Variable Set` ou `UI Set Text` para calcular asin antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 220. Acos

- **ID:** `math.angle.acos`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `acos` para valores do tipo angle; use para calcular acos antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Acos` e leve `result` a `Variable Set` ou `UI Set Text` para calcular acos antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 221. Atan

- **ID:** `math.angle.atan`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `atan` para valores do tipo angle; use para calcular atan antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Atan` e leve `result` a `Variable Set` ou `UI Set Text` para calcular atan antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 222. Degrees

- **ID:** `math.angle.degrees`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `degrees` para valores do tipo angle; use para calcular degrees antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Degrees` e leve `result` a `Variable Set` ou `UI Set Text` para calcular degrees antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 223. Radians

- **ID:** `math.angle.radians`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `radians` para valores do tipo angle; use para calcular radians antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Radians` e leve `result` a `Variable Set` ou `UI Set Text` para calcular radians antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 224. Saturate

- **ID:** `math.angle.saturate`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `saturate` para valores do tipo angle; use para calcular saturate antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Saturate` e leve `result` a `Variable Set` ou `UI Set Text` para calcular saturate antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 225. Is Finite

- **ID:** `math.angle.is_finite`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `is finite` para valores do tipo angle; use para calcular is finite antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor angle que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Is Finite` e leve `result` a `Variable Set` ou `UI Set Text` para calcular is finite antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 226. Is Nan

- **ID:** `math.angle.is_nan`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `is nan` para valores do tipo angle; use para calcular is nan antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor angle que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Is Nan` e leve `result` a `Variable Set` ou `UI Set Text` para calcular is nan antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 227. Clamp

- **ID:** `math.range.clamp`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `clamp` para valores do tipo range; use para calcular clamp antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores range; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Clamp` e leve `result` a `Variable Set` ou `UI Set Text` para calcular clamp antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 228. Lerp

- **ID:** `math.range.lerp`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `lerp` para valores do tipo range; use para interpolar suavemente. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores range; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Lerp` e leve `result` a `Variable Set` ou `UI Set Text` para interpolar suavemente.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 229. Inverse Lerp

- **ID:** `math.range.inverse_lerp`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `inverse lerp` para valores do tipo range; use para calcular inverse lerp antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores range; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Inverse Lerp` e leve `result` a `Variable Set` ou `UI Set Text` para calcular inverse lerp antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 230. Remap

- **ID:** `math.range.remap`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `remap` para valores do tipo range; use para calcular remap antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores range; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Remap` e leve `result` a `Variable Set` ou `UI Set Text` para calcular remap antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 231. Smoothstep

- **ID:** `math.range.smoothstep`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `smoothstep` para valores do tipo range; use para calcular smoothstep antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores range; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Smoothstep` e leve `result` a `Variable Set` ou `UI Set Text` para calcular smoothstep antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 232. Move Towards

- **ID:** `math.range.move_towards`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `move towards` para valores do tipo range; use para aproximar sem ultrapassar. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores range; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Move Towards` e leve `result` a `Variable Set` ou `UI Set Text` para aproximar sem ultrapassar.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 233. Random Range

- **ID:** `math.range.random_range`
- **Categoria:** Matemática
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `random range` para valores do tipo range; use para calcular random range antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores range; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Random Range` e leve `result` a `Variable Set` ou `UI Set Text` para calcular random range antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 234. Equal

- **ID:** `compare.boolean.equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `equal` para valores do tipo boolean; use para testar igualdade. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Equal → Branch`; use a saída True para testar igualdade e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 235. Not Equal

- **ID:** `compare.boolean.not_equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `not equal` para valores do tipo boolean; use para testar diferença. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Not Equal → Branch`; use a saída True para testar diferença e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 236. Greater

- **ID:** `compare.boolean.greater`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `greater` para valores do tipo boolean; use para testar se ultrapassou um limite. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Greater → Branch`; use a saída True para testar se ultrapassou um limite e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 237. Greater Equal

- **ID:** `compare.boolean.greater_equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `greater equal` para valores do tipo boolean; use para testar limite mínimo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Greater Equal → Branch`; use a saída True para testar limite mínimo inclusivo e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 238. Less

- **ID:** `compare.boolean.less`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `less` para valores do tipo boolean; use para testar se ficou abaixo de um limite. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Less → Branch`; use a saída True para testar se ficou abaixo de um limite e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 239. Less Equal

- **ID:** `compare.boolean.less_equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `less equal` para valores do tipo boolean; use para testar limite máximo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Less Equal → Branch`; use a saída True para testar limite máximo inclusivo e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 240. Between

- **ID:** `compare.boolean.between`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `between` para valores do tipo boolean; use para testar se está dentro de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Between → Branch`; use a saída True para testar se está dentro de uma faixa e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 241. Outside

- **ID:** `compare.boolean.outside`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `outside` para valores do tipo boolean; use para testar se saiu de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Outside → Branch`; use a saída True para testar se saiu de uma faixa e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 242. Approximately

- **ID:** `compare.boolean.approximately`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `approximately` para valores do tipo boolean; use para comparar números com tolerância. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Approximately → Branch`; use a saída True para comparar números com tolerância e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 243. Is Null

- **ID:** `compare.boolean.is_null`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `is null` para valores do tipo boolean; use para verificar ausência de objeto. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor boolean que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Is Null → Branch`; use a saída True para verificar ausência de objeto e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 244. Equal

- **ID:** `compare.number.equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `equal` para valores do tipo number; use para testar igualdade. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Equal → Branch`; use a saída True para testar igualdade e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 245. Not Equal

- **ID:** `compare.number.not_equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `not equal` para valores do tipo number; use para testar diferença. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Not Equal → Branch`; use a saída True para testar diferença e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 246. Greater

- **ID:** `compare.number.greater`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `greater` para valores do tipo number; use para testar se ultrapassou um limite. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Greater → Branch`; use a saída True para testar se ultrapassou um limite e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 247. Greater Equal

- **ID:** `compare.number.greater_equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `greater equal` para valores do tipo number; use para testar limite mínimo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Greater Equal → Branch`; use a saída True para testar limite mínimo inclusivo e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 248. Less

- **ID:** `compare.number.less`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `less` para valores do tipo number; use para testar se ficou abaixo de um limite. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Less → Branch`; use a saída True para testar se ficou abaixo de um limite e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 249. Less Equal

- **ID:** `compare.number.less_equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `less equal` para valores do tipo number; use para testar limite máximo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Less Equal → Branch`; use a saída True para testar limite máximo inclusivo e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 250. Between

- **ID:** `compare.number.between`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `between` para valores do tipo number; use para testar se está dentro de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Between → Branch`; use a saída True para testar se está dentro de uma faixa e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 251. Outside

- **ID:** `compare.number.outside`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `outside` para valores do tipo number; use para testar se saiu de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Outside → Branch`; use a saída True para testar se saiu de uma faixa e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 252. Approximately

- **ID:** `compare.number.approximately`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `approximately` para valores do tipo number; use para comparar números com tolerância. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Approximately → Branch`; use a saída True para comparar números com tolerância e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 253. Is Null

- **ID:** `compare.number.is_null`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `is null` para valores do tipo number; use para verificar ausência de objeto. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor number que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Is Null → Branch`; use a saída True para verificar ausência de objeto e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 254. Equal

- **ID:** `compare.text.equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `equal` para valores do tipo text; use para testar igualdade. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Equal → Branch`; use a saída True para testar igualdade e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 255. Not Equal

- **ID:** `compare.text.not_equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `not equal` para valores do tipo text; use para testar diferença. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Not Equal → Branch`; use a saída True para testar diferença e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 256. Greater

- **ID:** `compare.text.greater`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `greater` para valores do tipo text; use para testar se ultrapassou um limite. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Greater → Branch`; use a saída True para testar se ultrapassou um limite e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 257. Greater Equal

- **ID:** `compare.text.greater_equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `greater equal` para valores do tipo text; use para testar limite mínimo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Greater Equal → Branch`; use a saída True para testar limite mínimo inclusivo e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 258. Less

- **ID:** `compare.text.less`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `less` para valores do tipo text; use para testar se ficou abaixo de um limite. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Less → Branch`; use a saída True para testar se ficou abaixo de um limite e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 259. Less Equal

- **ID:** `compare.text.less_equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `less equal` para valores do tipo text; use para testar limite máximo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Less Equal → Branch`; use a saída True para testar limite máximo inclusivo e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 260. Between

- **ID:** `compare.text.between`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `between` para valores do tipo text; use para testar se está dentro de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Between → Branch`; use a saída True para testar se está dentro de uma faixa e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 261. Outside

- **ID:** `compare.text.outside`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `outside` para valores do tipo text; use para testar se saiu de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Outside → Branch`; use a saída True para testar se saiu de uma faixa e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 262. Approximately

- **ID:** `compare.text.approximately`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `approximately` para valores do tipo text; use para comparar números com tolerância. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Approximately → Branch`; use a saída True para comparar números com tolerância e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 263. Is Null

- **ID:** `compare.text.is_null`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `is null` para valores do tipo text; use para verificar ausência de objeto. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor text que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Is Null → Branch`; use a saída True para verificar ausência de objeto e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 264. Equal

- **ID:** `compare.vector2.equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `equal` para valores do tipo vector2; use para testar igualdade. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Equal → Branch`; use a saída True para testar igualdade e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 265. Not Equal

- **ID:** `compare.vector2.not_equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `not equal` para valores do tipo vector2; use para testar diferença. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Not Equal → Branch`; use a saída True para testar diferença e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 266. Greater

- **ID:** `compare.vector2.greater`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `greater` para valores do tipo vector2; use para testar se ultrapassou um limite. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Greater → Branch`; use a saída True para testar se ultrapassou um limite e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 267. Greater Equal

- **ID:** `compare.vector2.greater_equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `greater equal` para valores do tipo vector2; use para testar limite mínimo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Greater Equal → Branch`; use a saída True para testar limite mínimo inclusivo e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 268. Less

- **ID:** `compare.vector2.less`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `less` para valores do tipo vector2; use para testar se ficou abaixo de um limite. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Less → Branch`; use a saída True para testar se ficou abaixo de um limite e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 269. Less Equal

- **ID:** `compare.vector2.less_equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `less equal` para valores do tipo vector2; use para testar limite máximo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Less Equal → Branch`; use a saída True para testar limite máximo inclusivo e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 270. Between

- **ID:** `compare.vector2.between`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `between` para valores do tipo vector2; use para testar se está dentro de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Between → Branch`; use a saída True para testar se está dentro de uma faixa e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 271. Outside

- **ID:** `compare.vector2.outside`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `outside` para valores do tipo vector2; use para testar se saiu de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Outside → Branch`; use a saída True para testar se saiu de uma faixa e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 272. Approximately

- **ID:** `compare.vector2.approximately`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `approximately` para valores do tipo vector2; use para comparar números com tolerância. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Approximately → Branch`; use a saída True para comparar números com tolerância e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 273. Is Null

- **ID:** `compare.vector2.is_null`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `is null` para valores do tipo vector2; use para verificar ausência de objeto. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector2 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Is Null → Branch`; use a saída True para verificar ausência de objeto e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 274. Equal

- **ID:** `compare.vector3.equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `equal` para valores do tipo vector3; use para testar igualdade. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Equal → Branch`; use a saída True para testar igualdade e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 275. Not Equal

- **ID:** `compare.vector3.not_equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `not equal` para valores do tipo vector3; use para testar diferença. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Not Equal → Branch`; use a saída True para testar diferença e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 276. Greater

- **ID:** `compare.vector3.greater`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `greater` para valores do tipo vector3; use para testar se ultrapassou um limite. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Greater → Branch`; use a saída True para testar se ultrapassou um limite e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 277. Greater Equal

- **ID:** `compare.vector3.greater_equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `greater equal` para valores do tipo vector3; use para testar limite mínimo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Greater Equal → Branch`; use a saída True para testar limite mínimo inclusivo e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 278. Less

- **ID:** `compare.vector3.less`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `less` para valores do tipo vector3; use para testar se ficou abaixo de um limite. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Less → Branch`; use a saída True para testar se ficou abaixo de um limite e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 279. Less Equal

- **ID:** `compare.vector3.less_equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `less equal` para valores do tipo vector3; use para testar limite máximo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Less Equal → Branch`; use a saída True para testar limite máximo inclusivo e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 280. Between

- **ID:** `compare.vector3.between`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `between` para valores do tipo vector3; use para testar se está dentro de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Between → Branch`; use a saída True para testar se está dentro de uma faixa e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 281. Outside

- **ID:** `compare.vector3.outside`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `outside` para valores do tipo vector3; use para testar se saiu de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Outside → Branch`; use a saída True para testar se saiu de uma faixa e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 282. Approximately

- **ID:** `compare.vector3.approximately`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `approximately` para valores do tipo vector3; use para comparar números com tolerância. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Approximately → Branch`; use a saída True para comparar números com tolerância e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 283. Is Null

- **ID:** `compare.vector3.is_null`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `is null` para valores do tipo vector3; use para verificar ausência de objeto. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector3 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Is Null → Branch`; use a saída True para verificar ausência de objeto e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 284. Equal

- **ID:** `compare.color.equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `equal` para valores do tipo color; use para testar igualdade. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Equal → Branch`; use a saída True para testar igualdade e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 285. Not Equal

- **ID:** `compare.color.not_equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `not equal` para valores do tipo color; use para testar diferença. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Not Equal → Branch`; use a saída True para testar diferença e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 286. Greater

- **ID:** `compare.color.greater`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `greater` para valores do tipo color; use para testar se ultrapassou um limite. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Greater → Branch`; use a saída True para testar se ultrapassou um limite e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 287. Greater Equal

- **ID:** `compare.color.greater_equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `greater equal` para valores do tipo color; use para testar limite mínimo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Greater Equal → Branch`; use a saída True para testar limite mínimo inclusivo e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 288. Less

- **ID:** `compare.color.less`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `less` para valores do tipo color; use para testar se ficou abaixo de um limite. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Less → Branch`; use a saída True para testar se ficou abaixo de um limite e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 289. Less Equal

- **ID:** `compare.color.less_equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `less equal` para valores do tipo color; use para testar limite máximo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Less Equal → Branch`; use a saída True para testar limite máximo inclusivo e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 290. Between

- **ID:** `compare.color.between`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `between` para valores do tipo color; use para testar se está dentro de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Between → Branch`; use a saída True para testar se está dentro de uma faixa e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 291. Outside

- **ID:** `compare.color.outside`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `outside` para valores do tipo color; use para testar se saiu de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Outside → Branch`; use a saída True para testar se saiu de uma faixa e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 292. Approximately

- **ID:** `compare.color.approximately`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `approximately` para valores do tipo color; use para comparar números com tolerância. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Approximately → Branch`; use a saída True para comparar números com tolerância e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 293. Is Null

- **ID:** `compare.color.is_null`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `is null` para valores do tipo color; use para verificar ausência de objeto. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor color que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Is Null → Branch`; use a saída True para verificar ausência de objeto e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 294. Equal

- **ID:** `compare.object.equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `equal` para valores do tipo object; use para testar igualdade. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Equal → Branch`; use a saída True para testar igualdade e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 295. Not Equal

- **ID:** `compare.object.not_equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `not equal` para valores do tipo object; use para testar diferença. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Not Equal → Branch`; use a saída True para testar diferença e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 296. Greater

- **ID:** `compare.object.greater`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `greater` para valores do tipo object; use para testar se ultrapassou um limite. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Greater → Branch`; use a saída True para testar se ultrapassou um limite e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 297. Greater Equal

- **ID:** `compare.object.greater_equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `greater equal` para valores do tipo object; use para testar limite mínimo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Greater Equal → Branch`; use a saída True para testar limite mínimo inclusivo e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 298. Less

- **ID:** `compare.object.less`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `less` para valores do tipo object; use para testar se ficou abaixo de um limite. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Less → Branch`; use a saída True para testar se ficou abaixo de um limite e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 299. Less Equal

- **ID:** `compare.object.less_equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `less equal` para valores do tipo object; use para testar limite máximo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Less Equal → Branch`; use a saída True para testar limite máximo inclusivo e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 300. Between

- **ID:** `compare.object.between`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `between` para valores do tipo object; use para testar se está dentro de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Between → Branch`; use a saída True para testar se está dentro de uma faixa e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 301. Outside

- **ID:** `compare.object.outside`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `outside` para valores do tipo object; use para testar se saiu de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Outside → Branch`; use a saída True para testar se saiu de uma faixa e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 302. Approximately

- **ID:** `compare.object.approximately`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `approximately` para valores do tipo object; use para comparar números com tolerância. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Approximately → Branch`; use a saída True para comparar números com tolerância e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 303. Is Null

- **ID:** `compare.object.is_null`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `is null` para valores do tipo object; use para verificar ausência de objeto. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor object que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Is Null → Branch`; use a saída True para verificar ausência de objeto e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 304. Equal

- **ID:** `compare.asset.equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `equal` para valores do tipo asset; use para testar igualdade. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Equal → Branch`; use a saída True para testar igualdade e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 305. Not Equal

- **ID:** `compare.asset.not_equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `not equal` para valores do tipo asset; use para testar diferença. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Not Equal → Branch`; use a saída True para testar diferença e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 306. Greater

- **ID:** `compare.asset.greater`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `greater` para valores do tipo asset; use para testar se ultrapassou um limite. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Greater → Branch`; use a saída True para testar se ultrapassou um limite e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 307. Greater Equal

- **ID:** `compare.asset.greater_equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `greater equal` para valores do tipo asset; use para testar limite mínimo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Greater Equal → Branch`; use a saída True para testar limite mínimo inclusivo e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 308. Less

- **ID:** `compare.asset.less`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `less` para valores do tipo asset; use para testar se ficou abaixo de um limite. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Less → Branch`; use a saída True para testar se ficou abaixo de um limite e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 309. Less Equal

- **ID:** `compare.asset.less_equal`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `less equal` para valores do tipo asset; use para testar limite máximo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Less Equal → Branch`; use a saída True para testar limite máximo inclusivo e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 310. Between

- **ID:** `compare.asset.between`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `between` para valores do tipo asset; use para testar se está dentro de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Between → Branch`; use a saída True para testar se está dentro de uma faixa e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 311. Outside

- **ID:** `compare.asset.outside`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `outside` para valores do tipo asset; use para testar se saiu de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Outside → Branch`; use a saída True para testar se saiu de uma faixa e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 312. Approximately

- **ID:** `compare.asset.approximately`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `approximately` para valores do tipo asset; use para comparar números com tolerância. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Approximately → Branch`; use a saída True para comparar números com tolerância e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 313. Is Null

- **ID:** `compare.asset.is_null`
- **Categoria:** Comparação
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `is null` para valores do tipo asset; use para verificar ausência de objeto. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor asset que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Is Null → Branch`; use a saída True para verificar ausência de objeto e a False para manter o estado atual.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 314. Add

- **ID:** `vector.vector2.add`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `add` para valores do tipo vector2; use para somar 100 pontos à pontuação. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Add → UI Set Text` ou conecte o vetor resultante a movimento/força para somar 100 pontos à pontuação.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 315. Subtract

- **ID:** `vector.vector2.subtract`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `subtract` para valores do tipo vector2; use para retirar dano da vida. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Subtract → UI Set Text` ou conecte o vetor resultante a movimento/força para retirar dano da vida.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 316. Multiply

- **ID:** `vector.vector2.multiply`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `multiply` para valores do tipo vector2; use para aplicar um multiplicador de dano. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Multiply → UI Set Text` ou conecte o vetor resultante a movimento/força para aplicar um multiplicador de dano.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 317. Divide

- **ID:** `vector.vector2.divide`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `divide` para valores do tipo vector2; use para calcular a média por jogador. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Divide → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular a média por jogador.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 318. Scale

- **ID:** `vector.vector2.scale`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `scale` para valores do tipo vector2; use para calcular scale antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Scale → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular scale antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 319. Normalize

- **ID:** `vector.vector2.normalize`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `normalize` para valores do tipo vector2; use para obter somente a direção. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector2 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Normalize → UI Set Text` ou conecte o vetor resultante a movimento/força para obter somente a direção.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 320. Length

- **ID:** `vector.vector2.length`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `length` para valores do tipo vector2; use para obter magnitude/velocidade. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector2 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Length → UI Set Text` ou conecte o vetor resultante a movimento/força para obter magnitude/velocidade.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 321. Length Squared

- **ID:** `vector.vector2.length_squared`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `length squared` para valores do tipo vector2; use para calcular length squared antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Length Squared → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular length squared antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 322. Distance

- **ID:** `vector.vector2.distance`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `distance` para valores do tipo vector2; use para medir distância entre pontos. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Distance → UI Set Text` ou conecte o vetor resultante a movimento/força para medir distância entre pontos.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 323. Dot

- **ID:** `vector.vector2.dot`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `dot` para valores do tipo vector2; use para medir alinhamento entre direções. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Dot → UI Set Text` ou conecte o vetor resultante a movimento/força para medir alinhamento entre direções.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 324. Cross

- **ID:** `vector.vector2.cross`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `cross` para valores do tipo vector2; use para obter o eixo perpendicular. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Cross → UI Set Text` ou conecte o vetor resultante a movimento/força para obter o eixo perpendicular.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 325. Lerp

- **ID:** `vector.vector2.lerp`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `lerp` para valores do tipo vector2; use para interpolar suavemente. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Lerp → UI Set Text` ou conecte o vetor resultante a movimento/força para interpolar suavemente.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 326. Move Towards

- **ID:** `vector.vector2.move_towards`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `move towards` para valores do tipo vector2; use para aproximar sem ultrapassar. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Move Towards → UI Set Text` ou conecte o vetor resultante a movimento/força para aproximar sem ultrapassar.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 327. Reflect

- **ID:** `vector.vector2.reflect`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `reflect` para valores do tipo vector2; use para calcular reflect antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Reflect → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular reflect antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 328. Project

- **ID:** `vector.vector2.project`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `project` para valores do tipo vector2; use para calcular project antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Project → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular project antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 329. Angle

- **ID:** `vector.vector2.angle`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `angle` para valores do tipo vector2; use para calcular angle antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Angle → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular angle antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 330. Clamp Length

- **ID:** `vector.vector2.clamp_length`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `clamp length` para valores do tipo vector2; use para calcular clamp length antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Clamp Length → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular clamp length antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 331. Minimum

- **ID:** `vector.vector2.minimum`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `minimum` para valores do tipo vector2; use para limitar ao menor valor. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Minimum → UI Set Text` ou conecte o vetor resultante a movimento/força para limitar ao menor valor.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 332. Maximum

- **ID:** `vector.vector2.maximum`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `maximum` para valores do tipo vector2; use para garantir um valor mínimo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Maximum → UI Set Text` ou conecte o vetor resultante a movimento/força para garantir um valor mínimo.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 333. Absolute

- **ID:** `vector.vector2.absolute`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `absolute` para valores do tipo vector2; use para remover o sinal. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector2 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Absolute → UI Set Text` ou conecte o vetor resultante a movimento/força para remover o sinal.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 334. Floor

- **ID:** `vector.vector2.floor`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `floor` para valores do tipo vector2; use para arredondar para baixo. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector2 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Floor → UI Set Text` ou conecte o vetor resultante a movimento/força para arredondar para baixo.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 335. Ceil

- **ID:** `vector.vector2.ceil`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `ceil` para valores do tipo vector2; use para arredondar para cima. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector2 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Ceil → UI Set Text` ou conecte o vetor resultante a movimento/força para arredondar para cima.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 336. Round

- **ID:** `vector.vector2.round`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `round` para valores do tipo vector2; use para arredondar ao inteiro mais próximo. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector2 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Round → UI Set Text` ou conecte o vetor resultante a movimento/força para arredondar ao inteiro mais próximo.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 337. Snap

- **ID:** `vector.vector2.snap`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `snap` para valores do tipo vector2; use para calcular snap antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Snap → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular snap antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 338. Rotate

- **ID:** `vector.vector2.rotate`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `rotate` para valores do tipo vector2; use para calcular rotate antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Rotate → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular rotate antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 339. Inverse

- **ID:** `vector.vector2.inverse`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `inverse` para valores do tipo vector2; use para calcular inverse antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Inverse → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular inverse antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 340. Is Zero

- **ID:** `vector.vector2.is_zero`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `is zero` para valores do tipo vector2; use para calcular is zero antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector2 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Is Zero → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular is zero antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 341. Is Finite

- **ID:** `vector.vector2.is_finite`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `is finite` para valores do tipo vector2; use para calcular is finite antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector2 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Is Finite → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular is finite antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 342. Make

- **ID:** `vector.vector2.make`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `make` para valores do tipo vector2; use para calcular make antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Make → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular make antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 343. Split

- **ID:** `vector.vector2.split`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `split` para valores do tipo vector2; use para calcular split antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Split → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular split antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 344. With X

- **ID:** `vector.vector2.with_x`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `with x` para valores do tipo vector2; use para calcular with x antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → With X → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular with x antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 345. With Y

- **ID:** `vector.vector2.with_y`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `with y` para valores do tipo vector2; use para calcular with y antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → With Y → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular with y antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 346. With Z

- **ID:** `vector.vector2.with_z`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `with z` para valores do tipo vector2; use para calcular with z antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → With Z → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular with z antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 347. With W

- **ID:** `vector.vector2.with_w`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `with w` para valores do tipo vector2; use para calcular with w antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → With W → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular with w antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 348. Add

- **ID:** `vector.vector3.add`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `add` para valores do tipo vector3; use para somar 100 pontos à pontuação. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Add → UI Set Text` ou conecte o vetor resultante a movimento/força para somar 100 pontos à pontuação.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 349. Subtract

- **ID:** `vector.vector3.subtract`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `subtract` para valores do tipo vector3; use para retirar dano da vida. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Subtract → UI Set Text` ou conecte o vetor resultante a movimento/força para retirar dano da vida.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 350. Multiply

- **ID:** `vector.vector3.multiply`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `multiply` para valores do tipo vector3; use para aplicar um multiplicador de dano. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Multiply → UI Set Text` ou conecte o vetor resultante a movimento/força para aplicar um multiplicador de dano.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 351. Divide

- **ID:** `vector.vector3.divide`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `divide` para valores do tipo vector3; use para calcular a média por jogador. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Divide → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular a média por jogador.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 352. Scale

- **ID:** `vector.vector3.scale`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `scale` para valores do tipo vector3; use para calcular scale antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Scale → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular scale antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 353. Normalize

- **ID:** `vector.vector3.normalize`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `normalize` para valores do tipo vector3; use para obter somente a direção. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector3 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Normalize → UI Set Text` ou conecte o vetor resultante a movimento/força para obter somente a direção.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 354. Length

- **ID:** `vector.vector3.length`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `length` para valores do tipo vector3; use para obter magnitude/velocidade. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector3 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Length → UI Set Text` ou conecte o vetor resultante a movimento/força para obter magnitude/velocidade.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 355. Length Squared

- **ID:** `vector.vector3.length_squared`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `length squared` para valores do tipo vector3; use para calcular length squared antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Length Squared → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular length squared antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 356. Distance

- **ID:** `vector.vector3.distance`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `distance` para valores do tipo vector3; use para medir distância entre pontos. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Distance → UI Set Text` ou conecte o vetor resultante a movimento/força para medir distância entre pontos.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 357. Dot

- **ID:** `vector.vector3.dot`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `dot` para valores do tipo vector3; use para medir alinhamento entre direções. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Dot → UI Set Text` ou conecte o vetor resultante a movimento/força para medir alinhamento entre direções.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 358. Cross

- **ID:** `vector.vector3.cross`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `cross` para valores do tipo vector3; use para obter o eixo perpendicular. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Cross → UI Set Text` ou conecte o vetor resultante a movimento/força para obter o eixo perpendicular.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 359. Lerp

- **ID:** `vector.vector3.lerp`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `lerp` para valores do tipo vector3; use para interpolar suavemente. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Lerp → UI Set Text` ou conecte o vetor resultante a movimento/força para interpolar suavemente.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 360. Move Towards

- **ID:** `vector.vector3.move_towards`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `move towards` para valores do tipo vector3; use para aproximar sem ultrapassar. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Move Towards → UI Set Text` ou conecte o vetor resultante a movimento/força para aproximar sem ultrapassar.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 361. Reflect

- **ID:** `vector.vector3.reflect`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `reflect` para valores do tipo vector3; use para calcular reflect antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Reflect → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular reflect antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 362. Project

- **ID:** `vector.vector3.project`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `project` para valores do tipo vector3; use para calcular project antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Project → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular project antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 363. Angle

- **ID:** `vector.vector3.angle`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `angle` para valores do tipo vector3; use para calcular angle antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Angle → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular angle antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 364. Clamp Length

- **ID:** `vector.vector3.clamp_length`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `clamp length` para valores do tipo vector3; use para calcular clamp length antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Clamp Length → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular clamp length antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 365. Minimum

- **ID:** `vector.vector3.minimum`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `minimum` para valores do tipo vector3; use para limitar ao menor valor. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Minimum → UI Set Text` ou conecte o vetor resultante a movimento/força para limitar ao menor valor.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 366. Maximum

- **ID:** `vector.vector3.maximum`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `maximum` para valores do tipo vector3; use para garantir um valor mínimo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Maximum → UI Set Text` ou conecte o vetor resultante a movimento/força para garantir um valor mínimo.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 367. Absolute

- **ID:** `vector.vector3.absolute`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `absolute` para valores do tipo vector3; use para remover o sinal. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector3 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Absolute → UI Set Text` ou conecte o vetor resultante a movimento/força para remover o sinal.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 368. Floor

- **ID:** `vector.vector3.floor`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `floor` para valores do tipo vector3; use para arredondar para baixo. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector3 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Floor → UI Set Text` ou conecte o vetor resultante a movimento/força para arredondar para baixo.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 369. Ceil

- **ID:** `vector.vector3.ceil`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `ceil` para valores do tipo vector3; use para arredondar para cima. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector3 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Ceil → UI Set Text` ou conecte o vetor resultante a movimento/força para arredondar para cima.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 370. Round

- **ID:** `vector.vector3.round`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `round` para valores do tipo vector3; use para arredondar ao inteiro mais próximo. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector3 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Round → UI Set Text` ou conecte o vetor resultante a movimento/força para arredondar ao inteiro mais próximo.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 371. Snap

- **ID:** `vector.vector3.snap`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `snap` para valores do tipo vector3; use para calcular snap antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Snap → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular snap antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 372. Rotate

- **ID:** `vector.vector3.rotate`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `rotate` para valores do tipo vector3; use para calcular rotate antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Rotate → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular rotate antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 373. Inverse

- **ID:** `vector.vector3.inverse`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `inverse` para valores do tipo vector3; use para calcular inverse antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Inverse → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular inverse antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 374. Is Zero

- **ID:** `vector.vector3.is_zero`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `is zero` para valores do tipo vector3; use para calcular is zero antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector3 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Is Zero → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular is zero antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 375. Is Finite

- **ID:** `vector.vector3.is_finite`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `is finite` para valores do tipo vector3; use para calcular is finite antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector3 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Is Finite → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular is finite antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 376. Make

- **ID:** `vector.vector3.make`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `make` para valores do tipo vector3; use para calcular make antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Make → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular make antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 377. Split

- **ID:** `vector.vector3.split`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `split` para valores do tipo vector3; use para calcular split antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Split → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular split antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 378. With X

- **ID:** `vector.vector3.with_x`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `with x` para valores do tipo vector3; use para calcular with x antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → With X → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular with x antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 379. With Y

- **ID:** `vector.vector3.with_y`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `with y` para valores do tipo vector3; use para calcular with y antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → With Y → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular with y antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 380. With Z

- **ID:** `vector.vector3.with_z`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `with z` para valores do tipo vector3; use para calcular with z antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → With Z → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular with z antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 381. With W

- **ID:** `vector.vector3.with_w`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `with w` para valores do tipo vector3; use para calcular with w antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → With W → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular with w antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 382. Add

- **ID:** `vector.vector4.add`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `add` para valores do tipo vector4; use para somar 100 pontos à pontuação. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Add → UI Set Text` ou conecte o vetor resultante a movimento/força para somar 100 pontos à pontuação.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 383. Subtract

- **ID:** `vector.vector4.subtract`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `subtract` para valores do tipo vector4; use para retirar dano da vida. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Subtract → UI Set Text` ou conecte o vetor resultante a movimento/força para retirar dano da vida.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 384. Multiply

- **ID:** `vector.vector4.multiply`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `multiply` para valores do tipo vector4; use para aplicar um multiplicador de dano. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Multiply → UI Set Text` ou conecte o vetor resultante a movimento/força para aplicar um multiplicador de dano.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 385. Divide

- **ID:** `vector.vector4.divide`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `divide` para valores do tipo vector4; use para calcular a média por jogador. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Divide → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular a média por jogador.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 386. Scale

- **ID:** `vector.vector4.scale`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `scale` para valores do tipo vector4; use para calcular scale antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Scale → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular scale antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 387. Normalize

- **ID:** `vector.vector4.normalize`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `normalize` para valores do tipo vector4; use para obter somente a direção. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector4 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Normalize → UI Set Text` ou conecte o vetor resultante a movimento/força para obter somente a direção.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 388. Length

- **ID:** `vector.vector4.length`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `length` para valores do tipo vector4; use para obter magnitude/velocidade. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector4 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Length → UI Set Text` ou conecte o vetor resultante a movimento/força para obter magnitude/velocidade.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 389. Length Squared

- **ID:** `vector.vector4.length_squared`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `length squared` para valores do tipo vector4; use para calcular length squared antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Length Squared → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular length squared antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 390. Distance

- **ID:** `vector.vector4.distance`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `distance` para valores do tipo vector4; use para medir distância entre pontos. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Distance → UI Set Text` ou conecte o vetor resultante a movimento/força para medir distância entre pontos.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 391. Dot

- **ID:** `vector.vector4.dot`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `dot` para valores do tipo vector4; use para medir alinhamento entre direções. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Dot → UI Set Text` ou conecte o vetor resultante a movimento/força para medir alinhamento entre direções.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 392. Cross

- **ID:** `vector.vector4.cross`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `cross` para valores do tipo vector4; use para obter o eixo perpendicular. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Cross → UI Set Text` ou conecte o vetor resultante a movimento/força para obter o eixo perpendicular.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 393. Lerp

- **ID:** `vector.vector4.lerp`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `lerp` para valores do tipo vector4; use para interpolar suavemente. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Lerp → UI Set Text` ou conecte o vetor resultante a movimento/força para interpolar suavemente.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 394. Move Towards

- **ID:** `vector.vector4.move_towards`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `move towards` para valores do tipo vector4; use para aproximar sem ultrapassar. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Move Towards → UI Set Text` ou conecte o vetor resultante a movimento/força para aproximar sem ultrapassar.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 395. Reflect

- **ID:** `vector.vector4.reflect`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `reflect` para valores do tipo vector4; use para calcular reflect antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Reflect → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular reflect antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 396. Project

- **ID:** `vector.vector4.project`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `project` para valores do tipo vector4; use para calcular project antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Project → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular project antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 397. Angle

- **ID:** `vector.vector4.angle`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `angle` para valores do tipo vector4; use para calcular angle antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Angle → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular angle antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 398. Clamp Length

- **ID:** `vector.vector4.clamp_length`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `clamp length` para valores do tipo vector4; use para calcular clamp length antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Clamp Length → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular clamp length antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 399. Minimum

- **ID:** `vector.vector4.minimum`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `minimum` para valores do tipo vector4; use para limitar ao menor valor. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Minimum → UI Set Text` ou conecte o vetor resultante a movimento/força para limitar ao menor valor.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 400. Maximum

- **ID:** `vector.vector4.maximum`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `maximum` para valores do tipo vector4; use para garantir um valor mínimo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Maximum → UI Set Text` ou conecte o vetor resultante a movimento/força para garantir um valor mínimo.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 401. Absolute

- **ID:** `vector.vector4.absolute`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `absolute` para valores do tipo vector4; use para remover o sinal. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector4 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Absolute → UI Set Text` ou conecte o vetor resultante a movimento/força para remover o sinal.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 402. Floor

- **ID:** `vector.vector4.floor`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `floor` para valores do tipo vector4; use para arredondar para baixo. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector4 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Floor → UI Set Text` ou conecte o vetor resultante a movimento/força para arredondar para baixo.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 403. Ceil

- **ID:** `vector.vector4.ceil`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `ceil` para valores do tipo vector4; use para arredondar para cima. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector4 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Ceil → UI Set Text` ou conecte o vetor resultante a movimento/força para arredondar para cima.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 404. Round

- **ID:** `vector.vector4.round`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `round` para valores do tipo vector4; use para arredondar ao inteiro mais próximo. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector4 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Round → UI Set Text` ou conecte o vetor resultante a movimento/força para arredondar ao inteiro mais próximo.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 405. Snap

- **ID:** `vector.vector4.snap`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `snap` para valores do tipo vector4; use para calcular snap antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Snap → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular snap antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 406. Rotate

- **ID:** `vector.vector4.rotate`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `rotate` para valores do tipo vector4; use para calcular rotate antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Rotate → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular rotate antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 407. Inverse

- **ID:** `vector.vector4.inverse`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `inverse` para valores do tipo vector4; use para calcular inverse antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Inverse → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular inverse antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 408. Is Zero

- **ID:** `vector.vector4.is_zero`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `is zero` para valores do tipo vector4; use para calcular is zero antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector4 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Is Zero → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular is zero antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 409. Is Finite

- **ID:** `vector.vector4.is_finite`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `is finite` para valores do tipo vector4; use para calcular is finite antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector4 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Is Finite → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular is finite antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 410. Make

- **ID:** `vector.vector4.make`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `make` para valores do tipo vector4; use para calcular make antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Make → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular make antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 411. Split

- **ID:** `vector.vector4.split`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `split` para valores do tipo vector4; use para calcular split antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Split → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular split antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 412. With X

- **ID:** `vector.vector4.with_x`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `with x` para valores do tipo vector4; use para calcular with x antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → With X → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular with x antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 413. With Y

- **ID:** `vector.vector4.with_y`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `with y` para valores do tipo vector4; use para calcular with y antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → With Y → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular with y antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 414. With Z

- **ID:** `vector.vector4.with_z`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `with z` para valores do tipo vector4; use para calcular with z antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → With Z → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular with z antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 415. With W

- **ID:** `vector.vector4.with_w`
- **Categoria:** Vetor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `with w` para valores do tipo vector4; use para calcular with w antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → With W → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular with w antes de alimentar outro bloco.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 416. Make Rgb

- **ID:** `color.make_rgb`
- **Categoria:** Cor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `make rgb` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Make Rgb → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 417. Make Rgba

- **ID:** `color.make_rgba`
- **Categoria:** Cor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `make rgba` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Make Rgba → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 418. Split Rgb

- **ID:** `color.split_rgb`
- **Categoria:** Cor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `split rgb` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Split Rgb → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 419. Split Rgba

- **ID:** `color.split_rgba`
- **Categoria:** Cor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `split rgba` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Split Rgba → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 420. From Hex

- **ID:** `color.from_hex`
- **Categoria:** Cor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `from hex` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color From Hex → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 421. To Hex

- **ID:** `color.to_hex`
- **Categoria:** Cor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `to hex` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color To Hex → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 422. From Hsv

- **ID:** `color.from_hsv`
- **Categoria:** Cor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `from hsv` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color From Hsv → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 423. To Hsv

- **ID:** `color.to_hsv`
- **Categoria:** Cor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `to hsv` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color To Hsv → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 424. Lerp

- **ID:** `color.lerp`
- **Categoria:** Cor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `lerp` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Lerp → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 425. Blend Add

- **ID:** `color.blend_add`
- **Categoria:** Cor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `blend add` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Blend Add → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 426. Blend Multiply

- **ID:** `color.blend_multiply`
- **Categoria:** Cor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `blend multiply` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Blend Multiply → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 427. Blend Screen

- **ID:** `color.blend_screen`
- **Categoria:** Cor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `blend screen` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Blend Screen → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 428. Blend Overlay

- **ID:** `color.blend_overlay`
- **Categoria:** Cor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `blend overlay` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Blend Overlay → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 429. Lighten

- **ID:** `color.lighten`
- **Categoria:** Cor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `lighten` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Lighten → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 430. Darken

- **ID:** `color.darken`
- **Categoria:** Cor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `darken` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Darken → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 431. Saturate

- **ID:** `color.saturate`
- **Categoria:** Cor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `saturate` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Saturate → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 432. Desaturate

- **ID:** `color.desaturate`
- **Categoria:** Cor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `desaturate` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Desaturate → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 433. Invert

- **ID:** `color.invert`
- **Categoria:** Cor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `invert` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Invert → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 434. Grayscale

- **ID:** `color.grayscale`
- **Categoria:** Cor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `grayscale` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Grayscale → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 435. Alpha

- **ID:** `color.alpha`
- **Categoria:** Cor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `alpha` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Alpha → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 436. With Alpha

- **ID:** `color.with_alpha`
- **Categoria:** Cor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `with alpha` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color With Alpha → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 437. Luminance

- **ID:** `color.luminance`
- **Categoria:** Cor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `luminance` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Luminance → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 438. Contrast

- **ID:** `color.contrast`
- **Categoria:** Cor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `contrast` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Contrast → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 439. Temperature

- **ID:** `color.temperature`
- **Categoria:** Cor
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Calcula `temperature` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Temperature → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 440. Append

- **ID:** `text.append`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Acrescenta texto ao final. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text` e `value`. Não usa `target_path`.
- **Saídas/efeito:** Texto combinado em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `Pontos: ` + `250` resulta em `Pontos: 250`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 441. Prepend

- **ID:** `text.prepend`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Acrescenta texto no início. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text` e `value`. Não usa `target_path`.
- **Saídas/efeito:** Texto combinado em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `Lv. ` antes de `12` resulta em `Lv. 12`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 442. Join

- **ID:** `text.join`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Une uma lista de textos usando um separador. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `list` e `separator`. Não usa `target_path`.
- **Saídas/efeito:** Um único texto em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `[madeira, pedra, ferro]` com `, ` resulta em `madeira, pedra, ferro`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 443. Split

- **ID:** `text.split`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Divide um texto onde encontrar o separador. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text` e `separator`. Não usa `target_path`.
- **Saídas/efeito:** Lista de partes em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `vida:80` separado por `:` resulta em `[vida, 80]`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 444. Replace

- **ID:** `text.replace`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Troca todas as ocorrências de um trecho. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`, `search` e `replacement`. Não usa `target_path`.
- **Saídas/efeito:** Texto com todas as trocas em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: trocar `{player}` por `Luna` em uma mensagem de diálogo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 445. Replace First

- **ID:** `text.replace_first`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Troca somente a primeira ocorrência. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`, `search` e `replacement`. Não usa `target_path`.
- **Saídas/efeito:** Texto com uma troca em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: em `1-1-1`, trocar primeiro `1` por `2` resulta em `2-1-1`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 446. Contains

- **ID:** `text.contains`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Verifica se um trecho aparece no texto. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text` e `search`. Não usa `target_path`.
- **Saídas/efeito:** Booleano em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: testar se `Chave Dourada` contém `Chave` antes de abrir uma porta.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 447. Starts With

- **ID:** `text.starts_with`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Verifica o começo do texto. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text` e `prefix`. Não usa `target_path`.
- **Saídas/efeito:** Booleano em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: identificar comandos que começam com `/`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 448. Ends With

- **ID:** `text.ends_with`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Verifica o final do texto. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text` e `suffix`. Não usa `target_path`.
- **Saídas/efeito:** Booleano em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: confirmar se um arquivo termina em `.png`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 449. Equals Ignore Case

- **ID:** `text.equals_ignore_case`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Compara dois textos ignorando maiúsculas/minúsculas. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `a` e `b`. Não usa `target_path`.
- **Saídas/efeito:** Booleano em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `PLAY` e `play` retornam `true`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 450. Uppercase

- **ID:** `text.uppercase`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Converte letras para maiúsculas. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`. Não usa `target_path`.
- **Saídas/efeito:** Texto em caixa alta em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `missão concluída` resulta em `MISSÃO CONCLUÍDA`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 451. Lowercase

- **ID:** `text.lowercase`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Converte letras para minúsculas. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`. Não usa `target_path`.
- **Saídas/efeito:** Texto em caixa baixa em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `PlayerName` resulta em `playername`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 452. Capitalize

- **ID:** `text.capitalize`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Coloca iniciais de palavras em maiúsculas. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`. Não usa `target_path`.
- **Saídas/efeito:** Texto capitalizado em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `espada de fogo` resulta em `Espada De Fogo`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 453. Trim

- **ID:** `text.trim`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Remove espaços do início e do fim. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`. Não usa `target_path`.
- **Saídas/efeito:** Texto sem espaços externos em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `  Luna  ` resulta em `Luna`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 454. Trim Start

- **ID:** `text.trim_start`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Remove espaços somente do início. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`. Não usa `target_path`.
- **Saídas/efeito:** Texto sem espaços iniciais em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: limpar indentação acidental de um nome digitado.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 455. Trim End

- **ID:** `text.trim_end`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Remove espaços somente do fim. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`. Não usa `target_path`.
- **Saídas/efeito:** Texto sem espaços finais em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: limpar espaços depois de um código digitado.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 456. Substring

- **ID:** `text.substring`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Recorta parte do texto por posição. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`, `start` e `length`. Não usa `target_path`.
- **Saídas/efeito:** Trecho recortado em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: em `PLAYER_001`, início `7`, tamanho `3` retorna `001`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 457. Character At

- **ID:** `text.character_at`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Obtém o caractere de uma posição. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text` e `index` começando em zero. Não usa `target_path`.
- **Saídas/efeito:** Um caractere em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: índice `0` de `Godot` retorna `G`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 458. Length

- **ID:** `text.length`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Conta os caracteres. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`. Não usa `target_path`.
- **Saídas/efeito:** Número inteiro em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: limitar o nome do jogador a 16 caracteres.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 459. Is Empty

- **ID:** `text.is_empty`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Verifica se o texto tem zero caracteres. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`. Não usa `target_path`.
- **Saídas/efeito:** Booleano em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: impedir save quando o nome é `""`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 460. Is Blank

- **ID:** `text.is_blank`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Verifica se há somente espaços/quebras de linha. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`. Não usa `target_path`.
- **Saídas/efeito:** Booleano em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: rejeitar um nome digitado como `   `.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 461. Pad Start

- **ID:** `text.pad_start`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Completa o início até atingir um tamanho. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`, `length` e `fill`. Não usa `target_path`.
- **Saídas/efeito:** Texto preenchido em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `7` com tamanho `3` e `0` resulta em `007`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 462. Pad End

- **ID:** `text.pad_end`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Completa o final até atingir um tamanho. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`, `length` e `fill`. Não usa `target_path`.
- **Saídas/efeito:** Texto preenchido em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: alinhar `HP` com espaços até 8 caracteres.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 463. Repeat

- **ID:** `text.repeat`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Repete o texto uma quantidade de vezes. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text` e `count`. Não usa `target_path`.
- **Saídas/efeito:** Texto repetido em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `★` repetido 3 vezes resulta em `★★★`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 464. Reverse

- **ID:** `text.reverse`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Inverte a ordem dos caracteres. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** Somente `text`. Não usa `target_path`.
- **Saídas/efeito:** Novo texto invertido em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `PORTA` resulta em `ATROP`; útil para puzzle de palavra ou efeito visual.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 465. Format

- **ID:** `text.format`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Substitui marcadores por valores. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `template` e valores nomeados/posicionais. Não usa `target_path`.
- **Saídas/efeito:** Texto formatado em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `Vida: {0}/{1}` com `80` e `100` resulta em `Vida: 80/100`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 466. Number To Text

- **ID:** `text.number_to_text`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Converte número em texto. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `value` e casas decimais opcionais. Não usa `target_path`.
- **Saídas/efeito:** Representação textual em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `12.5` com uma casa resulta em `12.5` para usar em `UI Set Text`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 467. Bool To Text

- **ID:** `text.bool_to_text`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Converte booleano em texto. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `value`, texto para verdadeiro e texto para falso. Não usa `target_path`.
- **Saídas/efeito:** Texto escolhido em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `true` com `Ligado/Desligado` resulta em `Ligado`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 468. Vector To Text

- **ID:** `text.vector_to_text`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Converte vetor em texto legível. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `value` e precisão opcional. Não usa `target_path`.
- **Saídas/efeito:** Componentes formatados em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `Vector3(1,2,3)` resulta em `(1, 2, 3)`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 469. Parse Number

- **ID:** `text.parse_number`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Interpreta texto como número. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text` e valor padrão opcional. Não usa `target_path`.
- **Saídas/efeito:** Número convertido em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `125.5` resulta em `125.5`; use antes de cálculos.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 470. Parse Bool

- **ID:** `text.parse_bool`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Interpreta texto como booleano. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text` e valor padrão opcional. Não usa `target_path`.
- **Saídas/efeito:** Booleano convertido em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `true` resulta em `true` para alimentar um `Branch`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 471. Regex Matches

- **ID:** `text.regex_matches`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Verifica se o texto corresponde a uma expressão regular. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text` e `pattern`. Não usa `target_path`.
- **Saídas/efeito:** Booleano em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: padrão `^[A-Z0-9_]+$` valida um código de sala.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 472. Regex Find

- **ID:** `text.regex_find`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Localiza um trecho por expressão regular. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text` e `pattern`. Não usa `target_path`.
- **Saídas/efeito:** Primeiro trecho encontrado/posição em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: padrão `\d+` encontra `250` em `Pontos: 250`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 473. Regex Replace

- **ID:** `text.regex_replace`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Substitui trechos encontrados por expressão regular. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`, `pattern` e `replacement`. Não usa `target_path`.
- **Saídas/efeito:** Texto substituído em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: trocar `\s+` por um espaço limpa espaços duplicados.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 474. Lines

- **ID:** `text.lines`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Divide o texto por quebras de linha. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`. Não usa `target_path`.
- **Saídas/efeito:** Lista com uma entrada por linha em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: transformar uma lista de objetivos multilinha em itens de UI.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 475. Words

- **ID:** `text.words`
- **Categoria:** Texto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Divide o texto em palavras. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`. Não usa `target_path`.
- **Saídas/efeito:** Lista de palavras em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `espada de fogo` resulta em `[espada, de, fogo]`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 476. Find By Name

- **ID:** `object.find_by_name`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Find by name no sistema de objeto da cena, atuando diretamente no componente da cena. Use quando o gameplay precisa find by name esse recurso em tempo de execução.
- **Entradas/alvo:** `name`: nome exato procurado na scenetree.
- **Saídas/efeito:** Aplica `find by name` pela API nativa registrada para objeto da cena e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Em uma fase com `../Door`, use `Find By Name` para find by name quando o jogador interagir; o efeito acontece nesse Node, não em uma cópia desconectada.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 477. Find By Tag

- **ID:** `object.find_by_tag`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Find by tag no sistema de objeto da cena, atuando diretamente no componente da cena. Use quando o gameplay precisa find by tag esse recurso em tempo de execução.
- **Entradas/alvo:** `tag`: etiqueta cadastrada.
- **Saídas/efeito:** Aplica `find by tag` pela API nativa registrada para objeto da cena e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Em uma fase com `../Door`, use `Find By Tag` para find by tag quando o jogador interagir; o efeito acontece nesse Node, não em uma cópia desconectada.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 478. Find By Id

- **ID:** `object.find_by_id`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Find by id no sistema de objeto da cena, atuando diretamente no componente da cena. Use quando o gameplay precisa find by id esse recurso em tempo de execução.
- **Entradas/alvo:** `id`: identificador persistente.
- **Saídas/efeito:** Aplica `find by id` pela API nativa registrada para objeto da cena e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Em uma fase com `../Door`, use `Find By Id` para find by id quando o jogador interagir; o efeito acontece nesse Node, não em uma cópia desconectada.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 479. Create

- **ID:** `object.create`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Cria no sistema de objeto da cena, atuando diretamente no componente da cena. Use quando o gameplay precisa cria esse recurso em tempo de execução.
- **Entradas/alvo:** `scene`/`class_name` e `parent_path`.
- **Saídas/efeito:** Aplica `create` pela API nativa registrada para objeto da cena e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Em uma fase com `../Door`, use `Create` para cria quando o jogador interagir; o efeito acontece nesse Node, não em uma cópia desconectada.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 480. Clone

- **ID:** `object.clone`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Duplica no sistema de objeto da cena, atuando diretamente no componente da cena. Use quando o gameplay precisa duplica esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path` e `parent_path` opcional.
- **Saídas/efeito:** Aplica `clone` pela API nativa registrada para objeto da cena e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Em uma fase com `../Door`, use `Clone` para duplica quando o jogador interagir; o efeito acontece nesse Node, não em uma cópia desconectada.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 481. Destroy

- **ID:** `object.destroy`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Remove da cena no sistema de objeto da cena, atuando diretamente no componente da cena. Use quando o gameplay precisa remove da cena esse recurso em tempo de execução.
- **Entradas/alvo:** Somente `target_path`.
- **Saídas/efeito:** Aplica `destroy` pela API nativa registrada para objeto da cena e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Em uma fase com `../Door`, use `Destroy` para remove da cena quando o jogador interagir; o efeito acontece nesse Node, não em uma cópia desconectada.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 482. Enable

- **ID:** `object.enable`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Reativa o processamento de um Node da cena. Use `Enable` para devolver comportamento a inimigos, plataformas ou controladores que foram desativados; isso não é o mesmo que apenas torná-los visíveis.
- **Entradas/alvo:** `target_path`: caminho do Node a controlar, por exemplo `../Enemies/Guard`. Não recebe valor adicional.
- **Saídas/efeito:** Coloca o alvo no estado ativo por meio do modo de processamento e emite `flow`. O Node continua existindo na SceneTree.
- **Exemplo:** Inimigo por proximidade: `Trigger Enter → Enable`, alvo `../Enemies/Guard`; ao entrar na área, o guarda volta a processar IA e movimento. Use `Disable` no `Trigger Exit` para interrompê-lo novamente.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 483. Disable

- **ID:** `object.disable`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Desativa o processamento de um Node da cena. Use `Enable` para devolver comportamento a inimigos, plataformas ou controladores que foram desativados; isso não é o mesmo que apenas torná-los visíveis.
- **Entradas/alvo:** `target_path`: caminho do Node a controlar, por exemplo `../Enemies/Guard`. Não recebe valor adicional.
- **Saídas/efeito:** Coloca o alvo no estado desativado por meio do modo de processamento e emite `flow`. O Node continua existindo na SceneTree.
- **Exemplo:** Inimigo por proximidade: `Trigger Enter → Enable`, alvo `../Enemies/Guard`; ao entrar na área, o guarda volta a processar IA e movimento. Use `Disable` no `Trigger Exit` para interrompê-lo novamente.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 484. Toggle Enabled

- **ID:** `object.toggle_enabled`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Alterna o processamento de um Node da cena. Use `Enable` para devolver comportamento a inimigos, plataformas ou controladores que foram desativados; isso não é o mesmo que apenas torná-los visíveis.
- **Entradas/alvo:** `target_path`: caminho do Node a controlar, por exemplo `../Enemies/Guard`. Não recebe valor adicional.
- **Saídas/efeito:** Coloca o alvo no estado estado oposto por meio do modo de processamento e emite `flow`. O Node continua existindo na SceneTree.
- **Exemplo:** Inimigo por proximidade: `Trigger Enter → Enable`, alvo `../Enemies/Guard`; ao entrar na área, o guarda volta a processar IA e movimento. Use `Disable` no `Trigger Exit` para interrompê-lo novamente.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 485. Set Name

- **ID:** `object.set_name`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `name` no sistema de objeto da cena do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de name, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza name no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Name`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 486. Get Name

- **ID:** `object.get_name`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Consulta `name` no sistema de objeto da cena sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna name em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Name → UI Set Text` mostra name no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 487. Set Parent

- **ID:** `object.set_parent`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `parent` no sistema de objeto da cena do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de parent, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza parent no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Parent`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 488. Get Parent

- **ID:** `object.get_parent`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Consulta `parent` no sistema de objeto da cena sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna parent em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Parent → UI Set Text` mostra parent no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 489. Add Child

- **ID:** `object.add_child`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Add child no sistema de objeto da cena, atuando diretamente no componente da cena. Use quando o gameplay precisa add child esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path` do pai e `child_path`.
- **Saídas/efeito:** Aplica `add child` pela API nativa registrada para objeto da cena e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Em uma fase com `../Door`, use `Add Child` para add child quando o jogador interagir; o efeito acontece nesse Node, não em uma cópia desconectada.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 490. Remove Child

- **ID:** `object.remove_child`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Remove child no sistema de objeto da cena, atuando diretamente no componente da cena. Use quando o gameplay precisa remove child esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path` do pai e `child_path`.
- **Saídas/efeito:** Aplica `remove child` pela API nativa registrada para objeto da cena e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Em uma fase com `../Door`, use `Remove Child` para remove child quando o jogador interagir; o efeito acontece nesse Node, não em uma cópia desconectada.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 491. Get Child

- **ID:** `object.get_child`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Consulta `child` no sistema de objeto da cena sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna child em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Child → UI Set Text` mostra child no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 492. Child Count

- **ID:** `object.child_count`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Child count no sistema de objeto da cena, atuando diretamente no componente da cena. Use quando o gameplay precisa child count esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `node` existente na scenetree; configure `child count` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `child count` pela API nativa registrada para objeto da cena e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Em uma fase com `../Door`, use `Child Count` para child count quando o jogador interagir; o efeito acontece nesse Node, não em uma cópia desconectada.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 493. Add Tag

- **ID:** `object.add_tag`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Add tag no sistema de objeto da cena, atuando diretamente no componente da cena. Use quando o gameplay precisa add tag esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `node` existente na scenetree; configure `add tag` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `add tag` pela API nativa registrada para objeto da cena e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Em uma fase com `../Door`, use `Add Tag` para add tag quando o jogador interagir; o efeito acontece nesse Node, não em uma cópia desconectada.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 494. Remove Tag

- **ID:** `object.remove_tag`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Remove tag no sistema de objeto da cena, atuando diretamente no componente da cena. Use quando o gameplay precisa remove tag esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `node` existente na scenetree; configure `remove tag` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `remove tag` pela API nativa registrada para objeto da cena e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Em uma fase com `../Door`, use `Remove Tag` para remove tag quando o jogador interagir; o efeito acontece nesse Node, não em uma cópia desconectada.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 495. Has Tag

- **ID:** `object.has_tag`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Has tag no sistema de objeto da cena, atuando diretamente no componente da cena. Use quando o gameplay precisa has tag esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `node` existente na scenetree; configure `has tag` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `has tag` pela API nativa registrada para objeto da cena e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Em uma fase com `../Door`, use `Has Tag` para has tag quando o jogador interagir; o efeito acontece nesse Node, não em uma cópia desconectada.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 496. Send Event

- **ID:** `object.send_event`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Send event no sistema de objeto da cena, atuando diretamente no componente da cena. Use quando o gameplay precisa send event esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path` e `event_name`.
- **Saídas/efeito:** Aplica `send event` pela API nativa registrada para objeto da cena e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Em uma fase com `../Door`, use `Send Event` para send event quando o jogador interagir; o efeito acontece nesse Node, não em uma cópia desconectada.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 497. Send Event Bool

- **ID:** `object.send_event_bool`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Send event bool no sistema de objeto da cena, atuando diretamente no componente da cena. Use quando o gameplay precisa send event bool esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `node` existente na scenetree; configure `send event bool` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `send event bool` pela API nativa registrada para objeto da cena e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Em uma fase com `../Door`, use `Send Event Bool` para send event bool quando o jogador interagir; o efeito acontece nesse Node, não em uma cópia desconectada.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 498. Send Event Number

- **ID:** `object.send_event_number`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Send event number no sistema de objeto da cena, atuando diretamente no componente da cena. Use quando o gameplay precisa send event number esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `node` existente na scenetree; configure `send event number` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `send event number` pela API nativa registrada para objeto da cena e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Em uma fase com `../Door`, use `Send Event Number` para send event number quando o jogador interagir; o efeito acontece nesse Node, não em uma cópia desconectada.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 499. Send Event Text

- **ID:** `object.send_event_text`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Send event text no sistema de objeto da cena, atuando diretamente no componente da cena. Use quando o gameplay precisa send event text esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `node` existente na scenetree; configure `send event text` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `send event text` pela API nativa registrada para objeto da cena e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Em uma fase com `../Door`, use `Send Event Text` para send event text quando o jogador interagir; o efeito acontece nesse Node, não em uma cópia desconectada.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 500. Get Component

- **ID:** `object.get_component`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Consulta `component` no sistema de objeto da cena sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna component em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Component → UI Set Text` mostra component no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 501. Has Component

- **ID:** `object.has_component`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Has component no sistema de objeto da cena, atuando diretamente no componente da cena. Use quando o gameplay precisa has component esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `node` existente na scenetree; configure `has component` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `has component` pela API nativa registrada para objeto da cena e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Em uma fase com `../Door`, use `Has Component` para has component quando o jogador interagir; o efeito acontece nesse Node, não em uma cópia desconectada.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 502. Add Component

- **ID:** `object.add_component`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Add component no sistema de objeto da cena, atuando diretamente no componente da cena. Use quando o gameplay precisa add component esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `node` existente na scenetree; configure `add component` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `add component` pela API nativa registrada para objeto da cena e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Em uma fase com `../Door`, use `Add Component` para add component quando o jogador interagir; o efeito acontece nesse Node, não em uma cópia desconectada.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 503. Remove Component

- **ID:** `object.remove_component`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Remove component no sistema de objeto da cena, atuando diretamente no componente da cena. Use quando o gameplay precisa remove component esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `node` existente na scenetree; configure `remove component` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `remove component` pela API nativa registrada para objeto da cena e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Em uma fase com `../Door`, use `Remove Component` para remove component quando o jogador interagir; o efeito acontece nesse Node, não em uma cópia desconectada.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 504. Set Layer

- **ID:** `object.set_layer`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `layer` no sistema de objeto da cena do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de layer, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza layer no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Layer`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 505. Get Layer

- **ID:** `object.get_layer`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Consulta `layer` no sistema de objeto da cena sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna layer em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Layer → UI Set Text` mostra layer no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 506. Set Visible

- **ID:** `object.set_visible`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `visible` no sistema de objeto da cena do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de visible, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza visible no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Visible`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 507. Is Visible

- **ID:** `object.is_visible`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Is visible no sistema de objeto da cena, atuando diretamente no componente da cena. Use quando o gameplay precisa is visible esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `node` existente na scenetree; configure `is visible` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `is visible` pela API nativa registrada para objeto da cena e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Em uma fase com `../Door`, use `Is Visible` para is visible quando o jogador interagir; o efeito acontece nesse Node, não em uma cópia desconectada.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 508. Set Static

- **ID:** `object.set_static`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `static` no sistema de objeto da cena do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de static, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza static no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Static`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 509. Is Static

- **ID:** `object.is_static`
- **Categoria:** Objeto
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Is static no sistema de objeto da cena, atuando diretamente no componente da cena. Use quando o gameplay precisa is static esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `node` existente na scenetree; configure `is static` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `is static` pela API nativa registrada para objeto da cena e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Em uma fase com `../Door`, use `Is Static` para is static quando o jogador interagir; o efeito acontece nesse Node, não em uma cópia desconectada.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 510. Create

- **ID:** `list.number.create`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Cria uma lista vazia em uma lista de number. Use para use a saída como inventário inicial.
- **Entradas/alvo:** Nenhuma entrada.
- **Saídas/efeito:** Uma nova lista vazia. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Create` e use a saída para use a saída como inventário inicial.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 511. Add

- **ID:** `list.number.add`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Adiciona um item ao final em uma lista de number. Use para adicione uma moeda coletada ao inventário.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** A lista com o novo item. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Add` e use a saída para adicione uma moeda coletada ao inventário.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 512. Insert

- **ID:** `list.number.insert`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Insere um item em uma posição em uma lista de number. Use para insira uma missão no topo usando índice `0`.
- **Entradas/alvo:** `list`, `index` e `value`.
- **Saídas/efeito:** A lista com o item inserido. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Insert` e use a saída para insira uma missão no topo usando índice `0`.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 513. Set

- **ID:** `list.number.set`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Substitui o item de uma posição em uma lista de number. Use para troque o item do slot selecionado.
- **Entradas/alvo:** `list`, `index` e `value`.
- **Saídas/efeito:** A lista atualizada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Set` e use a saída para troque o item do slot selecionado.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 514. Get

- **ID:** `list.number.get`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Obtém o item de uma posição em uma lista de number. Use para leia o item do slot `2` e mostre seu nome.
- **Entradas/alvo:** `list` e `index`.
- **Saídas/efeito:** O item encontrado em `value`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Get` e use a saída para leia o item do slot `2` e mostre seu nome.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 515. First

- **ID:** `list.number.first`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Obtém o primeiro item em uma lista de number. Use para selecione a primeira missão da fila.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** O primeiro item ou valor vazio. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `First` e use a saída para selecione a primeira missão da fila.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 516. Last

- **ID:** `list.number.last`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Obtém o último item em uma lista de number. Use para recupere o checkpoint mais recente.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** O último item ou valor vazio. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Last` e use a saída para recupere o checkpoint mais recente.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 517. Remove

- **ID:** `list.number.remove`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Remove a primeira ocorrência de um valor em uma lista de number. Use para remova a chave usada do inventário.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** A lista sem o item e um booleano de sucesso. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Remove` e use a saída para remova a chave usada do inventário.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 518. Remove At

- **ID:** `list.number.remove_at`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Remove o item de um índice em uma lista de number. Use para exclua o slot `1` da barra rápida.
- **Entradas/alvo:** `list` e `index`.
- **Saídas/efeito:** A lista sem aquela posição. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Remove At` e use a saída para exclua o slot `1` da barra rápida.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 519. Clear

- **ID:** `list.number.clear`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Remove todos os itens em uma lista de number. Use para limpe inimigos rastreados ao trocar de fase.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** A mesma lista vazia. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Clear` e use a saída para limpe inimigos rastreados ao trocar de fase.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 520. Contains

- **ID:** `list.number.contains`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Verifica se um valor existe em uma lista de number. Use para use Branch para permitir uma porta somente se houver uma chave.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** `true` ou `false`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Contains` e use a saída para use Branch para permitir uma porta somente se houver uma chave.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 521. Index Of

- **ID:** `list.number.index_of`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Procura a primeira posição de um valor em uma lista de number. Use para localize a primeira poção no inventário.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** Índice ou `-1`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Index Of` e use a saída para localize a primeira poção no inventário.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 522. Last Index Of

- **ID:** `list.number.last_index_of`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Procura a última posição de um valor em uma lista de number. Use para localize o último checkpoint repetido.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** Índice ou `-1`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Last Index Of` e use a saída para localize o último checkpoint repetido.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 523. Count

- **ID:** `list.number.count`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Conta os itens em uma lista de number. Use para atualize `Itens: 8` na interface.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Quantidade inteira. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Count` e use a saída para atualize `Itens: 8` na interface.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 524. Is Empty

- **ID:** `list.number.is_empty`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Verifica se não há itens em uma lista de number. Use para encerre a onda quando a lista de inimigos ficar vazia.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** `true` quando a lista está vazia. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Is Empty` e use a saída para encerre a onda quando a lista de inimigos ficar vazia.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 525. Reverse

- **ID:** `list.number.reverse`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Inverte a ordem em uma lista de number. Use para mostre o histórico do mais recente ao mais antigo.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Lista em ordem inversa. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Reverse` e use a saída para mostre o histórico do mais recente ao mais antigo.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 526. Shuffle

- **ID:** `list.number.shuffle`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Embaralha a ordem em uma lista de number. Use para embaralhe cartas antes de distribuí-las.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Lista embaralhada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Shuffle` e use a saída para embaralhe cartas antes de distribuí-las.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 527. Sort

- **ID:** `list.number.sort`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Ordena os valores em uma lista de number. Use para ordene pontuações antes do placar.
- **Entradas/alvo:** `list` e direção opcional.
- **Saídas/efeito:** Lista ordenada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Sort` e use a saída para ordene pontuações antes do placar.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 528. Distinct

- **ID:** `list.number.distinct`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Remove valores duplicados em uma lista de number. Use para elimine IDs de alvos repetidos.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Lista apenas com valores únicos. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Distinct` e use a saída para elimine IDs de alvos repetidos.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 529. Slice

- **ID:** `list.number.slice`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Recorta um intervalo em uma lista de number. Use para mostre somente os primeiros dez resultados.
- **Entradas/alvo:** `list`, `start` e `length`.
- **Saídas/efeito:** Uma nova sublista. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Slice` e use a saída para mostre somente os primeiros dez resultados.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 530. Concat

- **ID:** `list.number.concat`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Une duas listas em uma lista de number. Use para junte inventário normal e itens temporários.
- **Entradas/alvo:** `list` e `other`.
- **Saídas/efeito:** Uma lista com ambas em sequência. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Concat` e use a saída para junte inventário normal e itens temporários.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 531. Filter

- **ID:** `list.number.filter`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Mantém itens aprovados por uma condição em uma lista de number. Use para mantenha somente inimigos ainda vivos.
- **Entradas/alvo:** `list` e condição/filtro.
- **Saídas/efeito:** Lista filtrada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Filter` e use a saída para mantenha somente inimigos ainda vivos.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 532. Map

- **ID:** `list.number.map`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Transforma cada item em uma lista de number. Use para converta pontuações numéricas para textos.
- **Entradas/alvo:** `list` e transformação.
- **Saídas/efeito:** Nova lista transformada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Map` e use a saída para converta pontuações numéricas para textos.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 533. Reduce

- **ID:** `list.number.reduce`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Combina todos os itens em um resultado em uma lista de number. Use para some todos os danos para obter o dano total.
- **Entradas/alvo:** `list`, valor inicial e operação.
- **Saídas/efeito:** Valor acumulado. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Reduce` e use a saída para some todos os danos para obter o dano total.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 534. Random

- **ID:** `list.number.random`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Escolhe um item aleatório em uma lista de number. Use para escolha aleatoriamente um ponto de spawn.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Um item da lista. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Random` e use a saída para escolha aleatoriamente um ponto de spawn.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 535. Create

- **ID:** `list.text.create`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Cria uma lista vazia em uma lista de text. Use para use a saída como inventário inicial.
- **Entradas/alvo:** Nenhuma entrada.
- **Saídas/efeito:** Uma nova lista vazia. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Create` e use a saída para use a saída como inventário inicial.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 536. Add

- **ID:** `list.text.add`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Adiciona um item ao final em uma lista de text. Use para adicione uma moeda coletada ao inventário.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** A lista com o novo item. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Add` e use a saída para adicione uma moeda coletada ao inventário.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 537. Insert

- **ID:** `list.text.insert`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Insere um item em uma posição em uma lista de text. Use para insira uma missão no topo usando índice `0`.
- **Entradas/alvo:** `list`, `index` e `value`.
- **Saídas/efeito:** A lista com o item inserido. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Insert` e use a saída para insira uma missão no topo usando índice `0`.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 538. Set

- **ID:** `list.text.set`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Substitui o item de uma posição em uma lista de text. Use para troque o item do slot selecionado.
- **Entradas/alvo:** `list`, `index` e `value`.
- **Saídas/efeito:** A lista atualizada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Set` e use a saída para troque o item do slot selecionado.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 539. Get

- **ID:** `list.text.get`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Obtém o item de uma posição em uma lista de text. Use para leia o item do slot `2` e mostre seu nome.
- **Entradas/alvo:** `list` e `index`.
- **Saídas/efeito:** O item encontrado em `value`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Get` e use a saída para leia o item do slot `2` e mostre seu nome.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 540. First

- **ID:** `list.text.first`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Obtém o primeiro item em uma lista de text. Use para selecione a primeira missão da fila.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** O primeiro item ou valor vazio. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `First` e use a saída para selecione a primeira missão da fila.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 541. Last

- **ID:** `list.text.last`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Obtém o último item em uma lista de text. Use para recupere o checkpoint mais recente.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** O último item ou valor vazio. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Last` e use a saída para recupere o checkpoint mais recente.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 542. Remove

- **ID:** `list.text.remove`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Remove a primeira ocorrência de um valor em uma lista de text. Use para remova a chave usada do inventário.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** A lista sem o item e um booleano de sucesso. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Remove` e use a saída para remova a chave usada do inventário.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 543. Remove At

- **ID:** `list.text.remove_at`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Remove o item de um índice em uma lista de text. Use para exclua o slot `1` da barra rápida.
- **Entradas/alvo:** `list` e `index`.
- **Saídas/efeito:** A lista sem aquela posição. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Remove At` e use a saída para exclua o slot `1` da barra rápida.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 544. Clear

- **ID:** `list.text.clear`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Remove todos os itens em uma lista de text. Use para limpe inimigos rastreados ao trocar de fase.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** A mesma lista vazia. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Clear` e use a saída para limpe inimigos rastreados ao trocar de fase.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 545. Contains

- **ID:** `list.text.contains`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Verifica se um valor existe em uma lista de text. Use para use Branch para permitir uma porta somente se houver uma chave.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** `true` ou `false`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Contains` e use a saída para use Branch para permitir uma porta somente se houver uma chave.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 546. Index Of

- **ID:** `list.text.index_of`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Procura a primeira posição de um valor em uma lista de text. Use para localize a primeira poção no inventário.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** Índice ou `-1`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Index Of` e use a saída para localize a primeira poção no inventário.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 547. Last Index Of

- **ID:** `list.text.last_index_of`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Procura a última posição de um valor em uma lista de text. Use para localize o último checkpoint repetido.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** Índice ou `-1`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Last Index Of` e use a saída para localize o último checkpoint repetido.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 548. Count

- **ID:** `list.text.count`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Conta os itens em uma lista de text. Use para atualize `Itens: 8` na interface.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Quantidade inteira. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Count` e use a saída para atualize `Itens: 8` na interface.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 549. Is Empty

- **ID:** `list.text.is_empty`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Verifica se não há itens em uma lista de text. Use para encerre a onda quando a lista de inimigos ficar vazia.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** `true` quando a lista está vazia. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Is Empty` e use a saída para encerre a onda quando a lista de inimigos ficar vazia.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 550. Reverse

- **ID:** `list.text.reverse`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Inverte a ordem em uma lista de text. Use para mostre o histórico do mais recente ao mais antigo.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Lista em ordem inversa. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Reverse` e use a saída para mostre o histórico do mais recente ao mais antigo.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 551. Shuffle

- **ID:** `list.text.shuffle`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Embaralha a ordem em uma lista de text. Use para embaralhe cartas antes de distribuí-las.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Lista embaralhada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Shuffle` e use a saída para embaralhe cartas antes de distribuí-las.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 552. Sort

- **ID:** `list.text.sort`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Ordena os valores em uma lista de text. Use para ordene pontuações antes do placar.
- **Entradas/alvo:** `list` e direção opcional.
- **Saídas/efeito:** Lista ordenada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Sort` e use a saída para ordene pontuações antes do placar.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 553. Distinct

- **ID:** `list.text.distinct`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Remove valores duplicados em uma lista de text. Use para elimine IDs de alvos repetidos.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Lista apenas com valores únicos. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Distinct` e use a saída para elimine IDs de alvos repetidos.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 554. Slice

- **ID:** `list.text.slice`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Recorta um intervalo em uma lista de text. Use para mostre somente os primeiros dez resultados.
- **Entradas/alvo:** `list`, `start` e `length`.
- **Saídas/efeito:** Uma nova sublista. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Slice` e use a saída para mostre somente os primeiros dez resultados.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 555. Concat

- **ID:** `list.text.concat`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Une duas listas em uma lista de text. Use para junte inventário normal e itens temporários.
- **Entradas/alvo:** `list` e `other`.
- **Saídas/efeito:** Uma lista com ambas em sequência. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Concat` e use a saída para junte inventário normal e itens temporários.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 556. Filter

- **ID:** `list.text.filter`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Mantém itens aprovados por uma condição em uma lista de text. Use para mantenha somente inimigos ainda vivos.
- **Entradas/alvo:** `list` e condição/filtro.
- **Saídas/efeito:** Lista filtrada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Filter` e use a saída para mantenha somente inimigos ainda vivos.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 557. Map

- **ID:** `list.text.map`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Transforma cada item em uma lista de text. Use para converta pontuações numéricas para textos.
- **Entradas/alvo:** `list` e transformação.
- **Saídas/efeito:** Nova lista transformada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Map` e use a saída para converta pontuações numéricas para textos.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 558. Reduce

- **ID:** `list.text.reduce`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Combina todos os itens em um resultado em uma lista de text. Use para some todos os danos para obter o dano total.
- **Entradas/alvo:** `list`, valor inicial e operação.
- **Saídas/efeito:** Valor acumulado. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Reduce` e use a saída para some todos os danos para obter o dano total.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 559. Random

- **ID:** `list.text.random`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Escolhe um item aleatório em uma lista de text. Use para escolha aleatoriamente um ponto de spawn.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Um item da lista. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Random` e use a saída para escolha aleatoriamente um ponto de spawn.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 560. Create

- **ID:** `list.bool.create`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Cria uma lista vazia em uma lista de bool. Use para use a saída como inventário inicial.
- **Entradas/alvo:** Nenhuma entrada.
- **Saídas/efeito:** Uma nova lista vazia. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Create` e use a saída para use a saída como inventário inicial.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 561. Add

- **ID:** `list.bool.add`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Adiciona um item ao final em uma lista de bool. Use para adicione uma moeda coletada ao inventário.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** A lista com o novo item. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Add` e use a saída para adicione uma moeda coletada ao inventário.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 562. Insert

- **ID:** `list.bool.insert`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Insere um item em uma posição em uma lista de bool. Use para insira uma missão no topo usando índice `0`.
- **Entradas/alvo:** `list`, `index` e `value`.
- **Saídas/efeito:** A lista com o item inserido. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Insert` e use a saída para insira uma missão no topo usando índice `0`.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 563. Set

- **ID:** `list.bool.set`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Substitui o item de uma posição em uma lista de bool. Use para troque o item do slot selecionado.
- **Entradas/alvo:** `list`, `index` e `value`.
- **Saídas/efeito:** A lista atualizada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Set` e use a saída para troque o item do slot selecionado.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 564. Get

- **ID:** `list.bool.get`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Obtém o item de uma posição em uma lista de bool. Use para leia o item do slot `2` e mostre seu nome.
- **Entradas/alvo:** `list` e `index`.
- **Saídas/efeito:** O item encontrado em `value`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Get` e use a saída para leia o item do slot `2` e mostre seu nome.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 565. First

- **ID:** `list.bool.first`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Obtém o primeiro item em uma lista de bool. Use para selecione a primeira missão da fila.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** O primeiro item ou valor vazio. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `First` e use a saída para selecione a primeira missão da fila.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 566. Last

- **ID:** `list.bool.last`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Obtém o último item em uma lista de bool. Use para recupere o checkpoint mais recente.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** O último item ou valor vazio. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Last` e use a saída para recupere o checkpoint mais recente.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 567. Remove

- **ID:** `list.bool.remove`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Remove a primeira ocorrência de um valor em uma lista de bool. Use para remova a chave usada do inventário.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** A lista sem o item e um booleano de sucesso. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Remove` e use a saída para remova a chave usada do inventário.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 568. Remove At

- **ID:** `list.bool.remove_at`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Remove o item de um índice em uma lista de bool. Use para exclua o slot `1` da barra rápida.
- **Entradas/alvo:** `list` e `index`.
- **Saídas/efeito:** A lista sem aquela posição. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Remove At` e use a saída para exclua o slot `1` da barra rápida.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 569. Clear

- **ID:** `list.bool.clear`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Remove todos os itens em uma lista de bool. Use para limpe inimigos rastreados ao trocar de fase.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** A mesma lista vazia. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Clear` e use a saída para limpe inimigos rastreados ao trocar de fase.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 570. Contains

- **ID:** `list.bool.contains`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Verifica se um valor existe em uma lista de bool. Use para use Branch para permitir uma porta somente se houver uma chave.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** `true` ou `false`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Contains` e use a saída para use Branch para permitir uma porta somente se houver uma chave.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 571. Index Of

- **ID:** `list.bool.index_of`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Procura a primeira posição de um valor em uma lista de bool. Use para localize a primeira poção no inventário.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** Índice ou `-1`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Index Of` e use a saída para localize a primeira poção no inventário.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 572. Last Index Of

- **ID:** `list.bool.last_index_of`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Procura a última posição de um valor em uma lista de bool. Use para localize o último checkpoint repetido.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** Índice ou `-1`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Last Index Of` e use a saída para localize o último checkpoint repetido.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 573. Count

- **ID:** `list.bool.count`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Conta os itens em uma lista de bool. Use para atualize `Itens: 8` na interface.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Quantidade inteira. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Count` e use a saída para atualize `Itens: 8` na interface.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 574. Is Empty

- **ID:** `list.bool.is_empty`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Verifica se não há itens em uma lista de bool. Use para encerre a onda quando a lista de inimigos ficar vazia.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** `true` quando a lista está vazia. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Is Empty` e use a saída para encerre a onda quando a lista de inimigos ficar vazia.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 575. Reverse

- **ID:** `list.bool.reverse`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Inverte a ordem em uma lista de bool. Use para mostre o histórico do mais recente ao mais antigo.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Lista em ordem inversa. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Reverse` e use a saída para mostre o histórico do mais recente ao mais antigo.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 576. Shuffle

- **ID:** `list.bool.shuffle`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Embaralha a ordem em uma lista de bool. Use para embaralhe cartas antes de distribuí-las.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Lista embaralhada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Shuffle` e use a saída para embaralhe cartas antes de distribuí-las.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 577. Sort

- **ID:** `list.bool.sort`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Ordena os valores em uma lista de bool. Use para ordene pontuações antes do placar.
- **Entradas/alvo:** `list` e direção opcional.
- **Saídas/efeito:** Lista ordenada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Sort` e use a saída para ordene pontuações antes do placar.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 578. Distinct

- **ID:** `list.bool.distinct`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Remove valores duplicados em uma lista de bool. Use para elimine IDs de alvos repetidos.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Lista apenas com valores únicos. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Distinct` e use a saída para elimine IDs de alvos repetidos.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 579. Slice

- **ID:** `list.bool.slice`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Recorta um intervalo em uma lista de bool. Use para mostre somente os primeiros dez resultados.
- **Entradas/alvo:** `list`, `start` e `length`.
- **Saídas/efeito:** Uma nova sublista. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Slice` e use a saída para mostre somente os primeiros dez resultados.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 580. Concat

- **ID:** `list.bool.concat`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Une duas listas em uma lista de bool. Use para junte inventário normal e itens temporários.
- **Entradas/alvo:** `list` e `other`.
- **Saídas/efeito:** Uma lista com ambas em sequência. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Concat` e use a saída para junte inventário normal e itens temporários.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 581. Filter

- **ID:** `list.bool.filter`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Mantém itens aprovados por uma condição em uma lista de bool. Use para mantenha somente inimigos ainda vivos.
- **Entradas/alvo:** `list` e condição/filtro.
- **Saídas/efeito:** Lista filtrada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Filter` e use a saída para mantenha somente inimigos ainda vivos.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 582. Map

- **ID:** `list.bool.map`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Transforma cada item em uma lista de bool. Use para converta pontuações numéricas para textos.
- **Entradas/alvo:** `list` e transformação.
- **Saídas/efeito:** Nova lista transformada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Map` e use a saída para converta pontuações numéricas para textos.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 583. Reduce

- **ID:** `list.bool.reduce`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Combina todos os itens em um resultado em uma lista de bool. Use para some todos os danos para obter o dano total.
- **Entradas/alvo:** `list`, valor inicial e operação.
- **Saídas/efeito:** Valor acumulado. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Reduce` e use a saída para some todos os danos para obter o dano total.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 584. Random

- **ID:** `list.bool.random`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Escolhe um item aleatório em uma lista de bool. Use para escolha aleatoriamente um ponto de spawn.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Um item da lista. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Random` e use a saída para escolha aleatoriamente um ponto de spawn.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 585. Create

- **ID:** `list.vector3.create`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Cria uma lista vazia em uma lista de vector3. Use para use a saída como inventário inicial.
- **Entradas/alvo:** Nenhuma entrada.
- **Saídas/efeito:** Uma nova lista vazia. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Create` e use a saída para use a saída como inventário inicial.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 586. Add

- **ID:** `list.vector3.add`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Adiciona um item ao final em uma lista de vector3. Use para adicione uma moeda coletada ao inventário.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** A lista com o novo item. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Add` e use a saída para adicione uma moeda coletada ao inventário.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 587. Insert

- **ID:** `list.vector3.insert`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Insere um item em uma posição em uma lista de vector3. Use para insira uma missão no topo usando índice `0`.
- **Entradas/alvo:** `list`, `index` e `value`.
- **Saídas/efeito:** A lista com o item inserido. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Insert` e use a saída para insira uma missão no topo usando índice `0`.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 588. Set

- **ID:** `list.vector3.set`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Substitui o item de uma posição em uma lista de vector3. Use para troque o item do slot selecionado.
- **Entradas/alvo:** `list`, `index` e `value`.
- **Saídas/efeito:** A lista atualizada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Set` e use a saída para troque o item do slot selecionado.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 589. Get

- **ID:** `list.vector3.get`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Obtém o item de uma posição em uma lista de vector3. Use para leia o item do slot `2` e mostre seu nome.
- **Entradas/alvo:** `list` e `index`.
- **Saídas/efeito:** O item encontrado em `value`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Get` e use a saída para leia o item do slot `2` e mostre seu nome.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 590. First

- **ID:** `list.vector3.first`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Obtém o primeiro item em uma lista de vector3. Use para selecione a primeira missão da fila.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** O primeiro item ou valor vazio. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `First` e use a saída para selecione a primeira missão da fila.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 591. Last

- **ID:** `list.vector3.last`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Obtém o último item em uma lista de vector3. Use para recupere o checkpoint mais recente.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** O último item ou valor vazio. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Last` e use a saída para recupere o checkpoint mais recente.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 592. Remove

- **ID:** `list.vector3.remove`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Remove a primeira ocorrência de um valor em uma lista de vector3. Use para remova a chave usada do inventário.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** A lista sem o item e um booleano de sucesso. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Remove` e use a saída para remova a chave usada do inventário.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 593. Remove At

- **ID:** `list.vector3.remove_at`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Remove o item de um índice em uma lista de vector3. Use para exclua o slot `1` da barra rápida.
- **Entradas/alvo:** `list` e `index`.
- **Saídas/efeito:** A lista sem aquela posição. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Remove At` e use a saída para exclua o slot `1` da barra rápida.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 594. Clear

- **ID:** `list.vector3.clear`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Remove todos os itens em uma lista de vector3. Use para limpe inimigos rastreados ao trocar de fase.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** A mesma lista vazia. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Clear` e use a saída para limpe inimigos rastreados ao trocar de fase.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 595. Contains

- **ID:** `list.vector3.contains`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Verifica se um valor existe em uma lista de vector3. Use para use Branch para permitir uma porta somente se houver uma chave.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** `true` ou `false`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Contains` e use a saída para use Branch para permitir uma porta somente se houver uma chave.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 596. Index Of

- **ID:** `list.vector3.index_of`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Procura a primeira posição de um valor em uma lista de vector3. Use para localize a primeira poção no inventário.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** Índice ou `-1`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Index Of` e use a saída para localize a primeira poção no inventário.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 597. Last Index Of

- **ID:** `list.vector3.last_index_of`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Procura a última posição de um valor em uma lista de vector3. Use para localize o último checkpoint repetido.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** Índice ou `-1`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Last Index Of` e use a saída para localize o último checkpoint repetido.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 598. Count

- **ID:** `list.vector3.count`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Conta os itens em uma lista de vector3. Use para atualize `Itens: 8` na interface.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Quantidade inteira. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Count` e use a saída para atualize `Itens: 8` na interface.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 599. Is Empty

- **ID:** `list.vector3.is_empty`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Verifica se não há itens em uma lista de vector3. Use para encerre a onda quando a lista de inimigos ficar vazia.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** `true` quando a lista está vazia. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Is Empty` e use a saída para encerre a onda quando a lista de inimigos ficar vazia.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 600. Reverse

- **ID:** `list.vector3.reverse`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Inverte a ordem em uma lista de vector3. Use para mostre o histórico do mais recente ao mais antigo.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Lista em ordem inversa. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Reverse` e use a saída para mostre o histórico do mais recente ao mais antigo.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 601. Shuffle

- **ID:** `list.vector3.shuffle`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Embaralha a ordem em uma lista de vector3. Use para embaralhe cartas antes de distribuí-las.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Lista embaralhada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Shuffle` e use a saída para embaralhe cartas antes de distribuí-las.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 602. Sort

- **ID:** `list.vector3.sort`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Ordena os valores em uma lista de vector3. Use para ordene pontuações antes do placar.
- **Entradas/alvo:** `list` e direção opcional.
- **Saídas/efeito:** Lista ordenada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Sort` e use a saída para ordene pontuações antes do placar.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 603. Distinct

- **ID:** `list.vector3.distinct`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Remove valores duplicados em uma lista de vector3. Use para elimine IDs de alvos repetidos.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Lista apenas com valores únicos. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Distinct` e use a saída para elimine IDs de alvos repetidos.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 604. Slice

- **ID:** `list.vector3.slice`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Recorta um intervalo em uma lista de vector3. Use para mostre somente os primeiros dez resultados.
- **Entradas/alvo:** `list`, `start` e `length`.
- **Saídas/efeito:** Uma nova sublista. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Slice` e use a saída para mostre somente os primeiros dez resultados.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 605. Concat

- **ID:** `list.vector3.concat`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Une duas listas em uma lista de vector3. Use para junte inventário normal e itens temporários.
- **Entradas/alvo:** `list` e `other`.
- **Saídas/efeito:** Uma lista com ambas em sequência. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Concat` e use a saída para junte inventário normal e itens temporários.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 606. Filter

- **ID:** `list.vector3.filter`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Mantém itens aprovados por uma condição em uma lista de vector3. Use para mantenha somente inimigos ainda vivos.
- **Entradas/alvo:** `list` e condição/filtro.
- **Saídas/efeito:** Lista filtrada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Filter` e use a saída para mantenha somente inimigos ainda vivos.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 607. Map

- **ID:** `list.vector3.map`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Transforma cada item em uma lista de vector3. Use para converta pontuações numéricas para textos.
- **Entradas/alvo:** `list` e transformação.
- **Saídas/efeito:** Nova lista transformada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Map` e use a saída para converta pontuações numéricas para textos.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 608. Reduce

- **ID:** `list.vector3.reduce`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Combina todos os itens em um resultado em uma lista de vector3. Use para some todos os danos para obter o dano total.
- **Entradas/alvo:** `list`, valor inicial e operação.
- **Saídas/efeito:** Valor acumulado. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Reduce` e use a saída para some todos os danos para obter o dano total.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 609. Random

- **ID:** `list.vector3.random`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Escolhe um item aleatório em uma lista de vector3. Use para escolha aleatoriamente um ponto de spawn.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Um item da lista. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Random` e use a saída para escolha aleatoriamente um ponto de spawn.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 610. Create

- **ID:** `list.object.create`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Cria uma lista vazia em uma lista de object. Use para use a saída como inventário inicial.
- **Entradas/alvo:** Nenhuma entrada.
- **Saídas/efeito:** Uma nova lista vazia. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Create` e use a saída para use a saída como inventário inicial.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 611. Add

- **ID:** `list.object.add`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Adiciona um item ao final em uma lista de object. Use para adicione uma moeda coletada ao inventário.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** A lista com o novo item. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Add` e use a saída para adicione uma moeda coletada ao inventário.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 612. Insert

- **ID:** `list.object.insert`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Insere um item em uma posição em uma lista de object. Use para insira uma missão no topo usando índice `0`.
- **Entradas/alvo:** `list`, `index` e `value`.
- **Saídas/efeito:** A lista com o item inserido. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Insert` e use a saída para insira uma missão no topo usando índice `0`.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 613. Set

- **ID:** `list.object.set`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Substitui o item de uma posição em uma lista de object. Use para troque o item do slot selecionado.
- **Entradas/alvo:** `list`, `index` e `value`.
- **Saídas/efeito:** A lista atualizada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Set` e use a saída para troque o item do slot selecionado.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 614. Get

- **ID:** `list.object.get`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Obtém o item de uma posição em uma lista de object. Use para leia o item do slot `2` e mostre seu nome.
- **Entradas/alvo:** `list` e `index`.
- **Saídas/efeito:** O item encontrado em `value`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Get` e use a saída para leia o item do slot `2` e mostre seu nome.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 615. First

- **ID:** `list.object.first`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Obtém o primeiro item em uma lista de object. Use para selecione a primeira missão da fila.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** O primeiro item ou valor vazio. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `First` e use a saída para selecione a primeira missão da fila.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 616. Last

- **ID:** `list.object.last`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Obtém o último item em uma lista de object. Use para recupere o checkpoint mais recente.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** O último item ou valor vazio. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Last` e use a saída para recupere o checkpoint mais recente.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 617. Remove

- **ID:** `list.object.remove`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Remove a primeira ocorrência de um valor em uma lista de object. Use para remova a chave usada do inventário.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** A lista sem o item e um booleano de sucesso. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Remove` e use a saída para remova a chave usada do inventário.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 618. Remove At

- **ID:** `list.object.remove_at`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Remove o item de um índice em uma lista de object. Use para exclua o slot `1` da barra rápida.
- **Entradas/alvo:** `list` e `index`.
- **Saídas/efeito:** A lista sem aquela posição. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Remove At` e use a saída para exclua o slot `1` da barra rápida.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 619. Clear

- **ID:** `list.object.clear`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Remove todos os itens em uma lista de object. Use para limpe inimigos rastreados ao trocar de fase.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** A mesma lista vazia. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Clear` e use a saída para limpe inimigos rastreados ao trocar de fase.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 620. Contains

- **ID:** `list.object.contains`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Verifica se um valor existe em uma lista de object. Use para use Branch para permitir uma porta somente se houver uma chave.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** `true` ou `false`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Contains` e use a saída para use Branch para permitir uma porta somente se houver uma chave.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 621. Index Of

- **ID:** `list.object.index_of`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Procura a primeira posição de um valor em uma lista de object. Use para localize a primeira poção no inventário.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** Índice ou `-1`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Index Of` e use a saída para localize a primeira poção no inventário.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 622. Last Index Of

- **ID:** `list.object.last_index_of`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Procura a última posição de um valor em uma lista de object. Use para localize o último checkpoint repetido.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** Índice ou `-1`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Last Index Of` e use a saída para localize o último checkpoint repetido.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 623. Count

- **ID:** `list.object.count`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Conta os itens em uma lista de object. Use para atualize `Itens: 8` na interface.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Quantidade inteira. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Count` e use a saída para atualize `Itens: 8` na interface.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 624. Is Empty

- **ID:** `list.object.is_empty`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Verifica se não há itens em uma lista de object. Use para encerre a onda quando a lista de inimigos ficar vazia.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** `true` quando a lista está vazia. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Is Empty` e use a saída para encerre a onda quando a lista de inimigos ficar vazia.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 625. Reverse

- **ID:** `list.object.reverse`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Inverte a ordem em uma lista de object. Use para mostre o histórico do mais recente ao mais antigo.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Lista em ordem inversa. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Reverse` e use a saída para mostre o histórico do mais recente ao mais antigo.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 626. Shuffle

- **ID:** `list.object.shuffle`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Embaralha a ordem em uma lista de object. Use para embaralhe cartas antes de distribuí-las.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Lista embaralhada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Shuffle` e use a saída para embaralhe cartas antes de distribuí-las.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 627. Sort

- **ID:** `list.object.sort`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Ordena os valores em uma lista de object. Use para ordene pontuações antes do placar.
- **Entradas/alvo:** `list` e direção opcional.
- **Saídas/efeito:** Lista ordenada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Sort` e use a saída para ordene pontuações antes do placar.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 628. Distinct

- **ID:** `list.object.distinct`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Remove valores duplicados em uma lista de object. Use para elimine IDs de alvos repetidos.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Lista apenas com valores únicos. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Distinct` e use a saída para elimine IDs de alvos repetidos.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 629. Slice

- **ID:** `list.object.slice`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Recorta um intervalo em uma lista de object. Use para mostre somente os primeiros dez resultados.
- **Entradas/alvo:** `list`, `start` e `length`.
- **Saídas/efeito:** Uma nova sublista. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Slice` e use a saída para mostre somente os primeiros dez resultados.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 630. Concat

- **ID:** `list.object.concat`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Une duas listas em uma lista de object. Use para junte inventário normal e itens temporários.
- **Entradas/alvo:** `list` e `other`.
- **Saídas/efeito:** Uma lista com ambas em sequência. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Concat` e use a saída para junte inventário normal e itens temporários.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 631. Filter

- **ID:** `list.object.filter`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Mantém itens aprovados por uma condição em uma lista de object. Use para mantenha somente inimigos ainda vivos.
- **Entradas/alvo:** `list` e condição/filtro.
- **Saídas/efeito:** Lista filtrada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Filter` e use a saída para mantenha somente inimigos ainda vivos.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 632. Map

- **ID:** `list.object.map`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Transforma cada item em uma lista de object. Use para converta pontuações numéricas para textos.
- **Entradas/alvo:** `list` e transformação.
- **Saídas/efeito:** Nova lista transformada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Map` e use a saída para converta pontuações numéricas para textos.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 633. Reduce

- **ID:** `list.object.reduce`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Combina todos os itens em um resultado em uma lista de object. Use para some todos os danos para obter o dano total.
- **Entradas/alvo:** `list`, valor inicial e operação.
- **Saídas/efeito:** Valor acumulado. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Reduce` e use a saída para some todos os danos para obter o dano total.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 634. Random

- **ID:** `list.object.random`
- **Categoria:** Listas
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Escolhe um item aleatório em uma lista de object. Use para escolha aleatoriamente um ponto de spawn.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Um item da lista. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Random` e use a saída para escolha aleatoriamente um ponto de spawn.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 635. Get

- **ID:** `transform.position.get`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a position de um `Node2D`/`Node3D`: lê o valor atual. Use para mostre a posição do jogador no HUD.
- **Entradas/alvo:** Somente `target_path`. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Lê o valor atual e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Get`, alvo `../Player`; conecte a entrada descrita acima e use a saída para mostre a posição do jogador no HUD.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 636. Set

- **ID:** `transform.position.set`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a position de um `Node2D`/`Node3D`: substitui o valor atual. Use para teleporte o jogador para um ponto definido.
- **Entradas/alvo:** `target_path` e `value` com a nova position. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Substitui o valor atual e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Set`, alvo `../Player`; conecte a entrada descrita acima e use a saída para teleporte o jogador para um ponto definido.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 637. Add

- **ID:** `transform.position.add`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a position de um `Node2D`/`Node3D`: soma o deslocamento. Use para mova uma plataforma 2 metros para cima.
- **Entradas/alvo:** `target_path` e `value` a somar à position. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Soma o deslocamento e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Add`, alvo `../Player`; conecte a entrada descrita acima e use a saída para mova uma plataforma 2 metros para cima.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 638. Subtract

- **ID:** `transform.position.subtract`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a position de um `Node2D`/`Node3D`: subtrai o deslocamento. Use para afaste um objeto do ponto atual.
- **Entradas/alvo:** `target_path` e `value` a subtrair da position. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Subtrai o deslocamento e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Subtract`, alvo `../Player`; conecte a entrada descrita acima e use a saída para afaste um objeto do ponto atual.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 639. Multiply

- **ID:** `transform.position.multiply`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a position de um `Node2D`/`Node3D`: multiplica cada componente. Use para dobre a escala de um item coletado.
- **Entradas/alvo:** `target_path` e `factor` para multiplicar a position. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Multiplica cada componente e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Multiply`, alvo `../Player`; conecte a entrada descrita acima e use a saída para dobre a escala de um item coletado.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 640. Lerp

- **ID:** `transform.position.lerp`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a position de um `Node2D`/`Node3D`: interpola entre valor atual e destino. Use para suavize a câmera até o ponto desejado.
- **Entradas/alvo:** `target_path`, `target_value` e `weight` entre 0 e 1. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Interpola entre valor atual e destino e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Lerp`, alvo `../Player`; conecte a entrada descrita acima e use a saída para suavize a câmera até o ponto desejado.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 641. Move Towards

- **ID:** `transform.position.move_towards`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a position de um `Node2D`/`Node3D`: aproxima sem ultrapassar o destino. Use para mova uma plataforma até a parada.
- **Entradas/alvo:** `target_path`, `target_value` e `delta` máximo. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Aproxima sem ultrapassar o destino e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Move Towards`, alvo `../Player`; conecte a entrada descrita acima e use a saída para mova uma plataforma até a parada.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 642. Local To World

- **ID:** `transform.position.local_to_world`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a position de um `Node2D`/`Node3D`: converte para coordenada global. Use para descubra onde fica o cano da arma no mundo.
- **Entradas/alvo:** `target_path` e coordenada local em `value`. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Converte para coordenada global e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Local To World`, alvo `../Player`; conecte a entrada descrita acima e use a saída para descubra onde fica o cano da arma no mundo.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 643. World To Local

- **ID:** `transform.position.world_to_local`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a position de um `Node2D`/`Node3D`: converte para o espaço local. Use para converta o ponto atingido para coordenadas do objeto.
- **Entradas/alvo:** `target_path` e coordenada global em `value`. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Converte para o espaço local e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → World To Local`, alvo `../Player`; conecte a entrada descrita acima e use a saída para converta o ponto atingido para coordenadas do objeto.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 644. Reset

- **ID:** `transform.position.reset`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a position de um `Node2D`/`Node3D`: restaura posição/rotação para zero ou escala para um. Use para reinicie a transformação após respawn.
- **Entradas/alvo:** Somente `target_path`. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Restaura posição/rotação para zero ou escala para um e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Reset`, alvo `../Player`; conecte a entrada descrita acima e use a saída para reinicie a transformação após respawn.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 645. Look At

- **ID:** `transform.position.look_at`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a position de um `Node2D`/`Node3D`: gira para olhar o ponto. Use para faça uma torre mirar no jogador.
- **Entradas/alvo:** `target_path`, ponto global `target` e eixo superior opcional. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Gira para olhar o ponto e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Look At`, alvo `../Player`; conecte a entrada descrita acima e use a saída para faça uma torre mirar no jogador.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 646. Face Direction

- **ID:** `transform.position.face_direction`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a position de um `Node2D`/`Node3D`: gira para a direção informada. Use para vire o personagem para o sentido do movimento.
- **Entradas/alvo:** `target_path` e vetor `direction`. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Gira para a direção informada e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Face Direction`, alvo `../Player`; conecte a entrada descrita acima e use a saída para vire o personagem para o sentido do movimento.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 647. Get

- **ID:** `transform.rotation.get`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a rotation de um `Node2D`/`Node3D`: lê o valor atual. Use para mostre a posição do jogador no HUD.
- **Entradas/alvo:** Somente `target_path`. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Lê o valor atual e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Get`, alvo `../Player`; conecte a entrada descrita acima e use a saída para mostre a posição do jogador no HUD.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 648. Set

- **ID:** `transform.rotation.set`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a rotation de um `Node2D`/`Node3D`: substitui o valor atual. Use para teleporte o jogador para um ponto definido.
- **Entradas/alvo:** `target_path` e `value` com a nova rotation. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Substitui o valor atual e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Set`, alvo `../Player`; conecte a entrada descrita acima e use a saída para teleporte o jogador para um ponto definido.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 649. Add

- **ID:** `transform.rotation.add`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a rotation de um `Node2D`/`Node3D`: soma o deslocamento. Use para mova uma plataforma 2 metros para cima.
- **Entradas/alvo:** `target_path` e `value` a somar à rotation. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Soma o deslocamento e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Add`, alvo `../Player`; conecte a entrada descrita acima e use a saída para mova uma plataforma 2 metros para cima.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 650. Subtract

- **ID:** `transform.rotation.subtract`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a rotation de um `Node2D`/`Node3D`: subtrai o deslocamento. Use para afaste um objeto do ponto atual.
- **Entradas/alvo:** `target_path` e `value` a subtrair da rotation. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Subtrai o deslocamento e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Subtract`, alvo `../Player`; conecte a entrada descrita acima e use a saída para afaste um objeto do ponto atual.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 651. Multiply

- **ID:** `transform.rotation.multiply`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a rotation de um `Node2D`/`Node3D`: multiplica cada componente. Use para dobre a escala de um item coletado.
- **Entradas/alvo:** `target_path` e `factor` para multiplicar a rotation. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Multiplica cada componente e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Multiply`, alvo `../Player`; conecte a entrada descrita acima e use a saída para dobre a escala de um item coletado.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 652. Lerp

- **ID:** `transform.rotation.lerp`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a rotation de um `Node2D`/`Node3D`: interpola entre valor atual e destino. Use para suavize a câmera até o ponto desejado.
- **Entradas/alvo:** `target_path`, `target_value` e `weight` entre 0 e 1. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Interpola entre valor atual e destino e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Lerp`, alvo `../Player`; conecte a entrada descrita acima e use a saída para suavize a câmera até o ponto desejado.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 653. Move Towards

- **ID:** `transform.rotation.move_towards`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a rotation de um `Node2D`/`Node3D`: aproxima sem ultrapassar o destino. Use para mova uma plataforma até a parada.
- **Entradas/alvo:** `target_path`, `target_value` e `delta` máximo. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Aproxima sem ultrapassar o destino e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Move Towards`, alvo `../Player`; conecte a entrada descrita acima e use a saída para mova uma plataforma até a parada.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 654. Local To World

- **ID:** `transform.rotation.local_to_world`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a rotation de um `Node2D`/`Node3D`: converte para coordenada global. Use para descubra onde fica o cano da arma no mundo.
- **Entradas/alvo:** `target_path` e coordenada local em `value`. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Converte para coordenada global e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Local To World`, alvo `../Player`; conecte a entrada descrita acima e use a saída para descubra onde fica o cano da arma no mundo.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 655. World To Local

- **ID:** `transform.rotation.world_to_local`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a rotation de um `Node2D`/`Node3D`: converte para o espaço local. Use para converta o ponto atingido para coordenadas do objeto.
- **Entradas/alvo:** `target_path` e coordenada global em `value`. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Converte para o espaço local e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → World To Local`, alvo `../Player`; conecte a entrada descrita acima e use a saída para converta o ponto atingido para coordenadas do objeto.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 656. Reset

- **ID:** `transform.rotation.reset`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a rotation de um `Node2D`/`Node3D`: restaura posição/rotação para zero ou escala para um. Use para reinicie a transformação após respawn.
- **Entradas/alvo:** Somente `target_path`. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Restaura posição/rotação para zero ou escala para um e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Reset`, alvo `../Player`; conecte a entrada descrita acima e use a saída para reinicie a transformação após respawn.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 657. Look At

- **ID:** `transform.rotation.look_at`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a rotation de um `Node2D`/`Node3D`: gira para olhar o ponto. Use para faça uma torre mirar no jogador.
- **Entradas/alvo:** `target_path`, ponto global `target` e eixo superior opcional. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Gira para olhar o ponto e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Look At`, alvo `../Player`; conecte a entrada descrita acima e use a saída para faça uma torre mirar no jogador.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 658. Face Direction

- **ID:** `transform.rotation.face_direction`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a rotation de um `Node2D`/`Node3D`: gira para a direção informada. Use para vire o personagem para o sentido do movimento.
- **Entradas/alvo:** `target_path` e vetor `direction`. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Gira para a direção informada e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Face Direction`, alvo `../Player`; conecte a entrada descrita acima e use a saída para vire o personagem para o sentido do movimento.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 659. Get

- **ID:** `transform.scale.get`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a scale de um `Node2D`/`Node3D`: lê o valor atual. Use para mostre a posição do jogador no HUD.
- **Entradas/alvo:** Somente `target_path`. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Lê o valor atual e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Get`, alvo `../Player`; conecte a entrada descrita acima e use a saída para mostre a posição do jogador no HUD.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 660. Set

- **ID:** `transform.scale.set`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a scale de um `Node2D`/`Node3D`: substitui o valor atual. Use para teleporte o jogador para um ponto definido.
- **Entradas/alvo:** `target_path` e `value` com a nova scale. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Substitui o valor atual e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Set`, alvo `../Player`; conecte a entrada descrita acima e use a saída para teleporte o jogador para um ponto definido.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 661. Add

- **ID:** `transform.scale.add`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a scale de um `Node2D`/`Node3D`: soma o deslocamento. Use para mova uma plataforma 2 metros para cima.
- **Entradas/alvo:** `target_path` e `value` a somar à scale. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Soma o deslocamento e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Add`, alvo `../Player`; conecte a entrada descrita acima e use a saída para mova uma plataforma 2 metros para cima.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 662. Subtract

- **ID:** `transform.scale.subtract`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a scale de um `Node2D`/`Node3D`: subtrai o deslocamento. Use para afaste um objeto do ponto atual.
- **Entradas/alvo:** `target_path` e `value` a subtrair da scale. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Subtrai o deslocamento e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Subtract`, alvo `../Player`; conecte a entrada descrita acima e use a saída para afaste um objeto do ponto atual.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 663. Multiply

- **ID:** `transform.scale.multiply`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a scale de um `Node2D`/`Node3D`: multiplica cada componente. Use para dobre a escala de um item coletado.
- **Entradas/alvo:** `target_path` e `factor` para multiplicar a scale. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Multiplica cada componente e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Multiply`, alvo `../Player`; conecte a entrada descrita acima e use a saída para dobre a escala de um item coletado.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 664. Lerp

- **ID:** `transform.scale.lerp`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a scale de um `Node2D`/`Node3D`: interpola entre valor atual e destino. Use para suavize a câmera até o ponto desejado.
- **Entradas/alvo:** `target_path`, `target_value` e `weight` entre 0 e 1. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Interpola entre valor atual e destino e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Lerp`, alvo `../Player`; conecte a entrada descrita acima e use a saída para suavize a câmera até o ponto desejado.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 665. Move Towards

- **ID:** `transform.scale.move_towards`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a scale de um `Node2D`/`Node3D`: aproxima sem ultrapassar o destino. Use para mova uma plataforma até a parada.
- **Entradas/alvo:** `target_path`, `target_value` e `delta` máximo. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Aproxima sem ultrapassar o destino e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Move Towards`, alvo `../Player`; conecte a entrada descrita acima e use a saída para mova uma plataforma até a parada.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 666. Local To World

- **ID:** `transform.scale.local_to_world`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a scale de um `Node2D`/`Node3D`: converte para coordenada global. Use para descubra onde fica o cano da arma no mundo.
- **Entradas/alvo:** `target_path` e coordenada local em `value`. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Converte para coordenada global e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Local To World`, alvo `../Player`; conecte a entrada descrita acima e use a saída para descubra onde fica o cano da arma no mundo.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 667. World To Local

- **ID:** `transform.scale.world_to_local`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a scale de um `Node2D`/`Node3D`: converte para o espaço local. Use para converta o ponto atingido para coordenadas do objeto.
- **Entradas/alvo:** `target_path` e coordenada global em `value`. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Converte para o espaço local e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → World To Local`, alvo `../Player`; conecte a entrada descrita acima e use a saída para converta o ponto atingido para coordenadas do objeto.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 668. Reset

- **ID:** `transform.scale.reset`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a scale de um `Node2D`/`Node3D`: restaura posição/rotação para zero ou escala para um. Use para reinicie a transformação após respawn.
- **Entradas/alvo:** Somente `target_path`. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Restaura posição/rotação para zero ou escala para um e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Reset`, alvo `../Player`; conecte a entrada descrita acima e use a saída para reinicie a transformação após respawn.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 669. Look At

- **ID:** `transform.scale.look_at`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a scale de um `Node2D`/`Node3D`: gira para olhar o ponto. Use para faça uma torre mirar no jogador.
- **Entradas/alvo:** `target_path`, ponto global `target` e eixo superior opcional. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Gira para olhar o ponto e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Look At`, alvo `../Player`; conecte a entrada descrita acima e use a saída para faça uma torre mirar no jogador.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 670. Face Direction

- **ID:** `transform.scale.face_direction`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a scale de um `Node2D`/`Node3D`: gira para a direção informada. Use para vire o personagem para o sentido do movimento.
- **Entradas/alvo:** `target_path` e vetor `direction`. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Gira para a direção informada e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Face Direction`, alvo `../Player`; conecte a entrada descrita acima e use a saída para vire o personagem para o sentido do movimento.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 671. Girar no eixo Y

- **ID:** `transform.rotate.y`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a rotate de um `Node2D`/`Node3D`: gira somente no eixo Y. Use para gire uma moeda ou plataforma horizontalmente.
- **Entradas/alvo:** `target_path` e ângulo `value` em graus/radianos indicado pelo bloco. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Gira somente no eixo y e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Girar no eixo Y`, alvo `../Player`; conecte a entrada descrita acima e use a saída para gire uma moeda ou plataforma horizontalmente.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 672. Escala uniforme

- **ID:** `transform.scale.uniform`
- **Categoria:** Transform
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Manipula a scale de um `Node2D`/`Node3D`: aplica o mesmo tamanho em X, Y e Z. Use para aumente um power-up sem deformá-lo.
- **Entradas/alvo:** `target_path` e número `value`. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Aplica o mesmo tamanho em x, y e z e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Escala uniforme`, alvo `../Player`; conecte a entrada descrita acima e use a saída para aumente um power-up sem deformá-lo.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 673. Add Force

- **ID:** `physics.add_force`
- **Categoria:** Fisica
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Aplica uma força contínua ao corpo; use em atualizações de física para aceleração sustentada.
- **Entradas/alvo:** `target_path`: `RigidBody3D`; `force`: `Vector3`; `position` local é opcional.
- **Saídas/efeito:** Altera a velocidade física ao longo do tempo e emite `flow`.
- **Exemplo:** Empurre uma caixa: `Button Pressed → Add Force`, força `Vector3(0, 0, -40)`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 674. Add Impulse

- **ID:** `physics.add_impulse`
- **Categoria:** Fisica
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Aplica um impulso instantâneo ao corpo, ideal para impactos, explosões ou saltos físicos.
- **Entradas/alvo:** `target_path`: `RigidBody3D`; `impulse`: `Vector3`; `position` é opcional.
- **Saídas/efeito:** Muda imediatamente a velocidade linear e emite `flow`.
- **Exemplo:** Explosão: `Collision Enter → Add Impulse`, impulso calculado por `Direction × 12`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 675. Add Torque

- **ID:** `physics.add_torque`
- **Categoria:** Fisica
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Aplica força de rotação contínua a um corpo físico.
- **Entradas/alvo:** `target_path`: `RigidBody3D`; `torque`: `Vector3` por eixo.
- **Saídas/efeito:** Acelera a rotação do corpo e emite `flow`.
- **Exemplo:** Gire uma hélice: `Fixed Update → Add Torque`, torque `Vector3(0, 8, 0)`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 676. Set Velocity

- **ID:** `physics.set_velocity`
- **Categoria:** Fisica
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define a velocidade linear do corpo em unidades por segundo.
- **Entradas/alvo:** `target_path`: corpo físico compatível; `value`: `Vector3(x, y, z)`.
- **Saídas/efeito:** Substitui a velocidade atual e emite `flow`.
- **Exemplo:** Lance um projétil: `Created → Set Velocity`, valor `Forward × 25`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 677. Get Velocity

- **ID:** `physics.get_velocity`
- **Categoria:** Fisica
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Lê a velocidade linear atual do corpo.
- **Entradas/alvo:** `target_path`: corpo físico compatível.
- **Saídas/efeito:** Retorna a velocidade como `Vector3` em `value`.
- **Exemplo:** Velocímetro: `Update → Get Velocity → Vector Length → UI Set Text`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 678. Set Angular Velocity

- **ID:** `physics.set_angular_velocity`
- **Categoria:** Fisica
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define diretamente a velocidade de rotação de um corpo físico nos eixos X, Y e Z, em radianos por segundo.
- **Entradas/alvo:** `target_path`: `RigidBody3D`; `value`: `Vector3` com a rotação por eixo.
- **Saídas/efeito:** Atualiza `angular_velocity` e continua pelo pino `flow`.
- **Exemplo:** Faça uma plataforma girar: `Start → Set Angular Velocity`, alvo `../Plataforma`, valor `Vector3(0, 1.5, 0)` para girar no eixo Y.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 679. Get Angular Velocity

- **ID:** `physics.get_angular_velocity`
- **Categoria:** Fisica
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Lê a velocidade de rotação atual de um corpo físico nos eixos X, Y e Z.
- **Entradas/alvo:** `target_path`: `RigidBody3D` que será consultado.
- **Saídas/efeito:** Retorna um `Vector3` em `value`; não altera o corpo.
- **Exemplo:** Exiba a rotação de uma roda: `Update → Get Angular Velocity → Vector Length → UI Set Text`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 680. Set Mass

- **ID:** `physics.set_mass`
- **Categoria:** Fisica
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `mass` no sistema de física 3D do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de mass, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza mass no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Mass`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 681. Get Mass

- **ID:** `physics.get_mass`
- **Categoria:** Fisica
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Consulta `mass` no sistema de física 3D sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna mass em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Mass → UI Set Text` mostra mass no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 682. Set Gravity

- **ID:** `physics.set_gravity`
- **Categoria:** Fisica
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `gravity` no sistema de física 3D do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de gravity, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza gravity no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Gravity`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 683. Use Gravity

- **ID:** `physics.use_gravity`
- **Categoria:** Fisica
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Use gravity no sistema de física 3D, atuando diretamente no componente da cena. Use quando o gameplay precisa use gravity esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `rigidbody3d`, `characterbody3d` ou espaço físico compatível com a operação; configure `use gravity` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `use gravity` pela API nativa registrada para física 3D e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Em `Fixed Update`, aplique `Use Gravity` ao corpo `../Player` ou `../Ball`; observe o resultado na simulação física do quadro seguinte.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 684. Set Kinematic

- **ID:** `physics.set_kinematic`
- **Categoria:** Fisica
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `kinematic` no sistema de física 3D do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de kinematic, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza kinematic no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Kinematic`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 685. Freeze Position

- **ID:** `physics.freeze_position`
- **Categoria:** Fisica
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Freeze position no sistema de física 3D, atuando diretamente no componente da cena. Use quando o gameplay precisa freeze position esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `rigidbody3d`, `characterbody3d` ou espaço físico compatível com a operação; configure `freeze position` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `freeze position` pela API nativa registrada para física 3D e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Em `Fixed Update`, aplique `Freeze Position` ao corpo `../Player` ou `../Ball`; observe o resultado na simulação física do quadro seguinte.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 686. Freeze Rotation

- **ID:** `physics.freeze_rotation`
- **Categoria:** Fisica
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Freeze rotation no sistema de física 3D, atuando diretamente no componente da cena. Use quando o gameplay precisa freeze rotation esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `rigidbody3d`, `characterbody3d` ou espaço físico compatível com a operação; configure `freeze rotation` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `freeze rotation` pela API nativa registrada para física 3D e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Em `Fixed Update`, aplique `Freeze Rotation` ao corpo `../Player` ou `../Ball`; observe o resultado na simulação física do quadro seguinte.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 687. Raycast

- **ID:** `physics.raycast`
- **Categoria:** Fisica
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Dispara um raio entre dois pontos para detectar o primeiro collider atingido.
- **Entradas/alvo:** `origin`, `direction`, `distance` e máscara de colisão opcional.
- **Saídas/efeito:** Retorna acerto, objeto, posição e normal; não altera a cena.
- **Exemplo:** Tiro: `Button Pressed → Raycast`; se `hit`, conecte a `Object Send Event` no objeto atingido.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 688. Sphere Cast

- **ID:** `physics.sphere_cast`
- **Categoria:** Fisica
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Sphere cast no sistema de física 3D, atuando diretamente no componente da cena. Use quando o gameplay precisa sphere cast esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `rigidbody3d`, `characterbody3d` ou espaço físico compatível com a operação; configure `sphere cast` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `sphere cast` pela API nativa registrada para física 3D e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Em `Fixed Update`, aplique `Sphere Cast` ao corpo `../Player` ou `../Ball`; observe o resultado na simulação física do quadro seguinte.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 689. Box Cast

- **ID:** `physics.box_cast`
- **Categoria:** Fisica
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Box cast no sistema de física 3D, atuando diretamente no componente da cena. Use quando o gameplay precisa box cast esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `rigidbody3d`, `characterbody3d` ou espaço físico compatível com a operação; configure `box cast` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `box cast` pela API nativa registrada para física 3D e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Em `Fixed Update`, aplique `Box Cast` ao corpo `../Player` ou `../Ball`; observe o resultado na simulação física do quadro seguinte.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 690. Overlap Sphere

- **ID:** `physics.overlap_sphere`
- **Categoria:** Fisica
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Overlap sphere no sistema de física 3D, atuando diretamente no componente da cena. Use quando o gameplay precisa overlap sphere esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `rigidbody3d`, `characterbody3d` ou espaço físico compatível com a operação; configure `overlap sphere` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `overlap sphere` pela API nativa registrada para física 3D e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Em `Fixed Update`, aplique `Overlap Sphere` ao corpo `../Player` ou `../Ball`; observe o resultado na simulação física do quadro seguinte.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 691. Overlap Box

- **ID:** `physics.overlap_box`
- **Categoria:** Fisica
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Overlap box no sistema de física 3D, atuando diretamente no componente da cena. Use quando o gameplay precisa overlap box esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `rigidbody3d`, `characterbody3d` ou espaço físico compatível com a operação; configure `overlap box` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `overlap box` pela API nativa registrada para física 3D e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Em `Fixed Update`, aplique `Overlap Box` ao corpo `../Player` ou `../Ball`; observe o resultado na simulação física do quadro seguinte.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 692. Ignore Collision

- **ID:** `physics.ignore_collision`
- **Categoria:** Fisica
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Ignore collision no sistema de física 3D, atuando diretamente no componente da cena. Use quando o gameplay precisa ignore collision esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `rigidbody3d`, `characterbody3d` ou espaço físico compatível com a operação; configure `ignore collision` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `ignore collision` pela API nativa registrada para física 3D e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Em `Fixed Update`, aplique `Ignore Collision` ao corpo `../Player` ou `../Ball`; observe o resultado na simulação física do quadro seguinte.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 693. Set Friction

- **ID:** `physics.set_friction`
- **Categoria:** Fisica
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `friction` no sistema de física 3D do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de friction, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza friction no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Friction`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 694. Set Bounciness

- **ID:** `physics.set_bounciness`
- **Categoria:** Fisica
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `bounciness` no sistema de física 3D do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de bounciness, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza bounciness no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Bounciness`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 695. Wake Up

- **ID:** `physics.wake_up`
- **Categoria:** Fisica
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Acorda o corpo físico no sistema de física 3D, atuando diretamente no componente da cena. Use quando o gameplay precisa acorda o corpo físico esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `rigidbody3d`, `characterbody3d` ou espaço físico compatível com a operação; configure `wake up` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `wake up` pela API nativa registrada para física 3D e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Em `Fixed Update`, aplique `Wake Up` ao corpo `../Player` ou `../Ball`; observe o resultado na simulação física do quadro seguinte.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 696. Sleep

- **ID:** `physics.sleep`
- **Categoria:** Fisica
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Coloca o corpo físico em repouso no sistema de física 3D, atuando diretamente no componente da cena. Use quando o gameplay precisa coloca o corpo físico em repouso esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `rigidbody3d`, `characterbody3d` ou espaço físico compatível com a operação; configure `sleep` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `sleep` pela API nativa registrada para física 3D e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Em `Fixed Update`, aplique `Sleep` ao corpo `../Player` ou `../Ball`; observe o resultado na simulação física do quadro seguinte.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 697. Enter

- **ID:** `vehicle.enter`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Enter no sistema de veículo, atuando diretamente no componente da cena. Use quando o gameplay precisa enter esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `mgsvehicle3d`/`vehiclebody3d` que representa o veículo controlado; configure `enter` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `enter` pela API nativa registrada para veículo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No veículo `../Car`, ligue um evento de direção ou estado a `Enter`; a operação enter o componente nativo usado pelas rodas, motor e carroceria.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 698. Exit

- **ID:** `vehicle.exit`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Exit no sistema de veículo, atuando diretamente no componente da cena. Use quando o gameplay precisa exit esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `mgsvehicle3d`/`vehiclebody3d` que representa o veículo controlado; configure `exit` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `exit` pela API nativa registrada para veículo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No veículo `../Car`, ligue um evento de direção ou estado a `Exit`; a operação exit o componente nativo usado pelas rodas, motor e carroceria.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 699. Can Enter

- **ID:** `vehicle.can_enter`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Can enter no sistema de veículo, atuando diretamente no componente da cena. Use quando o gameplay precisa can enter esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `mgsvehicle3d`/`vehiclebody3d` que representa o veículo controlado; configure `can enter` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `can enter` pela API nativa registrada para veículo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No veículo `../Car`, ligue um evento de direção ou estado a `Can Enter`; a operação can enter o componente nativo usado pelas rodas, motor e carroceria.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 700. Get Driver

- **ID:** `vehicle.get_driver`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Consulta `driver` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna driver em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Driver → UI Set Text` mostra driver no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 701. Open Door

- **ID:** `vehicle.open_door`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Abre a porta no sistema de veículo, atuando diretamente no componente da cena. Use quando o gameplay precisa abre a porta esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path` da porta.
- **Saídas/efeito:** Aplica `open door` pela API nativa registrada para veículo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No veículo `../Car`, ligue um evento de direção ou estado a `Open Door`; a operação abre a porta o componente nativo usado pelas rodas, motor e carroceria.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 702. Close Door

- **ID:** `vehicle.close_door`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Fecha a porta no sistema de veículo, atuando diretamente no componente da cena. Use quando o gameplay precisa fecha a porta esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path` da porta.
- **Saídas/efeito:** Aplica `close door` pela API nativa registrada para veículo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No veículo `../Car`, ligue um evento de direção ou estado a `Close Door`; a operação fecha a porta o componente nativo usado pelas rodas, motor e carroceria.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 703. Toggle Door

- **ID:** `vehicle.toggle_door`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Toggle door no sistema de veículo, atuando diretamente no componente da cena. Use quando o gameplay precisa toggle door esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `mgsvehicle3d`/`vehiclebody3d` que representa o veículo controlado; configure `toggle door` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `toggle door` pela API nativa registrada para veículo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No veículo `../Car`, ligue um evento de direção ou estado a `Toggle Door`; a operação toggle door o componente nativo usado pelas rodas, motor e carroceria.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 704. Open Hood

- **ID:** `vehicle.open_hood`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Open hood no sistema de veículo, atuando diretamente no componente da cena. Use quando o gameplay precisa open hood esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `mgsvehicle3d`/`vehiclebody3d` que representa o veículo controlado; configure `open hood` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `open hood` pela API nativa registrada para veículo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No veículo `../Car`, ligue um evento de direção ou estado a `Open Hood`; a operação open hood o componente nativo usado pelas rodas, motor e carroceria.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 705. Close Hood

- **ID:** `vehicle.close_hood`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Close hood no sistema de veículo, atuando diretamente no componente da cena. Use quando o gameplay precisa close hood esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `mgsvehicle3d`/`vehiclebody3d` que representa o veículo controlado; configure `close hood` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `close hood` pela API nativa registrada para veículo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No veículo `../Car`, ligue um evento de direção ou estado a `Close Hood`; a operação close hood o componente nativo usado pelas rodas, motor e carroceria.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 706. Open Trunk

- **ID:** `vehicle.open_trunk`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Open trunk no sistema de veículo, atuando diretamente no componente da cena. Use quando o gameplay precisa open trunk esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `mgsvehicle3d`/`vehiclebody3d` que representa o veículo controlado; configure `open trunk` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `open trunk` pela API nativa registrada para veículo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No veículo `../Car`, ligue um evento de direção ou estado a `Open Trunk`; a operação open trunk o componente nativo usado pelas rodas, motor e carroceria.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 707. Close Trunk

- **ID:** `vehicle.close_trunk`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Close trunk no sistema de veículo, atuando diretamente no componente da cena. Use quando o gameplay precisa close trunk esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `mgsvehicle3d`/`vehiclebody3d` que representa o veículo controlado; configure `close trunk` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `close trunk` pela API nativa registrada para veículo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No veículo `../Car`, ligue um evento de direção ou estado a `Close Trunk`; a operação close trunk o componente nativo usado pelas rodas, motor e carroceria.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 708. Set Throttle

- **ID:** `vehicle.set_throttle`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define abertura do acelerador, de 0 (solto) a 1 (total). O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de throttle no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: fazer o carro acelerar conforme o eixo vertical do joystick.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 709. Get Throttle

- **ID:** `vehicle.get_throttle`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Lê abertura do acelerador, de 0 (solto) a 1 (total), sem alterar o veículo.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; para dados de roda, informe também `wheel_index`.
- **Saídas/efeito:** Retorna o valor atual por `value`/`result` e mantém o fluxo disponível.
- **Exemplo:** Exemplo real: fazer o carro acelerar conforme o eixo vertical do joystick.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 710. Set Brake

- **ID:** `vehicle.set_brake`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define intensidade do freio principal, de 0 a 1. O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de brake no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: reduzir a velocidade enquanto o jogador segura o botão de freio.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 711. Get Brake

- **ID:** `vehicle.get_brake`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Lê intensidade do freio principal, de 0 a 1, sem alterar o veículo.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; para dados de roda, informe também `wheel_index`.
- **Saídas/efeito:** Retorna o valor atual por `value`/`result` e mantém o fluxo disponível.
- **Exemplo:** Exemplo real: reduzir a velocidade enquanto o jogador segura o botão de freio.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 712. Set Handbrake

- **ID:** `vehicle.set_handbrake`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define freio de mão, usado para travar principalmente as rodas traseiras. O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de handbrake no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: iniciar uma derrapagem em curva fechada.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 713. Set Steering

- **ID:** `vehicle.set_steering`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define comando de direção normalizado de -1 (esquerda) a 1 (direita). O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de steering no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: ligar o eixo horizontal do joystick às rodas direcionais.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 714. Get Steering

- **ID:** `vehicle.get_steering`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Lê comando de direção normalizado de -1 (esquerda) a 1 (direita), sem alterar o veículo.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; para dados de roda, informe também `wheel_index`.
- **Saídas/efeito:** Retorna o valor atual por `value`/`result` e mantém o fluxo disponível.
- **Exemplo:** Exemplo real: ligar o eixo horizontal do joystick às rodas direcionais.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 715. Shift Up

- **ID:** `vehicle.shift_up`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Aumenta a marcha no sistema de veículo, atuando diretamente no componente da cena. Use quando o gameplay precisa aumenta a marcha esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path` do veículo.
- **Saídas/efeito:** Aplica `shift up` pela API nativa registrada para veículo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No veículo `../Car`, ligue um evento de direção ou estado a `Shift Up`; a operação aumenta a marcha o componente nativo usado pelas rodas, motor e carroceria.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 716. Shift Down

- **ID:** `vehicle.shift_down`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Reduz a marcha no sistema de veículo, atuando diretamente no componente da cena. Use quando o gameplay precisa reduz a marcha esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path` do veículo.
- **Saídas/efeito:** Aplica `shift down` pela API nativa registrada para veículo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No veículo `../Car`, ligue um evento de direção ou estado a `Shift Down`; a operação reduz a marcha o componente nativo usado pelas rodas, motor e carroceria.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 717. Set Gear

- **ID:** `vehicle.set_gear`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define marcha atual; valores negativos representam ré e zero representa neutro. O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de gear no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: selecionar ré ao pressionar o botão R.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 718. Get Gear

- **ID:** `vehicle.get_gear`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Lê marcha atual; valores negativos representam ré e zero representa neutro, sem alterar o veículo.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; para dados de roda, informe também `wheel_index`.
- **Saídas/efeito:** Retorna o valor atual por `value`/`result` e mantém o fluxo disponível.
- **Exemplo:** Exemplo real: selecionar ré ao pressionar o botão R.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 719. Get Speed

- **ID:** `vehicle.get_speed`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Lê velocidade linear atual do veículo em unidades por segundo, sem alterar o veículo.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; para dados de roda, informe também `wheel_index`.
- **Saídas/efeito:** Retorna o valor atual por `value`/`result` e mantém o fluxo disponível.
- **Exemplo:** Exemplo real: converter para km/h e atualizar o velocímetro.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 720. Get Rpm

- **ID:** `vehicle.get_rpm`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Lê rotação atual do motor em rotações por minuto, sem alterar o veículo.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; para dados de roda, informe também `wheel_index`.
- **Saídas/efeito:** Retorna o valor atual por `value`/`result` e mantém o fluxo disponível.
- **Exemplo:** Exemplo real: mover o ponteiro do conta-giros e decidir a troca de marcha.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 721. Get Wheel Speed

- **ID:** `vehicle.get_wheel_speed`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Lê velocidade angular/linear medida na roda indicada, sem alterar o veículo.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; para dados de roda, informe também `wheel_index`.
- **Saídas/efeito:** Retorna o valor atual por `value`/`result` e mantém o fluxo disponível.
- **Exemplo:** Exemplo real: comparar roda e carro para detectar perda de tração.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 722. Get Slip Ratio

- **ID:** `vehicle.get_slip_ratio`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Lê diferença longitudinal entre rotação da roda e deslocamento do carro, sem alterar o veículo.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; para dados de roda, informe também `wheel_index`.
- **Saídas/efeito:** Retorna o valor atual por `value`/`result` e mantém o fluxo disponível.
- **Exemplo:** Exemplo real: acionar controle de tração quando a roda patina.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 723. Get Lateral Slip

- **ID:** `vehicle.get_lateral_slip`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Lê escorregamento lateral da roda, sem alterar o veículo.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; para dados de roda, informe também `wheel_index`.
- **Saídas/efeito:** Retorna o valor atual por `value`/`result` e mantém o fluxo disponível.
- **Exemplo:** Exemplo real: reduzir assistência ou produzir som de pneu em uma derrapagem.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 724. Set Mass

- **ID:** `vehicle.set_mass`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define massa da carroceria em quilogramas. O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de mass no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: deixar um caminhão mais pesado que um kart.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 725. Set Engine Power

- **ID:** `vehicle.set_engine_power`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define potência usada pelo modelo do motor para produzir aceleração. O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de engine power no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: configurar um carro esportivo mais forte que o veículo inicial.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 726. Set Max Torque

- **ID:** `vehicle.set_max_torque`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define limite de torque que o motor entrega ao trem de força. O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de max torque no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: aumentar força em baixa rotação para um veículo off-road.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 727. Set Redline Rpm

- **ID:** `vehicle.set_redline_rpm`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define RPM máximo seguro antes do corte de giro. O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de redline rpm no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: impedir que o motor continue acelerando além de 7000 RPM.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 728. Set Top Speed

- **ID:** `vehicle.set_top_speed`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define velocidade máxima permitida pelo controlador. O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de top speed no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: limitar um veículo urbano a 120 km/h.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 729. Set Drive Type

- **ID:** `vehicle.set_drive_type`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define rodas que recebem tração: dianteira, traseira ou integral. O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de drive type no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: usar tração integral em um carro para terreno solto.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 730. Set Gear Ratios

- **ID:** `vehicle.set_gear_ratios`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define lista de relações de cada marcha. O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de gear ratios no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: dar primeira marcha curta e marchas finais longas.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 731. Set Final Drive

- **ID:** `vehicle.set_final_drive`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define relação final que multiplica todas as marchas. O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de final drive no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: priorizar aceleração com relação maior ou velocidade final com menor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 732. Set Drivetrain Efficiency

- **ID:** `vehicle.set_drivetrain_efficiency`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define fração da força do motor que chega às rodas, entre 0 e 1. O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de drivetrain efficiency no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: simular perdas mecânicas do trem de força.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 733. Set Tire Grip

- **ID:** `vehicle.set_tire_grip`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define aderência longitudinal usada para acelerar e frear. O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de tire grip no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: dar mais tração ao pneu de corrida.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 734. Set Lateral Grip

- **ID:** `vehicle.set_lateral_grip`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define aderência lateral que resiste à derrapagem em curvas. O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de lateral grip no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: diferenciar pneu de asfalto e pneu sobre areia.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 735. Set Traction Control

- **ID:** `vehicle.set_traction_control`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define assistência que reduz torque quando as rodas patinam. O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de traction control no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: manter o carro controlável ao acelerar em piso molhado.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 736. Set Abs

- **ID:** `vehicle.set_abs`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define assistência que alivia o freio quando uma roda está prestes a travar. O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de abs no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: preservar capacidade de virar durante uma frenagem forte.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 737. Set Stability Assist

- **ID:** `vehicle.set_stability_assist`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define correção que combate rotação e derrapagem excessivas da carroceria. O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de stability assist no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: ajudar jogadores mobile a recuperar o carro em curvas.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 738. Set Steering Angle

- **ID:** `vehicle.set_steering_angle`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define ângulo máximo das rodas direcionais. O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de steering angle no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: permitir curvas fechadas em baixa velocidade.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 739. Set Steering Response

- **ID:** `vehicle.set_steering_response`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define rapidez com que a direção alcança o comando solicitado. O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de steering response no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: suavizar mudanças bruscas do joystick.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 740. Set Wheel Radius

- **ID:** `vehicle.set_wheel_radius`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define raio físico da roda em metros/unidades do mundo. O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de wheel radius no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: sincronizar rotação e velocidade de uma roda maior.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 741. Set Wheel Position

- **ID:** `vehicle.set_wheel_position`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define posição local da roda em relação à carroceria. O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de wheel position no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: alinhar cada roda ao modelo visual do veículo.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 742. Set Wheel Driven

- **ID:** `vehicle.set_wheel_driven`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define define se a roda recebe torque do motor. O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de wheel driven no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: marcar somente as rodas traseiras em um carro RWD.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 743. Set Wheel Steerable

- **ID:** `vehicle.set_wheel_steerable`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define define se a roda responde ao comando de direção. O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de wheel steerable no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: marcar as rodas dianteiras como direcionais.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 744. Set Suspension Travel

- **ID:** `vehicle.set_suspension_travel`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define distância máxima que a suspensão pode comprimir/estender. O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de suspension travel no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: permitir maior curso em um veículo off-road.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 745. Set Spring Strength

- **ID:** `vehicle.set_spring_strength`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define força da mola que sustenta a carroceria. O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de spring strength no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: evitar que um veículo pesado encoste no chão.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 746. Set Suspension Damping

- **ID:** `vehicle.set_suspension_damping`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define amortecimento que reduz oscilações da mola. O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de suspension damping no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: impedir que o carro continue quicando após um obstáculo.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 747. Get Suspension Compression

- **ID:** `vehicle.get_suspension_compression`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Lê compressão atual da suspensão da roda, sem alterar o veículo.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; para dados de roda, informe também `wheel_index`.
- **Saídas/efeito:** Retorna o valor atual por `value`/`result` e mantém o fluxo disponível.
- **Exemplo:** Exemplo real: animar visualmente o amortecedor ou detectar aterrissagem.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 748. Set Center Of Mass

- **ID:** `vehicle.set_center_of_mass`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define posição local do centro de massa da carroceria. O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de center of mass no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: baixar o centro de massa para reduzir capotamentos.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 749. Set Downforce

- **ID:** `vehicle.set_downforce`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define força aerodinâmica para baixo que cresce com a velocidade. O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de downforce no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: aumentar aderência de um carro de corrida em alta velocidade.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 750. Set Aero Drag

- **ID:** `vehicle.set_aero_drag`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define resistência do ar contra o movimento. O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de aero drag no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: controlar como a aceleração diminui perto da velocidade final.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 751. Set Rolling Resistance

- **ID:** `vehicle.set_rolling_resistance`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define resistência constante dos pneus ao rolamento. O valor alimenta o modelo nativo de veículo e afeta a simulação das rodas/carroceria.
- **Entradas/alvo:** `target_path`: `MGSVehicle3D`; `value`: valor de rolling resistance no tipo/unidade descrito acima.
- **Saídas/efeito:** Atualiza a configuração imediatamente e emite `flow`; a física usa o novo valor no próximo passo fixo.
- **Exemplo:** Exemplo real: fazer o carro desacelerar naturalmente sem acelerador.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 752. Reset Upright

- **ID:** `vehicle.reset_upright`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Reset upright no sistema de veículo, atuando diretamente no componente da cena. Use quando o gameplay precisa reset upright esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `mgsvehicle3d`/`vehiclebody3d` que representa o veículo controlado; configure `reset upright` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `reset upright` pela API nativa registrada para veículo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No veículo `../Car`, ligue um evento de direção ou estado a `Reset Upright`; a operação reset upright o componente nativo usado pelas rodas, motor e carroceria.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 753. Teleport

- **ID:** `vehicle.teleport`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Reposiciona imediatamente no sistema de veículo, atuando diretamente no componente da cena. Use quando o gameplay precisa reposiciona imediatamente esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`, `position` e rotação opcional.
- **Saídas/efeito:** Aplica `teleport` pela API nativa registrada para veículo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No veículo `../Car`, ligue um evento de direção ou estado a `Teleport`; a operação reposiciona imediatamente o componente nativo usado pelas rodas, motor e carroceria.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 754. Repair

- **ID:** `vehicle.repair`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Restaura no sistema de veículo, atuando diretamente no componente da cena. Use quando o gameplay precisa restaura esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `mgsvehicle3d`/`vehiclebody3d` que representa o veículo controlado; configure `repair` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `repair` pela API nativa registrada para veículo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No veículo `../Car`, ligue um evento de direção ou estado a `Repair`; a operação restaura o componente nativo usado pelas rodas, motor e carroceria.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 755. Enable Collision

- **ID:** `vehicle.enable_collision`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Enable collision no sistema de veículo, atuando diretamente no componente da cena. Use quando o gameplay precisa enable collision esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `mgsvehicle3d`/`vehiclebody3d` que representa o veículo controlado; configure `enable collision` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `enable collision` pela API nativa registrada para veículo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No veículo `../Car`, ligue um evento de direção ou estado a `Enable Collision`; a operação enable collision o componente nativo usado pelas rodas, motor e carroceria.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 756. Disable Collision

- **ID:** `vehicle.disable_collision`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Disable collision no sistema de veículo, atuando diretamente no componente da cena. Use quando o gameplay precisa disable collision esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `mgsvehicle3d`/`vehiclebody3d` que representa o veículo controlado; configure `disable collision` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `disable collision` pela API nativa registrada para veículo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No veículo `../Car`, ligue um evento de direção ou estado a `Disable Collision`; a operação disable collision o componente nativo usado pelas rodas, motor e carroceria.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 757. On Collision

- **ID:** `vehicle.on_collision`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** On collision no sistema de veículo, atuando diretamente no componente da cena. Use quando o gameplay precisa on collision esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `mgsvehicle3d`/`vehiclebody3d` que representa o veículo controlado; configure `on collision` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `on collision` pela API nativa registrada para veículo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No veículo `../Car`, ligue um evento de direção ou estado a `On Collision`; a operação on collision o componente nativo usado pelas rodas, motor e carroceria.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 758. On Entered

- **ID:** `vehicle.on_entered`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** On entered no sistema de veículo, atuando diretamente no componente da cena. Use quando o gameplay precisa on entered esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `mgsvehicle3d`/`vehiclebody3d` que representa o veículo controlado; configure `on entered` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `on entered` pela API nativa registrada para veículo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No veículo `../Car`, ligue um evento de direção ou estado a `On Entered`; a operação on entered o componente nativo usado pelas rodas, motor e carroceria.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 759. On Exited

- **ID:** `vehicle.on_exited`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** On exited no sistema de veículo, atuando diretamente no componente da cena. Use quando o gameplay precisa on exited esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `mgsvehicle3d`/`vehiclebody3d` que representa o veículo controlado; configure `on exited` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `on exited` pela API nativa registrada para veículo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No veículo `../Car`, ligue um evento de direção ou estado a `On Exited`; a operação on exited o componente nativo usado pelas rodas, motor e carroceria.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 760. On Door Opened

- **ID:** `vehicle.on_door_opened`
- **Categoria:** Veiculo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** On door opened no sistema de veículo, atuando diretamente no componente da cena. Use quando o gameplay precisa on door opened esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `mgsvehicle3d`/`vehiclebody3d` que representa o veículo controlado; configure `on door opened` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `on door opened` pela API nativa registrada para veículo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No veículo `../Car`, ligue um evento de direção ou estado a `On Door Opened`; a operação on door opened o componente nativo usado pelas rodas, motor e carroceria.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 761. Play

- **ID:** `audio.play`
- **Categoria:** Audio
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Inicia a reprodução no sistema de áudio, atuando diretamente no componente da cena. Use quando o gameplay precisa inicia a reprodução esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path` e recurso/nome a reproduzir.
- **Saídas/efeito:** Aplica `play` pela API nativa registrada para áudio e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Para o áudio `../Audio`, use `Play` quando a cena ou interação exigir; o bloco inicia a reprodução o player real e a saída `flow` só segue depois de aceitar a operação.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 762. Play 3D

- **ID:** `audio.play_3d`
- **Categoria:** Audio
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Play 3d no sistema de áudio, atuando diretamente no componente da cena. Use quando o gameplay precisa play 3d esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `audiostreamplayer`, `audiostreamplayer2d` ou `audiostreamplayer3d`, conforme o bloco; configure `play 3d` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `play 3d` pela API nativa registrada para áudio e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Para o áudio `../Audio`, use `Play 3D` quando a cena ou interação exigir; o bloco play 3d o player real e a saída `flow` só segue depois de aceitar a operação.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 763. Play Loop

- **ID:** `audio.play_loop`
- **Categoria:** Audio
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Play loop no sistema de áudio, atuando diretamente no componente da cena. Use quando o gameplay precisa play loop esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `audiostreamplayer`, `audiostreamplayer2d` ou `audiostreamplayer3d`, conforme o bloco; configure `play loop` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `play loop` pela API nativa registrada para áudio e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Para o áudio `../Audio`, use `Play Loop` quando a cena ou interação exigir; o bloco play loop o player real e a saída `flow` só segue depois de aceitar a operação.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 764. Play 3D Loop

- **ID:** `audio.play_3d_loop`
- **Categoria:** Audio
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Inicia um som espacial repetido em um `AudioStreamPlayer3D`. O áudio acompanha a posição do Node e perde volume conforme o ouvinte se afasta; use para motor, cachoeira, máquina ou ambiente contínuo no mundo.
- **Entradas/alvo:** `target_path`: `AudioStreamPlayer3D`; `stream`: áudio; `volume_db`; `min_distance` em metros com volume cheio; `max_distance` em metros para deixar de ouvir. O stream precisa repetir ou o bloco deve habilitar loop.
- **Saídas/efeito:** Inicia a reprodução em loop e libera `flow`. O som continua até `Stop`, remoção do player ou troca de cena.
- **Exemplo:** Motor de carro: crie `Car/EngineAudio` como `AudioStreamPlayer3D`; ligue `Vehicle Enter → Play 3D Loop`, alvo `../Car/EngineAudio`, mínimo `2 m`, máximo `40 m`; ligue `Vehicle Exit → Stop` no mesmo alvo.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 765. Pause

- **ID:** `audio.pause`
- **Categoria:** Audio
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Pausa no sistema de áudio, atuando diretamente no componente da cena. Use quando o gameplay precisa pausa esse recurso em tempo de execução.
- **Entradas/alvo:** Somente `target_path`.
- **Saídas/efeito:** Aplica `pause` pela API nativa registrada para áudio e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Para o áudio `../Audio`, use `Pause` quando a cena ou interação exigir; o bloco pausa o player real e a saída `flow` só segue depois de aceitar a operação.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 766. Resume

- **ID:** `audio.resume`
- **Categoria:** Audio
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Retoma no sistema de áudio, atuando diretamente no componente da cena. Use quando o gameplay precisa retoma esse recurso em tempo de execução.
- **Entradas/alvo:** Somente `target_path`.
- **Saídas/efeito:** Aplica `resume` pela API nativa registrada para áudio e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Para o áudio `../Audio`, use `Resume` quando a cena ou interação exigir; o bloco retoma o player real e a saída `flow` só segue depois de aceitar a operação.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 767. Stop

- **ID:** `audio.stop`
- **Categoria:** Audio
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Interrompe no sistema de áudio, atuando diretamente no componente da cena. Use quando o gameplay precisa interrompe esse recurso em tempo de execução.
- **Entradas/alvo:** Somente `target_path`.
- **Saídas/efeito:** Aplica `stop` pela API nativa registrada para áudio e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Para o áudio `../Audio`, use `Stop` quando a cena ou interação exigir; o bloco interrompe o player real e a saída `flow` só segue depois de aceitar a operação.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 768. Stop All

- **ID:** `audio.stop_all`
- **Categoria:** Audio
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Stop all no sistema de áudio, atuando diretamente no componente da cena. Use quando o gameplay precisa stop all esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `audiostreamplayer`, `audiostreamplayer2d` ou `audiostreamplayer3d`, conforme o bloco; configure `stop all` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `stop all` pela API nativa registrada para áudio e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Para o áudio `../Audio`, use `Stop All` quando a cena ou interação exigir; o bloco stop all o player real e a saída `flow` só segue depois de aceitar a operação.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 769. Set Volume

- **ID:** `audio.set_volume`
- **Categoria:** Audio
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `volume` no sistema de áudio do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de volume, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza volume no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Volume`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 770. Get Volume

- **ID:** `audio.get_volume`
- **Categoria:** Audio
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Consulta `volume` no sistema de áudio sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna volume em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Volume → UI Set Text` mostra volume no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 771. Fade In

- **ID:** `audio.fade_in`
- **Categoria:** Audio
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Fade in no sistema de áudio, atuando diretamente no componente da cena. Use quando o gameplay precisa fade in esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`, `duration` em segundos e volume final.
- **Saídas/efeito:** Aplica `fade in` pela API nativa registrada para áudio e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Para o áudio `../Audio`, use `Fade In` quando a cena ou interação exigir; o bloco fade in o player real e a saída `flow` só segue depois de aceitar a operação.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 772. Fade Out

- **ID:** `audio.fade_out`
- **Categoria:** Audio
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Fade out no sistema de áudio, atuando diretamente no componente da cena. Use quando o gameplay precisa fade out esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path` e `duration` em segundos.
- **Saídas/efeito:** Aplica `fade out` pela API nativa registrada para áudio e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Para o áudio `../Audio`, use `Fade Out` quando a cena ou interação exigir; o bloco fade out o player real e a saída `flow` só segue depois de aceitar a operação.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 773. Set Pitch

- **ID:** `audio.set_pitch`
- **Categoria:** Audio
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `pitch` no sistema de áudio do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de pitch, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza pitch no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Pitch`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 774. Get Pitch

- **ID:** `audio.get_pitch`
- **Categoria:** Audio
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Consulta `pitch` no sistema de áudio sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna pitch em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Pitch → UI Set Text` mostra pitch no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 775. Set Pan

- **ID:** `audio.set_pan`
- **Categoria:** Audio
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `pan` no sistema de áudio do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de pan, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza pan no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Pan`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 776. Set Spatial Blend

- **ID:** `audio.set_spatial_blend`
- **Categoria:** Audio
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `spatial blend` no sistema de áudio do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de spatial blend, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza spatial blend no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Spatial Blend`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 777. Set Min Distance

- **ID:** `audio.set_min_distance`
- **Categoria:** Audio
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `min distance` no sistema de áudio do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de min distance, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza min distance no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Min Distance`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 778. Set Max Distance

- **ID:** `audio.set_max_distance`
- **Categoria:** Audio
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `max distance` no sistema de áudio do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de max distance, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza max distance no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Max Distance`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 779. Is Playing

- **ID:** `audio.is_playing`
- **Categoria:** Audio
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Is playing no sistema de áudio, atuando diretamente no componente da cena. Use quando o gameplay precisa is playing esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `audiostreamplayer`, `audiostreamplayer2d` ou `audiostreamplayer3d`, conforme o bloco; configure `is playing` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `is playing` pela API nativa registrada para áudio e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Para o áudio `../Audio`, use `Is Playing` quando a cena ou interação exigir; o bloco is playing o player real e a saída `flow` só segue depois de aceitar a operação.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 780. Set Bus

- **ID:** `audio.set_bus`
- **Categoria:** Audio
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `bus` no sistema de áudio do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de bus, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza bus no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Bus`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 781. Play

- **ID:** `animation.play`
- **Categoria:** Animacao
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Inicia a reprodução no sistema de animação, atuando diretamente no componente da cena. Use quando o gameplay precisa inicia a reprodução esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path` e recurso/nome a reproduzir.
- **Saídas/efeito:** Aplica `play` pela API nativa registrada para animação e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No `AnimationPlayer`/`AnimationTree` de `../Player`, use `Play` durante a mudança de estado; confira o nome da animação ou parâmetro antes de executar.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 782. Play Crossfade

- **ID:** `animation.play_crossfade`
- **Categoria:** Animacao
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Play crossfade no sistema de animação, atuando diretamente no componente da cena. Use quando o gameplay precisa play crossfade esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `animationplayer` ou `animationtree`; configure `play crossfade` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `play crossfade` pela API nativa registrada para animação e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No `AnimationPlayer`/`AnimationTree` de `../Player`, use `Play Crossfade` durante a mudança de estado; confira o nome da animação ou parâmetro antes de executar.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 783. Pause

- **ID:** `animation.pause`
- **Categoria:** Animacao
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Pausa no sistema de animação, atuando diretamente no componente da cena. Use quando o gameplay precisa pausa esse recurso em tempo de execução.
- **Entradas/alvo:** Somente `target_path`.
- **Saídas/efeito:** Aplica `pause` pela API nativa registrada para animação e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No `AnimationPlayer`/`AnimationTree` de `../Player`, use `Pause` durante a mudança de estado; confira o nome da animação ou parâmetro antes de executar.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 784. Resume

- **ID:** `animation.resume`
- **Categoria:** Animacao
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Retoma no sistema de animação, atuando diretamente no componente da cena. Use quando o gameplay precisa retoma esse recurso em tempo de execução.
- **Entradas/alvo:** Somente `target_path`.
- **Saídas/efeito:** Aplica `resume` pela API nativa registrada para animação e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No `AnimationPlayer`/`AnimationTree` de `../Player`, use `Resume` durante a mudança de estado; confira o nome da animação ou parâmetro antes de executar.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 785. Stop

- **ID:** `animation.stop`
- **Categoria:** Animacao
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Interrompe no sistema de animação, atuando diretamente no componente da cena. Use quando o gameplay precisa interrompe esse recurso em tempo de execução.
- **Entradas/alvo:** Somente `target_path`.
- **Saídas/efeito:** Aplica `stop` pela API nativa registrada para animação e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No `AnimationPlayer`/`AnimationTree` de `../Player`, use `Stop` durante a mudança de estado; confira o nome da animação ou parâmetro antes de executar.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 786. Rewind

- **ID:** `animation.rewind`
- **Categoria:** Animacao
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Rewind no sistema de animação, atuando diretamente no componente da cena. Use quando o gameplay precisa rewind esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `animationplayer` ou `animationtree`; configure `rewind` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `rewind` pela API nativa registrada para animação e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No `AnimationPlayer`/`AnimationTree` de `../Player`, use `Rewind` durante a mudança de estado; confira o nome da animação ou parâmetro antes de executar.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 787. Set Speed

- **ID:** `animation.set_speed`
- **Categoria:** Animacao
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `speed` no sistema de animação do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de speed, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza speed no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Speed`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 788. Get Speed

- **ID:** `animation.get_speed`
- **Categoria:** Animacao
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Consulta `speed` no sistema de animação sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna speed em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Speed → UI Set Text` mostra speed no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 789. Set Time

- **ID:** `animation.set_time`
- **Categoria:** Animacao
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `time` no sistema de animação do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de time, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza time no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Time`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 790. Get Time

- **ID:** `animation.get_time`
- **Categoria:** Animacao
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Consulta `time` no sistema de animação sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna time em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Time → UI Set Text` mostra time no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 791. Set Loop

- **ID:** `animation.set_loop`
- **Categoria:** Animacao
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `loop` no sistema de animação do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de loop, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza loop no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Loop`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 792. Is Playing

- **ID:** `animation.is_playing`
- **Categoria:** Animacao
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Is playing no sistema de animação, atuando diretamente no componente da cena. Use quando o gameplay precisa is playing esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `animationplayer` ou `animationtree`; configure `is playing` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `is playing` pela API nativa registrada para animação e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No `AnimationPlayer`/`AnimationTree` de `../Player`, use `Is Playing` durante a mudança de estado; confira o nome da animação ou parâmetro antes de executar.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 793. Set Bool

- **ID:** `animation.set_bool`
- **Categoria:** Animacao
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `bool` no sistema de animação do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de bool, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza bool no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Bool`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 794. Set Number

- **ID:** `animation.set_number`
- **Categoria:** Animacao
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `number` no sistema de animação do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de number, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza number no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Number`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 795. Set Trigger

- **ID:** `animation.set_trigger`
- **Categoria:** Animacao
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `trigger` no sistema de animação do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de trigger, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza trigger no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Trigger`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 796. Reset Trigger

- **ID:** `animation.reset_trigger`
- **Categoria:** Animacao
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Reset trigger no sistema de animação, atuando diretamente no componente da cena. Use quando o gameplay precisa reset trigger esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `animationplayer` ou `animationtree`; configure `reset trigger` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `reset trigger` pela API nativa registrada para animação e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No `AnimationPlayer`/`AnimationTree` de `../Player`, use `Reset Trigger` durante a mudança de estado; confira o nome da animação ou parâmetro antes de executar.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 797. Get State

- **ID:** `animation.get_state`
- **Categoria:** Animacao
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Consulta `state` no sistema de animação sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna state em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get State → UI Set Text` mostra state no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 798. Set Weight

- **ID:** `animation.set_weight`
- **Categoria:** Animacao
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `weight` no sistema de animação do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de weight, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza weight no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Weight`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 799. Blend

- **ID:** `animation.blend`
- **Categoria:** Animacao
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Blend no sistema de animação, atuando diretamente no componente da cena. Use quando o gameplay precisa blend esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `animationplayer` ou `animationtree`; configure `blend` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `blend` pela API nativa registrada para animação e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No `AnimationPlayer`/`AnimationTree` de `../Player`, use `Blend` durante a mudança de estado; confira o nome da animação ou parâmetro antes de executar.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 800. Play Additive

- **ID:** `animation.play_additive`
- **Categoria:** Animacao
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Play additive no sistema de animação, atuando diretamente no componente da cena. Use quando o gameplay precisa play additive esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `animationplayer` ou `animationtree`; configure `play additive` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `play additive` pela API nativa registrada para animação e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No `AnimationPlayer`/`AnimationTree` de `../Player`, use `Play Additive` durante a mudança de estado; confira o nome da animação ou parâmetro antes de executar.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 801. Get

- **ID:** `material.get`
- **Categoria:** Material
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Get no sistema de material, atuando diretamente no componente da cena. Use quando o gameplay precisa get esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `meshinstance3d` com `standardmaterial3d` ou `shadermaterial`; configure `get` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `get` pela API nativa registrada para material e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No mesh `../Player/Mesh`, use `Get` para get o material renderizado; a alteração fica visível no próprio objeto da cena.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 802. Set

- **ID:** `material.set`
- **Categoria:** Material
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Set no sistema de material, atuando diretamente no componente da cena. Use quando o gameplay precisa set esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `meshinstance3d` com `standardmaterial3d` ou `shadermaterial`; configure `set` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `set` pela API nativa registrada para material e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No mesh `../Player/Mesh`, use `Set` para set o material renderizado; a alteração fica visível no próprio objeto da cena.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 803. Clone

- **ID:** `material.clone`
- **Categoria:** Material
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Duplica no sistema de material, atuando diretamente no componente da cena. Use quando o gameplay precisa duplica esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path` e `parent_path` opcional.
- **Saídas/efeito:** Aplica `clone` pela API nativa registrada para material e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No mesh `../Player/Mesh`, use `Clone` para duplica o material renderizado; a alteração fica visível no próprio objeto da cena.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 804. Set Color

- **ID:** `material.set_color`
- **Categoria:** Material
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `color` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de color, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza color no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Color`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 805. Get Color

- **ID:** `material.get_color`
- **Categoria:** Material
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Consulta `color` no sistema de material sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna color em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Color → UI Set Text` mostra color no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 806. Set Number

- **ID:** `material.set_number`
- **Categoria:** Material
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `number` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de number, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza number no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Number`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 807. Get Number

- **ID:** `material.get_number`
- **Categoria:** Material
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Consulta `number` no sistema de material sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna number em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Number → UI Set Text` mostra number no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 808. Set Vector

- **ID:** `material.set_vector`
- **Categoria:** Material
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `vector` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de vector, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza vector no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Vector`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 809. Get Vector

- **ID:** `material.get_vector`
- **Categoria:** Material
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Consulta `vector` no sistema de material sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna vector em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Vector → UI Set Text` mostra vector no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 810. Set Texture

- **ID:** `material.set_texture`
- **Categoria:** Material
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `texture` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de texture, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza texture no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Texture`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 811. Get Texture

- **ID:** `material.get_texture`
- **Categoria:** Material
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Consulta `texture` no sistema de material sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna texture em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Texture → UI Set Text` mostra texture no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 812. Set Emission

- **ID:** `material.set_emission`
- **Categoria:** Material
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `emission` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de emission, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza emission no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Emission`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 813. Set Metallic

- **ID:** `material.set_metallic`
- **Categoria:** Material
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `metallic` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de metallic, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza metallic no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Metallic`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 814. Set Roughness

- **ID:** `material.set_roughness`
- **Categoria:** Material
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `roughness` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de roughness, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza roughness no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Roughness`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 815. Set Opacity

- **ID:** `material.set_opacity`
- **Categoria:** Material
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `opacity` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de opacity, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza opacity no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Opacity`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 816. Set Uv Offset

- **ID:** `material.set_uv_offset`
- **Categoria:** Material
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `uv offset` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de uv offset, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza uv offset no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Uv Offset`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 817. Set Uv Scale

- **ID:** `material.set_uv_scale`
- **Categoria:** Material
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `uv scale` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de uv scale, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza uv scale no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Uv Scale`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 818. Enable Keyword

- **ID:** `material.enable_keyword`
- **Categoria:** Material
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Enable keyword no sistema de material, atuando diretamente no componente da cena. Use quando o gameplay precisa enable keyword esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `meshinstance3d` com `standardmaterial3d` ou `shadermaterial`; configure `enable keyword` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `enable keyword` pela API nativa registrada para material e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No mesh `../Player/Mesh`, use `Enable Keyword` para enable keyword o material renderizado; a alteração fica visível no próprio objeto da cena.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 819. Disable Keyword

- **ID:** `material.disable_keyword`
- **Categoria:** Material
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Disable keyword no sistema de material, atuando diretamente no componente da cena. Use quando o gameplay precisa disable keyword esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `meshinstance3d` com `standardmaterial3d` ou `shadermaterial`; configure `disable keyword` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `disable keyword` pela API nativa registrada para material e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No mesh `../Player/Mesh`, use `Disable Keyword` para disable keyword o material renderizado; a alteração fica visível no próprio objeto da cena.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 820. Has Keyword

- **ID:** `material.has_keyword`
- **Categoria:** Material
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Has keyword no sistema de material, atuando diretamente no componente da cena. Use quando o gameplay precisa has keyword esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `meshinstance3d` com `standardmaterial3d` ou `shadermaterial`; configure `has keyword` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `has keyword` pela API nativa registrada para material e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No mesh `../Player/Mesh`, use `Has Keyword` para has keyword o material renderizado; a alteração fica visível no próprio objeto da cena.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 821. Show

- **ID:** `ui.show`
- **Categoria:** Interface
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Torna visível no sistema de interface, atuando diretamente no componente da cena. Use quando o gameplay precisa torna visível esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path` do control/canvasitem.
- **Saídas/efeito:** Aplica `show` pela API nativa registrada para interface e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No controle `../HUD/Status`, use `Show` após o evento de gameplay; o bloco torna visível o elemento que o jogador realmente vê ou manipula.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 822. Hide

- **ID:** `ui.hide`
- **Categoria:** Interface
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Oculta no sistema de interface, atuando diretamente no componente da cena. Use quando o gameplay precisa oculta esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path` do control/canvasitem.
- **Saídas/efeito:** Aplica `hide` pela API nativa registrada para interface e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No controle `../HUD/Status`, use `Hide` após o evento de gameplay; o bloco oculta o elemento que o jogador realmente vê ou manipula.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 823. Toggle

- **ID:** `ui.toggle`
- **Categoria:** Interface
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Toggle no sistema de interface, atuando diretamente no componente da cena. Use quando o gameplay precisa toggle esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `control` compatível, como `label`, `button`, `range` ou `lineedit`; configure `toggle` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `toggle` pela API nativa registrada para interface e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No controle `../HUD/Status`, use `Toggle` após o evento de gameplay; o bloco toggle o elemento que o jogador realmente vê ou manipula.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 824. Set Text

- **ID:** `ui.set_text`
- **Categoria:** Interface
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `text` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de text, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza text no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Text`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 825. Get Text

- **ID:** `ui.get_text`
- **Categoria:** Interface
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Consulta `text` no sistema de interface sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna text em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Text → UI Set Text` mostra text no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 826. Set Image

- **ID:** `ui.set_image`
- **Categoria:** Interface
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `image` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de image, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza image no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Image`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 827. Set Color

- **ID:** `ui.set_color`
- **Categoria:** Interface
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `color` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de color, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza color no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Color`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 828. Set Value

- **ID:** `ui.set_value`
- **Categoria:** Interface
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `value` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de value, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza value no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Value`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 829. Get Value

- **ID:** `ui.get_value`
- **Categoria:** Interface
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Consulta `value` no sistema de interface sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna value em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Value → UI Set Text` mostra value no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 830. Set Min

- **ID:** `ui.set_min`
- **Categoria:** Interface
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `min` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de min, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza min no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Min`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 831. Set Max

- **ID:** `ui.set_max`
- **Categoria:** Interface
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `max` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de max, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza max no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Max`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 832. Set Interactable

- **ID:** `ui.set_interactable`
- **Categoria:** Interface
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `interactable` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de interactable, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza interactable no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Interactable`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 833. Is Interactable

- **ID:** `ui.is_interactable`
- **Categoria:** Interface
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Is interactable no sistema de interface, atuando diretamente no componente da cena. Use quando o gameplay precisa is interactable esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `control` compatível, como `label`, `button`, `range` ou `lineedit`; configure `is interactable` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `is interactable` pela API nativa registrada para interface e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No controle `../HUD/Status`, use `Is Interactable` após o evento de gameplay; o bloco is interactable o elemento que o jogador realmente vê ou manipula.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 834. Focus

- **ID:** `ui.focus`
- **Categoria:** Interface
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Move o foco no sistema de interface, atuando diretamente no componente da cena. Use quando o gameplay precisa move o foco esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `control` compatível, como `label`, `button`, `range` ou `lineedit`; configure `focus` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `focus` pela API nativa registrada para interface e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No controle `../HUD/Status`, use `Focus` após o evento de gameplay; o bloco move o foco o elemento que o jogador realmente vê ou manipula.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 835. Unfocus

- **ID:** `ui.unfocus`
- **Categoria:** Interface
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Remove o foco no sistema de interface, atuando diretamente no componente da cena. Use quando o gameplay precisa remove o foco esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `control` compatível, como `label`, `button`, `range` ou `lineedit`; configure `unfocus` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `unfocus` pela API nativa registrada para interface e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No controle `../HUD/Status`, use `Unfocus` após o evento de gameplay; o bloco remove o foco o elemento que o jogador realmente vê ou manipula.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 836. Set Position

- **ID:** `ui.set_position`
- **Categoria:** Interface
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `position` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de position, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza position no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Position`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 837. Set Size

- **ID:** `ui.set_size`
- **Categoria:** Interface
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `size` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de size, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza size no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Size`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 838. Set Anchor

- **ID:** `ui.set_anchor`
- **Categoria:** Interface
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `anchor` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de anchor, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza anchor no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Anchor`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 839. Set Progress

- **ID:** `ui.set_progress`
- **Categoria:** Interface
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `progress` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de progress, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza progress no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Progress`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 840. Animate Value

- **ID:** `ui.animate_value`
- **Categoria:** Interface
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Animate value no sistema de interface, atuando diretamente no componente da cena. Use quando o gameplay precisa animate value esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `control` compatível, como `label`, `button`, `range` ou `lineedit`; configure `animate value` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `animate value` pela API nativa registrada para interface e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No controle `../HUD/Status`, use `Animate Value` após o evento de gameplay; o bloco animate value o elemento que o jogador realmente vê ou manipula.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 841. Toast

- **ID:** `ui.toast`
- **Categoria:** Interface
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Toast no sistema de interface, atuando diretamente no componente da cena. Use quando o gameplay precisa toast esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `control` compatível, como `label`, `button`, `range` ou `lineedit`; configure `toast` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `toast` pela API nativa registrada para interface e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No controle `../HUD/Status`, use `Toast` após o evento de gameplay; o bloco toast o elemento que o jogador realmente vê ou manipula.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 842. Open Panel

- **ID:** `ui.open_panel`
- **Categoria:** Interface
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Open panel no sistema de interface, atuando diretamente no componente da cena. Use quando o gameplay precisa open panel esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `control` compatível, como `label`, `button`, `range` ou `lineedit`; configure `open panel` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `open panel` pela API nativa registrada para interface e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No controle `../HUD/Status`, use `Open Panel` após o evento de gameplay; o bloco open panel o elemento que o jogador realmente vê ou manipula.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 843. Close Panel

- **ID:** `ui.close_panel`
- **Categoria:** Interface
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Close panel no sistema de interface, atuando diretamente no componente da cena. Use quando o gameplay precisa close panel esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: `control` compatível, como `label`, `button`, `range` ou `lineedit`; configure `close panel` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `close panel` pela API nativa registrada para interface e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** No controle `../HUD/Status`, use `Close Panel` após o evento de gameplay; o bloco close panel o elemento que o jogador realmente vê ou manipula.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 844. Set Placeholder

- **ID:** `ui.set_placeholder`
- **Categoria:** Interface
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `placeholder` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de placeholder, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza placeholder no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Placeholder`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 845. Load

- **ID:** `world.load`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Carrega no sistema de mundo, atuando diretamente no componente da cena. Use quando o gameplay precisa carrega esse recurso em tempo de execução.
- **Entradas/alvo:** `scene_path` ou recurso a carregar.
- **Saídas/efeito:** Aplica `load` pela API nativa registrada para mundo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Na cena ativa, use `Load` sobre `../World` ou o alvo indicado; o bloco carrega o sistema nativo do mundo e o resultado aparece na mesma SceneTree.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 846. Load Additive

- **ID:** `world.load_additive`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Load additive no sistema de mundo, atuando diretamente no componente da cena. Use quando o gameplay precisa load additive esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: nó de mundo compatível, como câmera, personagem, terreno ou ambiente; configure `load additive` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `load additive` pela API nativa registrada para mundo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Na cena ativa, use `Load Additive` sobre `../World` ou o alvo indicado; o bloco load additive o sistema nativo do mundo e o resultado aparece na mesma SceneTree.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 847. Unload

- **ID:** `world.unload`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Descarrega no sistema de mundo, atuando diretamente no componente da cena. Use quando o gameplay precisa descarrega esse recurso em tempo de execução.
- **Entradas/alvo:** `scene_path`/identificador carregado.
- **Saídas/efeito:** Aplica `unload` pela API nativa registrada para mundo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Na cena ativa, use `Unload` sobre `../World` ou o alvo indicado; o bloco descarrega o sistema nativo do mundo e o resultado aparece na mesma SceneTree.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 848. Reload

- **ID:** `world.reload`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Recarrega no sistema de mundo, atuando diretamente no componente da cena. Use quando o gameplay precisa recarrega esse recurso em tempo de execução.
- **Entradas/alvo:** Cena/mundo ativo.
- **Saídas/efeito:** Aplica `reload` pela API nativa registrada para mundo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Na cena ativa, use `Reload` sobre `../World` ou o alvo indicado; o bloco recarrega o sistema nativo do mundo e o resultado aparece na mesma SceneTree.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 849. Set Active

- **ID:** `world.set_active`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `active` no sistema de mundo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de active, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza active no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Active`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 850. Get Active

- **ID:** `world.get_active`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Consulta `active` no sistema de mundo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna active em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Active → UI Set Text` mostra active no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 851. Pause

- **ID:** `world.pause`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Pausa no sistema de mundo, atuando diretamente no componente da cena. Use quando o gameplay precisa pausa esse recurso em tempo de execução.
- **Entradas/alvo:** Somente `target_path`.
- **Saídas/efeito:** Aplica `pause` pela API nativa registrada para mundo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Na cena ativa, use `Pause` sobre `../World` ou o alvo indicado; o bloco pausa o sistema nativo do mundo e o resultado aparece na mesma SceneTree.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 852. Resume

- **ID:** `world.resume`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Retoma no sistema de mundo, atuando diretamente no componente da cena. Use quando o gameplay precisa retoma esse recurso em tempo de execução.
- **Entradas/alvo:** Somente `target_path`.
- **Saídas/efeito:** Aplica `resume` pela API nativa registrada para mundo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Na cena ativa, use `Resume` sobre `../World` ou o alvo indicado; o bloco retoma o sistema nativo do mundo e o resultado aparece na mesma SceneTree.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 853. Set Time Scale

- **ID:** `world.set_time_scale`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `time scale` no sistema de mundo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de time scale, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza time scale no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Time Scale`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 854. Get Time Scale

- **ID:** `world.get_time_scale`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Consulta `time scale` no sistema de mundo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna time scale em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Time Scale → UI Set Text` mostra time scale no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 855. Set Ambient Color

- **ID:** `world.set_ambient_color`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `ambient color` no sistema de mundo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de ambient color, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza ambient color no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Ambient Color`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 856. Set Skybox

- **ID:** `world.set_skybox`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `skybox` no sistema de mundo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de skybox, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza skybox no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Skybox`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 857. Set Fog

- **ID:** `world.set_fog`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `fog` no sistema de mundo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de fog, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza fog no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Fog`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 858. Set Gravity

- **ID:** `world.set_gravity`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define `gravity` no sistema de mundo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de gravity, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza gravity no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Gravity`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 859. Find Spawn

- **ID:** `world.find_spawn`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Find spawn no sistema de mundo, atuando diretamente no componente da cena. Use quando o gameplay precisa find spawn esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: nó de mundo compatível, como câmera, personagem, terreno ou ambiente; configure `find spawn` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `find spawn` pela API nativa registrada para mundo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Na cena ativa, use `Find Spawn` sobre `../World` ou o alvo indicado; o bloco find spawn o sistema nativo do mundo e o resultado aparece na mesma SceneTree.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 860. Spawn At

- **ID:** `world.spawn_at`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Spawn at no sistema de mundo, atuando diretamente no componente da cena. Use quando o gameplay precisa spawn at esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: nó de mundo compatível, como câmera, personagem, terreno ou ambiente; configure `spawn at` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `spawn at` pela API nativa registrada para mundo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Na cena ativa, use `Spawn At` sobre `../World` ou o alvo indicado; o bloco spawn at o sistema nativo do mundo e o resultado aparece na mesma SceneTree.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 861. Destroy All

- **ID:** `world.destroy_all`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Destroy all no sistema de mundo, atuando diretamente no componente da cena. Use quando o gameplay precisa destroy all esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: nó de mundo compatível, como câmera, personagem, terreno ou ambiente; configure `destroy all` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `destroy all` pela API nativa registrada para mundo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Na cena ativa, use `Destroy All` sobre `../World` ou o alvo indicado; o bloco destroy all o sistema nativo do mundo e o resultado aparece na mesma SceneTree.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 862. Preload

- **ID:** `world.preload`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Preload no sistema de mundo, atuando diretamente no componente da cena. Use quando o gameplay precisa preload esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: nó de mundo compatível, como câmera, personagem, terreno ou ambiente; configure `preload` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `preload` pela API nativa registrada para mundo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Na cena ativa, use `Preload` sobre `../World` ou o alvo indicado; o bloco preload o sistema nativo do mundo e o resultado aparece na mesma SceneTree.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 863. Release

- **ID:** `world.release`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Release no sistema de mundo, atuando diretamente no componente da cena. Use quando o gameplay precisa release esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: nó de mundo compatível, como câmera, personagem, terreno ou ambiente; configure `release` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `release` pela API nativa registrada para mundo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Na cena ativa, use `Release` sobre `../World` ou o alvo indicado; o bloco release o sistema nativo do mundo e o resultado aparece na mesma SceneTree.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 864. Quit

- **ID:** `world.quit`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Encerra o jogo no sistema de mundo, atuando diretamente no componente da cena. Use quando o gameplay precisa encerra o jogo esse recurso em tempo de execução.
- **Entradas/alvo:** Nenhuma entrada.
- **Saídas/efeito:** Aplica `quit` pela API nativa registrada para mundo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Na cena ativa, use `Quit` sobre `../World` ou o alvo indicado; o bloco encerra o jogo o sistema nativo do mundo e o resultado aparece na mesma SceneTree.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 865. Terrain Get Height

- **ID:** `world.terrain_get_height`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Lê a altura do terreno em uma coordenada x/z. A operação atua no `MGSTerrain3D` nativo e mantém renderização e colisão coerentes.
- **Entradas/alvo:** `target_path`: `MGSTerrain3D`; `position`: `Vector3` ou X/Z do ponto consultado.
- **Saídas/efeito:** Altura Y numérica em `value`; emite `flow` quando a atualização termina.
- **Exemplo:** Exemplo de uso: posicionar `../Player` sobre o solo ao nascer, somando a altura retornada ao transform.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 866. Terrain Set Height

- **ID:** `world.terrain_set_height`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define a altura absoluta dos vértices dentro do pincel. A operação atua no `MGSTerrain3D` nativo e mantém renderização e colisão coerentes.
- **Entradas/alvo:** `target_path`, `position`, `radius` e `height`.
- **Saídas/efeito:** Malha e colisão reconstruídas com a nova altura; emite `flow` quando a atualização termina.
- **Exemplo:** Exemplo de uso: criar uma plataforma plana em Y=4 no centro da arena.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 867. Terrain Raise

- **ID:** `world.terrain_raise`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Eleva o terreno gradualmente dentro do pincel. A operação atua no `MGSTerrain3D` nativo e mantém renderização e colisão coerentes.
- **Entradas/alvo:** `target_path`, `position`, `radius` e `strength` positivo.
- **Saídas/efeito:** Vértices elevados e colisão sincronizada; emite `flow` quando a atualização termina.
- **Exemplo:** Exemplo de uso: formar uma colina onde o jogador segura o botão de edição.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 868. Terrain Lower

- **ID:** `world.terrain_lower`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Rebaixa o terreno gradualmente dentro do pincel. A operação atua no `MGSTerrain3D` nativo e mantém renderização e colisão coerentes.
- **Entradas/alvo:** `target_path`, `position`, `radius` e `strength`.
- **Saídas/efeito:** Vértices rebaixados e colisão sincronizada; emite `flow` quando a atualização termina.
- **Exemplo:** Exemplo de uso: escavar uma cratera no ponto atingido por um projétil.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 869. Terrain Smooth

- **ID:** `world.terrain_smooth`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Suaviza diferenças bruscas de altura usando os vértices vizinhos. A operação atua no `MGSTerrain3D` nativo e mantém renderização e colisão coerentes.
- **Entradas/alvo:** `target_path`, `position`, `radius` e `strength` entre 0 e 1.
- **Saídas/efeito:** Encostas menos serrilhadas sem apagar o terreno inteiro; emite `flow` quando a atualização termina.
- **Exemplo:** Exemplo de uso: alisar a passagem entre uma estrada e uma montanha.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 870. Terrain Flatten

- **ID:** `world.terrain_flatten`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Nivela a área do pincel para uma altura comum. A operação atua no `MGSTerrain3D` nativo e mantém renderização e colisão coerentes.
- **Entradas/alvo:** `target_path`, `position`, `radius` e `height` opcional.
- **Saídas/efeito:** Área plana com mesh e collider atualizados; emite `flow` quando a atualização termina.
- **Exemplo:** Exemplo de uso: preparar o chão para colocar uma casa.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 871. Terrain Add Noise

- **ID:** `world.terrain_add_noise`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Adiciona variação procedural às alturas. A operação atua no `MGSTerrain3D` nativo e mantém renderização e colisão coerentes.
- **Entradas/alvo:** `target_path`, `seed`, `frequency`, `amplitude` e região opcional.
- **Saídas/efeito:** Relevo reproduzível pela mesma seed; emite `flow` quando a atualização termina.
- **Exemplo:** Exemplo de uso: gerar pequenas ondulações naturais em um mapa inicialmente plano.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 872. Terrain Paint Layer

- **ID:** `world.terrain_paint_layer`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Pinta o peso de uma camada de textura no terreno. A operação atua no `MGSTerrain3D` nativo e mantém renderização e colisão coerentes.
- **Entradas/alvo:** `target_path`, `position`, `radius`, `layer` e `weight` de 0 a 1.
- **Saídas/efeito:** Mapa de pesos alterado para mesclar a camada; emite `flow` quando a atualização termina.
- **Exemplo:** Exemplo de uso: pintar terra sob uma estrada sem trocar o material do terreno inteiro.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 873. Terrain Get Layer Weight

- **ID:** `world.terrain_get_layer_weight`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Consulta quanto uma camada influencia um ponto. A operação atua no `MGSTerrain3D` nativo e mantém renderização e colisão coerentes.
- **Entradas/alvo:** `target_path`, `position` e índice/nome de `layer`.
- **Saídas/efeito:** Peso entre 0 e 1 em `value`; emite `flow` quando a atualização termina.
- **Exemplo:** Exemplo de uso: detectar se o personagem está sobre areia para trocar o som dos passos.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 874. Terrain Apply Auto Tile

- **ID:** `world.terrain_apply_auto_tile`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Recalcula as camadas automáticas a partir das regras cadastradas. A operação atua no `MGSTerrain3D` nativo e mantém renderização e colisão coerentes.
- **Entradas/alvo:** `target_path` e região opcional.
- **Saídas/efeito:** Pesos de textura atualizados conforme altura e inclinação; emite `flow` quando a atualização termina.
- **Exemplo:** Exemplo de uso: aplicar rocha nas encostas e grama nas áreas planas após editar o relevo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 875. Terrain Add Auto Tile Rule

- **ID:** `world.terrain_add_auto_tile_rule`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Cadastra uma regra de textura por altura e inclinação. A operação atua no `MGSTerrain3D` nativo e mantém renderização e colisão coerentes.
- **Entradas/alvo:** `target_path`, `layer`, limites de `height`/`slope` e intensidade.
- **Saídas/efeito:** Regra armazenada no `MGSTerrain3D`; emite `flow` quando a atualização termina.
- **Exemplo:** Exemplo de uso: definir neve acima de Y=25 e somente em superfícies pouco inclinadas.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 876. Terrain Remove Auto Tile Rule

- **ID:** `world.terrain_remove_auto_tile_rule`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Remove uma regra automática existente. A operação atua no `MGSTerrain3D` nativo e mantém renderização e colisão coerentes.
- **Entradas/alvo:** `target_path` e índice/nome da regra.
- **Saídas/efeito:** Regra removida; use Apply Auto Tile para recalcular; emite `flow` quando a atualização termina.
- **Exemplo:** Exemplo de uso: desativar a regra de neve quando a fase muda para verão.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 877. Terrain Set Material

- **ID:** `world.terrain_set_material`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Atribui o material usado para renderizar a malha do terreno. A operação atua no `MGSTerrain3D` nativo e mantém renderização e colisão coerentes.
- **Entradas/alvo:** `target_path` e `material` (`StandardMaterial3D`/`ShaderMaterial`).
- **Saídas/efeito:** Material aplicado ao mesh gerado; emite `flow` quando a atualização termina.
- **Exemplo:** Exemplo de uso: usar um shader triplanar para evitar textura esticada nas encostas.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 878. Terrain Set Texture Scale

- **ID:** `world.terrain_set_texture_scale`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Ajusta a repetição da textura do terreno. A operação atua no `MGSTerrain3D` nativo e mantém renderização e colisão coerentes.
- **Entradas/alvo:** `target_path` e `scale` maior que zero.
- **Saídas/efeito:** UV/parametro de material atualizado; emite `flow` quando a atualização termina.
- **Exemplo:** Exemplo de uso: reduzir a escala para que pedras não pareçam gigantes.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 879. Terrain Set Texture Rotation

- **ID:** `world.terrain_set_texture_rotation`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Gira a orientação da textura sobre o terreno. A operação atua no `MGSTerrain3D` nativo e mantém renderização e colisão coerentes.
- **Entradas/alvo:** `target_path` e `rotation` em graus.
- **Saídas/efeito:** Orientação do material atualizada; emite `flow` quando a atualização termina.
- **Exemplo:** Exemplo de uso: alinhar a textura de uma estrada diagonal.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 880. Terrain Set Texture Offset

- **ID:** `world.terrain_set_texture_offset`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Desloca a textura sem mover a geometria. A operação atua no `MGSTerrain3D` nativo e mantém renderização e colisão coerentes.
- **Entradas/alvo:** `target_path` e `offset` `Vector2`.
- **Saídas/efeito:** Origem UV/parametro do shader atualizado; emite `flow` quando a atualização termina.
- **Exemplo:** Exemplo de uso: alinhar as faixas de uma estrada com o começo da pista.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 881. Terrain Set Roughness

- **ID:** `world.terrain_set_roughness`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define quão fosca ou refletiva é a superfície. A operação atua no `MGSTerrain3D` nativo e mantém renderização e colisão coerentes.
- **Entradas/alvo:** `target_path` e `roughness` entre 0 e 1.
- **Saídas/efeito:** Rugosidade aplicada ao material do terreno; emite `flow` quando a atualização termina.
- **Exemplo:** Exemplo de uso: usar 0.9 para solo seco e 0.25 para lama molhada.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 882. Terrain Set Metallic

- **ID:** `world.terrain_set_metallic`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Define a resposta metálica da superfície. A operação atua no `MGSTerrain3D` nativo e mantém renderização e colisão coerentes.
- **Entradas/alvo:** `target_path` e `metallic` entre 0 e 1.
- **Saídas/efeito:** Metallic aplicado ao material; emite `flow` quando a atualização termina.
- **Exemplo:** Exemplo de uso: usar valor alto somente em um terreno estilizado de metal.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 883. Terrain Import Heightmap

- **ID:** `world.terrain_import_heightmap`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Carrega alturas de uma imagem em tons de cinza. A operação atua no `MGSTerrain3D` nativo e mantém renderização e colisão coerentes.
- **Entradas/alvo:** `target_path`, `path` da imagem e escala vertical.
- **Saídas/efeito:** Terreno redimensionado/reconstruído a partir do heightmap; emite `flow` quando a atualização termina.
- **Exemplo:** Exemplo de uso: importar `res://maps/island_height.png` para criar a ilha jogável.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 884. Terrain Export Heightmap

- **ID:** `world.terrain_export_heightmap`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Grava as alturas atuais em uma imagem. A operação atua no `MGSTerrain3D` nativo e mantém renderização e colisão coerentes.
- **Entradas/alvo:** `target_path` e `path` de destino gravável.
- **Saídas/efeito:** Arquivo de heightmap criado e caminho retornado; emite `flow` quando a atualização termina.
- **Exemplo:** Exemplo de uso: salvar o terreno editado para reutilizá-lo em outra fase.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 885. Terrain Generate Semi Arid

- **ID:** `world.terrain_generate_semi_arid`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Gera relevo procedural semiárido com planícies e elevações. A operação atua no `MGSTerrain3D` nativo e mantém renderização e colisão coerentes.
- **Entradas/alvo:** `target_path`, `seed`, tamanho, resolução e amplitude.
- **Saídas/efeito:** Mesh, normais, UVs e collider gerados; emite `flow` quando a atualização termina.
- **Exemplo:** Exemplo de uso: criar um mapa de teste reproduzível usando seed 42.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 886. Terrain Scatter Tiles

- **ID:** `world.terrain_scatter_tiles`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Espalha instâncias sobre o terreno respeitando altura e normal. A operação atua no `MGSTerrain3D` nativo e mantém renderização e colisão coerentes.
- **Entradas/alvo:** `target_path`, cena/recurso, `density`, `seed` e região.
- **Saídas/efeito:** Objetos instanciados como filhos do terreno; emite `flow` quando a atualização termina.
- **Exemplo:** Exemplo de uso: distribuir pedras e arbustos de forma determinística.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 887. Terrain Clear Tiles

- **ID:** `world.terrain_clear_tiles`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Remove as instâncias espalhadas pelo sistema de terreno. A operação atua no `MGSTerrain3D` nativo e mantém renderização e colisão coerentes.
- **Entradas/alvo:** `target_path` e grupo/camada opcional.
- **Saídas/efeito:** Tiles removidos sem apagar a malha do terreno; emite `flow` quando a atualização termina.
- **Exemplo:** Exemplo de uso: limpar as pedras antigas antes de gerar uma nova distribuição.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 888. Character Set Camera First Person

- **ID:** `world.character_set_camera_first_person`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Character set camera first person no sistema de mundo, atuando diretamente no componente da cena. Use quando o gameplay precisa character set camera first person esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: nó de mundo compatível, como câmera, personagem, terreno ou ambiente; configure `character set camera first person` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `character set camera first person` pela API nativa registrada para mundo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Na cena ativa, use `Character Set Camera First Person` sobre `../World` ou o alvo indicado; o bloco character set camera first person o sistema nativo do mundo e o resultado aparece na mesma SceneTree.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 889. Character Set Camera Third Person

- **ID:** `world.character_set_camera_third_person`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Character set camera third person no sistema de mundo, atuando diretamente no componente da cena. Use quando o gameplay precisa character set camera third person esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: nó de mundo compatível, como câmera, personagem, terreno ou ambiente; configure `character set camera third person` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `character set camera third person` pela API nativa registrada para mundo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Na cena ativa, use `Character Set Camera Third Person` sobre `../World` ou o alvo indicado; o bloco character set camera third person o sistema nativo do mundo e o resultado aparece na mesma SceneTree.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 890. Character Set Camera Top Down

- **ID:** `world.character_set_camera_top_down`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Character set camera top down no sistema de mundo, atuando diretamente no componente da cena. Use quando o gameplay precisa character set camera top down esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: nó de mundo compatível, como câmera, personagem, terreno ou ambiente; configure `character set camera top down` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `character set camera top down` pela API nativa registrada para mundo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Na cena ativa, use `Character Set Camera Top Down` sobre `../World` ou o alvo indicado; o bloco character set camera top down o sistema nativo do mundo e o resultado aparece na mesma SceneTree.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 891. Character Set Speed

- **ID:** `world.character_set_speed`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Character set speed no sistema de mundo, atuando diretamente no componente da cena. Use quando o gameplay precisa character set speed esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: nó de mundo compatível, como câmera, personagem, terreno ou ambiente; configure `character set speed` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `character set speed` pela API nativa registrada para mundo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Na cena ativa, use `Character Set Speed` sobre `../World` ou o alvo indicado; o bloco character set speed o sistema nativo do mundo e o resultado aparece na mesma SceneTree.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 892. Character Jump

- **ID:** `world.character_jump`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Faz um `CharacterBody3D` pular somente quando `is_on_floor()` confirma contato com o chão.
- **Entradas/alvo:** `target_path`: personagem; `force`: velocidade vertical positiva; evento recomendado `Button Pressed` com ação `jump`.
- **Saídas/efeito:** Define a velocidade Y do personagem e emite `flow`; no ar, não aplica um segundo pulo.
- **Exemplo:** Pulo mobile: `Button Pressed (jump) → Character Jump`, alvo `../Player`, força `6.5`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 893. Character Set Look Sensitivity

- **ID:** `world.character_set_look_sensitivity`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Character set look sensitivity no sistema de mundo, atuando diretamente no componente da cena. Use quando o gameplay precisa character set look sensitivity esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: nó de mundo compatível, como câmera, personagem, terreno ou ambiente; configure `character set look sensitivity` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `character set look sensitivity` pela API nativa registrada para mundo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Na cena ativa, use `Character Set Look Sensitivity` sobre `../World` ou o alvo indicado; o bloco character set look sensitivity o sistema nativo do mundo e o resultado aparece na mesma SceneTree.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 894. Joystick Get Axis

- **ID:** `world.joystick_get_axis`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Joystick get axis no sistema de mundo, atuando diretamente no componente da cena. Use quando o gameplay precisa joystick get axis esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: nó de mundo compatível, como câmera, personagem, terreno ou ambiente; configure `joystick get axis` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `joystick get axis` pela API nativa registrada para mundo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Na cena ativa, use `Joystick Get Axis` sobre `../World` ou o alvo indicado; o bloco joystick get axis o sistema nativo do mundo e o resultado aparece na mesma SceneTree.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 895. Joystick Set Dead Zone

- **ID:** `world.joystick_set_dead_zone`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Joystick set dead zone no sistema de mundo, atuando diretamente no componente da cena. Use quando o gameplay precisa joystick set dead zone esse recurso em tempo de execução.
- **Entradas/alvo:** `target_path`: nó de mundo compatível, como câmera, personagem, terreno ou ambiente; configure `joystick set dead zone` no pino homônimo quando o bloco pedir um valor.
- **Saídas/efeito:** Aplica `joystick set dead zone` pela API nativa registrada para mundo e então emite `flow`; quando a operação consulta dados, o valor tipado também sai por `value`/`result`.
- **Exemplo:** Na cena ativa, use `Joystick Set Dead Zone` sobre `../World` ou o alvo indicado; o bloco joystick set dead zone o sistema nativo do mundo e o resultado aparece na mesma SceneTree.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 896. Mover personagem

- **ID:** `world.character_move`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Move um `CharacterBody3D` usando o joystick relativo à direção da câmera, aplica gravidade e chama `move_and_slide()`.
- **Entradas/alvo:** `target_path`: personagem; `speed`: unidades por segundo; eixo vindo de `Joystick Get Axis` ou das ações `ui_left/right/up/down`.
- **Saídas/efeito:** Atualiza a velocidade horizontal, preserva a gravidade e emite `flow`.
- **Exemplo:** Controle mobile: `Update → Joystick Get Axis → Character Move`, alvo `../Player` e velocidade `5.0`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 897. Girar câmera do personagem

- **ID:** `world.character_look`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Gira o personagem no eixo horizontal e o pivô da câmera no vertical, limitando o pitch para evitar que a visão vire ao contrário.
- **Entradas/alvo:** `target_path`: personagem/pivô; `look_delta`: movimento do toque; `sensitivity`: multiplicador da rotação.
- **Saídas/efeito:** Altera yaw e pitch e emite `flow`.
- **Exemplo:** Câmera mobile: `Pointer Drag → Character Look`, usando o delta do arrasto e sensibilidade `0.003`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 898. Save

- **ID:** `save.bool.save`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `save` para um valor persistente do tipo bool no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_bool`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 899. Load

- **ID:** `save.bool.load`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `load` para um valor persistente do tipo bool no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_bool`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 900. Has

- **ID:** `save.bool.has`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `has` para um valor persistente do tipo bool no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_bool`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 901. Delete

- **ID:** `save.bool.delete`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `delete` para um valor persistente do tipo bool no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_bool`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 902. Save

- **ID:** `save.number.save`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `save` para um valor persistente do tipo number no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_number`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 903. Load

- **ID:** `save.number.load`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `load` para um valor persistente do tipo number no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_number`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 904. Has

- **ID:** `save.number.has`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `has` para um valor persistente do tipo number no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_number`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 905. Delete

- **ID:** `save.number.delete`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `delete` para um valor persistente do tipo number no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_number`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 906. Save

- **ID:** `save.integer.save`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `save` para um valor persistente do tipo integer no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_integer`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 907. Load

- **ID:** `save.integer.load`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `load` para um valor persistente do tipo integer no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_integer`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 908. Has

- **ID:** `save.integer.has`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `has` para um valor persistente do tipo integer no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_integer`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 909. Delete

- **ID:** `save.integer.delete`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `delete` para um valor persistente do tipo integer no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_integer`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 910. Save

- **ID:** `save.text.save`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `save` para um valor persistente do tipo text no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_text`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 911. Load

- **ID:** `save.text.load`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `load` para um valor persistente do tipo text no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_text`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 912. Has

- **ID:** `save.text.has`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `has` para um valor persistente do tipo text no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_text`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 913. Delete

- **ID:** `save.text.delete`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `delete` para um valor persistente do tipo text no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_text`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 914. Save

- **ID:** `save.vector2.save`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `save` para um valor persistente do tipo vector2 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector2`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 915. Load

- **ID:** `save.vector2.load`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `load` para um valor persistente do tipo vector2 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector2`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 916. Has

- **ID:** `save.vector2.has`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `has` para um valor persistente do tipo vector2 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector2`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 917. Delete

- **ID:** `save.vector2.delete`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `delete` para um valor persistente do tipo vector2 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector2`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 918. Save

- **ID:** `save.vector3.save`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `save` para um valor persistente do tipo vector3 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector3`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 919. Load

- **ID:** `save.vector3.load`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `load` para um valor persistente do tipo vector3 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector3`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 920. Has

- **ID:** `save.vector3.has`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `has` para um valor persistente do tipo vector3 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector3`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 921. Delete

- **ID:** `save.vector3.delete`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `delete` para um valor persistente do tipo vector3 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector3`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 922. Save

- **ID:** `save.color.save`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `save` para um valor persistente do tipo color no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_color`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 923. Load

- **ID:** `save.color.load`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `load` para um valor persistente do tipo color no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_color`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 924. Has

- **ID:** `save.color.has`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `has` para um valor persistente do tipo color no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_color`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 925. Delete

- **ID:** `save.color.delete`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `delete` para um valor persistente do tipo color no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_color`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 926. Save

- **ID:** `save.object_id.save`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `save` para um valor persistente do tipo object id no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_object id`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 927. Load

- **ID:** `save.object_id.load`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `load` para um valor persistente do tipo object id no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_object id`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 928. Has

- **ID:** `save.object_id.has`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `has` para um valor persistente do tipo object id no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_object id`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 929. Delete

- **ID:** `save.object_id.delete`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `delete` para um valor persistente do tipo object id no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_object id`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 930. Save

- **ID:** `save.list.save`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `save` para um valor persistente do tipo list no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_list`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 931. Load

- **ID:** `save.list.load`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `load` para um valor persistente do tipo list no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_list`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 932. Has

- **ID:** `save.list.has`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `has` para um valor persistente do tipo list no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_list`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 933. Delete

- **ID:** `save.list.delete`
- **Categoria:** Save Game
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Executa `delete` para um valor persistente do tipo list no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_list`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 934. Delta

- **ID:** `time.delta`
- **Categoria:** Tempo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Retorna tempo em segundos desde o quadro anterior. Use para multiplicar movimento por Delta para manter a mesma velocidade em aparelhos rápidos e lentos.
- **Entradas/alvo:** Não possui entrada nem alvo; lê o relógio interno da engine.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Update → Delta → Multiply (speed) → Transform Position Add`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 935. Fixed Delta

- **ID:** `time.fixed_delta`
- **Categoria:** Tempo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Retorna intervalo fixo, em segundos, usado pela atualização de física. Use para calcular forças e física sem depender da taxa de quadros.
- **Entradas/alvo:** Não possui entrada nem alvo; lê o relógio interno da engine.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Fixed Update → Fixed Delta → Multiply (acceleration) → Add Force`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 936. Elapsed

- **ID:** `time.elapsed`
- **Categoria:** Tempo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Retorna segundos transcorridos desde o início da execução. Use para criar animações, cronômetros ou dificuldade progressiva.
- **Entradas/alvo:** Não possui entrada nem alvo; lê o relógio interno da engine.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Update → Elapsed → Math Sin → Material Set Emission`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 937. Unscaled Elapsed

- **ID:** `time.unscaled_elapsed`
- **Categoria:** Tempo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Retorna tempo transcorrido ignorando pausa e escala de tempo. Use para animar menus e telas de pausa enquanto o jogo está congelado.
- **Entradas/alvo:** Não possui entrada nem alvo; lê o relógio interno da engine.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Update → Unscaled Elapsed → UI Animate Value`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 938. Frame

- **ID:** `time.frame`
- **Categoria:** Tempo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Retorna número do quadro atualmente processado. Use para executar amostragem ou tarefas a cada quantidade de quadros.
- **Entradas/alvo:** Não possui entrada nem alvo; lê o relógio interno da engine.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Update → Frame → Modulo (30) → Equal (0) → Branch`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 939. Fps

- **ID:** `time.fps`
- **Categoria:** Tempo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Retorna quantidade aproximada de quadros renderizados por segundo. Use para mostrar um contador de desempenho ou adaptar efeitos em aparelhos lentos.
- **Entradas/alvo:** Não possui entrada nem alvo; lê o relógio interno da engine.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Update → Fps → Number To Text → UI Set Text`, alvo `../HUD/FpsLabel`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 940. Timestamp

- **ID:** `time.timestamp`
- **Categoria:** Tempo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Retorna instante atual como timestamp Unix. Use para registrar quando um save, partida ou recompensa ocorreu.
- **Entradas/alvo:** Não possui entrada nem alvo; lê o relógio interno da engine.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Button Pressed → Timestamp → Save Integer`, chave `last_save_time`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 941. Date

- **ID:** `time.date`
- **Categoria:** Tempo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Retorna data atual do sistema já formatada. Use para mostrar a data local em saves ou telas de perfil.
- **Entradas/alvo:** Não possui entrada nem alvo; lê o relógio interno da engine.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Ready → Date → UI Set Text`, alvo `../HUD/DateLabel`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 942. Time

- **ID:** `time.time`
- **Categoria:** Tempo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Retorna horário local atual do sistema. Use para exibir relógio ou criar eventos dependentes do horário.
- **Entradas/alvo:** Não possui entrada nem alvo; lê o relógio interno da engine.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Timer Elapsed → Time → UI Set Text`, alvo `../HUD/ClockLabel`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 943. Timezone

- **ID:** `time.timezone`
- **Categoria:** Tempo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Retorna fuso horário informado pelo sistema. Use para normalizar datas de placar ou explicar o horário mostrado.
- **Entradas/alvo:** Não possui entrada nem alvo; lê o relógio interno da engine.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Ready → Timezone → Text Append → UI Set Text`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 944. Timer Start

- **ID:** `time.timer_start`
- **Categoria:** Tempo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Retorna inicia um temporizador identificado por nome. Use para criar cooldowns, contagens regressivas e eventos atrasados reutilizáveis.
- **Entradas/alvo:** Recebe `seconds`/`duration` ou o `timer_name` indicado no bloco; não usa `target_path`.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Button Pressed → Timer Start`, nome `dash_cooldown`, duração `2.0`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 945. Timer Pause

- **ID:** `time.timer_pause`
- **Categoria:** Tempo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Retorna pausa um temporizador ativo preservando o tempo restante. Use para congelar uma missão ou contagem sem reiniciá-la.
- **Entradas/alvo:** Recebe `seconds`/`duration` ou o `timer_name` indicado no bloco; não usa `target_path`.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Button Pressed (pause) → Timer Pause`, nome `mission`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 946. Timer Resume

- **ID:** `time.timer_resume`
- **Categoria:** Tempo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Retorna continua um temporizador anteriormente pausado. Use para retomar cooldowns e contagens.
- **Entradas/alvo:** Recebe `seconds`/`duration` ou o `timer_name` indicado no bloco; não usa `target_path`.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Button Pressed (resume) → Timer Resume`, nome `mission`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 947. Timer Stop

- **ID:** `time.timer_stop`
- **Categoria:** Tempo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Retorna cancela e remove um temporizador ativo. Use para cancelar uma ação carregada ou prazo de missão.
- **Entradas/alvo:** Recebe `seconds`/`duration` ou o `timer_name` indicado no bloco; não usa `target_path`.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Collision Exit → Timer Stop`, nome `capture_zone`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 948. Timer Remaining

- **ID:** `time.timer_remaining`
- **Categoria:** Tempo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Retorna consulta quantos segundos faltam em um temporizador. Use para atualizar uma barra ou texto de cooldown.
- **Entradas/alvo:** Recebe `seconds`/`duration` ou o `timer_name` indicado no bloco; não usa `target_path`.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Update → Timer Remaining (dash_cooldown) → UI Set Text`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 949. Timer Elapsed

- **ID:** `time.timer_elapsed`
- **Categoria:** Tempo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Retorna informa se um temporizador chegou ao fim. Use para liberar novamente uma habilidade ou concluir contagem.
- **Entradas/alvo:** Recebe `seconds`/`duration` ou o `timer_name` indicado no bloco; não usa `target_path`.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Update → Timer Elapsed (dash_cooldown) → Branch → UI Set Interactable`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 950. Format Duration

- **ID:** `time.format_duration`
- **Categoria:** Tempo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Retorna converte segundos para texto legível de duração. Use para mostrar `01:35` no lugar de `95.0` segundos.
- **Entradas/alvo:** Recebe `seconds`/`duration` ou o `timer_name` indicado no bloco; não usa `target_path`.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Timer Remaining → Format Duration → UI Set Text`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 951. Wait Seconds

- **ID:** `time.wait_seconds`
- **Categoria:** Tempo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Retorna aguarda a duração indicada antes de continuar o fluxo. Use para atrasar uma ação simples sem criar um Timer nomeado.
- **Entradas/alvo:** Recebe `seconds`/`duration` ou o `timer_name` indicado no bloco; não usa `target_path`.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Button Pressed → UI Hide → Wait Seconds (2) → UI Show`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 952. Trace

- **ID:** `debug.log.trace`
- **Categoria:** Debug
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Registra ou desenha informação de depuração no nível `trace` para investigar o grafo durante a execução.
- **Entradas/alvo:** Recebe mensagem/valor; operações de desenho também recebem origem, destino, cor e duração. Não deve controlar regras de gameplay.
- **Saídas/efeito:** Escreve no painel de saída ou desenha uma forma temporária; `assert` e `breakpoint` podem interromper a depuração.
- **Exemplo:** Exemplo: conecte a saída de um cálculo a `Trace` e inclua um rótulo como `Velocidade do jogador` para identificar o valor no painel Saída.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 953. Info

- **ID:** `debug.log.info`
- **Categoria:** Debug
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Registra ou desenha informação de depuração no nível `info` para investigar o grafo durante a execução.
- **Entradas/alvo:** Recebe mensagem/valor; operações de desenho também recebem origem, destino, cor e duração. Não deve controlar regras de gameplay.
- **Saídas/efeito:** Escreve no painel de saída ou desenha uma forma temporária; `assert` e `breakpoint` podem interromper a depuração.
- **Exemplo:** Exemplo: conecte a saída de um cálculo a `Info` e inclua um rótulo como `Velocidade do jogador` para identificar o valor no painel Saída.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 954. Warning

- **ID:** `debug.log.warning`
- **Categoria:** Debug
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Registra ou desenha informação de depuração no nível `warning` para investigar o grafo durante a execução.
- **Entradas/alvo:** Recebe mensagem/valor; operações de desenho também recebem origem, destino, cor e duração. Não deve controlar regras de gameplay.
- **Saídas/efeito:** Escreve no painel de saída ou desenha uma forma temporária; `assert` e `breakpoint` podem interromper a depuração.
- **Exemplo:** Exemplo: conecte a saída de um cálculo a `Warning` e inclua um rótulo como `Velocidade do jogador` para identificar o valor no painel Saída.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 955. Error

- **ID:** `debug.log.error`
- **Categoria:** Debug
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Registra ou desenha informação de depuração no nível `error` para investigar o grafo durante a execução.
- **Entradas/alvo:** Recebe mensagem/valor; operações de desenho também recebem origem, destino, cor e duração. Não deve controlar regras de gameplay.
- **Saídas/efeito:** Escreve no painel de saída ou desenha uma forma temporária; `assert` e `breakpoint` podem interromper a depuração.
- **Exemplo:** Exemplo: conecte a saída de um cálculo a `Error` e inclua um rótulo como `Velocidade do jogador` para identificar o valor no painel Saída.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 956. Assert

- **ID:** `debug.log.assert`
- **Categoria:** Debug
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Registra ou desenha informação de depuração no nível `assert` para investigar o grafo durante a execução.
- **Entradas/alvo:** Recebe mensagem/valor; operações de desenho também recebem origem, destino, cor e duração. Não deve controlar regras de gameplay.
- **Saídas/efeito:** Escreve no painel de saída ou desenha uma forma temporária; `assert` e `breakpoint` podem interromper a depuração.
- **Exemplo:** Exemplo: conecte a saída de um cálculo a `Assert` e inclua um rótulo como `Velocidade do jogador` para identificar o valor no painel Saída.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 957. Draw Line

- **ID:** `debug.log.draw_line`
- **Categoria:** Debug
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Registra ou desenha informação de depuração no nível `draw line` para investigar o grafo durante a execução.
- **Entradas/alvo:** Recebe mensagem/valor; operações de desenho também recebem origem, destino, cor e duração. Não deve controlar regras de gameplay.
- **Saídas/efeito:** Escreve no painel de saída ou desenha uma forma temporária; `assert` e `breakpoint` podem interromper a depuração.
- **Exemplo:** Exemplo: conecte a saída de um cálculo a `Draw Line` e inclua um rótulo como `Velocidade do jogador` para identificar o valor no painel Saída.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 958. Draw Ray

- **ID:** `debug.log.draw_ray`
- **Categoria:** Debug
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Registra ou desenha informação de depuração no nível `draw ray` para investigar o grafo durante a execução.
- **Entradas/alvo:** Recebe mensagem/valor; operações de desenho também recebem origem, destino, cor e duração. Não deve controlar regras de gameplay.
- **Saídas/efeito:** Escreve no painel de saída ou desenha uma forma temporária; `assert` e `breakpoint` podem interromper a depuração.
- **Exemplo:** Exemplo: conecte a saída de um cálculo a `Draw Ray` e inclua um rótulo como `Velocidade do jogador` para identificar o valor no painel Saída.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 959. Draw Sphere

- **ID:** `debug.log.draw_sphere`
- **Categoria:** Debug
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Registra ou desenha informação de depuração no nível `draw sphere` para investigar o grafo durante a execução.
- **Entradas/alvo:** Recebe mensagem/valor; operações de desenho também recebem origem, destino, cor e duração. Não deve controlar regras de gameplay.
- **Saídas/efeito:** Escreve no painel de saída ou desenha uma forma temporária; `assert` e `breakpoint` podem interromper a depuração.
- **Exemplo:** Exemplo: conecte a saída de um cálculo a `Draw Sphere` e inclua um rótulo como `Velocidade do jogador` para identificar o valor no painel Saída.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 960. Breakpoint

- **ID:** `debug.log.breakpoint`
- **Categoria:** Debug
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Registra ou desenha informação de depuração no nível `breakpoint` para investigar o grafo durante a execução.
- **Entradas/alvo:** Recebe mensagem/valor; operações de desenho também recebem origem, destino, cor e duração. Não deve controlar regras de gameplay.
- **Saídas/efeito:** Escreve no painel de saída ou desenha uma forma temporária; `assert` e `breakpoint` podem interromper a depuração.
- **Exemplo:** Exemplo: conecte a saída de um cálculo a `Breakpoint` e inclua um rótulo como `Velocidade do jogador` para identificar o valor no painel Saída.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 961. Watch

- **ID:** `debug.log.watch`
- **Categoria:** Debug
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Registra ou desenha informação de depuração no nível `watch` para investigar o grafo durante a execução.
- **Entradas/alvo:** Recebe mensagem/valor; operações de desenho também recebem origem, destino, cor e duração. Não deve controlar regras de gameplay.
- **Saídas/efeito:** Escreve no painel de saída ou desenha uma forma temporária; `assert` e `breakpoint` podem interromper a depuração.
- **Exemplo:** Exemplo: conecte a saída de um cálculo a `Watch` e inclua um rótulo como `Velocidade do jogador` para identificar o valor no painel Saída.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.
