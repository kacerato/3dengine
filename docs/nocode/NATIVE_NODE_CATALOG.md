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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `scene` informa `ready`. Use para configurar objetos assim que a SceneTree terminou de prepará-los, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Ready → Object Find By Name (Player) → Camera Set Target` para ligar a câmera ao personagem existente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 3. Exit

- **ID:** `event.scene.exit`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `scene` informa `exit`. Use para salvar ou liberar estado antes de a cena sair, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Exit → Save Vector3`, chave `player_position`, valor vindo de `Transform Position Get`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `frame` informa `fixed update`. Use para executar física no passo fixo, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Fixed Update → Add Force`, alvo `../Ball`, força `Vector3(0, 0, -8)`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 6. Touch

- **ID:** `event.object.touch`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `object` informa `touch`. Use para reagir quando um objeto 3D/2D é tocado, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Touch → Material Set Emission`, usando o objeto do payload para destacar o item selecionado.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 7. Click

- **ID:** `event.object.click`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `object` informa `click`. Use para executar uma ação pontual ao clicar em um objeto, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Click → Object Send Event`, evento `inspect`, alvo vindo do objeto clicado.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 8. Enabled

- **ID:** `event.object.enabled`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `object` informa `enabled`. Use para reagir quando um Node volta a processar, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Enabled → Animation Play`, animação `wake_up`, no objeto habilitado.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 9. Disabled

- **ID:** `event.object.disabled`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `object` informa `disabled`. Use para reagir quando um Node deixa de processar, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Disabled → Audio Stop`, alvo de áudio filho do objeto desativado.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 10. Created

- **ID:** `event.object.created`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `object` informa `created`. Use para configurar uma instância recém-criada, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Created → Transform Scale Set`, valor `Vector3(0.5,0.5,0.5)`, alvo vindo do payload.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 11. Destroyed

- **ID:** `event.object.destroyed`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `object` informa `destroyed`. Use para atualizar contadores após remover um objeto, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Destroyed → Variable Add`, nome `enemies_defeated`, quantidade `1`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `input` informa `button released`. Use para encerrar uma ação quando o botão é solto, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Button Released (aim) → Camera Set FOV`, valor `75`, retornando a visão após mirar.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 14. Key Down

- **ID:** `event.input.key_down`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara uma vez no instante em que uma tecla física é pressionada. Use para ações pontuais, como abrir uma porta, pausar, recarregar ou começar a correr; para movimento contínuo enquanto a tecla permanece pressionada, use `Input Keyboard Held`.
- **Entradas/alvo:** `key` ou `physical_keycode`: tecla que deve ativar o fluxo, por exemplo `E`, `Escape` ou `Shift`; opcionalmente use `action` para uma ação configurada no Input Map, como `interact`. O evento não precisa de `target_path`.
- **Saídas/efeito:** Emite `flow` uma vez por pressionamento. O payload informa a tecla recebida, código físico, modificadores (Shift/Ctrl/Alt) e repetição do teclado quando disponíveis.
- **Exemplo:** Abrir uma porta com E: adicione `Key Down`, defina `key = E`, conecte `flow → Object Send Event`, selecione `../Door` como alvo e envie o evento `open`. Ao pressionar E, a porta recebe `open` uma única vez; manter E segurado não repete a ação, salvo se a repetição estiver habilitada.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 15. Key Up

- **ID:** `event.input.key_up`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara uma vez quando uma tecla física é solta. Use para encerrar uma ação iniciada no pressionamento, como parar corrida, soltar um objeto ou finalizar carregamento de ataque.
- **Entradas/alvo:** `key`/`physical_keycode` ou uma `action` do Input Map. Não usa alvo de cena.
- **Saídas/efeito:** Emite `flow` e entrega a tecla e os modificadores no payload.
- **Exemplo:** Corrida com Shift: `Key Down (Shift) → Character Set Speed (9)` e `Key Up (Shift) → Character Set Speed (5)`. O personagem corre somente enquanto Shift estiver apertado.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 16. Axis

- **ID:** `event.input.axis`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `input` informa `axis`. Use para receber mudanças de um eixo configurado, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Axis (move_x) → Vector3 Make → Character Move` para dirigir o personagem lateralmente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 17. Down

- **ID:** `event.pointer.down`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `pointer` informa `down`. Use para iniciar interação no instante em que o dedo toca a tela, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Pointer Down → UI Set Position`, levando a mira para `position` do toque.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 18. Up

- **ID:** `event.pointer.up`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `pointer` informa `up`. Use para finalizar uma interação quando o dedo sai da tela, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Pointer Up → Object Send Event`, evento `release`, para soltar o item arrastado.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 19. Move

- **ID:** `event.pointer.move`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `pointer` informa `move`. Use para acompanhar a posição do ponteiro sem exigir arrasto, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Pointer Move → UI Set Position`, alvo `../HUD/Cursor`, valor `position`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 20. Drag

- **ID:** `event.pointer.drag`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara enquanto o usuário arrasta o dedo ou mouse. Use para girar câmera, mover peças, controlar uma mira ou deslizar painéis.
- **Entradas/alvo:** Filtro opcional de dedo/botão e região da tela. O payload fornece posição inicial, posição atual e `delta` desde a última atualização.
- **Saídas/efeito:** Emite `flow`, `position` e `delta` como `Vector2`.
- **Exemplo:** Câmera mobile: `Pointer Drag → Character Look`; conecte `delta` em `look_delta`, selecione `../Player/CameraPivot` e use sensibilidade `0.003`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 21. Enter

- **ID:** `event.collision.enter`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `collision` informa `enter`. Use para agir no primeiro contato entre colliders, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Collision Enter → Variable Add`, nome `health`, quantidade `-10`, usando o corpo atingido do payload.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 22. Stay

- **ID:** `event.collision.stay`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `collision` informa `stay`. Use para aplicar efeito enquanto a colisão continua, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Collision Stay → Add Force`, força `Vector3(0,12,0)`, criando uma corrente de ar.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 23. Exit

- **ID:** `event.collision.exit`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `collision` informa `exit`. Use para agir quando os colliders deixam de se tocar, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Collision Exit → UI Hide`, alvo `../HUD/CollisionHint`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 24. Enter

- **ID:** `event.trigger.enter`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `trigger` informa `enter`. Use para ativar uma área quando um corpo entra, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Trigger Enter → Object Enable`, alvo `../Enemies/AmbushGroup`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 25. Stay

- **ID:** `event.trigger.stay`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `trigger` informa `stay`. Use para manter um efeito enquanto o corpo permanece na área, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Trigger Stay → Variable Add`, nome `oxygen`, quantidade `-0.1 × Delta`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 26. Exit

- **ID:** `event.trigger.exit`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `trigger` informa `exit`. Use para encerrar o efeito quando o corpo sai da área, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Trigger Exit → Object Disable`, alvo `../Zone/DamageEffect`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 27. Started

- **ID:** `event.animation.started`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `animation` informa `started`. Use para sincronizar efeitos com o começo de uma animação, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Animation Started (attack) → Audio Play`, alvo `../SwordSwing`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 28. Finished

- **ID:** `event.animation.finished`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `animation` informa `finished`. Use para encadear estado após uma animação terminar, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Animation Finished (death) → Object Destroy`, alvo do personagem que terminou a animação.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 29. Finished

- **ID:** `event.audio.finished`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `audio` informa `finished`. Use para continuar uma sequência quando o áudio termina, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Audio Finished → World Load`, cena `res://levels/next_level.tscn` após a narração.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 30. Focused

- **ID:** `event.ui.focused`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `ui` informa `focused`. Use para mostrar ajuda para o controle de interface selecionado, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `UI Focused → UI Set Text`, alvo `../Help`, texto `Pressione para confirmar`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 31. Value Changed

- **ID:** `event.ui.value_changed`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `ui` informa `value changed`. Use para aplicar imediatamente o novo valor de slider/campo, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Value Changed → Audio Set Volume`, conectando `value` ao volume do bus principal.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 32. Elapsed

- **ID:** `event.timer.elapsed`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `timer` informa `elapsed`. Use para executar algo quando uma contagem nomeada termina, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Timer Elapsed (spawn_delay) → Object Create`, cena `res://enemy.tscn`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 33. Connected

- **ID:** `event.network.connected`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `network` informa `connected`. Use para liberar recursos online após conectar, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Connected → UI Set Text`, texto `Online`, alvo `../HUD/NetworkStatus`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 34. Disconnected

- **ID:** `event.network.disconnected`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `network` informa `disconnected`. Use para bloquear ações online e informar perda de conexão, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Disconnected → UI Open Panel`, alvo `../HUD/ReconnectPanel`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 35. Loaded

- **ID:** `event.save.loaded`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `save` informa `loaded`. Use para aplicar dados depois que um save foi carregado, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Save Loaded → Transform Position Set`, alvo `../Player`, valor `player_position` carregado.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 36. Completed

- **ID:** `event.save.completed`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `save` informa `completed`. Use para confirmar visualmente uma gravação concluída, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Save Completed → UI Toast`, texto `Jogo salvo`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 37. Loaded

- **ID:** `event.world.loaded`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `world` informa `loaded`. Use para preparar uma fase depois do carregamento, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `World Loaded → Object Find By Tag (spawn) → Transform Position Set` para posicionar o jogador.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 38. Unloaded

- **ID:** `event.world.unloaded`
- **Categoria:** Eventos
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `world` informa `unloaded`. Use para limpar estado ligado ao mundo removido, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `World Unloaded → List Object Clear`, lista `tracked_enemies`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara o fluxo quando `component` informa `changed`. Use para sincronizar sistemas quando uma propriedade muda, somente no momento da ocorrência.
- **Entradas/alvo:** Configure o filtro mostrado pelo evento, como nome, ação ou alvo. Quando houver objeto/valor envolvido, ele chega pelos pinos do payload.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e expõe os dados específicos do evento para as próximas conexões.
- **Exemplo:** Mecânica: `Component Changed (health) → UI Set Value`, alvo `../HUD/HealthBar`, valor do payload.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 41. Sequência 2

- **ID:** `flow.sequence.2`
- **Categoria:** Fluxo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa 2 ramificações de fluxo em ordem, da saída 1 até a 2.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 2 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 2` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 42. Sequência 3

- **ID:** `flow.sequence.3`
- **Categoria:** Fluxo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa 3 ramificações de fluxo em ordem, da saída 1 até a 3.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 3 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 3` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 43. Sequência 4

- **ID:** `flow.sequence.4`
- **Categoria:** Fluxo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa 4 ramificações de fluxo em ordem, da saída 1 até a 4.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 4 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 4` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 44. Sequência 5

- **ID:** `flow.sequence.5`
- **Categoria:** Fluxo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa 5 ramificações de fluxo em ordem, da saída 1 até a 5.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 5 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 5` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 45. Sequência 6

- **ID:** `flow.sequence.6`
- **Categoria:** Fluxo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa 6 ramificações de fluxo em ordem, da saída 1 até a 6.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 6 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 6` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 46. Sequência 8

- **ID:** `flow.sequence.8`
- **Categoria:** Fluxo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa 8 ramificações de fluxo em ordem, da saída 1 até a 8.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 8 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 8` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 47. Sequência 10

- **ID:** `flow.sequence.10`
- **Categoria:** Fluxo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa 10 ramificações de fluxo em ordem, da saída 1 até a 10.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 10 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 10` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 48. Sequência 12

- **ID:** `flow.sequence.12`
- **Categoria:** Fluxo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa 12 ramificações de fluxo em ordem, da saída 1 até a 12.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 12 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 12` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Controla a ordem do grafo: abre ou fecha a passagem de pulsos sem desconectar o grafo.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Gate`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 51. Once

- **ID:** `flow.once`
- **Categoria:** Fluxo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Controla a ordem do grafo: deixa o fluxo passar somente na primeira chamada até ser reiniciado.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Once`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 52. Do N

- **ID:** `flow.do_n`
- **Categoria:** Fluxo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Controla a ordem do grafo: limita a passagem do fluxo a uma quantidade configurada.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Do N`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 53. While

- **ID:** `flow.while`
- **Categoria:** Fluxo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Controla a ordem do grafo: repete o corpo enquanto a condição permanecer verdadeira, respeitando o limite de segurança.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → While`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 54. For

- **ID:** `flow.for`
- **Categoria:** Fluxo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Controla a ordem do grafo: repete usando índice inicial, final e passo.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → For`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 55. Foreach

- **ID:** `flow.foreach`
- **Categoria:** Fluxo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Controla a ordem do grafo: executa o corpo uma vez para cada item de uma lista.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Foreach`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 56. Delay

- **ID:** `flow.delay`
- **Categoria:** Fluxo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Controla a ordem do grafo: continua o fluxo após uma duração.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Delay`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 57. Debounce

- **ID:** `flow.debounce`
- **Categoria:** Fluxo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Controla a ordem do grafo: executa somente depois que chamadas rápidas pararem.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Debounce`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 58. Throttle

- **ID:** `flow.throttle`
- **Categoria:** Fluxo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Controla a ordem do grafo: limita quantas vezes um fluxo pode executar por intervalo.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Throttle`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 59. Race

- **ID:** `flow.race`
- **Categoria:** Fluxo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Controla a ordem do grafo: executa caminhos concorrentes e continua com o primeiro que terminar.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Race`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 60. Parallel

- **ID:** `flow.parallel`
- **Categoria:** Fluxo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Controla a ordem do grafo: inicia vários caminhos no mesmo disparo.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Parallel`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 61. Cancel

- **ID:** `flow.cancel`
- **Categoria:** Fluxo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Controla a ordem do grafo: cancela uma execução atrasada ou concorrente identificada.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Cancel`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 62. Break

- **ID:** `flow.break`
- **Categoria:** Fluxo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Controla a ordem do grafo: encerra o laço atual.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Break`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 63. Continue

- **ID:** `flow.continue`
- **Categoria:** Fluxo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Controla a ordem do grafo: pula o restante da iteração e inicia a próxima.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Continue`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 64. Switch Bool

- **ID:** `flow.switch_bool`
- **Categoria:** Fluxo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Controla a ordem do grafo: encaminha um booleano para uma saída nomeada.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Switch Bool`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 65. Switch Number

- **ID:** `flow.switch_number`
- **Categoria:** Fluxo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Controla a ordem do grafo: encaminha um número para o caso correspondente.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Switch Number`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 66. Switch Text

- **ID:** `flow.switch_text`
- **Categoria:** Fluxo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Controla a ordem do grafo: encaminha um texto para o caso correspondente.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Switch Text`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 67. Switch Object

- **ID:** `flow.switch_object`
- **Categoria:** Fluxo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Controla a ordem do grafo: encaminha um objeto para o caso correspondente.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Switch Object`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 68. Flip Flop

- **ID:** `flow.flip_flop`
- **Categoria:** Fluxo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Controla a ordem do grafo: alterna entre as saídas A e B a cada disparo.
- **Entradas/alvo:** Recebe o pulso `flow`. Conecte condição booleana em `condition`, duração em `seconds`, limite em `count` ou coleção em `list`, de acordo com os pinos que este controle oferece.
- **Saídas/efeito:** Emite as saídas de fluxo nomeadas pelo controle; laços também fornecem `index` e/ou `item` para o corpo da repetição.
- **Exemplo:** Mecânica: `Button Pressed → Flip Flop`; use as saídas para separar ações como abrir a interface, tocar áudio ou habilitar um objeto.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 69. Pressed

- **ID:** `input.keyboard.pressed`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `keyboard`, detecta o instante em que o controle é pressionado. Use para inicie um ataque sem repeti-lo enquanto o botão estiver segurado.
- **Entradas/alvo:** `action`/botão e índice opcional do dispositivo.
- **Saídas/efeito:** `true` somente no primeiro quadro em `value`.
- **Exemplo:** Mecânica: `Update → Pressed`; conecte `value` a um `Branch`, movimento, câmera ou UI para inicie um ataque sem repeti-lo enquanto o botão estiver segurado.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 70. Released

- **ID:** `input.keyboard.released`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `keyboard`, detecta o instante em que o controle é solto. Use para solte uma flecha depois de carregar o arco.
- **Entradas/alvo:** `action`/botão e índice opcional.
- **Saídas/efeito:** `true` no quadro da liberação em `value`.
- **Exemplo:** Mecânica: `Update → Released`; conecte `value` a um `Branch`, movimento, câmera ou UI para solte uma flecha depois de carregar o arco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 71. Held

- **ID:** `input.keyboard.held`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `keyboard`, informa se o controle continua pressionado. Use para mantenha corrida ou disparo contínuo enquanto houver pressão.
- **Entradas/alvo:** `action`/botão.
- **Saídas/efeito:** Booleano atualizado a cada quadro em `value`.
- **Exemplo:** Mecânica: `Update → Held`; conecte `value` a um `Branch`, movimento, câmera ou UI para mantenha corrida ou disparo contínuo enquanto houver pressão.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 72. Axis

- **ID:** `input.keyboard.axis`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `keyboard`, lê um eixo analógico ou par negativo/positivo. Use para controle movimento ou direção com joystick/teclas.
- **Entradas/alvo:** Ações negativa e positiva, eixo e dispositivo.
- **Saídas/efeito:** Número entre `-1.0` e `1.0` em `value`.
- **Exemplo:** Mecânica: `Update → Axis`; conecte `value` a um `Branch`, movimento, câmera ou UI para controle movimento ou direção com joystick/teclas.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 73. Position

- **ID:** `input.keyboard.position`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `keyboard`, lê a posição atual do ponteiro/toque. Use para posicione uma mira onde o jogador toca.
- **Entradas/alvo:** Índice do toque ou ponteiro.
- **Saídas/efeito:** `vector2` em pixels da viewport em `value`.
- **Exemplo:** Mecânica: `Update → Position`; conecte `value` a um `Branch`, movimento, câmera ou UI para posicione uma mira onde o jogador toca.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 74. Delta

- **ID:** `input.keyboard.delta`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `keyboard`, lê quanto o ponteiro/toque se moveu. Use para gire a câmera pela distância arrastada.
- **Entradas/alvo:** Índice do toque ou ponteiro.
- **Saídas/efeito:** `vector2` desde a leitura anterior em `value`.
- **Exemplo:** Mecânica: `Update → Delta`; conecte `value` a um `Branch`, movimento, câmera ou UI para gire a câmera pela distância arrastada.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 75. Pressure

- **ID:** `input.keyboard.pressure`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `keyboard`, lê a intensidade de pressão disponível. Use para varie a espessura de pintura ou força de uma ação.
- **Entradas/alvo:** Índice do toque/caneta.
- **Saídas/efeito:** Número normalmente entre `0.0` e `1.0` em `value`.
- **Exemplo:** Mecânica: `Update → Pressure`; conecte `value` a um `Branch`, movimento, câmera ou UI para varie a espessura de pintura ou força de uma ação.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 76. Count

- **ID:** `input.keyboard.count`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `keyboard`, conta controles/toques ativos. Use para ative gesto de zoom somente com dois dedos.
- **Entradas/alvo:** Tipo ou índice do dispositivo quando disponível.
- **Saídas/efeito:** Quantidade inteira em `value`.
- **Exemplo:** Mecânica: `Update → Count`; conecte `value` a um `Branch`, movimento, câmera ou UI para ative gesto de zoom somente com dois dedos.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 77. Available

- **ID:** `input.keyboard.available`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `keyboard`, verifica se o dispositivo/recurso existe. Use para mostre controles touch quando não houver gamepad.
- **Entradas/alvo:** Índice opcional do dispositivo.
- **Saídas/efeito:** Booleano em `value`.
- **Exemplo:** Mecânica: `Update → Available`; conecte `value` a um `Branch`, movimento, câmera ou UI para mostre controles touch quando não houver gamepad.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 78. Name

- **ID:** `input.keyboard.name`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `keyboard`, obtém o nome apresentado pelo dispositivo. Use para mostre `Xbox Controller` na tela de controles.
- **Entradas/alvo:** Índice do dispositivo.
- **Saídas/efeito:** Texto com o nome em `value`.
- **Exemplo:** Mecânica: `Update → Name`; conecte `value` a um `Branch`, movimento, câmera ou UI para mostre `Xbox Controller` na tela de controles.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 79. Pressed

- **ID:** `input.mouse.pressed`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `mouse`, detecta o instante em que o controle é pressionado. Use para inicie um ataque sem repeti-lo enquanto o botão estiver segurado.
- **Entradas/alvo:** `action`/botão e índice opcional do dispositivo.
- **Saídas/efeito:** `true` somente no primeiro quadro em `value`.
- **Exemplo:** Mecânica: `Update → Pressed`; conecte `value` a um `Branch`, movimento, câmera ou UI para inicie um ataque sem repeti-lo enquanto o botão estiver segurado.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 80. Released

- **ID:** `input.mouse.released`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `mouse`, detecta o instante em que o controle é solto. Use para solte uma flecha depois de carregar o arco.
- **Entradas/alvo:** `action`/botão e índice opcional.
- **Saídas/efeito:** `true` no quadro da liberação em `value`.
- **Exemplo:** Mecânica: `Update → Released`; conecte `value` a um `Branch`, movimento, câmera ou UI para solte uma flecha depois de carregar o arco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 81. Held

- **ID:** `input.mouse.held`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `mouse`, informa se o controle continua pressionado. Use para mantenha corrida ou disparo contínuo enquanto houver pressão.
- **Entradas/alvo:** `action`/botão.
- **Saídas/efeito:** Booleano atualizado a cada quadro em `value`.
- **Exemplo:** Mecânica: `Update → Held`; conecte `value` a um `Branch`, movimento, câmera ou UI para mantenha corrida ou disparo contínuo enquanto houver pressão.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 82. Axis

- **ID:** `input.mouse.axis`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `mouse`, lê um eixo analógico ou par negativo/positivo. Use para controle movimento ou direção com joystick/teclas.
- **Entradas/alvo:** Ações negativa e positiva, eixo e dispositivo.
- **Saídas/efeito:** Número entre `-1.0` e `1.0` em `value`.
- **Exemplo:** Mecânica: `Update → Axis`; conecte `value` a um `Branch`, movimento, câmera ou UI para controle movimento ou direção com joystick/teclas.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 83. Position

- **ID:** `input.mouse.position`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `mouse`, lê a posição atual do ponteiro/toque. Use para posicione uma mira onde o jogador toca.
- **Entradas/alvo:** Índice do toque ou ponteiro.
- **Saídas/efeito:** `vector2` em pixels da viewport em `value`.
- **Exemplo:** Mecânica: `Update → Position`; conecte `value` a um `Branch`, movimento, câmera ou UI para posicione uma mira onde o jogador toca.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 84. Delta

- **ID:** `input.mouse.delta`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `mouse`, lê quanto o ponteiro/toque se moveu. Use para gire a câmera pela distância arrastada.
- **Entradas/alvo:** Índice do toque ou ponteiro.
- **Saídas/efeito:** `vector2` desde a leitura anterior em `value`.
- **Exemplo:** Mecânica: `Update → Delta`; conecte `value` a um `Branch`, movimento, câmera ou UI para gire a câmera pela distância arrastada.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 85. Pressure

- **ID:** `input.mouse.pressure`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `mouse`, lê a intensidade de pressão disponível. Use para varie a espessura de pintura ou força de uma ação.
- **Entradas/alvo:** Índice do toque/caneta.
- **Saídas/efeito:** Número normalmente entre `0.0` e `1.0` em `value`.
- **Exemplo:** Mecânica: `Update → Pressure`; conecte `value` a um `Branch`, movimento, câmera ou UI para varie a espessura de pintura ou força de uma ação.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 86. Count

- **ID:** `input.mouse.count`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `mouse`, conta controles/toques ativos. Use para ative gesto de zoom somente com dois dedos.
- **Entradas/alvo:** Tipo ou índice do dispositivo quando disponível.
- **Saídas/efeito:** Quantidade inteira em `value`.
- **Exemplo:** Mecânica: `Update → Count`; conecte `value` a um `Branch`, movimento, câmera ou UI para ative gesto de zoom somente com dois dedos.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 87. Available

- **ID:** `input.mouse.available`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `mouse`, verifica se o dispositivo/recurso existe. Use para mostre controles touch quando não houver gamepad.
- **Entradas/alvo:** Índice opcional do dispositivo.
- **Saídas/efeito:** Booleano em `value`.
- **Exemplo:** Mecânica: `Update → Available`; conecte `value` a um `Branch`, movimento, câmera ou UI para mostre controles touch quando não houver gamepad.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 88. Name

- **ID:** `input.mouse.name`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `mouse`, obtém o nome apresentado pelo dispositivo. Use para mostre `Xbox Controller` na tela de controles.
- **Entradas/alvo:** Índice do dispositivo.
- **Saídas/efeito:** Texto com o nome em `value`.
- **Exemplo:** Mecânica: `Update → Name`; conecte `value` a um `Branch`, movimento, câmera ou UI para mostre `Xbox Controller` na tela de controles.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 89. Pressed

- **ID:** `input.touch.pressed`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `touch`, detecta o instante em que o controle é pressionado. Use para inicie um ataque sem repeti-lo enquanto o botão estiver segurado.
- **Entradas/alvo:** `action`/botão e índice opcional do dispositivo.
- **Saídas/efeito:** `true` somente no primeiro quadro em `value`.
- **Exemplo:** Mecânica: `Update → Pressed`; conecte `value` a um `Branch`, movimento, câmera ou UI para inicie um ataque sem repeti-lo enquanto o botão estiver segurado.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 90. Released

- **ID:** `input.touch.released`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `touch`, detecta o instante em que o controle é solto. Use para solte uma flecha depois de carregar o arco.
- **Entradas/alvo:** `action`/botão e índice opcional.
- **Saídas/efeito:** `true` no quadro da liberação em `value`.
- **Exemplo:** Mecânica: `Update → Released`; conecte `value` a um `Branch`, movimento, câmera ou UI para solte uma flecha depois de carregar o arco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 91. Held

- **ID:** `input.touch.held`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `touch`, informa se o controle continua pressionado. Use para mantenha corrida ou disparo contínuo enquanto houver pressão.
- **Entradas/alvo:** `action`/botão.
- **Saídas/efeito:** Booleano atualizado a cada quadro em `value`.
- **Exemplo:** Mecânica: `Update → Held`; conecte `value` a um `Branch`, movimento, câmera ou UI para mantenha corrida ou disparo contínuo enquanto houver pressão.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 92. Axis

- **ID:** `input.touch.axis`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `touch`, lê um eixo analógico ou par negativo/positivo. Use para controle movimento ou direção com joystick/teclas.
- **Entradas/alvo:** Ações negativa e positiva, eixo e dispositivo.
- **Saídas/efeito:** Número entre `-1.0` e `1.0` em `value`.
- **Exemplo:** Mecânica: `Update → Axis`; conecte `value` a um `Branch`, movimento, câmera ou UI para controle movimento ou direção com joystick/teclas.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 93. Position

- **ID:** `input.touch.position`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `touch`, lê a posição atual do ponteiro/toque. Use para posicione uma mira onde o jogador toca.
- **Entradas/alvo:** Índice do toque ou ponteiro.
- **Saídas/efeito:** `vector2` em pixels da viewport em `value`.
- **Exemplo:** Mecânica: `Update → Position`; conecte `value` a um `Branch`, movimento, câmera ou UI para posicione uma mira onde o jogador toca.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 94. Delta

- **ID:** `input.touch.delta`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `touch`, lê quanto o ponteiro/toque se moveu. Use para gire a câmera pela distância arrastada.
- **Entradas/alvo:** Índice do toque ou ponteiro.
- **Saídas/efeito:** `vector2` desde a leitura anterior em `value`.
- **Exemplo:** Mecânica: `Update → Delta`; conecte `value` a um `Branch`, movimento, câmera ou UI para gire a câmera pela distância arrastada.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 95. Pressure

- **ID:** `input.touch.pressure`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `touch`, lê a intensidade de pressão disponível. Use para varie a espessura de pintura ou força de uma ação.
- **Entradas/alvo:** Índice do toque/caneta.
- **Saídas/efeito:** Número normalmente entre `0.0` e `1.0` em `value`.
- **Exemplo:** Mecânica: `Update → Pressure`; conecte `value` a um `Branch`, movimento, câmera ou UI para varie a espessura de pintura ou força de uma ação.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 96. Count

- **ID:** `input.touch.count`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `touch`, conta controles/toques ativos. Use para ative gesto de zoom somente com dois dedos.
- **Entradas/alvo:** Tipo ou índice do dispositivo quando disponível.
- **Saídas/efeito:** Quantidade inteira em `value`.
- **Exemplo:** Mecânica: `Update → Count`; conecte `value` a um `Branch`, movimento, câmera ou UI para ative gesto de zoom somente com dois dedos.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 97. Available

- **ID:** `input.touch.available`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `touch`, verifica se o dispositivo/recurso existe. Use para mostre controles touch quando não houver gamepad.
- **Entradas/alvo:** Índice opcional do dispositivo.
- **Saídas/efeito:** Booleano em `value`.
- **Exemplo:** Mecânica: `Update → Available`; conecte `value` a um `Branch`, movimento, câmera ou UI para mostre controles touch quando não houver gamepad.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 98. Name

- **ID:** `input.touch.name`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `touch`, obtém o nome apresentado pelo dispositivo. Use para mostre `Xbox Controller` na tela de controles.
- **Entradas/alvo:** Índice do dispositivo.
- **Saídas/efeito:** Texto com o nome em `value`.
- **Exemplo:** Mecânica: `Update → Name`; conecte `value` a um `Branch`, movimento, câmera ou UI para mostre `Xbox Controller` na tela de controles.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 99. Pressed

- **ID:** `input.gamepad.pressed`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `gamepad`, detecta o instante em que o controle é pressionado. Use para inicie um ataque sem repeti-lo enquanto o botão estiver segurado.
- **Entradas/alvo:** `action`/botão e índice opcional do dispositivo.
- **Saídas/efeito:** `true` somente no primeiro quadro em `value`.
- **Exemplo:** Mecânica: `Update → Pressed`; conecte `value` a um `Branch`, movimento, câmera ou UI para inicie um ataque sem repeti-lo enquanto o botão estiver segurado.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 100. Released

- **ID:** `input.gamepad.released`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `gamepad`, detecta o instante em que o controle é solto. Use para solte uma flecha depois de carregar o arco.
- **Entradas/alvo:** `action`/botão e índice opcional.
- **Saídas/efeito:** `true` no quadro da liberação em `value`.
- **Exemplo:** Mecânica: `Update → Released`; conecte `value` a um `Branch`, movimento, câmera ou UI para solte uma flecha depois de carregar o arco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 101. Held

- **ID:** `input.gamepad.held`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `gamepad`, informa se o controle continua pressionado. Use para mantenha corrida ou disparo contínuo enquanto houver pressão.
- **Entradas/alvo:** `action`/botão.
- **Saídas/efeito:** Booleano atualizado a cada quadro em `value`.
- **Exemplo:** Mecânica: `Update → Held`; conecte `value` a um `Branch`, movimento, câmera ou UI para mantenha corrida ou disparo contínuo enquanto houver pressão.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `gamepad`, lê a posição atual do ponteiro/toque. Use para posicione uma mira onde o jogador toca.
- **Entradas/alvo:** Índice do toque ou ponteiro.
- **Saídas/efeito:** `vector2` em pixels da viewport em `value`.
- **Exemplo:** Mecânica: `Update → Position`; conecte `value` a um `Branch`, movimento, câmera ou UI para posicione uma mira onde o jogador toca.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 104. Delta

- **ID:** `input.gamepad.delta`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `gamepad`, lê quanto o ponteiro/toque se moveu. Use para gire a câmera pela distância arrastada.
- **Entradas/alvo:** Índice do toque ou ponteiro.
- **Saídas/efeito:** `vector2` desde a leitura anterior em `value`.
- **Exemplo:** Mecânica: `Update → Delta`; conecte `value` a um `Branch`, movimento, câmera ou UI para gire a câmera pela distância arrastada.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 105. Pressure

- **ID:** `input.gamepad.pressure`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `gamepad`, lê a intensidade de pressão disponível. Use para varie a espessura de pintura ou força de uma ação.
- **Entradas/alvo:** Índice do toque/caneta.
- **Saídas/efeito:** Número normalmente entre `0.0` e `1.0` em `value`.
- **Exemplo:** Mecânica: `Update → Pressure`; conecte `value` a um `Branch`, movimento, câmera ou UI para varie a espessura de pintura ou força de uma ação.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 106. Count

- **ID:** `input.gamepad.count`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `gamepad`, conta controles/toques ativos. Use para ative gesto de zoom somente com dois dedos.
- **Entradas/alvo:** Tipo ou índice do dispositivo quando disponível.
- **Saídas/efeito:** Quantidade inteira em `value`.
- **Exemplo:** Mecânica: `Update → Count`; conecte `value` a um `Branch`, movimento, câmera ou UI para ative gesto de zoom somente com dois dedos.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 107. Available

- **ID:** `input.gamepad.available`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `gamepad`, verifica se o dispositivo/recurso existe. Use para mostre controles touch quando não houver gamepad.
- **Entradas/alvo:** Índice opcional do dispositivo.
- **Saídas/efeito:** Booleano em `value`.
- **Exemplo:** Mecânica: `Update → Available`; conecte `value` a um `Branch`, movimento, câmera ou UI para mostre controles touch quando não houver gamepad.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 108. Name

- **ID:** `input.gamepad.name`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `gamepad`, obtém o nome apresentado pelo dispositivo. Use para mostre `Xbox Controller` na tela de controles.
- **Entradas/alvo:** Índice do dispositivo.
- **Saídas/efeito:** Texto com o nome em `value`.
- **Exemplo:** Mecânica: `Update → Name`; conecte `value` a um `Branch`, movimento, câmera ou UI para mostre `Xbox Controller` na tela de controles.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 109. Pressed

- **ID:** `input.sensor.pressed`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `sensor`, detecta o instante em que o controle é pressionado. Use para inicie um ataque sem repeti-lo enquanto o botão estiver segurado.
- **Entradas/alvo:** `action`/botão e índice opcional do dispositivo.
- **Saídas/efeito:** `true` somente no primeiro quadro em `value`.
- **Exemplo:** Mecânica: `Update → Pressed`; conecte `value` a um `Branch`, movimento, câmera ou UI para inicie um ataque sem repeti-lo enquanto o botão estiver segurado.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 110. Released

- **ID:** `input.sensor.released`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `sensor`, detecta o instante em que o controle é solto. Use para solte uma flecha depois de carregar o arco.
- **Entradas/alvo:** `action`/botão e índice opcional.
- **Saídas/efeito:** `true` no quadro da liberação em `value`.
- **Exemplo:** Mecânica: `Update → Released`; conecte `value` a um `Branch`, movimento, câmera ou UI para solte uma flecha depois de carregar o arco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 111. Held

- **ID:** `input.sensor.held`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `sensor`, informa se o controle continua pressionado. Use para mantenha corrida ou disparo contínuo enquanto houver pressão.
- **Entradas/alvo:** `action`/botão.
- **Saídas/efeito:** Booleano atualizado a cada quadro em `value`.
- **Exemplo:** Mecânica: `Update → Held`; conecte `value` a um `Branch`, movimento, câmera ou UI para mantenha corrida ou disparo contínuo enquanto houver pressão.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 112. Axis

- **ID:** `input.sensor.axis`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `sensor`, lê um eixo analógico ou par negativo/positivo. Use para controle movimento ou direção com joystick/teclas.
- **Entradas/alvo:** Ações negativa e positiva, eixo e dispositivo.
- **Saídas/efeito:** Número entre `-1.0` e `1.0` em `value`.
- **Exemplo:** Mecânica: `Update → Axis`; conecte `value` a um `Branch`, movimento, câmera ou UI para controle movimento ou direção com joystick/teclas.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 113. Position

- **ID:** `input.sensor.position`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `sensor`, lê a posição atual do ponteiro/toque. Use para posicione uma mira onde o jogador toca.
- **Entradas/alvo:** Índice do toque ou ponteiro.
- **Saídas/efeito:** `vector2` em pixels da viewport em `value`.
- **Exemplo:** Mecânica: `Update → Position`; conecte `value` a um `Branch`, movimento, câmera ou UI para posicione uma mira onde o jogador toca.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 114. Delta

- **ID:** `input.sensor.delta`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `sensor`, lê quanto o ponteiro/toque se moveu. Use para gire a câmera pela distância arrastada.
- **Entradas/alvo:** Índice do toque ou ponteiro.
- **Saídas/efeito:** `vector2` desde a leitura anterior em `value`.
- **Exemplo:** Mecânica: `Update → Delta`; conecte `value` a um `Branch`, movimento, câmera ou UI para gire a câmera pela distância arrastada.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 115. Pressure

- **ID:** `input.sensor.pressure`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `sensor`, lê a intensidade de pressão disponível. Use para varie a espessura de pintura ou força de uma ação.
- **Entradas/alvo:** Índice do toque/caneta.
- **Saídas/efeito:** Número normalmente entre `0.0` e `1.0` em `value`.
- **Exemplo:** Mecânica: `Update → Pressure`; conecte `value` a um `Branch`, movimento, câmera ou UI para varie a espessura de pintura ou força de uma ação.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 116. Count

- **ID:** `input.sensor.count`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `sensor`, conta controles/toques ativos. Use para ative gesto de zoom somente com dois dedos.
- **Entradas/alvo:** Tipo ou índice do dispositivo quando disponível.
- **Saídas/efeito:** Quantidade inteira em `value`.
- **Exemplo:** Mecânica: `Update → Count`; conecte `value` a um `Branch`, movimento, câmera ou UI para ative gesto de zoom somente com dois dedos.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 117. Available

- **ID:** `input.sensor.available`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `sensor`, verifica se o dispositivo/recurso existe. Use para mostre controles touch quando não houver gamepad.
- **Entradas/alvo:** Índice opcional do dispositivo.
- **Saídas/efeito:** Booleano em `value`.
- **Exemplo:** Mecânica: `Update → Available`; conecte `value` a um `Branch`, movimento, câmera ou UI para mostre controles touch quando não houver gamepad.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 118. Name

- **ID:** `input.sensor.name`
- **Categoria:** Entrada
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** No dispositivo `sensor`, obtém o nome apresentado pelo dispositivo. Use para mostre `Xbox Controller` na tela de controles.
- **Entradas/alvo:** Índice do dispositivo.
- **Saídas/efeito:** Texto com o nome em `value`.
- **Exemplo:** Mecânica: `Update → Name`; conecte `value` a um `Branch`, movimento, câmera ou UI para mostre `Xbox Controller` na tela de controles.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `modulo` para valores do tipo number; use para executar algo a cada N quadros. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Modulo` e leve `result` a `Variable Set` ou `UI Set Text` para executar algo a cada N quadros.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 124. Power

- **ID:** `math.number.power`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `power` para valores do tipo number; use para criar uma curva exponencial. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Power` e leve `result` a `Variable Set` ou `UI Set Text` para criar uma curva exponencial.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 125. Minimum

- **ID:** `math.number.minimum`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `minimum` para valores do tipo number; use para limitar ao menor valor. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Minimum` e leve `result` a `Variable Set` ou `UI Set Text` para limitar ao menor valor.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 126. Maximum

- **ID:** `math.number.maximum`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `maximum` para valores do tipo number; use para garantir um valor mínimo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Maximum` e leve `result` a `Variable Set` ou `UI Set Text` para garantir um valor mínimo.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 127. Average

- **ID:** `math.number.average`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `average` para valores do tipo number; use para calcular média de valores. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Average` e leve `result` a `Variable Set` ou `UI Set Text` para calcular média de valores.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 128. Atan2

- **ID:** `math.number.atan2`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `atan2` para valores do tipo number; use para calcular atan2 antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Atan2` e leve `result` a `Variable Set` ou `UI Set Text` para calcular atan2 antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 129. Log Base

- **ID:** `math.number.log_base`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `log base` para valores do tipo number; use para calcular log base antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Log Base` e leve `result` a `Variable Set` ou `UI Set Text` para calcular log base antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 130. Copy Sign

- **ID:** `math.number.copy_sign`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `copy sign` para valores do tipo number; use para calcular copy sign antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Copy Sign` e leve `result` a `Variable Set` ou `UI Set Text` para calcular copy sign antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 131. Absolute

- **ID:** `math.number.absolute`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `absolute` para valores do tipo number; use para remover o sinal. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor number de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Absolute` e leve `result` a `Variable Set` ou `UI Set Text` para remover o sinal.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 132. Negative

- **ID:** `math.number.negative`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `negative` para valores do tipo number; use para inverter direção/sinal. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor number de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Negative` e leve `result` a `Variable Set` ou `UI Set Text` para inverter direção/sinal.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 133. Sqrt

- **ID:** `math.number.sqrt`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `sqrt` para valores do tipo number; use para obter uma raiz. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor number de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Sqrt` e leve `result` a `Variable Set` ou `UI Set Text` para obter uma raiz.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 134. Cube Root

- **ID:** `math.number.cube_root`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `cube root` para valores do tipo number; use para calcular cube root antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Cube Root` e leve `result` a `Variable Set` ou `UI Set Text` para calcular cube root antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 135. Exp

- **ID:** `math.number.exp`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `exp` para valores do tipo number; use para calcular exp antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Exp` e leve `result` a `Variable Set` ou `UI Set Text` para calcular exp antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 136. Log

- **ID:** `math.number.log`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `log` para valores do tipo number; use para calcular log antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Log` e leve `result` a `Variable Set` ou `UI Set Text` para calcular log antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 137. Log10

- **ID:** `math.number.log10`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `log10` para valores do tipo number; use para calcular log10 antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Log10` e leve `result` a `Variable Set` ou `UI Set Text` para calcular log10 antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 138. Floor

- **ID:** `math.number.floor`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `floor` para valores do tipo number; use para arredondar para baixo. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor number de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Floor` e leve `result` a `Variable Set` ou `UI Set Text` para arredondar para baixo.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 139. Ceil

- **ID:** `math.number.ceil`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `ceil` para valores do tipo number; use para arredondar para cima. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor number de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Ceil` e leve `result` a `Variable Set` ou `UI Set Text` para arredondar para cima.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 140. Round

- **ID:** `math.number.round`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `round` para valores do tipo number; use para arredondar ao inteiro mais próximo. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor number de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Round` e leve `result` a `Variable Set` ou `UI Set Text` para arredondar ao inteiro mais próximo.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 141. Truncate

- **ID:** `math.number.truncate`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `truncate` para valores do tipo number; use para calcular truncate antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Truncate` e leve `result` a `Variable Set` ou `UI Set Text` para calcular truncate antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 142. Fraction

- **ID:** `math.number.fraction`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `fraction` para valores do tipo number; use para calcular fraction antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Fraction` e leve `result` a `Variable Set` ou `UI Set Text` para calcular fraction antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 143. Sign

- **ID:** `math.number.sign`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `sign` para valores do tipo number; use para calcular sign antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Sign` e leve `result` a `Variable Set` ou `UI Set Text` para calcular sign antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 144. Sin

- **ID:** `math.number.sin`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `sin` para valores do tipo number; use para produzir oscilação suave. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Sin` e leve `result` a `Variable Set` ou `UI Set Text` para produzir oscilação suave.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 145. Cos

- **ID:** `math.number.cos`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `cos` para valores do tipo number; use para produzir oscilação deslocada. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Cos` e leve `result` a `Variable Set` ou `UI Set Text` para produzir oscilação deslocada.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 146. Tan

- **ID:** `math.number.tan`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `tan` para valores do tipo number; use para calcular tan antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Tan` e leve `result` a `Variable Set` ou `UI Set Text` para calcular tan antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 147. Asin

- **ID:** `math.number.asin`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `asin` para valores do tipo number; use para calcular asin antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Asin` e leve `result` a `Variable Set` ou `UI Set Text` para calcular asin antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 148. Acos

- **ID:** `math.number.acos`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `acos` para valores do tipo number; use para calcular acos antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Acos` e leve `result` a `Variable Set` ou `UI Set Text` para calcular acos antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 149. Atan

- **ID:** `math.number.atan`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `atan` para valores do tipo number; use para calcular atan antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Atan` e leve `result` a `Variable Set` ou `UI Set Text` para calcular atan antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 150. Degrees

- **ID:** `math.number.degrees`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `degrees` para valores do tipo number; use para calcular degrees antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Degrees` e leve `result` a `Variable Set` ou `UI Set Text` para calcular degrees antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 151. Radians

- **ID:** `math.number.radians`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `radians` para valores do tipo number; use para calcular radians antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Radians` e leve `result` a `Variable Set` ou `UI Set Text` para calcular radians antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 152. Saturate

- **ID:** `math.number.saturate`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `saturate` para valores do tipo number; use para calcular saturate antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Saturate` e leve `result` a `Variable Set` ou `UI Set Text` para calcular saturate antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 153. Is Finite

- **ID:** `math.number.is_finite`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `is finite` para valores do tipo number; use para calcular is finite antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor number que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Is Finite` e leve `result` a `Variable Set` ou `UI Set Text` para calcular is finite antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 154. Is Nan

- **ID:** `math.number.is_nan`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `is nan` para valores do tipo number; use para calcular is nan antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor number que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Is Nan` e leve `result` a `Variable Set` ou `UI Set Text` para calcular is nan antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `modulo` para valores do tipo integer; use para executar algo a cada N quadros. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Modulo` e leve `result` a `Variable Set` ou `UI Set Text` para executar algo a cada N quadros.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 160. Power

- **ID:** `math.integer.power`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `power` para valores do tipo integer; use para criar uma curva exponencial. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Power` e leve `result` a `Variable Set` ou `UI Set Text` para criar uma curva exponencial.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 161. Minimum

- **ID:** `math.integer.minimum`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `minimum` para valores do tipo integer; use para limitar ao menor valor. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Minimum` e leve `result` a `Variable Set` ou `UI Set Text` para limitar ao menor valor.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 162. Maximum

- **ID:** `math.integer.maximum`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `maximum` para valores do tipo integer; use para garantir um valor mínimo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Maximum` e leve `result` a `Variable Set` ou `UI Set Text` para garantir um valor mínimo.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 163. Average

- **ID:** `math.integer.average`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `average` para valores do tipo integer; use para calcular média de valores. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Average` e leve `result` a `Variable Set` ou `UI Set Text` para calcular média de valores.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 164. Atan2

- **ID:** `math.integer.atan2`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `atan2` para valores do tipo integer; use para calcular atan2 antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Atan2` e leve `result` a `Variable Set` ou `UI Set Text` para calcular atan2 antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 165. Log Base

- **ID:** `math.integer.log_base`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `log base` para valores do tipo integer; use para calcular log base antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Log Base` e leve `result` a `Variable Set` ou `UI Set Text` para calcular log base antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 166. Copy Sign

- **ID:** `math.integer.copy_sign`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `copy sign` para valores do tipo integer; use para calcular copy sign antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Copy Sign` e leve `result` a `Variable Set` ou `UI Set Text` para calcular copy sign antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 167. Absolute

- **ID:** `math.integer.absolute`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `absolute` para valores do tipo integer; use para remover o sinal. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor integer de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Absolute` e leve `result` a `Variable Set` ou `UI Set Text` para remover o sinal.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 168. Negative

- **ID:** `math.integer.negative`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `negative` para valores do tipo integer; use para inverter direção/sinal. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor integer de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Negative` e leve `result` a `Variable Set` ou `UI Set Text` para inverter direção/sinal.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 169. Sqrt

- **ID:** `math.integer.sqrt`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `sqrt` para valores do tipo integer; use para obter uma raiz. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor integer de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Sqrt` e leve `result` a `Variable Set` ou `UI Set Text` para obter uma raiz.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 170. Cube Root

- **ID:** `math.integer.cube_root`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `cube root` para valores do tipo integer; use para calcular cube root antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Cube Root` e leve `result` a `Variable Set` ou `UI Set Text` para calcular cube root antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 171. Exp

- **ID:** `math.integer.exp`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `exp` para valores do tipo integer; use para calcular exp antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Exp` e leve `result` a `Variable Set` ou `UI Set Text` para calcular exp antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 172. Log

- **ID:** `math.integer.log`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `log` para valores do tipo integer; use para calcular log antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Log` e leve `result` a `Variable Set` ou `UI Set Text` para calcular log antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 173. Log10

- **ID:** `math.integer.log10`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `log10` para valores do tipo integer; use para calcular log10 antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Log10` e leve `result` a `Variable Set` ou `UI Set Text` para calcular log10 antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 174. Floor

- **ID:** `math.integer.floor`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `floor` para valores do tipo integer; use para arredondar para baixo. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor integer de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Floor` e leve `result` a `Variable Set` ou `UI Set Text` para arredondar para baixo.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 175. Ceil

- **ID:** `math.integer.ceil`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `ceil` para valores do tipo integer; use para arredondar para cima. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor integer de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Ceil` e leve `result` a `Variable Set` ou `UI Set Text` para arredondar para cima.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 176. Round

- **ID:** `math.integer.round`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `round` para valores do tipo integer; use para arredondar ao inteiro mais próximo. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor integer de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Round` e leve `result` a `Variable Set` ou `UI Set Text` para arredondar ao inteiro mais próximo.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 177. Truncate

- **ID:** `math.integer.truncate`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `truncate` para valores do tipo integer; use para calcular truncate antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Truncate` e leve `result` a `Variable Set` ou `UI Set Text` para calcular truncate antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 178. Fraction

- **ID:** `math.integer.fraction`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `fraction` para valores do tipo integer; use para calcular fraction antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Fraction` e leve `result` a `Variable Set` ou `UI Set Text` para calcular fraction antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 179. Sign

- **ID:** `math.integer.sign`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `sign` para valores do tipo integer; use para calcular sign antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Sign` e leve `result` a `Variable Set` ou `UI Set Text` para calcular sign antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 180. Sin

- **ID:** `math.integer.sin`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `sin` para valores do tipo integer; use para produzir oscilação suave. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Sin` e leve `result` a `Variable Set` ou `UI Set Text` para produzir oscilação suave.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 181. Cos

- **ID:** `math.integer.cos`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `cos` para valores do tipo integer; use para produzir oscilação deslocada. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Cos` e leve `result` a `Variable Set` ou `UI Set Text` para produzir oscilação deslocada.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 182. Tan

- **ID:** `math.integer.tan`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `tan` para valores do tipo integer; use para calcular tan antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Tan` e leve `result` a `Variable Set` ou `UI Set Text` para calcular tan antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 183. Asin

- **ID:** `math.integer.asin`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `asin` para valores do tipo integer; use para calcular asin antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Asin` e leve `result` a `Variable Set` ou `UI Set Text` para calcular asin antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 184. Acos

- **ID:** `math.integer.acos`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `acos` para valores do tipo integer; use para calcular acos antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Acos` e leve `result` a `Variable Set` ou `UI Set Text` para calcular acos antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 185. Atan

- **ID:** `math.integer.atan`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `atan` para valores do tipo integer; use para calcular atan antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Atan` e leve `result` a `Variable Set` ou `UI Set Text` para calcular atan antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 186. Degrees

- **ID:** `math.integer.degrees`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `degrees` para valores do tipo integer; use para calcular degrees antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Degrees` e leve `result` a `Variable Set` ou `UI Set Text` para calcular degrees antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 187. Radians

- **ID:** `math.integer.radians`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `radians` para valores do tipo integer; use para calcular radians antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Radians` e leve `result` a `Variable Set` ou `UI Set Text` para calcular radians antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 188. Saturate

- **ID:** `math.integer.saturate`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `saturate` para valores do tipo integer; use para calcular saturate antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Saturate` e leve `result` a `Variable Set` ou `UI Set Text` para calcular saturate antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 189. Is Finite

- **ID:** `math.integer.is_finite`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `is finite` para valores do tipo integer; use para calcular is finite antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor integer que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Is Finite` e leve `result` a `Variable Set` ou `UI Set Text` para calcular is finite antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 190. Is Nan

- **ID:** `math.integer.is_nan`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `is nan` para valores do tipo integer; use para calcular is nan antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor integer que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Is Nan` e leve `result` a `Variable Set` ou `UI Set Text` para calcular is nan antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `modulo` para valores do tipo angle; use para executar algo a cada N quadros. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Modulo` e leve `result` a `Variable Set` ou `UI Set Text` para executar algo a cada N quadros.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 196. Power

- **ID:** `math.angle.power`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `power` para valores do tipo angle; use para criar uma curva exponencial. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Power` e leve `result` a `Variable Set` ou `UI Set Text` para criar uma curva exponencial.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 197. Minimum

- **ID:** `math.angle.minimum`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `minimum` para valores do tipo angle; use para limitar ao menor valor. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Minimum` e leve `result` a `Variable Set` ou `UI Set Text` para limitar ao menor valor.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 198. Maximum

- **ID:** `math.angle.maximum`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `maximum` para valores do tipo angle; use para garantir um valor mínimo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Maximum` e leve `result` a `Variable Set` ou `UI Set Text` para garantir um valor mínimo.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 199. Average

- **ID:** `math.angle.average`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `average` para valores do tipo angle; use para calcular média de valores. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Average` e leve `result` a `Variable Set` ou `UI Set Text` para calcular média de valores.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 200. Atan2

- **ID:** `math.angle.atan2`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `atan2` para valores do tipo angle; use para calcular atan2 antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Atan2` e leve `result` a `Variable Set` ou `UI Set Text` para calcular atan2 antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 201. Log Base

- **ID:** `math.angle.log_base`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `log base` para valores do tipo angle; use para calcular log base antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Log Base` e leve `result` a `Variable Set` ou `UI Set Text` para calcular log base antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 202. Copy Sign

- **ID:** `math.angle.copy_sign`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `copy sign` para valores do tipo angle; use para calcular copy sign antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Copy Sign` e leve `result` a `Variable Set` ou `UI Set Text` para calcular copy sign antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 203. Absolute

- **ID:** `math.angle.absolute`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `absolute` para valores do tipo angle; use para remover o sinal. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor angle de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Absolute` e leve `result` a `Variable Set` ou `UI Set Text` para remover o sinal.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 204. Negative

- **ID:** `math.angle.negative`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `negative` para valores do tipo angle; use para inverter direção/sinal. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor angle de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Negative` e leve `result` a `Variable Set` ou `UI Set Text` para inverter direção/sinal.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 205. Sqrt

- **ID:** `math.angle.sqrt`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `sqrt` para valores do tipo angle; use para obter uma raiz. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor angle de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Sqrt` e leve `result` a `Variable Set` ou `UI Set Text` para obter uma raiz.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 206. Cube Root

- **ID:** `math.angle.cube_root`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `cube root` para valores do tipo angle; use para calcular cube root antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Cube Root` e leve `result` a `Variable Set` ou `UI Set Text` para calcular cube root antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 207. Exp

- **ID:** `math.angle.exp`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `exp` para valores do tipo angle; use para calcular exp antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Exp` e leve `result` a `Variable Set` ou `UI Set Text` para calcular exp antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 208. Log

- **ID:** `math.angle.log`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `log` para valores do tipo angle; use para calcular log antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Log` e leve `result` a `Variable Set` ou `UI Set Text` para calcular log antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 209. Log10

- **ID:** `math.angle.log10`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `log10` para valores do tipo angle; use para calcular log10 antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Log10` e leve `result` a `Variable Set` ou `UI Set Text` para calcular log10 antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 210. Floor

- **ID:** `math.angle.floor`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `floor` para valores do tipo angle; use para arredondar para baixo. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor angle de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Floor` e leve `result` a `Variable Set` ou `UI Set Text` para arredondar para baixo.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 211. Ceil

- **ID:** `math.angle.ceil`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `ceil` para valores do tipo angle; use para arredondar para cima. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor angle de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Ceil` e leve `result` a `Variable Set` ou `UI Set Text` para arredondar para cima.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 212. Round

- **ID:** `math.angle.round`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `round` para valores do tipo angle; use para arredondar ao inteiro mais próximo. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor angle de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Round` e leve `result` a `Variable Set` ou `UI Set Text` para arredondar ao inteiro mais próximo.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 213. Truncate

- **ID:** `math.angle.truncate`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `truncate` para valores do tipo angle; use para calcular truncate antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Truncate` e leve `result` a `Variable Set` ou `UI Set Text` para calcular truncate antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 214. Fraction

- **ID:** `math.angle.fraction`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `fraction` para valores do tipo angle; use para calcular fraction antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Fraction` e leve `result` a `Variable Set` ou `UI Set Text` para calcular fraction antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 215. Sign

- **ID:** `math.angle.sign`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `sign` para valores do tipo angle; use para calcular sign antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Sign` e leve `result` a `Variable Set` ou `UI Set Text` para calcular sign antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 216. Sin

- **ID:** `math.angle.sin`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `sin` para valores do tipo angle; use para produzir oscilação suave. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Sin` e leve `result` a `Variable Set` ou `UI Set Text` para produzir oscilação suave.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 217. Cos

- **ID:** `math.angle.cos`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `cos` para valores do tipo angle; use para produzir oscilação deslocada. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Cos` e leve `result` a `Variable Set` ou `UI Set Text` para produzir oscilação deslocada.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 218. Tan

- **ID:** `math.angle.tan`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `tan` para valores do tipo angle; use para calcular tan antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Tan` e leve `result` a `Variable Set` ou `UI Set Text` para calcular tan antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 219. Asin

- **ID:** `math.angle.asin`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `asin` para valores do tipo angle; use para calcular asin antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Asin` e leve `result` a `Variable Set` ou `UI Set Text` para calcular asin antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 220. Acos

- **ID:** `math.angle.acos`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `acos` para valores do tipo angle; use para calcular acos antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Acos` e leve `result` a `Variable Set` ou `UI Set Text` para calcular acos antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 221. Atan

- **ID:** `math.angle.atan`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `atan` para valores do tipo angle; use para calcular atan antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Atan` e leve `result` a `Variable Set` ou `UI Set Text` para calcular atan antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 222. Degrees

- **ID:** `math.angle.degrees`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `degrees` para valores do tipo angle; use para calcular degrees antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Degrees` e leve `result` a `Variable Set` ou `UI Set Text` para calcular degrees antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 223. Radians

- **ID:** `math.angle.radians`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `radians` para valores do tipo angle; use para calcular radians antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Radians` e leve `result` a `Variable Set` ou `UI Set Text` para calcular radians antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 224. Saturate

- **ID:** `math.angle.saturate`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `saturate` para valores do tipo angle; use para calcular saturate antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Saturate` e leve `result` a `Variable Set` ou `UI Set Text` para calcular saturate antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 225. Is Finite

- **ID:** `math.angle.is_finite`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `is finite` para valores do tipo angle; use para calcular is finite antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor angle que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Is Finite` e leve `result` a `Variable Set` ou `UI Set Text` para calcular is finite antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 226. Is Nan

- **ID:** `math.angle.is_nan`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `is nan` para valores do tipo angle; use para calcular is nan antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor angle que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Is Nan` e leve `result` a `Variable Set` ou `UI Set Text` para calcular is nan antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 227. Clamp

- **ID:** `math.range.clamp`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `clamp` para valores do tipo range; use para calcular clamp antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores range; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Clamp` e leve `result` a `Variable Set` ou `UI Set Text` para calcular clamp antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 228. Lerp

- **ID:** `math.range.lerp`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `lerp` para valores do tipo range; use para interpolar suavemente. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores range; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Lerp` e leve `result` a `Variable Set` ou `UI Set Text` para interpolar suavemente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 229. Inverse Lerp

- **ID:** `math.range.inverse_lerp`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `inverse lerp` para valores do tipo range; use para calcular inverse lerp antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores range; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Inverse Lerp` e leve `result` a `Variable Set` ou `UI Set Text` para calcular inverse lerp antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 230. Remap

- **ID:** `math.range.remap`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `remap` para valores do tipo range; use para calcular remap antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores range; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Remap` e leve `result` a `Variable Set` ou `UI Set Text` para calcular remap antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 231. Smoothstep

- **ID:** `math.range.smoothstep`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `smoothstep` para valores do tipo range; use para calcular smoothstep antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores range; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Smoothstep` e leve `result` a `Variable Set` ou `UI Set Text` para calcular smoothstep antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 232. Move Towards

- **ID:** `math.range.move_towards`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `move towards` para valores do tipo range; use para aproximar sem ultrapassar. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores range; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Move Towards` e leve `result` a `Variable Set` ou `UI Set Text` para aproximar sem ultrapassar.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 233. Random Range

- **ID:** `math.range.random_range`
- **Categoria:** Matemática
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `random range` para valores do tipo range; use para calcular random range antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores range; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** Conecte os valores a `Random Range` e leve `result` a `Variable Set` ou `UI Set Text` para calcular random range antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `not equal` para valores do tipo boolean; use para testar diferença. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Not Equal → Branch`; use a saída True para testar diferença e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `greater equal` para valores do tipo boolean; use para testar limite mínimo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Greater Equal → Branch`; use a saída True para testar limite mínimo inclusivo e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `less equal` para valores do tipo boolean; use para testar limite máximo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Less Equal → Branch`; use a saída True para testar limite máximo inclusivo e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 240. Between

- **ID:** `compare.boolean.between`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `between` para valores do tipo boolean; use para testar se está dentro de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Between → Branch`; use a saída True para testar se está dentro de uma faixa e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 241. Outside

- **ID:** `compare.boolean.outside`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `outside` para valores do tipo boolean; use para testar se saiu de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Outside → Branch`; use a saída True para testar se saiu de uma faixa e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 242. Approximately

- **ID:** `compare.boolean.approximately`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `approximately` para valores do tipo boolean; use para comparar números com tolerância. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Approximately → Branch`; use a saída True para comparar números com tolerância e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 243. Is Null

- **ID:** `compare.boolean.is_null`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `is null` para valores do tipo boolean; use para verificar ausência de objeto. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor boolean que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Is Null → Branch`; use a saída True para verificar ausência de objeto e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `not equal` para valores do tipo number; use para testar diferença. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Not Equal → Branch`; use a saída True para testar diferença e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `greater equal` para valores do tipo number; use para testar limite mínimo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Greater Equal → Branch`; use a saída True para testar limite mínimo inclusivo e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `less equal` para valores do tipo number; use para testar limite máximo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Less Equal → Branch`; use a saída True para testar limite máximo inclusivo e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 250. Between

- **ID:** `compare.number.between`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `between` para valores do tipo number; use para testar se está dentro de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Between → Branch`; use a saída True para testar se está dentro de uma faixa e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 251. Outside

- **ID:** `compare.number.outside`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `outside` para valores do tipo number; use para testar se saiu de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Outside → Branch`; use a saída True para testar se saiu de uma faixa e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 252. Approximately

- **ID:** `compare.number.approximately`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `approximately` para valores do tipo number; use para comparar números com tolerância. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Approximately → Branch`; use a saída True para comparar números com tolerância e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 253. Is Null

- **ID:** `compare.number.is_null`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `is null` para valores do tipo number; use para verificar ausência de objeto. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor number que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Is Null → Branch`; use a saída True para verificar ausência de objeto e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `not equal` para valores do tipo text; use para testar diferença. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Not Equal → Branch`; use a saída True para testar diferença e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `greater equal` para valores do tipo text; use para testar limite mínimo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Greater Equal → Branch`; use a saída True para testar limite mínimo inclusivo e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `less equal` para valores do tipo text; use para testar limite máximo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Less Equal → Branch`; use a saída True para testar limite máximo inclusivo e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 260. Between

- **ID:** `compare.text.between`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `between` para valores do tipo text; use para testar se está dentro de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Between → Branch`; use a saída True para testar se está dentro de uma faixa e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 261. Outside

- **ID:** `compare.text.outside`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `outside` para valores do tipo text; use para testar se saiu de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Outside → Branch`; use a saída True para testar se saiu de uma faixa e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 262. Approximately

- **ID:** `compare.text.approximately`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `approximately` para valores do tipo text; use para comparar números com tolerância. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Approximately → Branch`; use a saída True para comparar números com tolerância e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 263. Is Null

- **ID:** `compare.text.is_null`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `is null` para valores do tipo text; use para verificar ausência de objeto. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor text que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Is Null → Branch`; use a saída True para verificar ausência de objeto e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `not equal` para valores do tipo vector2; use para testar diferença. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Not Equal → Branch`; use a saída True para testar diferença e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `greater equal` para valores do tipo vector2; use para testar limite mínimo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Greater Equal → Branch`; use a saída True para testar limite mínimo inclusivo e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `less equal` para valores do tipo vector2; use para testar limite máximo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Less Equal → Branch`; use a saída True para testar limite máximo inclusivo e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 270. Between

- **ID:** `compare.vector2.between`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `between` para valores do tipo vector2; use para testar se está dentro de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Between → Branch`; use a saída True para testar se está dentro de uma faixa e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 271. Outside

- **ID:** `compare.vector2.outside`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `outside` para valores do tipo vector2; use para testar se saiu de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Outside → Branch`; use a saída True para testar se saiu de uma faixa e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 272. Approximately

- **ID:** `compare.vector2.approximately`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `approximately` para valores do tipo vector2; use para comparar números com tolerância. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Approximately → Branch`; use a saída True para comparar números com tolerância e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 273. Is Null

- **ID:** `compare.vector2.is_null`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `is null` para valores do tipo vector2; use para verificar ausência de objeto. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector2 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Is Null → Branch`; use a saída True para verificar ausência de objeto e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `not equal` para valores do tipo vector3; use para testar diferença. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Not Equal → Branch`; use a saída True para testar diferença e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `greater equal` para valores do tipo vector3; use para testar limite mínimo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Greater Equal → Branch`; use a saída True para testar limite mínimo inclusivo e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `less equal` para valores do tipo vector3; use para testar limite máximo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Less Equal → Branch`; use a saída True para testar limite máximo inclusivo e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 280. Between

- **ID:** `compare.vector3.between`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `between` para valores do tipo vector3; use para testar se está dentro de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Between → Branch`; use a saída True para testar se está dentro de uma faixa e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 281. Outside

- **ID:** `compare.vector3.outside`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `outside` para valores do tipo vector3; use para testar se saiu de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Outside → Branch`; use a saída True para testar se saiu de uma faixa e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 282. Approximately

- **ID:** `compare.vector3.approximately`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `approximately` para valores do tipo vector3; use para comparar números com tolerância. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Approximately → Branch`; use a saída True para comparar números com tolerância e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 283. Is Null

- **ID:** `compare.vector3.is_null`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `is null` para valores do tipo vector3; use para verificar ausência de objeto. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector3 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Is Null → Branch`; use a saída True para verificar ausência de objeto e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `not equal` para valores do tipo color; use para testar diferença. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Not Equal → Branch`; use a saída True para testar diferença e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `greater equal` para valores do tipo color; use para testar limite mínimo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Greater Equal → Branch`; use a saída True para testar limite mínimo inclusivo e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `less equal` para valores do tipo color; use para testar limite máximo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Less Equal → Branch`; use a saída True para testar limite máximo inclusivo e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 290. Between

- **ID:** `compare.color.between`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `between` para valores do tipo color; use para testar se está dentro de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Between → Branch`; use a saída True para testar se está dentro de uma faixa e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 291. Outside

- **ID:** `compare.color.outside`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `outside` para valores do tipo color; use para testar se saiu de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Outside → Branch`; use a saída True para testar se saiu de uma faixa e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 292. Approximately

- **ID:** `compare.color.approximately`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `approximately` para valores do tipo color; use para comparar números com tolerância. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Approximately → Branch`; use a saída True para comparar números com tolerância e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 293. Is Null

- **ID:** `compare.color.is_null`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `is null` para valores do tipo color; use para verificar ausência de objeto. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor color que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Is Null → Branch`; use a saída True para verificar ausência de objeto e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `not equal` para valores do tipo object; use para testar diferença. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Not Equal → Branch`; use a saída True para testar diferença e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `greater equal` para valores do tipo object; use para testar limite mínimo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Greater Equal → Branch`; use a saída True para testar limite mínimo inclusivo e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `less equal` para valores do tipo object; use para testar limite máximo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Less Equal → Branch`; use a saída True para testar limite máximo inclusivo e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 300. Between

- **ID:** `compare.object.between`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `between` para valores do tipo object; use para testar se está dentro de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Between → Branch`; use a saída True para testar se está dentro de uma faixa e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 301. Outside

- **ID:** `compare.object.outside`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `outside` para valores do tipo object; use para testar se saiu de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Outside → Branch`; use a saída True para testar se saiu de uma faixa e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 302. Approximately

- **ID:** `compare.object.approximately`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `approximately` para valores do tipo object; use para comparar números com tolerância. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Approximately → Branch`; use a saída True para comparar números com tolerância e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 303. Is Null

- **ID:** `compare.object.is_null`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `is null` para valores do tipo object; use para verificar ausência de objeto. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor object que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Is Null → Branch`; use a saída True para verificar ausência de objeto e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `not equal` para valores do tipo asset; use para testar diferença. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Not Equal → Branch`; use a saída True para testar diferença e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `greater equal` para valores do tipo asset; use para testar limite mínimo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Greater Equal → Branch`; use a saída True para testar limite mínimo inclusivo e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `less equal` para valores do tipo asset; use para testar limite máximo inclusivo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Less Equal → Branch`; use a saída True para testar limite máximo inclusivo e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 310. Between

- **ID:** `compare.asset.between`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `between` para valores do tipo asset; use para testar se está dentro de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Between → Branch`; use a saída True para testar se está dentro de uma faixa e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 311. Outside

- **ID:** `compare.asset.outside`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `outside` para valores do tipo asset; use para testar se saiu de uma faixa. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Outside → Branch`; use a saída True para testar se saiu de uma faixa e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 312. Approximately

- **ID:** `compare.asset.approximately`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `approximately` para valores do tipo asset; use para comparar números com tolerância. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Approximately → Branch`; use a saída True para comparar números com tolerância e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 313. Is Null

- **ID:** `compare.asset.is_null`
- **Categoria:** Comparação
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `is null` para valores do tipo asset; use para verificar ausência de objeto. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor asset que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Update → Is Null → Branch`; use a saída True para verificar ausência de objeto e a False para manter o estado atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 314. Add

- **ID:** `vector.vector2.add`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `add` para valores do tipo vector2; use para somar 100 pontos à pontuação. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Add → UI Set Text` ou conecte o vetor resultante a movimento/força para somar 100 pontos à pontuação.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 315. Subtract

- **ID:** `vector.vector2.subtract`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `subtract` para valores do tipo vector2; use para retirar dano da vida. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Subtract → UI Set Text` ou conecte o vetor resultante a movimento/força para retirar dano da vida.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 316. Multiply

- **ID:** `vector.vector2.multiply`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `multiply` para valores do tipo vector2; use para aplicar um multiplicador de dano. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Multiply → UI Set Text` ou conecte o vetor resultante a movimento/força para aplicar um multiplicador de dano.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 317. Divide

- **ID:** `vector.vector2.divide`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `divide` para valores do tipo vector2; use para calcular a média por jogador. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Divide → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular a média por jogador.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 318. Scale

- **ID:** `vector.vector2.scale`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `scale` para valores do tipo vector2; use para calcular scale antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Scale → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular scale antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 319. Normalize

- **ID:** `vector.vector2.normalize`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `normalize` para valores do tipo vector2; use para obter somente a direção. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector2 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Normalize → UI Set Text` ou conecte o vetor resultante a movimento/força para obter somente a direção.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 320. Length

- **ID:** `vector.vector2.length`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `length` para valores do tipo vector2; use para obter magnitude/velocidade. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector2 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Length → UI Set Text` ou conecte o vetor resultante a movimento/força para obter magnitude/velocidade.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 321. Length Squared

- **ID:** `vector.vector2.length_squared`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `length squared` para valores do tipo vector2; use para calcular length squared antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Length Squared → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular length squared antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 322. Distance

- **ID:** `vector.vector2.distance`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `distance` para valores do tipo vector2; use para medir distância entre pontos. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Distance → UI Set Text` ou conecte o vetor resultante a movimento/força para medir distância entre pontos.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 323. Dot

- **ID:** `vector.vector2.dot`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `dot` para valores do tipo vector2; use para medir alinhamento entre direções. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Dot → UI Set Text` ou conecte o vetor resultante a movimento/força para medir alinhamento entre direções.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 324. Cross

- **ID:** `vector.vector2.cross`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `cross` para valores do tipo vector2; use para obter o eixo perpendicular. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Cross → UI Set Text` ou conecte o vetor resultante a movimento/força para obter o eixo perpendicular.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 325. Lerp

- **ID:** `vector.vector2.lerp`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `lerp` para valores do tipo vector2; use para interpolar suavemente. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Lerp → UI Set Text` ou conecte o vetor resultante a movimento/força para interpolar suavemente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 326. Move Towards

- **ID:** `vector.vector2.move_towards`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `move towards` para valores do tipo vector2; use para aproximar sem ultrapassar. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Move Towards → UI Set Text` ou conecte o vetor resultante a movimento/força para aproximar sem ultrapassar.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 327. Reflect

- **ID:** `vector.vector2.reflect`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `reflect` para valores do tipo vector2; use para calcular reflect antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Reflect → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular reflect antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 328. Project

- **ID:** `vector.vector2.project`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `project` para valores do tipo vector2; use para calcular project antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Project → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular project antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 329. Angle

- **ID:** `vector.vector2.angle`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `angle` para valores do tipo vector2; use para calcular angle antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Angle → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular angle antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 330. Clamp Length

- **ID:** `vector.vector2.clamp_length`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `clamp length` para valores do tipo vector2; use para calcular clamp length antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Clamp Length → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular clamp length antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 331. Minimum

- **ID:** `vector.vector2.minimum`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `minimum` para valores do tipo vector2; use para limitar ao menor valor. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Minimum → UI Set Text` ou conecte o vetor resultante a movimento/força para limitar ao menor valor.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 332. Maximum

- **ID:** `vector.vector2.maximum`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `maximum` para valores do tipo vector2; use para garantir um valor mínimo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Maximum → UI Set Text` ou conecte o vetor resultante a movimento/força para garantir um valor mínimo.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 333. Absolute

- **ID:** `vector.vector2.absolute`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `absolute` para valores do tipo vector2; use para remover o sinal. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector2 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Absolute → UI Set Text` ou conecte o vetor resultante a movimento/força para remover o sinal.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 334. Floor

- **ID:** `vector.vector2.floor`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `floor` para valores do tipo vector2; use para arredondar para baixo. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector2 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Floor → UI Set Text` ou conecte o vetor resultante a movimento/força para arredondar para baixo.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 335. Ceil

- **ID:** `vector.vector2.ceil`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `ceil` para valores do tipo vector2; use para arredondar para cima. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector2 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Ceil → UI Set Text` ou conecte o vetor resultante a movimento/força para arredondar para cima.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 336. Round

- **ID:** `vector.vector2.round`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `round` para valores do tipo vector2; use para arredondar ao inteiro mais próximo. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector2 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Round → UI Set Text` ou conecte o vetor resultante a movimento/força para arredondar ao inteiro mais próximo.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 337. Snap

- **ID:** `vector.vector2.snap`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `snap` para valores do tipo vector2; use para calcular snap antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Snap → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular snap antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 338. Rotate

- **ID:** `vector.vector2.rotate`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `rotate` para valores do tipo vector2; use para calcular rotate antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Rotate → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular rotate antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 339. Inverse

- **ID:** `vector.vector2.inverse`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `inverse` para valores do tipo vector2; use para calcular inverse antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Inverse → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular inverse antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 340. Is Zero

- **ID:** `vector.vector2.is_zero`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `is zero` para valores do tipo vector2; use para calcular is zero antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector2 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Is Zero → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular is zero antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 341. Is Finite

- **ID:** `vector.vector2.is_finite`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `is finite` para valores do tipo vector2; use para calcular is finite antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector2 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Is Finite → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular is finite antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 342. Make

- **ID:** `vector.vector2.make`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `make` para valores do tipo vector2; use para calcular make antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Make → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular make antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 343. Split

- **ID:** `vector.vector2.split`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `split` para valores do tipo vector2; use para calcular split antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Split → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular split antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 344. With X

- **ID:** `vector.vector2.with_x`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `with x` para valores do tipo vector2; use para calcular with x antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → With X → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular with x antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 345. With Y

- **ID:** `vector.vector2.with_y`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `with y` para valores do tipo vector2; use para calcular with y antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → With Y → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular with y antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 346. With Z

- **ID:** `vector.vector2.with_z`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `with z` para valores do tipo vector2; use para calcular with z antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → With Z → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular with z antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 347. With W

- **ID:** `vector.vector2.with_w`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `with w` para valores do tipo vector2; use para calcular with w antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → With W → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular with w antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 348. Add

- **ID:** `vector.vector3.add`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `add` para valores do tipo vector3; use para somar 100 pontos à pontuação. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Add → UI Set Text` ou conecte o vetor resultante a movimento/força para somar 100 pontos à pontuação.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 349. Subtract

- **ID:** `vector.vector3.subtract`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `subtract` para valores do tipo vector3; use para retirar dano da vida. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Subtract → UI Set Text` ou conecte o vetor resultante a movimento/força para retirar dano da vida.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 350. Multiply

- **ID:** `vector.vector3.multiply`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `multiply` para valores do tipo vector3; use para aplicar um multiplicador de dano. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Multiply → UI Set Text` ou conecte o vetor resultante a movimento/força para aplicar um multiplicador de dano.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 351. Divide

- **ID:** `vector.vector3.divide`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `divide` para valores do tipo vector3; use para calcular a média por jogador. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Divide → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular a média por jogador.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 352. Scale

- **ID:** `vector.vector3.scale`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `scale` para valores do tipo vector3; use para calcular scale antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Scale → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular scale antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 353. Normalize

- **ID:** `vector.vector3.normalize`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `normalize` para valores do tipo vector3; use para obter somente a direção. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector3 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Normalize → UI Set Text` ou conecte o vetor resultante a movimento/força para obter somente a direção.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 354. Length

- **ID:** `vector.vector3.length`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `length` para valores do tipo vector3; use para obter magnitude/velocidade. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector3 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Length → UI Set Text` ou conecte o vetor resultante a movimento/força para obter magnitude/velocidade.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 355. Length Squared

- **ID:** `vector.vector3.length_squared`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `length squared` para valores do tipo vector3; use para calcular length squared antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Length Squared → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular length squared antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 356. Distance

- **ID:** `vector.vector3.distance`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `distance` para valores do tipo vector3; use para medir distância entre pontos. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Distance → UI Set Text` ou conecte o vetor resultante a movimento/força para medir distância entre pontos.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 357. Dot

- **ID:** `vector.vector3.dot`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `dot` para valores do tipo vector3; use para medir alinhamento entre direções. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Dot → UI Set Text` ou conecte o vetor resultante a movimento/força para medir alinhamento entre direções.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 358. Cross

- **ID:** `vector.vector3.cross`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `cross` para valores do tipo vector3; use para obter o eixo perpendicular. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Cross → UI Set Text` ou conecte o vetor resultante a movimento/força para obter o eixo perpendicular.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 359. Lerp

- **ID:** `vector.vector3.lerp`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `lerp` para valores do tipo vector3; use para interpolar suavemente. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Lerp → UI Set Text` ou conecte o vetor resultante a movimento/força para interpolar suavemente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 360. Move Towards

- **ID:** `vector.vector3.move_towards`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `move towards` para valores do tipo vector3; use para aproximar sem ultrapassar. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Move Towards → UI Set Text` ou conecte o vetor resultante a movimento/força para aproximar sem ultrapassar.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 361. Reflect

- **ID:** `vector.vector3.reflect`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `reflect` para valores do tipo vector3; use para calcular reflect antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Reflect → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular reflect antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 362. Project

- **ID:** `vector.vector3.project`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `project` para valores do tipo vector3; use para calcular project antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Project → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular project antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 363. Angle

- **ID:** `vector.vector3.angle`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `angle` para valores do tipo vector3; use para calcular angle antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Angle → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular angle antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 364. Clamp Length

- **ID:** `vector.vector3.clamp_length`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `clamp length` para valores do tipo vector3; use para calcular clamp length antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Clamp Length → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular clamp length antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 365. Minimum

- **ID:** `vector.vector3.minimum`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `minimum` para valores do tipo vector3; use para limitar ao menor valor. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Minimum → UI Set Text` ou conecte o vetor resultante a movimento/força para limitar ao menor valor.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 366. Maximum

- **ID:** `vector.vector3.maximum`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `maximum` para valores do tipo vector3; use para garantir um valor mínimo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Maximum → UI Set Text` ou conecte o vetor resultante a movimento/força para garantir um valor mínimo.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 367. Absolute

- **ID:** `vector.vector3.absolute`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `absolute` para valores do tipo vector3; use para remover o sinal. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector3 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Absolute → UI Set Text` ou conecte o vetor resultante a movimento/força para remover o sinal.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 368. Floor

- **ID:** `vector.vector3.floor`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `floor` para valores do tipo vector3; use para arredondar para baixo. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector3 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Floor → UI Set Text` ou conecte o vetor resultante a movimento/força para arredondar para baixo.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 369. Ceil

- **ID:** `vector.vector3.ceil`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `ceil` para valores do tipo vector3; use para arredondar para cima. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector3 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Ceil → UI Set Text` ou conecte o vetor resultante a movimento/força para arredondar para cima.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 370. Round

- **ID:** `vector.vector3.round`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `round` para valores do tipo vector3; use para arredondar ao inteiro mais próximo. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector3 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Round → UI Set Text` ou conecte o vetor resultante a movimento/força para arredondar ao inteiro mais próximo.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 371. Snap

- **ID:** `vector.vector3.snap`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `snap` para valores do tipo vector3; use para calcular snap antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Snap → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular snap antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 372. Rotate

- **ID:** `vector.vector3.rotate`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `rotate` para valores do tipo vector3; use para calcular rotate antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Rotate → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular rotate antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 373. Inverse

- **ID:** `vector.vector3.inverse`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `inverse` para valores do tipo vector3; use para calcular inverse antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Inverse → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular inverse antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 374. Is Zero

- **ID:** `vector.vector3.is_zero`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `is zero` para valores do tipo vector3; use para calcular is zero antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector3 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Is Zero → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular is zero antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 375. Is Finite

- **ID:** `vector.vector3.is_finite`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `is finite` para valores do tipo vector3; use para calcular is finite antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector3 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Is Finite → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular is finite antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 376. Make

- **ID:** `vector.vector3.make`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `make` para valores do tipo vector3; use para calcular make antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Make → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular make antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 377. Split

- **ID:** `vector.vector3.split`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `split` para valores do tipo vector3; use para calcular split antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Split → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular split antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 378. With X

- **ID:** `vector.vector3.with_x`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `with x` para valores do tipo vector3; use para calcular with x antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → With X → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular with x antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 379. With Y

- **ID:** `vector.vector3.with_y`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `with y` para valores do tipo vector3; use para calcular with y antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → With Y → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular with y antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 380. With Z

- **ID:** `vector.vector3.with_z`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `with z` para valores do tipo vector3; use para calcular with z antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → With Z → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular with z antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 381. With W

- **ID:** `vector.vector3.with_w`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `with w` para valores do tipo vector3; use para calcular with w antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → With W → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular with w antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 382. Add

- **ID:** `vector.vector4.add`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `add` para valores do tipo vector4; use para somar 100 pontos à pontuação. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Add → UI Set Text` ou conecte o vetor resultante a movimento/força para somar 100 pontos à pontuação.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 383. Subtract

- **ID:** `vector.vector4.subtract`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `subtract` para valores do tipo vector4; use para retirar dano da vida. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Subtract → UI Set Text` ou conecte o vetor resultante a movimento/força para retirar dano da vida.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 384. Multiply

- **ID:** `vector.vector4.multiply`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `multiply` para valores do tipo vector4; use para aplicar um multiplicador de dano. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Multiply → UI Set Text` ou conecte o vetor resultante a movimento/força para aplicar um multiplicador de dano.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 385. Divide

- **ID:** `vector.vector4.divide`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `divide` para valores do tipo vector4; use para calcular a média por jogador. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Divide → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular a média por jogador.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 386. Scale

- **ID:** `vector.vector4.scale`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `scale` para valores do tipo vector4; use para calcular scale antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Scale → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular scale antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 387. Normalize

- **ID:** `vector.vector4.normalize`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `normalize` para valores do tipo vector4; use para obter somente a direção. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector4 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Normalize → UI Set Text` ou conecte o vetor resultante a movimento/força para obter somente a direção.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 388. Length

- **ID:** `vector.vector4.length`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `length` para valores do tipo vector4; use para obter magnitude/velocidade. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector4 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Length → UI Set Text` ou conecte o vetor resultante a movimento/força para obter magnitude/velocidade.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 389. Length Squared

- **ID:** `vector.vector4.length_squared`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `length squared` para valores do tipo vector4; use para calcular length squared antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Length Squared → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular length squared antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 390. Distance

- **ID:** `vector.vector4.distance`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `distance` para valores do tipo vector4; use para medir distância entre pontos. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Distance → UI Set Text` ou conecte o vetor resultante a movimento/força para medir distância entre pontos.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 391. Dot

- **ID:** `vector.vector4.dot`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `dot` para valores do tipo vector4; use para medir alinhamento entre direções. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Dot → UI Set Text` ou conecte o vetor resultante a movimento/força para medir alinhamento entre direções.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 392. Cross

- **ID:** `vector.vector4.cross`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `cross` para valores do tipo vector4; use para obter o eixo perpendicular. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Cross → UI Set Text` ou conecte o vetor resultante a movimento/força para obter o eixo perpendicular.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 393. Lerp

- **ID:** `vector.vector4.lerp`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `lerp` para valores do tipo vector4; use para interpolar suavemente. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Lerp → UI Set Text` ou conecte o vetor resultante a movimento/força para interpolar suavemente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 394. Move Towards

- **ID:** `vector.vector4.move_towards`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `move towards` para valores do tipo vector4; use para aproximar sem ultrapassar. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Move Towards → UI Set Text` ou conecte o vetor resultante a movimento/força para aproximar sem ultrapassar.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 395. Reflect

- **ID:** `vector.vector4.reflect`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `reflect` para valores do tipo vector4; use para calcular reflect antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Reflect → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular reflect antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 396. Project

- **ID:** `vector.vector4.project`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `project` para valores do tipo vector4; use para calcular project antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Project → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular project antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 397. Angle

- **ID:** `vector.vector4.angle`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `angle` para valores do tipo vector4; use para calcular angle antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Angle → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular angle antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 398. Clamp Length

- **ID:** `vector.vector4.clamp_length`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `clamp length` para valores do tipo vector4; use para calcular clamp length antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Clamp Length → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular clamp length antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 399. Minimum

- **ID:** `vector.vector4.minimum`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `minimum` para valores do tipo vector4; use para limitar ao menor valor. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Minimum → UI Set Text` ou conecte o vetor resultante a movimento/força para limitar ao menor valor.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 400. Maximum

- **ID:** `vector.vector4.maximum`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `maximum` para valores do tipo vector4; use para garantir um valor mínimo. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Maximum → UI Set Text` ou conecte o vetor resultante a movimento/força para garantir um valor mínimo.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 401. Absolute

- **ID:** `vector.vector4.absolute`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `absolute` para valores do tipo vector4; use para remover o sinal. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector4 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Absolute → UI Set Text` ou conecte o vetor resultante a movimento/força para remover o sinal.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 402. Floor

- **ID:** `vector.vector4.floor`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `floor` para valores do tipo vector4; use para arredondar para baixo. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector4 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Floor → UI Set Text` ou conecte o vetor resultante a movimento/força para arredondar para baixo.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 403. Ceil

- **ID:** `vector.vector4.ceil`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `ceil` para valores do tipo vector4; use para arredondar para cima. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector4 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Ceil → UI Set Text` ou conecte o vetor resultante a movimento/força para arredondar para cima.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 404. Round

- **ID:** `vector.vector4.round`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `round` para valores do tipo vector4; use para arredondar ao inteiro mais próximo. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector4 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Round → UI Set Text` ou conecte o vetor resultante a movimento/força para arredondar ao inteiro mais próximo.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 405. Snap

- **ID:** `vector.vector4.snap`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `snap` para valores do tipo vector4; use para calcular snap antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Snap → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular snap antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 406. Rotate

- **ID:** `vector.vector4.rotate`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `rotate` para valores do tipo vector4; use para calcular rotate antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Rotate → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular rotate antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 407. Inverse

- **ID:** `vector.vector4.inverse`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `inverse` para valores do tipo vector4; use para calcular inverse antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Inverse → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular inverse antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 408. Is Zero

- **ID:** `vector.vector4.is_zero`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `is zero` para valores do tipo vector4; use para calcular is zero antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector4 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Is Zero → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular is zero antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 409. Is Finite

- **ID:** `vector.vector4.is_finite`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `is finite` para valores do tipo vector4; use para calcular is finite antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `value`: valor vector4 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Is Finite → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular is finite antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 410. Make

- **ID:** `vector.vector4.make`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `make` para valores do tipo vector4; use para calcular make antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Make → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular make antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 411. Split

- **ID:** `vector.vector4.split`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `split` para valores do tipo vector4; use para calcular split antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → Split → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular split antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 412. With X

- **ID:** `vector.vector4.with_x`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `with x` para valores do tipo vector4; use para calcular with x antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → With X → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular with x antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 413. With Y

- **ID:** `vector.vector4.with_y`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `with y` para valores do tipo vector4; use para calcular with y antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → With Y → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular with y antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 414. With Z

- **ID:** `vector.vector4.with_z`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `with z` para valores do tipo vector4; use para calcular with z antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → With Z → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular with z antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 415. With W

- **ID:** `vector.vector4.with_w`
- **Categoria:** Vetor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `with w` para valores do tipo vector4; use para calcular with w antes de alimentar outro bloco. Não modifica a cena sozinho.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value` e `result`.
- **Exemplo:** `Get Velocity → With W → UI Set Text` ou conecte o vetor resultante a movimento/força para calcular with w antes de alimentar outro bloco.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 416. Make Rgb

- **ID:** `color.make_rgb`
- **Categoria:** Cor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `make rgb` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Make Rgb → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 417. Make Rgba

- **ID:** `color.make_rgba`
- **Categoria:** Cor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `make rgba` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Make Rgba → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 418. Split Rgb

- **ID:** `color.split_rgb`
- **Categoria:** Cor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `split rgb` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Split Rgb → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 419. Split Rgba

- **ID:** `color.split_rgba`
- **Categoria:** Cor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `split rgba` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Split Rgba → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 420. From Hex

- **ID:** `color.from_hex`
- **Categoria:** Cor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `from hex` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color From Hex → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 421. To Hex

- **ID:** `color.to_hex`
- **Categoria:** Cor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `to hex` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color To Hex → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 422. From Hsv

- **ID:** `color.from_hsv`
- **Categoria:** Cor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `from hsv` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color From Hsv → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 423. To Hsv

- **ID:** `color.to_hsv`
- **Categoria:** Cor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `to hsv` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color To Hsv → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 424. Lerp

- **ID:** `color.lerp`
- **Categoria:** Cor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `lerp` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Lerp → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 425. Blend Add

- **ID:** `color.blend_add`
- **Categoria:** Cor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `blend add` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Blend Add → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 426. Blend Multiply

- **ID:** `color.blend_multiply`
- **Categoria:** Cor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `blend multiply` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Blend Multiply → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 427. Blend Screen

- **ID:** `color.blend_screen`
- **Categoria:** Cor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `blend screen` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Blend Screen → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 428. Blend Overlay

- **ID:** `color.blend_overlay`
- **Categoria:** Cor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `blend overlay` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Blend Overlay → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 429. Lighten

- **ID:** `color.lighten`
- **Categoria:** Cor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `lighten` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Lighten → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 430. Darken

- **ID:** `color.darken`
- **Categoria:** Cor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `darken` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Darken → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 431. Saturate

- **ID:** `color.saturate`
- **Categoria:** Cor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `saturate` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Saturate → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 432. Desaturate

- **ID:** `color.desaturate`
- **Categoria:** Cor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `desaturate` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Desaturate → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 433. Invert

- **ID:** `color.invert`
- **Categoria:** Cor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `invert` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Invert → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 434. Grayscale

- **ID:** `color.grayscale`
- **Categoria:** Cor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `grayscale` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Grayscale → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 435. Alpha

- **ID:** `color.alpha`
- **Categoria:** Cor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `alpha` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Alpha → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 436. With Alpha

- **ID:** `color.with_alpha`
- **Categoria:** Cor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `with alpha` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color With Alpha → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 437. Luminance

- **ID:** `color.luminance`
- **Categoria:** Cor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `luminance` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Luminance → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 438. Contrast

- **ID:** `color.contrast`
- **Categoria:** Cor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `contrast` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Contrast → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 439. Temperature

- **ID:** `color.temperature`
- **Categoria:** Cor
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Calcula `temperature` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Temperature → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 440. Append

- **ID:** `text.append`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Acrescenta texto ao final. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text` e `value`. Não usa `target_path`.
- **Saídas/efeito:** Texto combinado em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `Pontos: ` + `250` resulta em `Pontos: 250`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 441. Prepend

- **ID:** `text.prepend`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Acrescenta texto no início. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text` e `value`. Não usa `target_path`.
- **Saídas/efeito:** Texto combinado em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `Lv. ` antes de `12` resulta em `Lv. 12`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 442. Join

- **ID:** `text.join`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Une uma lista de textos usando um separador. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `list` e `separator`. Não usa `target_path`.
- **Saídas/efeito:** Um único texto em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `[madeira, pedra, ferro]` com `, ` resulta em `madeira, pedra, ferro`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 443. Split

- **ID:** `text.split`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Divide um texto onde encontrar o separador. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text` e `separator`. Não usa `target_path`.
- **Saídas/efeito:** Lista de partes em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `vida:80` separado por `:` resulta em `[vida, 80]`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 444. Replace

- **ID:** `text.replace`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Troca todas as ocorrências de um trecho. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`, `search` e `replacement`. Não usa `target_path`.
- **Saídas/efeito:** Texto com todas as trocas em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: trocar `{player}` por `Luna` em uma mensagem de diálogo.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 445. Replace First

- **ID:** `text.replace_first`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Troca somente a primeira ocorrência. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`, `search` e `replacement`. Não usa `target_path`.
- **Saídas/efeito:** Texto com uma troca em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: em `1-1-1`, trocar primeiro `1` por `2` resulta em `2-1-1`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 446. Contains

- **ID:** `text.contains`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Verifica se um trecho aparece no texto. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text` e `search`. Não usa `target_path`.
- **Saídas/efeito:** Booleano em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: testar se `Chave Dourada` contém `Chave` antes de abrir uma porta.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 447. Starts With

- **ID:** `text.starts_with`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Verifica o começo do texto. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text` e `prefix`. Não usa `target_path`.
- **Saídas/efeito:** Booleano em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: identificar comandos que começam com `/`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 448. Ends With

- **ID:** `text.ends_with`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Verifica o final do texto. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text` e `suffix`. Não usa `target_path`.
- **Saídas/efeito:** Booleano em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: confirmar se um arquivo termina em `.png`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 449. Equals Ignore Case

- **ID:** `text.equals_ignore_case`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Compara dois textos ignorando maiúsculas/minúsculas. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `a` e `b`. Não usa `target_path`.
- **Saídas/efeito:** Booleano em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `PLAY` e `play` retornam `true`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 450. Uppercase

- **ID:** `text.uppercase`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Converte letras para maiúsculas. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`. Não usa `target_path`.
- **Saídas/efeito:** Texto em caixa alta em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `missão concluída` resulta em `MISSÃO CONCLUÍDA`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 451. Lowercase

- **ID:** `text.lowercase`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Converte letras para minúsculas. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`. Não usa `target_path`.
- **Saídas/efeito:** Texto em caixa baixa em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `PlayerName` resulta em `playername`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 452. Capitalize

- **ID:** `text.capitalize`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Coloca iniciais de palavras em maiúsculas. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`. Não usa `target_path`.
- **Saídas/efeito:** Texto capitalizado em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `espada de fogo` resulta em `Espada De Fogo`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 453. Trim

- **ID:** `text.trim`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Remove espaços do início e do fim. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`. Não usa `target_path`.
- **Saídas/efeito:** Texto sem espaços externos em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `  Luna  ` resulta em `Luna`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 454. Trim Start

- **ID:** `text.trim_start`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Remove espaços somente do início. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`. Não usa `target_path`.
- **Saídas/efeito:** Texto sem espaços iniciais em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: limpar indentação acidental de um nome digitado.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 455. Trim End

- **ID:** `text.trim_end`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Remove espaços somente do fim. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`. Não usa `target_path`.
- **Saídas/efeito:** Texto sem espaços finais em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: limpar espaços depois de um código digitado.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 456. Substring

- **ID:** `text.substring`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Recorta parte do texto por posição. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`, `start` e `length`. Não usa `target_path`.
- **Saídas/efeito:** Trecho recortado em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: em `PLAYER_001`, início `7`, tamanho `3` retorna `001`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 457. Character At

- **ID:** `text.character_at`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Obtém o caractere de uma posição. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text` e `index` começando em zero. Não usa `target_path`.
- **Saídas/efeito:** Um caractere em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: índice `0` de `Godot` retorna `G`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 458. Length

- **ID:** `text.length`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Conta os caracteres. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`. Não usa `target_path`.
- **Saídas/efeito:** Número inteiro em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: limitar o nome do jogador a 16 caracteres.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 459. Is Empty

- **ID:** `text.is_empty`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Verifica se o texto tem zero caracteres. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`. Não usa `target_path`.
- **Saídas/efeito:** Booleano em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: impedir save quando o nome é `""`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 460. Is Blank

- **ID:** `text.is_blank`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Verifica se há somente espaços/quebras de linha. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`. Não usa `target_path`.
- **Saídas/efeito:** Booleano em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: rejeitar um nome digitado como `   `.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 461. Pad Start

- **ID:** `text.pad_start`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Completa o início até atingir um tamanho. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`, `length` e `fill`. Não usa `target_path`.
- **Saídas/efeito:** Texto preenchido em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `7` com tamanho `3` e `0` resulta em `007`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 462. Pad End

- **ID:** `text.pad_end`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Completa o final até atingir um tamanho. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`, `length` e `fill`. Não usa `target_path`.
- **Saídas/efeito:** Texto preenchido em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: alinhar `HP` com espaços até 8 caracteres.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 463. Repeat

- **ID:** `text.repeat`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Repete o texto uma quantidade de vezes. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text` e `count`. Não usa `target_path`.
- **Saídas/efeito:** Texto repetido em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `★` repetido 3 vezes resulta em `★★★`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 464. Reverse

- **ID:** `text.reverse`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Inverte a ordem dos caracteres. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** Somente `text`. Não usa `target_path`.
- **Saídas/efeito:** Novo texto invertido em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `PORTA` resulta em `ATROP`; útil para puzzle de palavra ou efeito visual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 465. Format

- **ID:** `text.format`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Substitui marcadores por valores. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `template` e valores nomeados/posicionais. Não usa `target_path`.
- **Saídas/efeito:** Texto formatado em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `Vida: {0}/{1}` com `80` e `100` resulta em `Vida: 80/100`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 466. Number To Text

- **ID:** `text.number_to_text`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Converte número em texto. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `value` e casas decimais opcionais. Não usa `target_path`.
- **Saídas/efeito:** Representação textual em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `12.5` com uma casa resulta em `12.5` para usar em `UI Set Text`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 467. Bool To Text

- **ID:** `text.bool_to_text`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Converte booleano em texto. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `value`, texto para verdadeiro e texto para falso. Não usa `target_path`.
- **Saídas/efeito:** Texto escolhido em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `true` com `Ligado/Desligado` resulta em `Ligado`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 468. Vector To Text

- **ID:** `text.vector_to_text`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Converte vetor em texto legível. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `value` e precisão opcional. Não usa `target_path`.
- **Saídas/efeito:** Componentes formatados em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `Vector3(1,2,3)` resulta em `(1, 2, 3)`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 469. Parse Number

- **ID:** `text.parse_number`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Interpreta texto como número. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text` e valor padrão opcional. Não usa `target_path`.
- **Saídas/efeito:** Número convertido em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `125.5` resulta em `125.5`; use antes de cálculos.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 470. Parse Bool

- **ID:** `text.parse_bool`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Interpreta texto como booleano. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text` e valor padrão opcional. Não usa `target_path`.
- **Saídas/efeito:** Booleano convertido em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `true` resulta em `true` para alimentar um `Branch`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 471. Regex Matches

- **ID:** `text.regex_matches`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Verifica se o texto corresponde a uma expressão regular. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text` e `pattern`. Não usa `target_path`.
- **Saídas/efeito:** Booleano em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: padrão `^[A-Z0-9_]+$` valida um código de sala.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 472. Regex Find

- **ID:** `text.regex_find`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Localiza um trecho por expressão regular. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text` e `pattern`. Não usa `target_path`.
- **Saídas/efeito:** Primeiro trecho encontrado/posição em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: padrão `\d+` encontra `250` em `Pontos: 250`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 473. Regex Replace

- **ID:** `text.regex_replace`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Substitui trechos encontrados por expressão regular. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`, `pattern` e `replacement`. Não usa `target_path`.
- **Saídas/efeito:** Texto substituído em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: trocar `\s+` por um espaço limpa espaços duplicados.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 474. Lines

- **ID:** `text.lines`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Divide o texto por quebras de linha. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`. Não usa `target_path`.
- **Saídas/efeito:** Lista com uma entrada por linha em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: transformar uma lista de objetivos multilinha em itens de UI.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 475. Words

- **ID:** `text.words`
- **Categoria:** Texto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Divide o texto em palavras. Use quando a lógica precisa trabalhar com o conteúdo textual antes de mostrar, comparar ou salvar.
- **Entradas/alvo:** `text`. Não usa `target_path`.
- **Saídas/efeito:** Lista de palavras em `value`; o texto original não é alterado.
- **Exemplo:** Exemplo concreto: `espada de fogo` resulta em `[espada, de, fogo]`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 476. Find By Name

- **ID:** `object.find_by_name`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Find by name no sistema de objeto da cena. Use este bloco quando a mecânica precisa aplicar `find by name` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `name`: nome exato procurado na scenetree.
- **Saídas/efeito:** Executa `find by name` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Find By Name`, preencha `name`: nome exato procurado na SceneTree e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 477. Find By Tag

- **ID:** `object.find_by_tag`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Find by tag no sistema de objeto da cena. Use este bloco quando a mecânica precisa aplicar `find by tag` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `tag`: etiqueta cadastrada.
- **Saídas/efeito:** Executa `find by tag` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Find By Tag`, preencha `tag`: etiqueta cadastrada e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 478. Find By Id

- **ID:** `object.find_by_id`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Find by id no sistema de objeto da cena. Use este bloco quando a mecânica precisa aplicar `find by id` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `id`: identificador persistente.
- **Saídas/efeito:** Executa `find by id` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Find By Id`, preencha `id`: identificador persistente e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 479. Create

- **ID:** `object.create`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Cria no sistema de objeto da cena. Use este bloco quando a mecânica precisa aplicar `create` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `scene`/`class_name` e `parent_path`.
- **Saídas/efeito:** Executa `create` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Create`, preencha `scene`/`class_name` e `parent_path` e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 480. Clone

- **ID:** `object.clone`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Duplica no sistema de objeto da cena. Use este bloco quando a mecânica precisa aplicar `clone` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `parent_path` opcional.
- **Saídas/efeito:** Executa `clone` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Clone`, preencha `target_path` e `parent_path` opcional e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 481. Destroy

- **ID:** `object.destroy`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Remove da cena no sistema de objeto da cena. Use este bloco quando a mecânica precisa aplicar `destroy` ao componente selecionado durante o jogo.
- **Entradas/alvo:** Somente `target_path`.
- **Saídas/efeito:** Executa `destroy` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Destroy`, preencha somente `target_path` e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 482. Enable

- **ID:** `object.enable`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Reativa o processamento de um Node da cena. Use `Enable` para devolver comportamento a inimigos, plataformas ou controladores que foram desativados; isso não é o mesmo que apenas torná-los visíveis.
- **Entradas/alvo:** `target_path`: caminho do Node a controlar, por exemplo `../Enemies/Guard`. Não recebe valor adicional.
- **Saídas/efeito:** Coloca o alvo no estado ativo por meio do modo de processamento e emite `flow`. O Node continua existindo na SceneTree.
- **Exemplo:** Inimigo por proximidade: `Trigger Enter → Enable`, alvo `../Enemies/Guard`; ao entrar na área, o guarda volta a processar IA e movimento. Use `Disable` no `Trigger Exit` para interrompê-lo novamente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 483. Disable

- **ID:** `object.disable`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Desativa o processamento de um Node da cena. Use `Enable` para devolver comportamento a inimigos, plataformas ou controladores que foram desativados; isso não é o mesmo que apenas torná-los visíveis.
- **Entradas/alvo:** `target_path`: caminho do Node a controlar, por exemplo `../Enemies/Guard`. Não recebe valor adicional.
- **Saídas/efeito:** Coloca o alvo no estado desativado por meio do modo de processamento e emite `flow`. O Node continua existindo na SceneTree.
- **Exemplo:** Inimigo por proximidade: `Trigger Enter → Enable`, alvo `../Enemies/Guard`; ao entrar na área, o guarda volta a processar IA e movimento. Use `Disable` no `Trigger Exit` para interrompê-lo novamente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 484. Toggle Enabled

- **ID:** `object.toggle_enabled`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Alterna o processamento de um Node da cena. Use `Enable` para devolver comportamento a inimigos, plataformas ou controladores que foram desativados; isso não é o mesmo que apenas torná-los visíveis.
- **Entradas/alvo:** `target_path`: caminho do Node a controlar, por exemplo `../Enemies/Guard`. Não recebe valor adicional.
- **Saídas/efeito:** Coloca o alvo no estado estado oposto por meio do modo de processamento e emite `flow`. O Node continua existindo na SceneTree.
- **Exemplo:** Inimigo por proximidade: `Trigger Enter → Enable`, alvo `../Enemies/Guard`; ao entrar na área, o guarda volta a processar IA e movimento. Use `Disable` no `Trigger Exit` para interrompê-lo novamente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 485. Set Name

- **ID:** `object.set_name`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `name` no sistema de objeto da cena do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de name, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza name no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Name`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 486. Get Name

- **ID:** `object.get_name`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Consulta `name` no sistema de objeto da cena sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna name em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Name → UI Set Text` mostra name no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 487. Set Parent

- **ID:** `object.set_parent`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `parent` no sistema de objeto da cena do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de parent, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza parent no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Parent`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 488. Get Parent

- **ID:** `object.get_parent`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Consulta `parent` no sistema de objeto da cena sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna parent em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Parent → UI Set Text` mostra parent no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 489. Add Child

- **ID:** `object.add_child`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Add child no sistema de objeto da cena. Use este bloco quando a mecânica precisa aplicar `add child` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` do pai e `child_path`.
- **Saídas/efeito:** Executa `add child` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Add Child`, preencha `target_path` do pai e `child_path` e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 490. Remove Child

- **ID:** `object.remove_child`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Remove child no sistema de objeto da cena. Use este bloco quando a mecânica precisa aplicar `remove child` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` do pai e `child_path`.
- **Saídas/efeito:** Executa `remove child` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Remove Child`, preencha `target_path` do pai e `child_path` e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 491. Get Child

- **ID:** `object.get_child`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Consulta `child` no sistema de objeto da cena sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna child em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Child → UI Set Text` mostra child no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 492. Child Count

- **ID:** `object.child_count`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Child count no sistema de objeto da cena. Use este bloco quando a mecânica precisa aplicar `child count` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `child count` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `child count` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Child Count`, preencha `target_path` e `value` de `child count` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 493. Add Tag

- **ID:** `object.add_tag`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Add tag no sistema de objeto da cena. Use este bloco quando a mecânica precisa aplicar `add tag` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `add tag` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `add tag` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Add Tag`, preencha `target_path` e `value` de `add tag` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 494. Remove Tag

- **ID:** `object.remove_tag`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Remove tag no sistema de objeto da cena. Use este bloco quando a mecânica precisa aplicar `remove tag` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `remove tag` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `remove tag` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Remove Tag`, preencha `target_path` e `value` de `remove tag` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 495. Has Tag

- **ID:** `object.has_tag`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Has tag no sistema de objeto da cena. Use este bloco quando a mecânica precisa aplicar `has tag` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `has tag` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `has tag` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Has Tag`, preencha `target_path` e `value` de `has tag` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 496. Send Event

- **ID:** `object.send_event`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Send event no sistema de objeto da cena. Use este bloco quando a mecânica precisa aplicar `send event` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `event_name`.
- **Saídas/efeito:** Executa `send event` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Send Event`, preencha `target_path` e `event_name` e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 497. Send Event Bool

- **ID:** `object.send_event_bool`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Send event bool no sistema de objeto da cena. Use este bloco quando a mecânica precisa aplicar `send event bool` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `send event bool` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `send event bool` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Send Event Bool`, preencha `target_path` e `value` de `send event bool` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 498. Send Event Number

- **ID:** `object.send_event_number`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Send event number no sistema de objeto da cena. Use este bloco quando a mecânica precisa aplicar `send event number` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `send event number` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `send event number` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Send Event Number`, preencha `target_path` e `value` de `send event number` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 499. Send Event Text

- **ID:** `object.send_event_text`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Send event text no sistema de objeto da cena. Use este bloco quando a mecânica precisa aplicar `send event text` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `send event text` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `send event text` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Send Event Text`, preencha `target_path` e `value` de `send event text` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 500. Get Component

- **ID:** `object.get_component`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Consulta `component` no sistema de objeto da cena sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna component em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Component → UI Set Text` mostra component no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 501. Has Component

- **ID:** `object.has_component`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Has component no sistema de objeto da cena. Use este bloco quando a mecânica precisa aplicar `has component` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `has component` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `has component` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Has Component`, preencha `target_path` e `value` de `has component` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 502. Add Component

- **ID:** `object.add_component`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Add component no sistema de objeto da cena. Use este bloco quando a mecânica precisa aplicar `add component` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `add component` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `add component` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Add Component`, preencha `target_path` e `value` de `add component` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 503. Remove Component

- **ID:** `object.remove_component`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Remove component no sistema de objeto da cena. Use este bloco quando a mecânica precisa aplicar `remove component` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `remove component` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `remove component` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Remove Component`, preencha `target_path` e `value` de `remove component` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 504. Set Layer

- **ID:** `object.set_layer`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `layer` no sistema de objeto da cena do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de layer, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza layer no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Layer`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 505. Get Layer

- **ID:** `object.get_layer`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Consulta `layer` no sistema de objeto da cena sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna layer em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Layer → UI Set Text` mostra layer no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Is visible no sistema de objeto da cena. Use este bloco quando a mecânica precisa aplicar `is visible` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `is visible` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `is visible` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Is Visible`, preencha `target_path` e `value` de `is visible` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 508. Set Static

- **ID:** `object.set_static`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `static` no sistema de objeto da cena do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de static, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza static no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Static`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 509. Is Static

- **ID:** `object.is_static`
- **Categoria:** Objeto
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Is static no sistema de objeto da cena. Use este bloco quando a mecânica precisa aplicar `is static` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `is static` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `is static` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Is Static`, preencha `target_path` e `value` de `is static` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 510. Create

- **ID:** `list.number.create`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Cria uma lista vazia em uma lista de number. Use para use a saída como inventário inicial.
- **Entradas/alvo:** Nenhuma entrada.
- **Saídas/efeito:** Uma nova lista vazia. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Create` e use a saída para use a saída como inventário inicial.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 511. Add

- **ID:** `list.number.add`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Adiciona um item ao final em uma lista de number. Use para adicione uma moeda coletada ao inventário.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** A lista com o novo item. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Add` e use a saída para adicione uma moeda coletada ao inventário.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 512. Insert

- **ID:** `list.number.insert`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Insere um item em uma posição em uma lista de number. Use para insira uma missão no topo usando índice `0`.
- **Entradas/alvo:** `list`, `index` e `value`.
- **Saídas/efeito:** A lista com o item inserido. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Insert` e use a saída para insira uma missão no topo usando índice `0`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 513. Set

- **ID:** `list.number.set`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Substitui o item de uma posição em uma lista de number. Use para troque o item do slot selecionado.
- **Entradas/alvo:** `list`, `index` e `value`.
- **Saídas/efeito:** A lista atualizada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Set` e use a saída para troque o item do slot selecionado.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 514. Get

- **ID:** `list.number.get`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Obtém o item de uma posição em uma lista de number. Use para leia o item do slot `2` e mostre seu nome.
- **Entradas/alvo:** `list` e `index`.
- **Saídas/efeito:** O item encontrado em `value`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Get` e use a saída para leia o item do slot `2` e mostre seu nome.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 515. First

- **ID:** `list.number.first`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Obtém o primeiro item em uma lista de number. Use para selecione a primeira missão da fila.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** O primeiro item ou valor vazio. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `First` e use a saída para selecione a primeira missão da fila.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 516. Last

- **ID:** `list.number.last`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Obtém o último item em uma lista de number. Use para recupere o checkpoint mais recente.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** O último item ou valor vazio. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Last` e use a saída para recupere o checkpoint mais recente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 517. Remove

- **ID:** `list.number.remove`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Remove a primeira ocorrência de um valor em uma lista de number. Use para remova a chave usada do inventário.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** A lista sem o item e um booleano de sucesso. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Remove` e use a saída para remova a chave usada do inventário.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 518. Remove At

- **ID:** `list.number.remove_at`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Remove o item de um índice em uma lista de number. Use para exclua o slot `1` da barra rápida.
- **Entradas/alvo:** `list` e `index`.
- **Saídas/efeito:** A lista sem aquela posição. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Remove At` e use a saída para exclua o slot `1` da barra rápida.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 519. Clear

- **ID:** `list.number.clear`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Remove todos os itens em uma lista de number. Use para limpe inimigos rastreados ao trocar de fase.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** A mesma lista vazia. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Clear` e use a saída para limpe inimigos rastreados ao trocar de fase.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 520. Contains

- **ID:** `list.number.contains`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Verifica se um valor existe em uma lista de number. Use para use Branch para permitir uma porta somente se houver uma chave.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** `true` ou `false`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Contains` e use a saída para use Branch para permitir uma porta somente se houver uma chave.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 521. Index Of

- **ID:** `list.number.index_of`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Procura a primeira posição de um valor em uma lista de number. Use para localize a primeira poção no inventário.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** Índice ou `-1`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Index Of` e use a saída para localize a primeira poção no inventário.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 522. Last Index Of

- **ID:** `list.number.last_index_of`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Procura a última posição de um valor em uma lista de number. Use para localize o último checkpoint repetido.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** Índice ou `-1`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Last Index Of` e use a saída para localize o último checkpoint repetido.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 523. Count

- **ID:** `list.number.count`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Conta os itens em uma lista de number. Use para atualize `Itens: 8` na interface.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Quantidade inteira. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Count` e use a saída para atualize `Itens: 8` na interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 524. Is Empty

- **ID:** `list.number.is_empty`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Verifica se não há itens em uma lista de number. Use para encerre a onda quando a lista de inimigos ficar vazia.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** `true` quando a lista está vazia. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Is Empty` e use a saída para encerre a onda quando a lista de inimigos ficar vazia.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 525. Reverse

- **ID:** `list.number.reverse`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Inverte a ordem em uma lista de number. Use para mostre o histórico do mais recente ao mais antigo.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Lista em ordem inversa. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Reverse` e use a saída para mostre o histórico do mais recente ao mais antigo.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 526. Shuffle

- **ID:** `list.number.shuffle`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Embaralha a ordem em uma lista de number. Use para embaralhe cartas antes de distribuí-las.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Lista embaralhada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Shuffle` e use a saída para embaralhe cartas antes de distribuí-las.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 527. Sort

- **ID:** `list.number.sort`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Ordena os valores em uma lista de number. Use para ordene pontuações antes do placar.
- **Entradas/alvo:** `list` e direção opcional.
- **Saídas/efeito:** Lista ordenada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Sort` e use a saída para ordene pontuações antes do placar.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 528. Distinct

- **ID:** `list.number.distinct`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Remove valores duplicados em uma lista de number. Use para elimine IDs de alvos repetidos.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Lista apenas com valores únicos. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Distinct` e use a saída para elimine IDs de alvos repetidos.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 529. Slice

- **ID:** `list.number.slice`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Recorta um intervalo em uma lista de number. Use para mostre somente os primeiros dez resultados.
- **Entradas/alvo:** `list`, `start` e `length`.
- **Saídas/efeito:** Uma nova sublista. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Slice` e use a saída para mostre somente os primeiros dez resultados.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 530. Concat

- **ID:** `list.number.concat`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Une duas listas em uma lista de number. Use para junte inventário normal e itens temporários.
- **Entradas/alvo:** `list` e `other`.
- **Saídas/efeito:** Uma lista com ambas em sequência. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Concat` e use a saída para junte inventário normal e itens temporários.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 531. Filter

- **ID:** `list.number.filter`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Mantém itens aprovados por uma condição em uma lista de number. Use para mantenha somente inimigos ainda vivos.
- **Entradas/alvo:** `list` e condição/filtro.
- **Saídas/efeito:** Lista filtrada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Filter` e use a saída para mantenha somente inimigos ainda vivos.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 532. Map

- **ID:** `list.number.map`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Transforma cada item em uma lista de number. Use para converta pontuações numéricas para textos.
- **Entradas/alvo:** `list` e transformação.
- **Saídas/efeito:** Nova lista transformada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Map` e use a saída para converta pontuações numéricas para textos.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 533. Reduce

- **ID:** `list.number.reduce`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Combina todos os itens em um resultado em uma lista de number. Use para some todos os danos para obter o dano total.
- **Entradas/alvo:** `list`, valor inicial e operação.
- **Saídas/efeito:** Valor acumulado. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Reduce` e use a saída para some todos os danos para obter o dano total.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 534. Random

- **ID:** `list.number.random`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Escolhe um item aleatório em uma lista de number. Use para escolha aleatoriamente um ponto de spawn.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Um item da lista. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de number, conecte-a a `Random` e use a saída para escolha aleatoriamente um ponto de spawn.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 535. Create

- **ID:** `list.text.create`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Cria uma lista vazia em uma lista de text. Use para use a saída como inventário inicial.
- **Entradas/alvo:** Nenhuma entrada.
- **Saídas/efeito:** Uma nova lista vazia. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Create` e use a saída para use a saída como inventário inicial.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 536. Add

- **ID:** `list.text.add`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Adiciona um item ao final em uma lista de text. Use para adicione uma moeda coletada ao inventário.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** A lista com o novo item. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Add` e use a saída para adicione uma moeda coletada ao inventário.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 537. Insert

- **ID:** `list.text.insert`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Insere um item em uma posição em uma lista de text. Use para insira uma missão no topo usando índice `0`.
- **Entradas/alvo:** `list`, `index` e `value`.
- **Saídas/efeito:** A lista com o item inserido. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Insert` e use a saída para insira uma missão no topo usando índice `0`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 538. Set

- **ID:** `list.text.set`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Substitui o item de uma posição em uma lista de text. Use para troque o item do slot selecionado.
- **Entradas/alvo:** `list`, `index` e `value`.
- **Saídas/efeito:** A lista atualizada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Set` e use a saída para troque o item do slot selecionado.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 539. Get

- **ID:** `list.text.get`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Obtém o item de uma posição em uma lista de text. Use para leia o item do slot `2` e mostre seu nome.
- **Entradas/alvo:** `list` e `index`.
- **Saídas/efeito:** O item encontrado em `value`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Get` e use a saída para leia o item do slot `2` e mostre seu nome.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 540. First

- **ID:** `list.text.first`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Obtém o primeiro item em uma lista de text. Use para selecione a primeira missão da fila.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** O primeiro item ou valor vazio. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `First` e use a saída para selecione a primeira missão da fila.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 541. Last

- **ID:** `list.text.last`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Obtém o último item em uma lista de text. Use para recupere o checkpoint mais recente.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** O último item ou valor vazio. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Last` e use a saída para recupere o checkpoint mais recente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 542. Remove

- **ID:** `list.text.remove`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Remove a primeira ocorrência de um valor em uma lista de text. Use para remova a chave usada do inventário.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** A lista sem o item e um booleano de sucesso. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Remove` e use a saída para remova a chave usada do inventário.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 543. Remove At

- **ID:** `list.text.remove_at`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Remove o item de um índice em uma lista de text. Use para exclua o slot `1` da barra rápida.
- **Entradas/alvo:** `list` e `index`.
- **Saídas/efeito:** A lista sem aquela posição. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Remove At` e use a saída para exclua o slot `1` da barra rápida.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 544. Clear

- **ID:** `list.text.clear`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Remove todos os itens em uma lista de text. Use para limpe inimigos rastreados ao trocar de fase.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** A mesma lista vazia. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Clear` e use a saída para limpe inimigos rastreados ao trocar de fase.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 545. Contains

- **ID:** `list.text.contains`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Verifica se um valor existe em uma lista de text. Use para use Branch para permitir uma porta somente se houver uma chave.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** `true` ou `false`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Contains` e use a saída para use Branch para permitir uma porta somente se houver uma chave.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 546. Index Of

- **ID:** `list.text.index_of`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Procura a primeira posição de um valor em uma lista de text. Use para localize a primeira poção no inventário.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** Índice ou `-1`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Index Of` e use a saída para localize a primeira poção no inventário.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 547. Last Index Of

- **ID:** `list.text.last_index_of`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Procura a última posição de um valor em uma lista de text. Use para localize o último checkpoint repetido.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** Índice ou `-1`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Last Index Of` e use a saída para localize o último checkpoint repetido.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 548. Count

- **ID:** `list.text.count`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Conta os itens em uma lista de text. Use para atualize `Itens: 8` na interface.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Quantidade inteira. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Count` e use a saída para atualize `Itens: 8` na interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 549. Is Empty

- **ID:** `list.text.is_empty`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Verifica se não há itens em uma lista de text. Use para encerre a onda quando a lista de inimigos ficar vazia.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** `true` quando a lista está vazia. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Is Empty` e use a saída para encerre a onda quando a lista de inimigos ficar vazia.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 550. Reverse

- **ID:** `list.text.reverse`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Inverte a ordem em uma lista de text. Use para mostre o histórico do mais recente ao mais antigo.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Lista em ordem inversa. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Reverse` e use a saída para mostre o histórico do mais recente ao mais antigo.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 551. Shuffle

- **ID:** `list.text.shuffle`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Embaralha a ordem em uma lista de text. Use para embaralhe cartas antes de distribuí-las.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Lista embaralhada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Shuffle` e use a saída para embaralhe cartas antes de distribuí-las.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 552. Sort

- **ID:** `list.text.sort`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Ordena os valores em uma lista de text. Use para ordene pontuações antes do placar.
- **Entradas/alvo:** `list` e direção opcional.
- **Saídas/efeito:** Lista ordenada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Sort` e use a saída para ordene pontuações antes do placar.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 553. Distinct

- **ID:** `list.text.distinct`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Remove valores duplicados em uma lista de text. Use para elimine IDs de alvos repetidos.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Lista apenas com valores únicos. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Distinct` e use a saída para elimine IDs de alvos repetidos.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 554. Slice

- **ID:** `list.text.slice`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Recorta um intervalo em uma lista de text. Use para mostre somente os primeiros dez resultados.
- **Entradas/alvo:** `list`, `start` e `length`.
- **Saídas/efeito:** Uma nova sublista. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Slice` e use a saída para mostre somente os primeiros dez resultados.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 555. Concat

- **ID:** `list.text.concat`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Une duas listas em uma lista de text. Use para junte inventário normal e itens temporários.
- **Entradas/alvo:** `list` e `other`.
- **Saídas/efeito:** Uma lista com ambas em sequência. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Concat` e use a saída para junte inventário normal e itens temporários.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 556. Filter

- **ID:** `list.text.filter`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Mantém itens aprovados por uma condição em uma lista de text. Use para mantenha somente inimigos ainda vivos.
- **Entradas/alvo:** `list` e condição/filtro.
- **Saídas/efeito:** Lista filtrada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Filter` e use a saída para mantenha somente inimigos ainda vivos.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 557. Map

- **ID:** `list.text.map`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Transforma cada item em uma lista de text. Use para converta pontuações numéricas para textos.
- **Entradas/alvo:** `list` e transformação.
- **Saídas/efeito:** Nova lista transformada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Map` e use a saída para converta pontuações numéricas para textos.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 558. Reduce

- **ID:** `list.text.reduce`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Combina todos os itens em um resultado em uma lista de text. Use para some todos os danos para obter o dano total.
- **Entradas/alvo:** `list`, valor inicial e operação.
- **Saídas/efeito:** Valor acumulado. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Reduce` e use a saída para some todos os danos para obter o dano total.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 559. Random

- **ID:** `list.text.random`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Escolhe um item aleatório em uma lista de text. Use para escolha aleatoriamente um ponto de spawn.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Um item da lista. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de text, conecte-a a `Random` e use a saída para escolha aleatoriamente um ponto de spawn.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 560. Create

- **ID:** `list.bool.create`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Cria uma lista vazia em uma lista de bool. Use para use a saída como inventário inicial.
- **Entradas/alvo:** Nenhuma entrada.
- **Saídas/efeito:** Uma nova lista vazia. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Create` e use a saída para use a saída como inventário inicial.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 561. Add

- **ID:** `list.bool.add`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Adiciona um item ao final em uma lista de bool. Use para adicione uma moeda coletada ao inventário.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** A lista com o novo item. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Add` e use a saída para adicione uma moeda coletada ao inventário.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 562. Insert

- **ID:** `list.bool.insert`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Insere um item em uma posição em uma lista de bool. Use para insira uma missão no topo usando índice `0`.
- **Entradas/alvo:** `list`, `index` e `value`.
- **Saídas/efeito:** A lista com o item inserido. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Insert` e use a saída para insira uma missão no topo usando índice `0`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 563. Set

- **ID:** `list.bool.set`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Substitui o item de uma posição em uma lista de bool. Use para troque o item do slot selecionado.
- **Entradas/alvo:** `list`, `index` e `value`.
- **Saídas/efeito:** A lista atualizada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Set` e use a saída para troque o item do slot selecionado.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 564. Get

- **ID:** `list.bool.get`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Obtém o item de uma posição em uma lista de bool. Use para leia o item do slot `2` e mostre seu nome.
- **Entradas/alvo:** `list` e `index`.
- **Saídas/efeito:** O item encontrado em `value`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Get` e use a saída para leia o item do slot `2` e mostre seu nome.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 565. First

- **ID:** `list.bool.first`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Obtém o primeiro item em uma lista de bool. Use para selecione a primeira missão da fila.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** O primeiro item ou valor vazio. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `First` e use a saída para selecione a primeira missão da fila.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 566. Last

- **ID:** `list.bool.last`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Obtém o último item em uma lista de bool. Use para recupere o checkpoint mais recente.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** O último item ou valor vazio. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Last` e use a saída para recupere o checkpoint mais recente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 567. Remove

- **ID:** `list.bool.remove`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Remove a primeira ocorrência de um valor em uma lista de bool. Use para remova a chave usada do inventário.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** A lista sem o item e um booleano de sucesso. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Remove` e use a saída para remova a chave usada do inventário.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 568. Remove At

- **ID:** `list.bool.remove_at`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Remove o item de um índice em uma lista de bool. Use para exclua o slot `1` da barra rápida.
- **Entradas/alvo:** `list` e `index`.
- **Saídas/efeito:** A lista sem aquela posição. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Remove At` e use a saída para exclua o slot `1` da barra rápida.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 569. Clear

- **ID:** `list.bool.clear`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Remove todos os itens em uma lista de bool. Use para limpe inimigos rastreados ao trocar de fase.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** A mesma lista vazia. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Clear` e use a saída para limpe inimigos rastreados ao trocar de fase.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 570. Contains

- **ID:** `list.bool.contains`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Verifica se um valor existe em uma lista de bool. Use para use Branch para permitir uma porta somente se houver uma chave.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** `true` ou `false`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Contains` e use a saída para use Branch para permitir uma porta somente se houver uma chave.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 571. Index Of

- **ID:** `list.bool.index_of`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Procura a primeira posição de um valor em uma lista de bool. Use para localize a primeira poção no inventário.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** Índice ou `-1`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Index Of` e use a saída para localize a primeira poção no inventário.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 572. Last Index Of

- **ID:** `list.bool.last_index_of`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Procura a última posição de um valor em uma lista de bool. Use para localize o último checkpoint repetido.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** Índice ou `-1`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Last Index Of` e use a saída para localize o último checkpoint repetido.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 573. Count

- **ID:** `list.bool.count`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Conta os itens em uma lista de bool. Use para atualize `Itens: 8` na interface.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Quantidade inteira. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Count` e use a saída para atualize `Itens: 8` na interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 574. Is Empty

- **ID:** `list.bool.is_empty`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Verifica se não há itens em uma lista de bool. Use para encerre a onda quando a lista de inimigos ficar vazia.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** `true` quando a lista está vazia. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Is Empty` e use a saída para encerre a onda quando a lista de inimigos ficar vazia.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 575. Reverse

- **ID:** `list.bool.reverse`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Inverte a ordem em uma lista de bool. Use para mostre o histórico do mais recente ao mais antigo.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Lista em ordem inversa. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Reverse` e use a saída para mostre o histórico do mais recente ao mais antigo.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 576. Shuffle

- **ID:** `list.bool.shuffle`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Embaralha a ordem em uma lista de bool. Use para embaralhe cartas antes de distribuí-las.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Lista embaralhada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Shuffle` e use a saída para embaralhe cartas antes de distribuí-las.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 577. Sort

- **ID:** `list.bool.sort`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Ordena os valores em uma lista de bool. Use para ordene pontuações antes do placar.
- **Entradas/alvo:** `list` e direção opcional.
- **Saídas/efeito:** Lista ordenada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Sort` e use a saída para ordene pontuações antes do placar.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 578. Distinct

- **ID:** `list.bool.distinct`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Remove valores duplicados em uma lista de bool. Use para elimine IDs de alvos repetidos.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Lista apenas com valores únicos. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Distinct` e use a saída para elimine IDs de alvos repetidos.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 579. Slice

- **ID:** `list.bool.slice`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Recorta um intervalo em uma lista de bool. Use para mostre somente os primeiros dez resultados.
- **Entradas/alvo:** `list`, `start` e `length`.
- **Saídas/efeito:** Uma nova sublista. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Slice` e use a saída para mostre somente os primeiros dez resultados.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 580. Concat

- **ID:** `list.bool.concat`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Une duas listas em uma lista de bool. Use para junte inventário normal e itens temporários.
- **Entradas/alvo:** `list` e `other`.
- **Saídas/efeito:** Uma lista com ambas em sequência. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Concat` e use a saída para junte inventário normal e itens temporários.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 581. Filter

- **ID:** `list.bool.filter`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Mantém itens aprovados por uma condição em uma lista de bool. Use para mantenha somente inimigos ainda vivos.
- **Entradas/alvo:** `list` e condição/filtro.
- **Saídas/efeito:** Lista filtrada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Filter` e use a saída para mantenha somente inimigos ainda vivos.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 582. Map

- **ID:** `list.bool.map`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Transforma cada item em uma lista de bool. Use para converta pontuações numéricas para textos.
- **Entradas/alvo:** `list` e transformação.
- **Saídas/efeito:** Nova lista transformada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Map` e use a saída para converta pontuações numéricas para textos.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 583. Reduce

- **ID:** `list.bool.reduce`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Combina todos os itens em um resultado em uma lista de bool. Use para some todos os danos para obter o dano total.
- **Entradas/alvo:** `list`, valor inicial e operação.
- **Saídas/efeito:** Valor acumulado. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Reduce` e use a saída para some todos os danos para obter o dano total.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 584. Random

- **ID:** `list.bool.random`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Escolhe um item aleatório em uma lista de bool. Use para escolha aleatoriamente um ponto de spawn.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Um item da lista. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de bool, conecte-a a `Random` e use a saída para escolha aleatoriamente um ponto de spawn.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 585. Create

- **ID:** `list.vector3.create`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Cria uma lista vazia em uma lista de vector3. Use para use a saída como inventário inicial.
- **Entradas/alvo:** Nenhuma entrada.
- **Saídas/efeito:** Uma nova lista vazia. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Create` e use a saída para use a saída como inventário inicial.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 586. Add

- **ID:** `list.vector3.add`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Adiciona um item ao final em uma lista de vector3. Use para adicione uma moeda coletada ao inventário.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** A lista com o novo item. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Add` e use a saída para adicione uma moeda coletada ao inventário.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 587. Insert

- **ID:** `list.vector3.insert`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Insere um item em uma posição em uma lista de vector3. Use para insira uma missão no topo usando índice `0`.
- **Entradas/alvo:** `list`, `index` e `value`.
- **Saídas/efeito:** A lista com o item inserido. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Insert` e use a saída para insira uma missão no topo usando índice `0`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 588. Set

- **ID:** `list.vector3.set`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Substitui o item de uma posição em uma lista de vector3. Use para troque o item do slot selecionado.
- **Entradas/alvo:** `list`, `index` e `value`.
- **Saídas/efeito:** A lista atualizada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Set` e use a saída para troque o item do slot selecionado.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 589. Get

- **ID:** `list.vector3.get`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Obtém o item de uma posição em uma lista de vector3. Use para leia o item do slot `2` e mostre seu nome.
- **Entradas/alvo:** `list` e `index`.
- **Saídas/efeito:** O item encontrado em `value`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Get` e use a saída para leia o item do slot `2` e mostre seu nome.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 590. First

- **ID:** `list.vector3.first`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Obtém o primeiro item em uma lista de vector3. Use para selecione a primeira missão da fila.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** O primeiro item ou valor vazio. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `First` e use a saída para selecione a primeira missão da fila.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 591. Last

- **ID:** `list.vector3.last`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Obtém o último item em uma lista de vector3. Use para recupere o checkpoint mais recente.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** O último item ou valor vazio. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Last` e use a saída para recupere o checkpoint mais recente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 592. Remove

- **ID:** `list.vector3.remove`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Remove a primeira ocorrência de um valor em uma lista de vector3. Use para remova a chave usada do inventário.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** A lista sem o item e um booleano de sucesso. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Remove` e use a saída para remova a chave usada do inventário.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 593. Remove At

- **ID:** `list.vector3.remove_at`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Remove o item de um índice em uma lista de vector3. Use para exclua o slot `1` da barra rápida.
- **Entradas/alvo:** `list` e `index`.
- **Saídas/efeito:** A lista sem aquela posição. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Remove At` e use a saída para exclua o slot `1` da barra rápida.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 594. Clear

- **ID:** `list.vector3.clear`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Remove todos os itens em uma lista de vector3. Use para limpe inimigos rastreados ao trocar de fase.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** A mesma lista vazia. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Clear` e use a saída para limpe inimigos rastreados ao trocar de fase.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 595. Contains

- **ID:** `list.vector3.contains`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Verifica se um valor existe em uma lista de vector3. Use para use Branch para permitir uma porta somente se houver uma chave.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** `true` ou `false`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Contains` e use a saída para use Branch para permitir uma porta somente se houver uma chave.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 596. Index Of

- **ID:** `list.vector3.index_of`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Procura a primeira posição de um valor em uma lista de vector3. Use para localize a primeira poção no inventário.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** Índice ou `-1`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Index Of` e use a saída para localize a primeira poção no inventário.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 597. Last Index Of

- **ID:** `list.vector3.last_index_of`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Procura a última posição de um valor em uma lista de vector3. Use para localize o último checkpoint repetido.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** Índice ou `-1`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Last Index Of` e use a saída para localize o último checkpoint repetido.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 598. Count

- **ID:** `list.vector3.count`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Conta os itens em uma lista de vector3. Use para atualize `Itens: 8` na interface.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Quantidade inteira. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Count` e use a saída para atualize `Itens: 8` na interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 599. Is Empty

- **ID:** `list.vector3.is_empty`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Verifica se não há itens em uma lista de vector3. Use para encerre a onda quando a lista de inimigos ficar vazia.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** `true` quando a lista está vazia. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Is Empty` e use a saída para encerre a onda quando a lista de inimigos ficar vazia.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 600. Reverse

- **ID:** `list.vector3.reverse`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Inverte a ordem em uma lista de vector3. Use para mostre o histórico do mais recente ao mais antigo.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Lista em ordem inversa. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Reverse` e use a saída para mostre o histórico do mais recente ao mais antigo.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 601. Shuffle

- **ID:** `list.vector3.shuffle`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Embaralha a ordem em uma lista de vector3. Use para embaralhe cartas antes de distribuí-las.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Lista embaralhada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Shuffle` e use a saída para embaralhe cartas antes de distribuí-las.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 602. Sort

- **ID:** `list.vector3.sort`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Ordena os valores em uma lista de vector3. Use para ordene pontuações antes do placar.
- **Entradas/alvo:** `list` e direção opcional.
- **Saídas/efeito:** Lista ordenada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Sort` e use a saída para ordene pontuações antes do placar.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 603. Distinct

- **ID:** `list.vector3.distinct`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Remove valores duplicados em uma lista de vector3. Use para elimine IDs de alvos repetidos.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Lista apenas com valores únicos. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Distinct` e use a saída para elimine IDs de alvos repetidos.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 604. Slice

- **ID:** `list.vector3.slice`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Recorta um intervalo em uma lista de vector3. Use para mostre somente os primeiros dez resultados.
- **Entradas/alvo:** `list`, `start` e `length`.
- **Saídas/efeito:** Uma nova sublista. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Slice` e use a saída para mostre somente os primeiros dez resultados.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 605. Concat

- **ID:** `list.vector3.concat`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Une duas listas em uma lista de vector3. Use para junte inventário normal e itens temporários.
- **Entradas/alvo:** `list` e `other`.
- **Saídas/efeito:** Uma lista com ambas em sequência. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Concat` e use a saída para junte inventário normal e itens temporários.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 606. Filter

- **ID:** `list.vector3.filter`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Mantém itens aprovados por uma condição em uma lista de vector3. Use para mantenha somente inimigos ainda vivos.
- **Entradas/alvo:** `list` e condição/filtro.
- **Saídas/efeito:** Lista filtrada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Filter` e use a saída para mantenha somente inimigos ainda vivos.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 607. Map

- **ID:** `list.vector3.map`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Transforma cada item em uma lista de vector3. Use para converta pontuações numéricas para textos.
- **Entradas/alvo:** `list` e transformação.
- **Saídas/efeito:** Nova lista transformada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Map` e use a saída para converta pontuações numéricas para textos.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 608. Reduce

- **ID:** `list.vector3.reduce`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Combina todos os itens em um resultado em uma lista de vector3. Use para some todos os danos para obter o dano total.
- **Entradas/alvo:** `list`, valor inicial e operação.
- **Saídas/efeito:** Valor acumulado. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Reduce` e use a saída para some todos os danos para obter o dano total.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 609. Random

- **ID:** `list.vector3.random`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Escolhe um item aleatório em uma lista de vector3. Use para escolha aleatoriamente um ponto de spawn.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Um item da lista. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de vector3, conecte-a a `Random` e use a saída para escolha aleatoriamente um ponto de spawn.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 610. Create

- **ID:** `list.object.create`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Cria uma lista vazia em uma lista de object. Use para use a saída como inventário inicial.
- **Entradas/alvo:** Nenhuma entrada.
- **Saídas/efeito:** Uma nova lista vazia. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Create` e use a saída para use a saída como inventário inicial.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 611. Add

- **ID:** `list.object.add`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Adiciona um item ao final em uma lista de object. Use para adicione uma moeda coletada ao inventário.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** A lista com o novo item. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Add` e use a saída para adicione uma moeda coletada ao inventário.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 612. Insert

- **ID:** `list.object.insert`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Insere um item em uma posição em uma lista de object. Use para insira uma missão no topo usando índice `0`.
- **Entradas/alvo:** `list`, `index` e `value`.
- **Saídas/efeito:** A lista com o item inserido. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Insert` e use a saída para insira uma missão no topo usando índice `0`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 613. Set

- **ID:** `list.object.set`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Substitui o item de uma posição em uma lista de object. Use para troque o item do slot selecionado.
- **Entradas/alvo:** `list`, `index` e `value`.
- **Saídas/efeito:** A lista atualizada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Set` e use a saída para troque o item do slot selecionado.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 614. Get

- **ID:** `list.object.get`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Obtém o item de uma posição em uma lista de object. Use para leia o item do slot `2` e mostre seu nome.
- **Entradas/alvo:** `list` e `index`.
- **Saídas/efeito:** O item encontrado em `value`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Get` e use a saída para leia o item do slot `2` e mostre seu nome.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 615. First

- **ID:** `list.object.first`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Obtém o primeiro item em uma lista de object. Use para selecione a primeira missão da fila.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** O primeiro item ou valor vazio. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `First` e use a saída para selecione a primeira missão da fila.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 616. Last

- **ID:** `list.object.last`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Obtém o último item em uma lista de object. Use para recupere o checkpoint mais recente.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** O último item ou valor vazio. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Last` e use a saída para recupere o checkpoint mais recente.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 617. Remove

- **ID:** `list.object.remove`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Remove a primeira ocorrência de um valor em uma lista de object. Use para remova a chave usada do inventário.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** A lista sem o item e um booleano de sucesso. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Remove` e use a saída para remova a chave usada do inventário.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 618. Remove At

- **ID:** `list.object.remove_at`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Remove o item de um índice em uma lista de object. Use para exclua o slot `1` da barra rápida.
- **Entradas/alvo:** `list` e `index`.
- **Saídas/efeito:** A lista sem aquela posição. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Remove At` e use a saída para exclua o slot `1` da barra rápida.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 619. Clear

- **ID:** `list.object.clear`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Remove todos os itens em uma lista de object. Use para limpe inimigos rastreados ao trocar de fase.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** A mesma lista vazia. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Clear` e use a saída para limpe inimigos rastreados ao trocar de fase.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 620. Contains

- **ID:** `list.object.contains`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Verifica se um valor existe em uma lista de object. Use para use Branch para permitir uma porta somente se houver uma chave.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** `true` ou `false`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Contains` e use a saída para use Branch para permitir uma porta somente se houver uma chave.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 621. Index Of

- **ID:** `list.object.index_of`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Procura a primeira posição de um valor em uma lista de object. Use para localize a primeira poção no inventário.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** Índice ou `-1`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Index Of` e use a saída para localize a primeira poção no inventário.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 622. Last Index Of

- **ID:** `list.object.last_index_of`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Procura a última posição de um valor em uma lista de object. Use para localize o último checkpoint repetido.
- **Entradas/alvo:** `list` e `value`.
- **Saídas/efeito:** Índice ou `-1`. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Last Index Of` e use a saída para localize o último checkpoint repetido.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 623. Count

- **ID:** `list.object.count`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Conta os itens em uma lista de object. Use para atualize `Itens: 8` na interface.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Quantidade inteira. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Count` e use a saída para atualize `Itens: 8` na interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 624. Is Empty

- **ID:** `list.object.is_empty`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Verifica se não há itens em uma lista de object. Use para encerre a onda quando a lista de inimigos ficar vazia.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** `true` quando a lista está vazia. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Is Empty` e use a saída para encerre a onda quando a lista de inimigos ficar vazia.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 625. Reverse

- **ID:** `list.object.reverse`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Inverte a ordem em uma lista de object. Use para mostre o histórico do mais recente ao mais antigo.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Lista em ordem inversa. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Reverse` e use a saída para mostre o histórico do mais recente ao mais antigo.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 626. Shuffle

- **ID:** `list.object.shuffle`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Embaralha a ordem em uma lista de object. Use para embaralhe cartas antes de distribuí-las.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Lista embaralhada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Shuffle` e use a saída para embaralhe cartas antes de distribuí-las.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 627. Sort

- **ID:** `list.object.sort`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Ordena os valores em uma lista de object. Use para ordene pontuações antes do placar.
- **Entradas/alvo:** `list` e direção opcional.
- **Saídas/efeito:** Lista ordenada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Sort` e use a saída para ordene pontuações antes do placar.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 628. Distinct

- **ID:** `list.object.distinct`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Remove valores duplicados em uma lista de object. Use para elimine IDs de alvos repetidos.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Lista apenas com valores únicos. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Distinct` e use a saída para elimine IDs de alvos repetidos.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 629. Slice

- **ID:** `list.object.slice`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Recorta um intervalo em uma lista de object. Use para mostre somente os primeiros dez resultados.
- **Entradas/alvo:** `list`, `start` e `length`.
- **Saídas/efeito:** Uma nova sublista. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Slice` e use a saída para mostre somente os primeiros dez resultados.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 630. Concat

- **ID:** `list.object.concat`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Une duas listas em uma lista de object. Use para junte inventário normal e itens temporários.
- **Entradas/alvo:** `list` e `other`.
- **Saídas/efeito:** Uma lista com ambas em sequência. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Concat` e use a saída para junte inventário normal e itens temporários.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 631. Filter

- **ID:** `list.object.filter`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Mantém itens aprovados por uma condição em uma lista de object. Use para mantenha somente inimigos ainda vivos.
- **Entradas/alvo:** `list` e condição/filtro.
- **Saídas/efeito:** Lista filtrada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Filter` e use a saída para mantenha somente inimigos ainda vivos.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 632. Map

- **ID:** `list.object.map`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Transforma cada item em uma lista de object. Use para converta pontuações numéricas para textos.
- **Entradas/alvo:** `list` e transformação.
- **Saídas/efeito:** Nova lista transformada. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Map` e use a saída para converta pontuações numéricas para textos.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 633. Reduce

- **ID:** `list.object.reduce`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Combina todos os itens em um resultado em uma lista de object. Use para some todos os danos para obter o dano total.
- **Entradas/alvo:** `list`, valor inicial e operação.
- **Saídas/efeito:** Valor acumulado. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Reduce` e use a saída para some todos os danos para obter o dano total.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 634. Random

- **ID:** `list.object.random`
- **Categoria:** Listas
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Escolhe um item aleatório em uma lista de object. Use para escolha aleatoriamente um ponto de spawn.
- **Entradas/alvo:** `list`.
- **Saídas/efeito:** Um item da lista. A lista de entrada permanece disponível para outras conexões.
- **Exemplo:** Mecânica: crie ou carregue a lista de object, conecte-a a `Random` e use a saída para escolha aleatoriamente um ponto de spawn.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 635. Get

- **ID:** `transform.position.get`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a position de um `Node2D`/`Node3D`: lê o valor atual. Use para mostre a posição do jogador no HUD.
- **Entradas/alvo:** Somente `target_path`. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Lê o valor atual e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Get`, alvo `../Player`; conecte a entrada descrita acima e use a saída para mostre a posição do jogador no HUD.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 636. Set

- **ID:** `transform.position.set`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a position de um `Node2D`/`Node3D`: substitui o valor atual. Use para teleporte o jogador para um ponto definido.
- **Entradas/alvo:** `target_path` e `value` com a nova position. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Substitui o valor atual e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Set`, alvo `../Player`; conecte a entrada descrita acima e use a saída para teleporte o jogador para um ponto definido.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 637. Add

- **ID:** `transform.position.add`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a position de um `Node2D`/`Node3D`: soma o deslocamento. Use para mova uma plataforma 2 metros para cima.
- **Entradas/alvo:** `target_path` e `value` a somar à position. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Soma o deslocamento e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Add`, alvo `../Player`; conecte a entrada descrita acima e use a saída para mova uma plataforma 2 metros para cima.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 638. Subtract

- **ID:** `transform.position.subtract`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a position de um `Node2D`/`Node3D`: subtrai o deslocamento. Use para afaste um objeto do ponto atual.
- **Entradas/alvo:** `target_path` e `value` a subtrair da position. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Subtrai o deslocamento e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Subtract`, alvo `../Player`; conecte a entrada descrita acima e use a saída para afaste um objeto do ponto atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 639. Multiply

- **ID:** `transform.position.multiply`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a position de um `Node2D`/`Node3D`: multiplica cada componente. Use para dobre a escala de um item coletado.
- **Entradas/alvo:** `target_path` e `factor` para multiplicar a position. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Multiplica cada componente e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Multiply`, alvo `../Player`; conecte a entrada descrita acima e use a saída para dobre a escala de um item coletado.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 640. Lerp

- **ID:** `transform.position.lerp`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a position de um `Node2D`/`Node3D`: interpola entre valor atual e destino. Use para suavize a câmera até o ponto desejado.
- **Entradas/alvo:** `target_path`, `target_value` e `weight` entre 0 e 1. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Interpola entre valor atual e destino e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Lerp`, alvo `../Player`; conecte a entrada descrita acima e use a saída para suavize a câmera até o ponto desejado.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 641. Move Towards

- **ID:** `transform.position.move_towards`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a position de um `Node2D`/`Node3D`: aproxima sem ultrapassar o destino. Use para mova uma plataforma até a parada.
- **Entradas/alvo:** `target_path`, `target_value` e `delta` máximo. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Aproxima sem ultrapassar o destino e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Move Towards`, alvo `../Player`; conecte a entrada descrita acima e use a saída para mova uma plataforma até a parada.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 642. Local To World

- **ID:** `transform.position.local_to_world`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a position de um `Node2D`/`Node3D`: converte para coordenada global. Use para descubra onde fica o cano da arma no mundo.
- **Entradas/alvo:** `target_path` e coordenada local em `value`. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Converte para coordenada global e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Local To World`, alvo `../Player`; conecte a entrada descrita acima e use a saída para descubra onde fica o cano da arma no mundo.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 643. World To Local

- **ID:** `transform.position.world_to_local`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a position de um `Node2D`/`Node3D`: converte para o espaço local. Use para converta o ponto atingido para coordenadas do objeto.
- **Entradas/alvo:** `target_path` e coordenada global em `value`. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Converte para o espaço local e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → World To Local`, alvo `../Player`; conecte a entrada descrita acima e use a saída para converta o ponto atingido para coordenadas do objeto.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 644. Reset

- **ID:** `transform.position.reset`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a position de um `Node2D`/`Node3D`: restaura posição/rotação para zero ou escala para um. Use para reinicie a transformação após respawn.
- **Entradas/alvo:** Somente `target_path`. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Restaura posição/rotação para zero ou escala para um e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Reset`, alvo `../Player`; conecte a entrada descrita acima e use a saída para reinicie a transformação após respawn.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 645. Look At

- **ID:** `transform.position.look_at`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a position de um `Node2D`/`Node3D`: gira para olhar o ponto. Use para faça uma torre mirar no jogador.
- **Entradas/alvo:** `target_path`, ponto global `target` e eixo superior opcional. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Gira para olhar o ponto e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Look At`, alvo `../Player`; conecte a entrada descrita acima e use a saída para faça uma torre mirar no jogador.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 646. Face Direction

- **ID:** `transform.position.face_direction`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a position de um `Node2D`/`Node3D`: gira para a direção informada. Use para vire o personagem para o sentido do movimento.
- **Entradas/alvo:** `target_path` e vetor `direction`. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Gira para a direção informada e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Face Direction`, alvo `../Player`; conecte a entrada descrita acima e use a saída para vire o personagem para o sentido do movimento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 647. Get

- **ID:** `transform.rotation.get`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a rotation de um `Node2D`/`Node3D`: lê o valor atual. Use para mostre a posição do jogador no HUD.
- **Entradas/alvo:** Somente `target_path`. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Lê o valor atual e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Get`, alvo `../Player`; conecte a entrada descrita acima e use a saída para mostre a posição do jogador no HUD.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 648. Set

- **ID:** `transform.rotation.set`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a rotation de um `Node2D`/`Node3D`: substitui o valor atual. Use para teleporte o jogador para um ponto definido.
- **Entradas/alvo:** `target_path` e `value` com a nova rotation. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Substitui o valor atual e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Set`, alvo `../Player`; conecte a entrada descrita acima e use a saída para teleporte o jogador para um ponto definido.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 649. Add

- **ID:** `transform.rotation.add`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a rotation de um `Node2D`/`Node3D`: soma o deslocamento. Use para mova uma plataforma 2 metros para cima.
- **Entradas/alvo:** `target_path` e `value` a somar à rotation. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Soma o deslocamento e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Add`, alvo `../Player`; conecte a entrada descrita acima e use a saída para mova uma plataforma 2 metros para cima.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 650. Subtract

- **ID:** `transform.rotation.subtract`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a rotation de um `Node2D`/`Node3D`: subtrai o deslocamento. Use para afaste um objeto do ponto atual.
- **Entradas/alvo:** `target_path` e `value` a subtrair da rotation. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Subtrai o deslocamento e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Subtract`, alvo `../Player`; conecte a entrada descrita acima e use a saída para afaste um objeto do ponto atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 651. Multiply

- **ID:** `transform.rotation.multiply`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a rotation de um `Node2D`/`Node3D`: multiplica cada componente. Use para dobre a escala de um item coletado.
- **Entradas/alvo:** `target_path` e `factor` para multiplicar a rotation. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Multiplica cada componente e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Multiply`, alvo `../Player`; conecte a entrada descrita acima e use a saída para dobre a escala de um item coletado.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 652. Lerp

- **ID:** `transform.rotation.lerp`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a rotation de um `Node2D`/`Node3D`: interpola entre valor atual e destino. Use para suavize a câmera até o ponto desejado.
- **Entradas/alvo:** `target_path`, `target_value` e `weight` entre 0 e 1. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Interpola entre valor atual e destino e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Lerp`, alvo `../Player`; conecte a entrada descrita acima e use a saída para suavize a câmera até o ponto desejado.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 653. Move Towards

- **ID:** `transform.rotation.move_towards`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a rotation de um `Node2D`/`Node3D`: aproxima sem ultrapassar o destino. Use para mova uma plataforma até a parada.
- **Entradas/alvo:** `target_path`, `target_value` e `delta` máximo. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Aproxima sem ultrapassar o destino e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Move Towards`, alvo `../Player`; conecte a entrada descrita acima e use a saída para mova uma plataforma até a parada.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 654. Local To World

- **ID:** `transform.rotation.local_to_world`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a rotation de um `Node2D`/`Node3D`: converte para coordenada global. Use para descubra onde fica o cano da arma no mundo.
- **Entradas/alvo:** `target_path` e coordenada local em `value`. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Converte para coordenada global e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Local To World`, alvo `../Player`; conecte a entrada descrita acima e use a saída para descubra onde fica o cano da arma no mundo.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 655. World To Local

- **ID:** `transform.rotation.world_to_local`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a rotation de um `Node2D`/`Node3D`: converte para o espaço local. Use para converta o ponto atingido para coordenadas do objeto.
- **Entradas/alvo:** `target_path` e coordenada global em `value`. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Converte para o espaço local e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → World To Local`, alvo `../Player`; conecte a entrada descrita acima e use a saída para converta o ponto atingido para coordenadas do objeto.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 656. Reset

- **ID:** `transform.rotation.reset`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a rotation de um `Node2D`/`Node3D`: restaura posição/rotação para zero ou escala para um. Use para reinicie a transformação após respawn.
- **Entradas/alvo:** Somente `target_path`. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Restaura posição/rotação para zero ou escala para um e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Reset`, alvo `../Player`; conecte a entrada descrita acima e use a saída para reinicie a transformação após respawn.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 657. Look At

- **ID:** `transform.rotation.look_at`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a rotation de um `Node2D`/`Node3D`: gira para olhar o ponto. Use para faça uma torre mirar no jogador.
- **Entradas/alvo:** `target_path`, ponto global `target` e eixo superior opcional. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Gira para olhar o ponto e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Look At`, alvo `../Player`; conecte a entrada descrita acima e use a saída para faça uma torre mirar no jogador.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 658. Face Direction

- **ID:** `transform.rotation.face_direction`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a rotation de um `Node2D`/`Node3D`: gira para a direção informada. Use para vire o personagem para o sentido do movimento.
- **Entradas/alvo:** `target_path` e vetor `direction`. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Gira para a direção informada e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Face Direction`, alvo `../Player`; conecte a entrada descrita acima e use a saída para vire o personagem para o sentido do movimento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 659. Get

- **ID:** `transform.scale.get`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a scale de um `Node2D`/`Node3D`: lê o valor atual. Use para mostre a posição do jogador no HUD.
- **Entradas/alvo:** Somente `target_path`. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Lê o valor atual e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Get`, alvo `../Player`; conecte a entrada descrita acima e use a saída para mostre a posição do jogador no HUD.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 660. Set

- **ID:** `transform.scale.set`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a scale de um `Node2D`/`Node3D`: substitui o valor atual. Use para teleporte o jogador para um ponto definido.
- **Entradas/alvo:** `target_path` e `value` com a nova scale. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Substitui o valor atual e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Set`, alvo `../Player`; conecte a entrada descrita acima e use a saída para teleporte o jogador para um ponto definido.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 661. Add

- **ID:** `transform.scale.add`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a scale de um `Node2D`/`Node3D`: soma o deslocamento. Use para mova uma plataforma 2 metros para cima.
- **Entradas/alvo:** `target_path` e `value` a somar à scale. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Soma o deslocamento e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Add`, alvo `../Player`; conecte a entrada descrita acima e use a saída para mova uma plataforma 2 metros para cima.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 662. Subtract

- **ID:** `transform.scale.subtract`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a scale de um `Node2D`/`Node3D`: subtrai o deslocamento. Use para afaste um objeto do ponto atual.
- **Entradas/alvo:** `target_path` e `value` a subtrair da scale. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Subtrai o deslocamento e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Subtract`, alvo `../Player`; conecte a entrada descrita acima e use a saída para afaste um objeto do ponto atual.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 663. Multiply

- **ID:** `transform.scale.multiply`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a scale de um `Node2D`/`Node3D`: multiplica cada componente. Use para dobre a escala de um item coletado.
- **Entradas/alvo:** `target_path` e `factor` para multiplicar a scale. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Multiplica cada componente e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Multiply`, alvo `../Player`; conecte a entrada descrita acima e use a saída para dobre a escala de um item coletado.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 664. Lerp

- **ID:** `transform.scale.lerp`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a scale de um `Node2D`/`Node3D`: interpola entre valor atual e destino. Use para suavize a câmera até o ponto desejado.
- **Entradas/alvo:** `target_path`, `target_value` e `weight` entre 0 e 1. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Interpola entre valor atual e destino e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Lerp`, alvo `../Player`; conecte a entrada descrita acima e use a saída para suavize a câmera até o ponto desejado.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 665. Move Towards

- **ID:** `transform.scale.move_towards`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a scale de um `Node2D`/`Node3D`: aproxima sem ultrapassar o destino. Use para mova uma plataforma até a parada.
- **Entradas/alvo:** `target_path`, `target_value` e `delta` máximo. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Aproxima sem ultrapassar o destino e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Move Towards`, alvo `../Player`; conecte a entrada descrita acima e use a saída para mova uma plataforma até a parada.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 666. Local To World

- **ID:** `transform.scale.local_to_world`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a scale de um `Node2D`/`Node3D`: converte para coordenada global. Use para descubra onde fica o cano da arma no mundo.
- **Entradas/alvo:** `target_path` e coordenada local em `value`. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Converte para coordenada global e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Local To World`, alvo `../Player`; conecte a entrada descrita acima e use a saída para descubra onde fica o cano da arma no mundo.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 667. World To Local

- **ID:** `transform.scale.world_to_local`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a scale de um `Node2D`/`Node3D`: converte para o espaço local. Use para converta o ponto atingido para coordenadas do objeto.
- **Entradas/alvo:** `target_path` e coordenada global em `value`. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Converte para o espaço local e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → World To Local`, alvo `../Player`; conecte a entrada descrita acima e use a saída para converta o ponto atingido para coordenadas do objeto.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 668. Reset

- **ID:** `transform.scale.reset`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a scale de um `Node2D`/`Node3D`: restaura posição/rotação para zero ou escala para um. Use para reinicie a transformação após respawn.
- **Entradas/alvo:** Somente `target_path`. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Restaura posição/rotação para zero ou escala para um e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Reset`, alvo `../Player`; conecte a entrada descrita acima e use a saída para reinicie a transformação após respawn.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 669. Look At

- **ID:** `transform.scale.look_at`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a scale de um `Node2D`/`Node3D`: gira para olhar o ponto. Use para faça uma torre mirar no jogador.
- **Entradas/alvo:** `target_path`, ponto global `target` e eixo superior opcional. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Gira para olhar o ponto e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Look At`, alvo `../Player`; conecte a entrada descrita acima e use a saída para faça uma torre mirar no jogador.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 670. Face Direction

- **ID:** `transform.scale.face_direction`
- **Categoria:** Transform
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Manipula a scale de um `Node2D`/`Node3D`: gira para a direção informada. Use para vire o personagem para o sentido do movimento.
- **Entradas/alvo:** `target_path` e vetor `direction`. O caminho é relativo ao `MGSNoCodeRunner`.
- **Saídas/efeito:** Gira para a direção informada e fornece a saída `flow`; operações de conversão/leitura também retornam o vetor em `value`.
- **Exemplo:** Mecânica: `Update → Face Direction`, alvo `../Player`; conecte a entrada descrita acima e use a saída para vire o personagem para o sentido do movimento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Aplica uma força contínua ao corpo; use em atualizações de física para aceleração sustentada.
- **Entradas/alvo:** `target_path`: `RigidBody3D`; `force`: `Vector3`; `position` local é opcional.
- **Saídas/efeito:** Altera a velocidade física ao longo do tempo e emite `flow`.
- **Exemplo:** Empurre uma caixa: `Button Pressed → Add Force`, força `Vector3(0, 0, -40)`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 674. Add Impulse

- **ID:** `physics.add_impulse`
- **Categoria:** Fisica
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Aplica um impulso instantâneo ao corpo, ideal para impactos, explosões ou saltos físicos.
- **Entradas/alvo:** `target_path`: `RigidBody3D`; `impulse`: `Vector3`; `position` é opcional.
- **Saídas/efeito:** Muda imediatamente a velocidade linear e emite `flow`.
- **Exemplo:** Explosão: `Collision Enter → Add Impulse`, impulso calculado por `Direction × 12`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 675. Add Torque

- **ID:** `physics.add_torque`
- **Categoria:** Fisica
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Aplica força de rotação contínua a um corpo físico.
- **Entradas/alvo:** `target_path`: `RigidBody3D`; `torque`: `Vector3` por eixo.
- **Saídas/efeito:** Acelera a rotação do corpo e emite `flow`.
- **Exemplo:** Gire uma hélice: `Fixed Update → Add Torque`, torque `Vector3(0, 8, 0)`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 676. Set Velocity

- **ID:** `physics.set_velocity`
- **Categoria:** Fisica
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define a velocidade linear do corpo em unidades por segundo.
- **Entradas/alvo:** `target_path`: corpo físico compatível; `value`: `Vector3(x, y, z)`.
- **Saídas/efeito:** Substitui a velocidade atual e emite `flow`.
- **Exemplo:** Lance um projétil: `Created → Set Velocity`, valor `Forward × 25`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 677. Get Velocity

- **ID:** `physics.get_velocity`
- **Categoria:** Fisica
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Lê a velocidade linear atual do corpo.
- **Entradas/alvo:** `target_path`: corpo físico compatível.
- **Saídas/efeito:** Retorna a velocidade como `Vector3` em `value`.
- **Exemplo:** Velocímetro: `Update → Get Velocity → Vector Length → UI Set Text`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 678. Set Angular Velocity

- **ID:** `physics.set_angular_velocity`
- **Categoria:** Fisica
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define diretamente a velocidade de rotação de um corpo físico nos eixos X, Y e Z, em radianos por segundo.
- **Entradas/alvo:** `target_path`: `RigidBody3D`; `value`: `Vector3` com a rotação por eixo.
- **Saídas/efeito:** Atualiza `angular_velocity` e continua pelo pino `flow`.
- **Exemplo:** Faça uma plataforma girar: `Start → Set Angular Velocity`, alvo `../Plataforma`, valor `Vector3(0, 1.5, 0)` para girar no eixo Y.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 679. Get Angular Velocity

- **ID:** `physics.get_angular_velocity`
- **Categoria:** Fisica
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Lê a velocidade de rotação atual de um corpo físico nos eixos X, Y e Z.
- **Entradas/alvo:** `target_path`: `RigidBody3D` que será consultado.
- **Saídas/efeito:** Retorna um `Vector3` em `value`; não altera o corpo.
- **Exemplo:** Exiba a rotação de uma roda: `Update → Get Angular Velocity → Vector Length → UI Set Text`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 680. Set Mass

- **ID:** `physics.set_mass`
- **Categoria:** Fisica
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `mass` no sistema de física 3D do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de mass, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza mass no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Mass`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 681. Get Mass

- **ID:** `physics.get_mass`
- **Categoria:** Fisica
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Consulta `mass` no sistema de física 3D sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna mass em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Mass → UI Set Text` mostra mass no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 682. Set Gravity

- **ID:** `physics.set_gravity`
- **Categoria:** Fisica
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `gravity` no sistema de física 3D do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de gravity, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza gravity no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Gravity`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 683. Use Gravity

- **ID:** `physics.use_gravity`
- **Categoria:** Fisica
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Use gravity no sistema de física 3D. Use este bloco quando a mecânica precisa aplicar `use gravity` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `use gravity` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `use gravity` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Use Gravity`, preencha `target_path` e `value` de `use gravity` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 684. Set Kinematic

- **ID:** `physics.set_kinematic`
- **Categoria:** Fisica
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `kinematic` no sistema de física 3D do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de kinematic, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza kinematic no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Kinematic`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 685. Freeze Position

- **ID:** `physics.freeze_position`
- **Categoria:** Fisica
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Freeze position no sistema de física 3D. Use este bloco quando a mecânica precisa aplicar `freeze position` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `freeze position` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `freeze position` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Freeze Position`, preencha `target_path` e `value` de `freeze position` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 686. Freeze Rotation

- **ID:** `physics.freeze_rotation`
- **Categoria:** Fisica
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Freeze rotation no sistema de física 3D. Use este bloco quando a mecânica precisa aplicar `freeze rotation` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `freeze rotation` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `freeze rotation` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Freeze Rotation`, preencha `target_path` e `value` de `freeze rotation` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 687. Raycast

- **ID:** `physics.raycast`
- **Categoria:** Fisica
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Dispara um raio entre dois pontos para detectar o primeiro collider atingido.
- **Entradas/alvo:** `origin`, `direction`, `distance` e máscara de colisão opcional.
- **Saídas/efeito:** Retorna acerto, objeto, posição e normal; não altera a cena.
- **Exemplo:** Tiro: `Button Pressed → Raycast`; se `hit`, conecte a `Object Send Event` no objeto atingido.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 688. Sphere Cast

- **ID:** `physics.sphere_cast`
- **Categoria:** Fisica
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Sphere cast no sistema de física 3D. Use este bloco quando a mecânica precisa aplicar `sphere cast` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `sphere cast` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `sphere cast` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Sphere Cast`, preencha `target_path` e `value` de `sphere cast` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 689. Box Cast

- **ID:** `physics.box_cast`
- **Categoria:** Fisica
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Box cast no sistema de física 3D. Use este bloco quando a mecânica precisa aplicar `box cast` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `box cast` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `box cast` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Box Cast`, preencha `target_path` e `value` de `box cast` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 690. Overlap Sphere

- **ID:** `physics.overlap_sphere`
- **Categoria:** Fisica
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Overlap sphere no sistema de física 3D. Use este bloco quando a mecânica precisa aplicar `overlap sphere` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `overlap sphere` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `overlap sphere` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Overlap Sphere`, preencha `target_path` e `value` de `overlap sphere` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 691. Overlap Box

- **ID:** `physics.overlap_box`
- **Categoria:** Fisica
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Overlap box no sistema de física 3D. Use este bloco quando a mecânica precisa aplicar `overlap box` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `overlap box` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `overlap box` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Overlap Box`, preencha `target_path` e `value` de `overlap box` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 692. Ignore Collision

- **ID:** `physics.ignore_collision`
- **Categoria:** Fisica
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Ignore collision no sistema de física 3D. Use este bloco quando a mecânica precisa aplicar `ignore collision` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `ignore collision` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `ignore collision` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Ignore Collision`, preencha `target_path` e `value` de `ignore collision` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 693. Set Friction

- **ID:** `physics.set_friction`
- **Categoria:** Fisica
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `friction` no sistema de física 3D do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de friction, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza friction no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Friction`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 694. Set Bounciness

- **ID:** `physics.set_bounciness`
- **Categoria:** Fisica
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `bounciness` no sistema de física 3D do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de bounciness, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza bounciness no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Bounciness`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 695. Wake Up

- **ID:** `physics.wake_up`
- **Categoria:** Fisica
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Acorda o corpo físico no sistema de física 3D. Use este bloco quando a mecânica precisa aplicar `wake up` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `wake up` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `wake up` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Wake Up`, preencha `target_path` e `value` de `wake up` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 696. Sleep

- **ID:** `physics.sleep`
- **Categoria:** Fisica
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Coloca o corpo físico em repouso no sistema de física 3D. Use este bloco quando a mecânica precisa aplicar `sleep` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `sleep` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `sleep` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Sleep`, preencha `target_path` e `value` de `sleep` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 697. Enter

- **ID:** `vehicle.enter`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Enter no sistema de veículo. Use este bloco quando a mecânica precisa aplicar `enter` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `enter` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `enter` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Enter`, preencha `target_path` e `value` de `enter` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 698. Exit

- **ID:** `vehicle.exit`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Exit no sistema de veículo. Use este bloco quando a mecânica precisa aplicar `exit` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `exit` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `exit` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Exit`, preencha `target_path` e `value` de `exit` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 699. Can Enter

- **ID:** `vehicle.can_enter`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Can enter no sistema de veículo. Use este bloco quando a mecânica precisa aplicar `can enter` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `can enter` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `can enter` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Can Enter`, preencha `target_path` e `value` de `can enter` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 700. Get Driver

- **ID:** `vehicle.get_driver`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Consulta `driver` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna driver em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Driver → UI Set Text` mostra driver no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 701. Open Door

- **ID:** `vehicle.open_door`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Abre a porta no sistema de veículo. Use este bloco quando a mecânica precisa aplicar `open door` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` da porta.
- **Saídas/efeito:** Executa `open door` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Open Door`, preencha `target_path` da porta e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 702. Close Door

- **ID:** `vehicle.close_door`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Fecha a porta no sistema de veículo. Use este bloco quando a mecânica precisa aplicar `close door` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` da porta.
- **Saídas/efeito:** Executa `close door` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Close Door`, preencha `target_path` da porta e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 703. Toggle Door

- **ID:** `vehicle.toggle_door`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Toggle door no sistema de veículo. Use este bloco quando a mecânica precisa aplicar `toggle door` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `toggle door` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `toggle door` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Toggle Door`, preencha `target_path` e `value` de `toggle door` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 704. Open Hood

- **ID:** `vehicle.open_hood`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Open hood no sistema de veículo. Use este bloco quando a mecânica precisa aplicar `open hood` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `open hood` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `open hood` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Open Hood`, preencha `target_path` e `value` de `open hood` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 705. Close Hood

- **ID:** `vehicle.close_hood`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Close hood no sistema de veículo. Use este bloco quando a mecânica precisa aplicar `close hood` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `close hood` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `close hood` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Close Hood`, preencha `target_path` e `value` de `close hood` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 706. Open Trunk

- **ID:** `vehicle.open_trunk`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Open trunk no sistema de veículo. Use este bloco quando a mecânica precisa aplicar `open trunk` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `open trunk` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `open trunk` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Open Trunk`, preencha `target_path` e `value` de `open trunk` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 707. Close Trunk

- **ID:** `vehicle.close_trunk`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Close trunk no sistema de veículo. Use este bloco quando a mecânica precisa aplicar `close trunk` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `close trunk` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `close trunk` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Close Trunk`, preencha `target_path` e `value` de `close trunk` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 708. Set Throttle

- **ID:** `vehicle.set_throttle`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `throttle` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de throttle, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza throttle no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Throttle`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 709. Get Throttle

- **ID:** `vehicle.get_throttle`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Consulta `throttle` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna throttle em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Throttle → UI Set Text` mostra throttle no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 710. Set Brake

- **ID:** `vehicle.set_brake`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `brake` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de brake, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza brake no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Brake`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 711. Get Brake

- **ID:** `vehicle.get_brake`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Consulta `brake` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna brake em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Brake → UI Set Text` mostra brake no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 712. Set Handbrake

- **ID:** `vehicle.set_handbrake`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `handbrake` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de handbrake, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza handbrake no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Handbrake`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 713. Set Steering

- **ID:** `vehicle.set_steering`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `steering` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de steering, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza steering no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Steering`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 714. Get Steering

- **ID:** `vehicle.get_steering`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Consulta `steering` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna steering em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Steering → UI Set Text` mostra steering no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 715. Shift Up

- **ID:** `vehicle.shift_up`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Aumenta a marcha no sistema de veículo. Use este bloco quando a mecânica precisa aplicar `shift up` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` do veículo.
- **Saídas/efeito:** Executa `shift up` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Shift Up`, preencha `target_path` do veículo e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 716. Shift Down

- **ID:** `vehicle.shift_down`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Reduz a marcha no sistema de veículo. Use este bloco quando a mecânica precisa aplicar `shift down` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` do veículo.
- **Saídas/efeito:** Executa `shift down` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Shift Down`, preencha `target_path` do veículo e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 717. Set Gear

- **ID:** `vehicle.set_gear`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `gear` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de gear, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza gear no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Gear`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 718. Get Gear

- **ID:** `vehicle.get_gear`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Consulta `gear` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna gear em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Gear → UI Set Text` mostra gear no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 719. Get Speed

- **ID:** `vehicle.get_speed`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Consulta `speed` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna speed em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Speed → UI Set Text` mostra speed no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 720. Get Rpm

- **ID:** `vehicle.get_rpm`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Consulta `rpm` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna rpm em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Rpm → UI Set Text` mostra rpm no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 721. Get Wheel Speed

- **ID:** `vehicle.get_wheel_speed`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Consulta `wheel speed` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna wheel speed em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Wheel Speed → UI Set Text` mostra wheel speed no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 722. Get Slip Ratio

- **ID:** `vehicle.get_slip_ratio`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Consulta `slip ratio` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna slip ratio em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Slip Ratio → UI Set Text` mostra slip ratio no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 723. Get Lateral Slip

- **ID:** `vehicle.get_lateral_slip`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Consulta `lateral slip` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna lateral slip em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Lateral Slip → UI Set Text` mostra lateral slip no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 724. Set Mass

- **ID:** `vehicle.set_mass`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `mass` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de mass, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza mass no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Mass`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 725. Set Engine Power

- **ID:** `vehicle.set_engine_power`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `engine power` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de engine power, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza engine power no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Engine Power`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 726. Set Max Torque

- **ID:** `vehicle.set_max_torque`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `max torque` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de max torque, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza max torque no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Max Torque`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 727. Set Redline Rpm

- **ID:** `vehicle.set_redline_rpm`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `redline rpm` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de redline rpm, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza redline rpm no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Redline Rpm`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 728. Set Top Speed

- **ID:** `vehicle.set_top_speed`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `top speed` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de top speed, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza top speed no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Top Speed`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 729. Set Drive Type

- **ID:** `vehicle.set_drive_type`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `drive type` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de drive type, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza drive type no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Drive Type`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 730. Set Gear Ratios

- **ID:** `vehicle.set_gear_ratios`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `gear ratios` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de gear ratios, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza gear ratios no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Gear Ratios`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 731. Set Final Drive

- **ID:** `vehicle.set_final_drive`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `final drive` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de final drive, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza final drive no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Final Drive`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 732. Set Drivetrain Efficiency

- **ID:** `vehicle.set_drivetrain_efficiency`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `drivetrain efficiency` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de drivetrain efficiency, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza drivetrain efficiency no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Drivetrain Efficiency`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 733. Set Tire Grip

- **ID:** `vehicle.set_tire_grip`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `tire grip` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de tire grip, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza tire grip no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Tire Grip`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 734. Set Lateral Grip

- **ID:** `vehicle.set_lateral_grip`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `lateral grip` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de lateral grip, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza lateral grip no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Lateral Grip`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 735. Set Traction Control

- **ID:** `vehicle.set_traction_control`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `traction control` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de traction control, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza traction control no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Traction Control`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 736. Set Abs

- **ID:** `vehicle.set_abs`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `abs` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de abs, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza abs no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Abs`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 737. Set Stability Assist

- **ID:** `vehicle.set_stability_assist`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `stability assist` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de stability assist, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza stability assist no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Stability Assist`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 738. Set Steering Angle

- **ID:** `vehicle.set_steering_angle`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `steering angle` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de steering angle, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza steering angle no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Steering Angle`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 739. Set Steering Response

- **ID:** `vehicle.set_steering_response`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `steering response` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de steering response, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza steering response no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Steering Response`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 740. Set Wheel Radius

- **ID:** `vehicle.set_wheel_radius`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `wheel radius` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de wheel radius, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza wheel radius no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Wheel Radius`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 741. Set Wheel Position

- **ID:** `vehicle.set_wheel_position`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `wheel position` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de wheel position, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza wheel position no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Wheel Position`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 742. Set Wheel Driven

- **ID:** `vehicle.set_wheel_driven`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `wheel driven` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de wheel driven, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza wheel driven no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Wheel Driven`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 743. Set Wheel Steerable

- **ID:** `vehicle.set_wheel_steerable`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `wheel steerable` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de wheel steerable, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza wheel steerable no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Wheel Steerable`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 744. Set Suspension Travel

- **ID:** `vehicle.set_suspension_travel`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `suspension travel` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de suspension travel, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza suspension travel no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Suspension Travel`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 745. Set Spring Strength

- **ID:** `vehicle.set_spring_strength`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `spring strength` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de spring strength, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza spring strength no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Spring Strength`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 746. Set Suspension Damping

- **ID:** `vehicle.set_suspension_damping`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `suspension damping` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de suspension damping, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza suspension damping no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Suspension Damping`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 747. Get Suspension Compression

- **ID:** `vehicle.get_suspension_compression`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Consulta `suspension compression` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna suspension compression em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Suspension Compression → UI Set Text` mostra suspension compression no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 748. Set Center Of Mass

- **ID:** `vehicle.set_center_of_mass`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `center of mass` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de center of mass, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza center of mass no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Center Of Mass`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 749. Set Downforce

- **ID:** `vehicle.set_downforce`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `downforce` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de downforce, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza downforce no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Downforce`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 750. Set Aero Drag

- **ID:** `vehicle.set_aero_drag`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `aero drag` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de aero drag, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza aero drag no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Aero Drag`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 751. Set Rolling Resistance

- **ID:** `vehicle.set_rolling_resistance`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `rolling resistance` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de rolling resistance, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza rolling resistance no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Rolling Resistance`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 752. Reset Upright

- **ID:** `vehicle.reset_upright`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Reset upright no sistema de veículo. Use este bloco quando a mecânica precisa aplicar `reset upright` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `reset upright` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `reset upright` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Reset Upright`, preencha `target_path` e `value` de `reset upright` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 753. Teleport

- **ID:** `vehicle.teleport`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Reposiciona imediatamente no sistema de veículo. Use este bloco quando a mecânica precisa aplicar `teleport` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path`, `position` e rotação opcional.
- **Saídas/efeito:** Executa `teleport` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Teleport`, preencha `target_path`, `position` e rotação opcional e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 754. Repair

- **ID:** `vehicle.repair`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Restaura no sistema de veículo. Use este bloco quando a mecânica precisa aplicar `repair` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `repair` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `repair` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Repair`, preencha `target_path` e `value` de `repair` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 755. Enable Collision

- **ID:** `vehicle.enable_collision`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Enable collision no sistema de veículo. Use este bloco quando a mecânica precisa aplicar `enable collision` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `enable collision` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `enable collision` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Enable Collision`, preencha `target_path` e `value` de `enable collision` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 756. Disable Collision

- **ID:** `vehicle.disable_collision`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Disable collision no sistema de veículo. Use este bloco quando a mecânica precisa aplicar `disable collision` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `disable collision` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `disable collision` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Disable Collision`, preencha `target_path` e `value` de `disable collision` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 757. On Collision

- **ID:** `vehicle.on_collision`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** On collision no sistema de veículo. Use este bloco quando a mecânica precisa aplicar `on collision` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `on collision` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `on collision` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `On Collision`, preencha `target_path` e `value` de `on collision` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 758. On Entered

- **ID:** `vehicle.on_entered`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** On entered no sistema de veículo. Use este bloco quando a mecânica precisa aplicar `on entered` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `on entered` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `on entered` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `On Entered`, preencha `target_path` e `value` de `on entered` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 759. On Exited

- **ID:** `vehicle.on_exited`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** On exited no sistema de veículo. Use este bloco quando a mecânica precisa aplicar `on exited` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `on exited` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `on exited` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `On Exited`, preencha `target_path` e `value` de `on exited` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 760. On Door Opened

- **ID:** `vehicle.on_door_opened`
- **Categoria:** Veiculo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** On door opened no sistema de veículo. Use este bloco quando a mecânica precisa aplicar `on door opened` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `on door opened` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `on door opened` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `On Door Opened`, preencha `target_path` e `value` de `on door opened` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 761. Play

- **ID:** `audio.play`
- **Categoria:** Audio
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Inicia a reprodução no sistema de áudio. Use este bloco quando a mecânica precisa aplicar `play` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e recurso/nome a reproduzir.
- **Saídas/efeito:** Executa `play` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Play`, preencha `target_path` e recurso/nome a reproduzir e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 762. Play 3D

- **ID:** `audio.play_3d`
- **Categoria:** Audio
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Play 3d no sistema de áudio. Use este bloco quando a mecânica precisa aplicar `play 3d` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `play 3d` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `play 3d` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Play 3D`, preencha `target_path` e `value` de `play 3d` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 763. Play Loop

- **ID:** `audio.play_loop`
- **Categoria:** Audio
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Play loop no sistema de áudio. Use este bloco quando a mecânica precisa aplicar `play loop` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `play loop` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `play loop` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Play Loop`, preencha `target_path` e `value` de `play loop` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 764. Play 3D Loop

- **ID:** `audio.play_3d_loop`
- **Categoria:** Audio
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Inicia um som espacial repetido em um `AudioStreamPlayer3D`. O áudio acompanha a posição do Node e perde volume conforme o ouvinte se afasta; use para motor, cachoeira, máquina ou ambiente contínuo no mundo.
- **Entradas/alvo:** `target_path`: `AudioStreamPlayer3D`; `stream`: áudio; `volume_db`; `min_distance` em metros com volume cheio; `max_distance` em metros para deixar de ouvir. O stream precisa repetir ou o bloco deve habilitar loop.
- **Saídas/efeito:** Inicia a reprodução em loop e libera `flow`. O som continua até `Stop`, remoção do player ou troca de cena.
- **Exemplo:** Motor de carro: crie `Car/EngineAudio` como `AudioStreamPlayer3D`; ligue `Vehicle Enter → Play 3D Loop`, alvo `../Car/EngineAudio`, mínimo `2 m`, máximo `40 m`; ligue `Vehicle Exit → Stop` no mesmo alvo.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 765. Pause

- **ID:** `audio.pause`
- **Categoria:** Audio
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Pausa no sistema de áudio. Use este bloco quando a mecânica precisa aplicar `pause` ao componente selecionado durante o jogo.
- **Entradas/alvo:** Somente `target_path`.
- **Saídas/efeito:** Executa `pause` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Pause`, preencha somente `target_path` e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 766. Resume

- **ID:** `audio.resume`
- **Categoria:** Audio
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Retoma no sistema de áudio. Use este bloco quando a mecânica precisa aplicar `resume` ao componente selecionado durante o jogo.
- **Entradas/alvo:** Somente `target_path`.
- **Saídas/efeito:** Executa `resume` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Resume`, preencha somente `target_path` e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 767. Stop

- **ID:** `audio.stop`
- **Categoria:** Audio
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Interrompe no sistema de áudio. Use este bloco quando a mecânica precisa aplicar `stop` ao componente selecionado durante o jogo.
- **Entradas/alvo:** Somente `target_path`.
- **Saídas/efeito:** Executa `stop` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Stop`, preencha somente `target_path` e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 768. Stop All

- **ID:** `audio.stop_all`
- **Categoria:** Audio
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Stop all no sistema de áudio. Use este bloco quando a mecânica precisa aplicar `stop all` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `stop all` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `stop all` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Stop All`, preencha `target_path` e `value` de `stop all` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 769. Set Volume

- **ID:** `audio.set_volume`
- **Categoria:** Audio
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `volume` no sistema de áudio do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de volume, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza volume no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Volume`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 770. Get Volume

- **ID:** `audio.get_volume`
- **Categoria:** Audio
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Consulta `volume` no sistema de áudio sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna volume em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Volume → UI Set Text` mostra volume no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 771. Fade In

- **ID:** `audio.fade_in`
- **Categoria:** Audio
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Fade in no sistema de áudio. Use este bloco quando a mecânica precisa aplicar `fade in` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path`, `duration` em segundos e volume final.
- **Saídas/efeito:** Executa `fade in` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Fade In`, preencha `target_path`, `duration` em segundos e volume final e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 772. Fade Out

- **ID:** `audio.fade_out`
- **Categoria:** Audio
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Fade out no sistema de áudio. Use este bloco quando a mecânica precisa aplicar `fade out` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `duration` em segundos.
- **Saídas/efeito:** Executa `fade out` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Fade Out`, preencha `target_path` e `duration` em segundos e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 773. Set Pitch

- **ID:** `audio.set_pitch`
- **Categoria:** Audio
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `pitch` no sistema de áudio do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de pitch, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza pitch no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Pitch`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 774. Get Pitch

- **ID:** `audio.get_pitch`
- **Categoria:** Audio
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Consulta `pitch` no sistema de áudio sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna pitch em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Pitch → UI Set Text` mostra pitch no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 775. Set Pan

- **ID:** `audio.set_pan`
- **Categoria:** Audio
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `pan` no sistema de áudio do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de pan, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza pan no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Pan`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 776. Set Spatial Blend

- **ID:** `audio.set_spatial_blend`
- **Categoria:** Audio
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `spatial blend` no sistema de áudio do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de spatial blend, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza spatial blend no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Spatial Blend`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 777. Set Min Distance

- **ID:** `audio.set_min_distance`
- **Categoria:** Audio
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `min distance` no sistema de áudio do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de min distance, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza min distance no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Min Distance`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 778. Set Max Distance

- **ID:** `audio.set_max_distance`
- **Categoria:** Audio
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `max distance` no sistema de áudio do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de max distance, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza max distance no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Max Distance`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 779. Is Playing

- **ID:** `audio.is_playing`
- **Categoria:** Audio
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Is playing no sistema de áudio. Use este bloco quando a mecânica precisa aplicar `is playing` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `is playing` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `is playing` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Is Playing`, preencha `target_path` e `value` de `is playing` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 780. Set Bus

- **ID:** `audio.set_bus`
- **Categoria:** Audio
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `bus` no sistema de áudio do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de bus, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza bus no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Bus`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 781. Play

- **ID:** `animation.play`
- **Categoria:** Animacao
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Inicia a reprodução no sistema de animação. Use este bloco quando a mecânica precisa aplicar `play` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e recurso/nome a reproduzir.
- **Saídas/efeito:** Executa `play` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Play`, preencha `target_path` e recurso/nome a reproduzir e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 782. Play Crossfade

- **ID:** `animation.play_crossfade`
- **Categoria:** Animacao
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Play crossfade no sistema de animação. Use este bloco quando a mecânica precisa aplicar `play crossfade` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `play crossfade` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `play crossfade` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Play Crossfade`, preencha `target_path` e `value` de `play crossfade` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 783. Pause

- **ID:** `animation.pause`
- **Categoria:** Animacao
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Pausa no sistema de animação. Use este bloco quando a mecânica precisa aplicar `pause` ao componente selecionado durante o jogo.
- **Entradas/alvo:** Somente `target_path`.
- **Saídas/efeito:** Executa `pause` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Pause`, preencha somente `target_path` e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 784. Resume

- **ID:** `animation.resume`
- **Categoria:** Animacao
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Retoma no sistema de animação. Use este bloco quando a mecânica precisa aplicar `resume` ao componente selecionado durante o jogo.
- **Entradas/alvo:** Somente `target_path`.
- **Saídas/efeito:** Executa `resume` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Resume`, preencha somente `target_path` e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 785. Stop

- **ID:** `animation.stop`
- **Categoria:** Animacao
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Interrompe no sistema de animação. Use este bloco quando a mecânica precisa aplicar `stop` ao componente selecionado durante o jogo.
- **Entradas/alvo:** Somente `target_path`.
- **Saídas/efeito:** Executa `stop` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Stop`, preencha somente `target_path` e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 786. Rewind

- **ID:** `animation.rewind`
- **Categoria:** Animacao
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Rewind no sistema de animação. Use este bloco quando a mecânica precisa aplicar `rewind` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `rewind` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `rewind` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Rewind`, preencha `target_path` e `value` de `rewind` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 787. Set Speed

- **ID:** `animation.set_speed`
- **Categoria:** Animacao
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `speed` no sistema de animação do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de speed, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza speed no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Speed`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 788. Get Speed

- **ID:** `animation.get_speed`
- **Categoria:** Animacao
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Consulta `speed` no sistema de animação sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna speed em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Speed → UI Set Text` mostra speed no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 789. Set Time

- **ID:** `animation.set_time`
- **Categoria:** Animacao
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `time` no sistema de animação do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de time, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza time no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Time`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 790. Get Time

- **ID:** `animation.get_time`
- **Categoria:** Animacao
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Consulta `time` no sistema de animação sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna time em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Time → UI Set Text` mostra time no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 791. Set Loop

- **ID:** `animation.set_loop`
- **Categoria:** Animacao
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `loop` no sistema de animação do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de loop, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza loop no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Loop`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 792. Is Playing

- **ID:** `animation.is_playing`
- **Categoria:** Animacao
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Is playing no sistema de animação. Use este bloco quando a mecânica precisa aplicar `is playing` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `is playing` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `is playing` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Is Playing`, preencha `target_path` e `value` de `is playing` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 793. Set Bool

- **ID:** `animation.set_bool`
- **Categoria:** Animacao
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `bool` no sistema de animação do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de bool, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza bool no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Bool`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 794. Set Number

- **ID:** `animation.set_number`
- **Categoria:** Animacao
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `number` no sistema de animação do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de number, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza number no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Number`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 795. Set Trigger

- **ID:** `animation.set_trigger`
- **Categoria:** Animacao
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `trigger` no sistema de animação do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de trigger, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza trigger no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Trigger`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 796. Reset Trigger

- **ID:** `animation.reset_trigger`
- **Categoria:** Animacao
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Reset trigger no sistema de animação. Use este bloco quando a mecânica precisa aplicar `reset trigger` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `reset trigger` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `reset trigger` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Reset Trigger`, preencha `target_path` e `value` de `reset trigger` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 797. Get State

- **ID:** `animation.get_state`
- **Categoria:** Animacao
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Consulta `state` no sistema de animação sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna state em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get State → UI Set Text` mostra state no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 798. Set Weight

- **ID:** `animation.set_weight`
- **Categoria:** Animacao
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `weight` no sistema de animação do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de weight, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza weight no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Weight`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 799. Blend

- **ID:** `animation.blend`
- **Categoria:** Animacao
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Blend no sistema de animação. Use este bloco quando a mecânica precisa aplicar `blend` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `blend` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `blend` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Blend`, preencha `target_path` e `value` de `blend` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 800. Play Additive

- **ID:** `animation.play_additive`
- **Categoria:** Animacao
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Play additive no sistema de animação. Use este bloco quando a mecânica precisa aplicar `play additive` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `play additive` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `play additive` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Play Additive`, preencha `target_path` e `value` de `play additive` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 801. Get

- **ID:** `material.get`
- **Categoria:** Material
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Get no sistema de material. Use este bloco quando a mecânica precisa aplicar `get` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `get` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `get` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Get`, preencha `target_path` e `value` de `get` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 802. Set

- **ID:** `material.set`
- **Categoria:** Material
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Set no sistema de material. Use este bloco quando a mecânica precisa aplicar `set` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `set` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `set` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Set`, preencha `target_path` e `value` de `set` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 803. Clone

- **ID:** `material.clone`
- **Categoria:** Material
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Duplica no sistema de material. Use este bloco quando a mecânica precisa aplicar `clone` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `parent_path` opcional.
- **Saídas/efeito:** Executa `clone` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Clone`, preencha `target_path` e `parent_path` opcional e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 804. Set Color

- **ID:** `material.set_color`
- **Categoria:** Material
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `color` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de color, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza color no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Color`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 805. Get Color

- **ID:** `material.get_color`
- **Categoria:** Material
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Consulta `color` no sistema de material sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna color em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Color → UI Set Text` mostra color no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 806. Set Number

- **ID:** `material.set_number`
- **Categoria:** Material
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `number` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de number, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza number no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Number`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 807. Get Number

- **ID:** `material.get_number`
- **Categoria:** Material
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Consulta `number` no sistema de material sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna number em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Number → UI Set Text` mostra number no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 808. Set Vector

- **ID:** `material.set_vector`
- **Categoria:** Material
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `vector` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de vector, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza vector no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Vector`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 809. Get Vector

- **ID:** `material.get_vector`
- **Categoria:** Material
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Consulta `vector` no sistema de material sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna vector em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Vector → UI Set Text` mostra vector no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 810. Set Texture

- **ID:** `material.set_texture`
- **Categoria:** Material
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `texture` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de texture, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza texture no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Texture`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 811. Get Texture

- **ID:** `material.get_texture`
- **Categoria:** Material
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Consulta `texture` no sistema de material sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna texture em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Texture → UI Set Text` mostra texture no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 812. Set Emission

- **ID:** `material.set_emission`
- **Categoria:** Material
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `emission` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de emission, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza emission no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Emission`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 813. Set Metallic

- **ID:** `material.set_metallic`
- **Categoria:** Material
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `metallic` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de metallic, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza metallic no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Metallic`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 814. Set Roughness

- **ID:** `material.set_roughness`
- **Categoria:** Material
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `roughness` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de roughness, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza roughness no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Roughness`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 815. Set Opacity

- **ID:** `material.set_opacity`
- **Categoria:** Material
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `opacity` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de opacity, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza opacity no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Opacity`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 816. Set Uv Offset

- **ID:** `material.set_uv_offset`
- **Categoria:** Material
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `uv offset` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de uv offset, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza uv offset no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Uv Offset`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 817. Set Uv Scale

- **ID:** `material.set_uv_scale`
- **Categoria:** Material
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `uv scale` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de uv scale, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza uv scale no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Uv Scale`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 818. Enable Keyword

- **ID:** `material.enable_keyword`
- **Categoria:** Material
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Enable keyword no sistema de material. Use este bloco quando a mecânica precisa aplicar `enable keyword` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `enable keyword` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `enable keyword` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Enable Keyword`, preencha `target_path` e `value` de `enable keyword` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 819. Disable Keyword

- **ID:** `material.disable_keyword`
- **Categoria:** Material
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Disable keyword no sistema de material. Use este bloco quando a mecânica precisa aplicar `disable keyword` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `disable keyword` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `disable keyword` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Disable Keyword`, preencha `target_path` e `value` de `disable keyword` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 820. Has Keyword

- **ID:** `material.has_keyword`
- **Categoria:** Material
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Has keyword no sistema de material. Use este bloco quando a mecânica precisa aplicar `has keyword` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `has keyword` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `has keyword` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Has Keyword`, preencha `target_path` e `value` de `has keyword` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 821. Show

- **ID:** `ui.show`
- **Categoria:** Interface
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Torna visível no sistema de interface. Use este bloco quando a mecânica precisa aplicar `show` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` do control/canvasitem.
- **Saídas/efeito:** Executa `show` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Show`, preencha `target_path` do Control/CanvasItem e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 822. Hide

- **ID:** `ui.hide`
- **Categoria:** Interface
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Oculta no sistema de interface. Use este bloco quando a mecânica precisa aplicar `hide` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` do control/canvasitem.
- **Saídas/efeito:** Executa `hide` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Hide`, preencha `target_path` do Control/CanvasItem e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 823. Toggle

- **ID:** `ui.toggle`
- **Categoria:** Interface
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Toggle no sistema de interface. Use este bloco quando a mecânica precisa aplicar `toggle` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `toggle` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `toggle` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Toggle`, preencha `target_path` e `value` de `toggle` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 824. Set Text

- **ID:** `ui.set_text`
- **Categoria:** Interface
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `text` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de text, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza text no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Text`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 825. Get Text

- **ID:** `ui.get_text`
- **Categoria:** Interface
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Consulta `text` no sistema de interface sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna text em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Text → UI Set Text` mostra text no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 826. Set Image

- **ID:** `ui.set_image`
- **Categoria:** Interface
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `image` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de image, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza image no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Image`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 827. Set Color

- **ID:** `ui.set_color`
- **Categoria:** Interface
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `color` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de color, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza color no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Color`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 828. Set Value

- **ID:** `ui.set_value`
- **Categoria:** Interface
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `value` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de value, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza value no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Value`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 829. Get Value

- **ID:** `ui.get_value`
- **Categoria:** Interface
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Consulta `value` no sistema de interface sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna value em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Value → UI Set Text` mostra value no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 830. Set Min

- **ID:** `ui.set_min`
- **Categoria:** Interface
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `min` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de min, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza min no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Min`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 831. Set Max

- **ID:** `ui.set_max`
- **Categoria:** Interface
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `max` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de max, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza max no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Max`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 832. Set Interactable

- **ID:** `ui.set_interactable`
- **Categoria:** Interface
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `interactable` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de interactable, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza interactable no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Interactable`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 833. Is Interactable

- **ID:** `ui.is_interactable`
- **Categoria:** Interface
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Is interactable no sistema de interface. Use este bloco quando a mecânica precisa aplicar `is interactable` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `is interactable` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `is interactable` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Is Interactable`, preencha `target_path` e `value` de `is interactable` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 834. Focus

- **ID:** `ui.focus`
- **Categoria:** Interface
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Move o foco no sistema de interface. Use este bloco quando a mecânica precisa aplicar `focus` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `focus` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `focus` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Focus`, preencha `target_path` e `value` de `focus` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 835. Unfocus

- **ID:** `ui.unfocus`
- **Categoria:** Interface
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Remove o foco no sistema de interface. Use este bloco quando a mecânica precisa aplicar `unfocus` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `unfocus` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `unfocus` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Unfocus`, preencha `target_path` e `value` de `unfocus` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 836. Set Position

- **ID:** `ui.set_position`
- **Categoria:** Interface
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `position` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de position, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza position no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Position`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 837. Set Size

- **ID:** `ui.set_size`
- **Categoria:** Interface
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `size` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de size, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza size no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Size`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 838. Set Anchor

- **ID:** `ui.set_anchor`
- **Categoria:** Interface
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `anchor` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de anchor, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza anchor no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Anchor`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 839. Set Progress

- **ID:** `ui.set_progress`
- **Categoria:** Interface
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `progress` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de progress, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza progress no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Progress`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 840. Animate Value

- **ID:** `ui.animate_value`
- **Categoria:** Interface
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Animate value no sistema de interface. Use este bloco quando a mecânica precisa aplicar `animate value` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `animate value` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `animate value` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Animate Value`, preencha `target_path` e `value` de `animate value` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 841. Toast

- **ID:** `ui.toast`
- **Categoria:** Interface
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Toast no sistema de interface. Use este bloco quando a mecânica precisa aplicar `toast` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `toast` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `toast` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Toast`, preencha `target_path` e `value` de `toast` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 842. Open Panel

- **ID:** `ui.open_panel`
- **Categoria:** Interface
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Open panel no sistema de interface. Use este bloco quando a mecânica precisa aplicar `open panel` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `open panel` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `open panel` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Open Panel`, preencha `target_path` e `value` de `open panel` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 843. Close Panel

- **ID:** `ui.close_panel`
- **Categoria:** Interface
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Close panel no sistema de interface. Use este bloco quando a mecânica precisa aplicar `close panel` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `close panel` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `close panel` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Close Panel`, preencha `target_path` e `value` de `close panel` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 844. Set Placeholder

- **ID:** `ui.set_placeholder`
- **Categoria:** Interface
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `placeholder` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de placeholder, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza placeholder no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Placeholder`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 845. Load

- **ID:** `world.load`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Carrega no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `load` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `scene_path` ou recurso a carregar.
- **Saídas/efeito:** Executa `load` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Load`, preencha `scene_path` ou recurso a carregar e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 846. Load Additive

- **ID:** `world.load_additive`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Load additive no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `load additive` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `load additive` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `load additive` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Load Additive`, preencha `target_path` e `value` de `load additive` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 847. Unload

- **ID:** `world.unload`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Descarrega no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `unload` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `scene_path`/identificador carregado.
- **Saídas/efeito:** Executa `unload` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Unload`, preencha `scene_path`/identificador carregado e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 848. Reload

- **ID:** `world.reload`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Recarrega no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `reload` ao componente selecionado durante o jogo.
- **Entradas/alvo:** Cena/mundo ativo.
- **Saídas/efeito:** Executa `reload` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Reload`, preencha cena/mundo ativo e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 849. Set Active

- **ID:** `world.set_active`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `active` no sistema de mundo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de active, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza active no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Active`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 850. Get Active

- **ID:** `world.get_active`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Consulta `active` no sistema de mundo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna active em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Active → UI Set Text` mostra active no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 851. Pause

- **ID:** `world.pause`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Pausa no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `pause` ao componente selecionado durante o jogo.
- **Entradas/alvo:** Somente `target_path`.
- **Saídas/efeito:** Executa `pause` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Pause`, preencha somente `target_path` e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 852. Resume

- **ID:** `world.resume`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Retoma no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `resume` ao componente selecionado durante o jogo.
- **Entradas/alvo:** Somente `target_path`.
- **Saídas/efeito:** Executa `resume` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Resume`, preencha somente `target_path` e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 853. Set Time Scale

- **ID:** `world.set_time_scale`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `time scale` no sistema de mundo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de time scale, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza time scale no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Time Scale`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 854. Get Time Scale

- **ID:** `world.get_time_scale`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Consulta `time scale` no sistema de mundo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: Node que será consultado.
- **Saídas/efeito:** Retorna time scale em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Time Scale → UI Set Text` mostra time scale no HUD; use `Number To Text` antes quando o retorno for numérico.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 855. Set Ambient Color

- **ID:** `world.set_ambient_color`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `ambient color` no sistema de mundo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de ambient color, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza ambient color no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Ambient Color`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 856. Set Skybox

- **ID:** `world.set_skybox`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `skybox` no sistema de mundo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de skybox, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza skybox no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Skybox`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 857. Set Fog

- **ID:** `world.set_fog`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `fog` no sistema de mundo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de fog, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza fog no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Fog`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 858. Set Gravity

- **ID:** `world.set_gravity`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Define `gravity` no sistema de mundo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de gravity, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza gravity no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Gravity`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 859. Find Spawn

- **ID:** `world.find_spawn`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Find spawn no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `find spawn` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `find spawn` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `find spawn` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Find Spawn`, preencha `target_path` e `value` de `find spawn` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 860. Spawn At

- **ID:** `world.spawn_at`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Spawn at no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `spawn at` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `spawn at` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `spawn at` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Spawn At`, preencha `target_path` e `value` de `spawn at` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 861. Destroy All

- **ID:** `world.destroy_all`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Destroy all no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `destroy all` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `destroy all` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `destroy all` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Destroy All`, preencha `target_path` e `value` de `destroy all` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 862. Preload

- **ID:** `world.preload`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Preload no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `preload` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `preload` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `preload` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Preload`, preencha `target_path` e `value` de `preload` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 863. Release

- **ID:** `world.release`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Release no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `release` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `release` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `release` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Release`, preencha `target_path` e `value` de `release` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 864. Quit

- **ID:** `world.quit`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Encerra o jogo no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `quit` ao componente selecionado durante o jogo.
- **Entradas/alvo:** Nenhuma entrada.
- **Saídas/efeito:** Executa `quit` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Quit`, preencha nenhuma entrada e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 865. Terrain Get Height

- **ID:** `world.terrain_get_height`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Terrain get height no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `terrain get height` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `terrain get height` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `terrain get height` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Terrain Get Height`, preencha `target_path` e `value` de `terrain get height` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 866. Terrain Set Height

- **ID:** `world.terrain_set_height`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Terrain set height no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `terrain set height` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `terrain set height` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `terrain set height` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Terrain Set Height`, preencha `target_path` e `value` de `terrain set height` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 867. Terrain Raise

- **ID:** `world.terrain_raise`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Terrain raise no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `terrain raise` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `terrain raise` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `terrain raise` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Terrain Raise`, preencha `target_path` e `value` de `terrain raise` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 868. Terrain Lower

- **ID:** `world.terrain_lower`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Terrain lower no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `terrain lower` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `terrain lower` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `terrain lower` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Terrain Lower`, preencha `target_path` e `value` de `terrain lower` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 869. Terrain Smooth

- **ID:** `world.terrain_smooth`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Terrain smooth no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `terrain smooth` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `terrain smooth` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `terrain smooth` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Terrain Smooth`, preencha `target_path` e `value` de `terrain smooth` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 870. Terrain Flatten

- **ID:** `world.terrain_flatten`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Terrain flatten no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `terrain flatten` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `terrain flatten` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `terrain flatten` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Terrain Flatten`, preencha `target_path` e `value` de `terrain flatten` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 871. Terrain Add Noise

- **ID:** `world.terrain_add_noise`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Terrain add noise no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `terrain add noise` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `terrain add noise` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `terrain add noise` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Terrain Add Noise`, preencha `target_path` e `value` de `terrain add noise` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 872. Terrain Paint Layer

- **ID:** `world.terrain_paint_layer`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Terrain paint layer no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `terrain paint layer` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `terrain paint layer` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `terrain paint layer` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Terrain Paint Layer`, preencha `target_path` e `value` de `terrain paint layer` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 873. Terrain Get Layer Weight

- **ID:** `world.terrain_get_layer_weight`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Terrain get layer weight no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `terrain get layer weight` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `terrain get layer weight` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `terrain get layer weight` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Terrain Get Layer Weight`, preencha `target_path` e `value` de `terrain get layer weight` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 874. Terrain Apply Auto Tile

- **ID:** `world.terrain_apply_auto_tile`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Terrain apply auto tile no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `terrain apply auto tile` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `terrain apply auto tile` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `terrain apply auto tile` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Terrain Apply Auto Tile`, preencha `target_path` e `value` de `terrain apply auto tile` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 875. Terrain Add Auto Tile Rule

- **ID:** `world.terrain_add_auto_tile_rule`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Terrain add auto tile rule no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `terrain add auto tile rule` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `terrain add auto tile rule` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `terrain add auto tile rule` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Terrain Add Auto Tile Rule`, preencha `target_path` e `value` de `terrain add auto tile rule` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 876. Terrain Remove Auto Tile Rule

- **ID:** `world.terrain_remove_auto_tile_rule`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Terrain remove auto tile rule no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `terrain remove auto tile rule` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `terrain remove auto tile rule` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `terrain remove auto tile rule` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Terrain Remove Auto Tile Rule`, preencha `target_path` e `value` de `terrain remove auto tile rule` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 877. Terrain Set Material

- **ID:** `world.terrain_set_material`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Terrain set material no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `terrain set material` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `terrain set material` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `terrain set material` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Terrain Set Material`, preencha `target_path` e `value` de `terrain set material` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 878. Terrain Set Texture Scale

- **ID:** `world.terrain_set_texture_scale`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Terrain set texture scale no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `terrain set texture scale` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `terrain set texture scale` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `terrain set texture scale` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Terrain Set Texture Scale`, preencha `target_path` e `value` de `terrain set texture scale` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 879. Terrain Set Texture Rotation

- **ID:** `world.terrain_set_texture_rotation`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Terrain set texture rotation no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `terrain set texture rotation` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `terrain set texture rotation` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `terrain set texture rotation` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Terrain Set Texture Rotation`, preencha `target_path` e `value` de `terrain set texture rotation` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 880. Terrain Set Texture Offset

- **ID:** `world.terrain_set_texture_offset`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Terrain set texture offset no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `terrain set texture offset` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `terrain set texture offset` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `terrain set texture offset` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Terrain Set Texture Offset`, preencha `target_path` e `value` de `terrain set texture offset` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 881. Terrain Set Roughness

- **ID:** `world.terrain_set_roughness`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Terrain set roughness no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `terrain set roughness` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `terrain set roughness` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `terrain set roughness` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Terrain Set Roughness`, preencha `target_path` e `value` de `terrain set roughness` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 882. Terrain Set Metallic

- **ID:** `world.terrain_set_metallic`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Terrain set metallic no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `terrain set metallic` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `terrain set metallic` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `terrain set metallic` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Terrain Set Metallic`, preencha `target_path` e `value` de `terrain set metallic` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 883. Terrain Import Heightmap

- **ID:** `world.terrain_import_heightmap`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Terrain import heightmap no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `terrain import heightmap` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `terrain import heightmap` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `terrain import heightmap` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Terrain Import Heightmap`, preencha `target_path` e `value` de `terrain import heightmap` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 884. Terrain Export Heightmap

- **ID:** `world.terrain_export_heightmap`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Terrain export heightmap no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `terrain export heightmap` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `terrain export heightmap` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `terrain export heightmap` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Terrain Export Heightmap`, preencha `target_path` e `value` de `terrain export heightmap` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 885. Terrain Generate Semi Arid

- **ID:** `world.terrain_generate_semi_arid`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Terrain generate semi arid no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `terrain generate semi arid` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `terrain generate semi arid` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `terrain generate semi arid` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Terrain Generate Semi Arid`, preencha `target_path` e `value` de `terrain generate semi arid` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 886. Terrain Scatter Tiles

- **ID:** `world.terrain_scatter_tiles`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Terrain scatter tiles no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `terrain scatter tiles` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `terrain scatter tiles` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `terrain scatter tiles` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Terrain Scatter Tiles`, preencha `target_path` e `value` de `terrain scatter tiles` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 887. Terrain Clear Tiles

- **ID:** `world.terrain_clear_tiles`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Terrain clear tiles no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `terrain clear tiles` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `terrain clear tiles` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `terrain clear tiles` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Terrain Clear Tiles`, preencha `target_path` e `value` de `terrain clear tiles` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 888. Character Set Camera First Person

- **ID:** `world.character_set_camera_first_person`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Character set camera first person no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `character set camera first person` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `character set camera first person` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `character set camera first person` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Character Set Camera First Person`, preencha `target_path` e `value` de `character set camera first person` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 889. Character Set Camera Third Person

- **ID:** `world.character_set_camera_third_person`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Character set camera third person no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `character set camera third person` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `character set camera third person` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `character set camera third person` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Character Set Camera Third Person`, preencha `target_path` e `value` de `character set camera third person` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 890. Character Set Camera Top Down

- **ID:** `world.character_set_camera_top_down`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Character set camera top down no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `character set camera top down` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `character set camera top down` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `character set camera top down` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Character Set Camera Top Down`, preencha `target_path` e `value` de `character set camera top down` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 891. Character Set Speed

- **ID:** `world.character_set_speed`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Character set speed no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `character set speed` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `character set speed` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `character set speed` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Character Set Speed`, preencha `target_path` e `value` de `character set speed` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Character set look sensitivity no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `character set look sensitivity` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `character set look sensitivity` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `character set look sensitivity` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Character Set Look Sensitivity`, preencha `target_path` e `value` de `character set look sensitivity` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 894. Joystick Get Axis

- **ID:** `world.joystick_get_axis`
- **Categoria:** Mundo
- **Status:** Implementado e executável no runner nativo
- **Finalidade:** Joystick get axis no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `joystick get axis` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `joystick get axis` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `joystick get axis` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Joystick Get Axis`, preencha `target_path` e `value` de `joystick get axis` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 895. Joystick Set Dead Zone

- **ID:** `world.joystick_set_dead_zone`
- **Categoria:** Mundo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Joystick set dead zone no sistema de mundo. Use este bloco quando a mecânica precisa aplicar `joystick set dead zone` ao componente selecionado durante o jogo.
- **Entradas/alvo:** `target_path` e `value` de `joystick set dead zone` com o tipo indicado no conector.
- **Saídas/efeito:** Executa `joystick set dead zone` no alvo e, após concluir, libera a saída `flow` para a próxima ação.
- **Exemplo:** Mecânica: conecte o evento que inicia a ação a `Joystick Set Dead Zone`, preencha `target_path` e `value` de `joystick set dead zone` com o tipo indicado no conector e use `flow` para atualizar a interface ou encadear o próximo comportamento.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `save` para um valor persistente do tipo bool no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_bool`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 899. Load

- **ID:** `save.bool.load`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `load` para um valor persistente do tipo bool no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_bool`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 900. Has

- **ID:** `save.bool.has`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `has` para um valor persistente do tipo bool no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_bool`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 901. Delete

- **ID:** `save.bool.delete`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `delete` para um valor persistente do tipo bool no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_bool`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 902. Save

- **ID:** `save.number.save`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `save` para um valor persistente do tipo number no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_number`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 903. Load

- **ID:** `save.number.load`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `load` para um valor persistente do tipo number no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_number`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 904. Has

- **ID:** `save.number.has`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `has` para um valor persistente do tipo number no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_number`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 905. Delete

- **ID:** `save.number.delete`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `delete` para um valor persistente do tipo number no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_number`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 906. Save

- **ID:** `save.integer.save`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `save` para um valor persistente do tipo integer no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_integer`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 907. Load

- **ID:** `save.integer.load`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `load` para um valor persistente do tipo integer no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_integer`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 908. Has

- **ID:** `save.integer.has`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `has` para um valor persistente do tipo integer no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_integer`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 909. Delete

- **ID:** `save.integer.delete`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `delete` para um valor persistente do tipo integer no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_integer`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 910. Save

- **ID:** `save.text.save`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `save` para um valor persistente do tipo text no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_text`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 911. Load

- **ID:** `save.text.load`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `load` para um valor persistente do tipo text no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_text`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 912. Has

- **ID:** `save.text.has`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `has` para um valor persistente do tipo text no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_text`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 913. Delete

- **ID:** `save.text.delete`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `delete` para um valor persistente do tipo text no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_text`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 914. Save

- **ID:** `save.vector2.save`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `save` para um valor persistente do tipo vector2 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector2`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 915. Load

- **ID:** `save.vector2.load`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `load` para um valor persistente do tipo vector2 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector2`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 916. Has

- **ID:** `save.vector2.has`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `has` para um valor persistente do tipo vector2 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector2`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 917. Delete

- **ID:** `save.vector2.delete`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `delete` para um valor persistente do tipo vector2 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector2`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 918. Save

- **ID:** `save.vector3.save`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `save` para um valor persistente do tipo vector3 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector3`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 919. Load

- **ID:** `save.vector3.load`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `load` para um valor persistente do tipo vector3 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector3`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 920. Has

- **ID:** `save.vector3.has`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `has` para um valor persistente do tipo vector3 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector3`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 921. Delete

- **ID:** `save.vector3.delete`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `delete` para um valor persistente do tipo vector3 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector3`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 922. Save

- **ID:** `save.color.save`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `save` para um valor persistente do tipo color no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_color`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 923. Load

- **ID:** `save.color.load`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `load` para um valor persistente do tipo color no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_color`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 924. Has

- **ID:** `save.color.has`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `has` para um valor persistente do tipo color no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_color`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 925. Delete

- **ID:** `save.color.delete`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `delete` para um valor persistente do tipo color no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_color`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 926. Save

- **ID:** `save.object_id.save`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `save` para um valor persistente do tipo object id no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_object id`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 927. Load

- **ID:** `save.object_id.load`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `load` para um valor persistente do tipo object id no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_object id`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 928. Has

- **ID:** `save.object_id.has`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `has` para um valor persistente do tipo object id no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_object id`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 929. Delete

- **ID:** `save.object_id.delete`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `delete` para um valor persistente do tipo object id no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_object id`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 930. Save

- **ID:** `save.list.save`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `save` para um valor persistente do tipo list no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_list`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 931. Load

- **ID:** `save.list.load`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `load` para um valor persistente do tipo list no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_list`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 932. Has

- **ID:** `save.list.has`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `has` para um valor persistente do tipo list no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_list`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 933. Delete

- **ID:** `save.list.delete`
- **Categoria:** Save Game
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Executa `delete` para um valor persistente do tipo list no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_list`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 934. Delta

- **ID:** `time.delta`
- **Categoria:** Tempo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Retorna tempo em segundos desde o quadro anterior. Use para multiplicar movimento por Delta para manter a mesma velocidade em aparelhos rápidos e lentos.
- **Entradas/alvo:** Não possui entrada nem alvo; lê o relógio interno da engine.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Update → Delta → Multiply (speed) → Transform Position Add`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 935. Fixed Delta

- **ID:** `time.fixed_delta`
- **Categoria:** Tempo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Retorna intervalo fixo, em segundos, usado pela atualização de física. Use para calcular forças e física sem depender da taxa de quadros.
- **Entradas/alvo:** Não possui entrada nem alvo; lê o relógio interno da engine.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Fixed Update → Fixed Delta → Multiply (acceleration) → Add Force`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 936. Elapsed

- **ID:** `time.elapsed`
- **Categoria:** Tempo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Retorna segundos transcorridos desde o início da execução. Use para criar animações, cronômetros ou dificuldade progressiva.
- **Entradas/alvo:** Não possui entrada nem alvo; lê o relógio interno da engine.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Update → Elapsed → Math Sin → Material Set Emission`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 937. Unscaled Elapsed

- **ID:** `time.unscaled_elapsed`
- **Categoria:** Tempo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Retorna tempo transcorrido ignorando pausa e escala de tempo. Use para animar menus e telas de pausa enquanto o jogo está congelado.
- **Entradas/alvo:** Não possui entrada nem alvo; lê o relógio interno da engine.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Update → Unscaled Elapsed → UI Animate Value`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 938. Frame

- **ID:** `time.frame`
- **Categoria:** Tempo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Retorna número do quadro atualmente processado. Use para executar amostragem ou tarefas a cada quantidade de quadros.
- **Entradas/alvo:** Não possui entrada nem alvo; lê o relógio interno da engine.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Update → Frame → Modulo (30) → Equal (0) → Branch`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 939. Fps

- **ID:** `time.fps`
- **Categoria:** Tempo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Retorna quantidade aproximada de quadros renderizados por segundo. Use para mostrar um contador de desempenho ou adaptar efeitos em aparelhos lentos.
- **Entradas/alvo:** Não possui entrada nem alvo; lê o relógio interno da engine.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Update → Fps → Number To Text → UI Set Text`, alvo `../HUD/FpsLabel`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 940. Timestamp

- **ID:** `time.timestamp`
- **Categoria:** Tempo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Retorna instante atual como timestamp Unix. Use para registrar quando um save, partida ou recompensa ocorreu.
- **Entradas/alvo:** Não possui entrada nem alvo; lê o relógio interno da engine.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Button Pressed → Timestamp → Save Integer`, chave `last_save_time`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 941. Date

- **ID:** `time.date`
- **Categoria:** Tempo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Retorna data atual do sistema já formatada. Use para mostrar a data local em saves ou telas de perfil.
- **Entradas/alvo:** Não possui entrada nem alvo; lê o relógio interno da engine.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Ready → Date → UI Set Text`, alvo `../HUD/DateLabel`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 942. Time

- **ID:** `time.time`
- **Categoria:** Tempo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Retorna horário local atual do sistema. Use para exibir relógio ou criar eventos dependentes do horário.
- **Entradas/alvo:** Não possui entrada nem alvo; lê o relógio interno da engine.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Timer Elapsed → Time → UI Set Text`, alvo `../HUD/ClockLabel`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 943. Timezone

- **ID:** `time.timezone`
- **Categoria:** Tempo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Retorna fuso horário informado pelo sistema. Use para normalizar datas de placar ou explicar o horário mostrado.
- **Entradas/alvo:** Não possui entrada nem alvo; lê o relógio interno da engine.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Ready → Timezone → Text Append → UI Set Text`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 944. Timer Start

- **ID:** `time.timer_start`
- **Categoria:** Tempo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Retorna inicia um temporizador identificado por nome. Use para criar cooldowns, contagens regressivas e eventos atrasados reutilizáveis.
- **Entradas/alvo:** Recebe `seconds`/`duration` ou o `timer_name` indicado no bloco; não usa `target_path`.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Button Pressed → Timer Start`, nome `dash_cooldown`, duração `2.0`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 945. Timer Pause

- **ID:** `time.timer_pause`
- **Categoria:** Tempo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Retorna pausa um temporizador ativo preservando o tempo restante. Use para congelar uma missão ou contagem sem reiniciá-la.
- **Entradas/alvo:** Recebe `seconds`/`duration` ou o `timer_name` indicado no bloco; não usa `target_path`.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Button Pressed (pause) → Timer Pause`, nome `mission`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 946. Timer Resume

- **ID:** `time.timer_resume`
- **Categoria:** Tempo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Retorna continua um temporizador anteriormente pausado. Use para retomar cooldowns e contagens.
- **Entradas/alvo:** Recebe `seconds`/`duration` ou o `timer_name` indicado no bloco; não usa `target_path`.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Button Pressed (resume) → Timer Resume`, nome `mission`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 947. Timer Stop

- **ID:** `time.timer_stop`
- **Categoria:** Tempo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Retorna cancela e remove um temporizador ativo. Use para cancelar uma ação carregada ou prazo de missão.
- **Entradas/alvo:** Recebe `seconds`/`duration` ou o `timer_name` indicado no bloco; não usa `target_path`.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Collision Exit → Timer Stop`, nome `capture_zone`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 948. Timer Remaining

- **ID:** `time.timer_remaining`
- **Categoria:** Tempo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Retorna consulta quantos segundos faltam em um temporizador. Use para atualizar uma barra ou texto de cooldown.
- **Entradas/alvo:** Recebe `seconds`/`duration` ou o `timer_name` indicado no bloco; não usa `target_path`.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Update → Timer Remaining (dash_cooldown) → UI Set Text`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 949. Timer Elapsed

- **ID:** `time.timer_elapsed`
- **Categoria:** Tempo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Retorna informa se um temporizador chegou ao fim. Use para liberar novamente uma habilidade ou concluir contagem.
- **Entradas/alvo:** Recebe `seconds`/`duration` ou o `timer_name` indicado no bloco; não usa `target_path`.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Update → Timer Elapsed (dash_cooldown) → Branch → UI Set Interactable`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 950. Format Duration

- **ID:** `time.format_duration`
- **Categoria:** Tempo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Retorna converte segundos para texto legível de duração. Use para mostrar `01:35` no lugar de `95.0` segundos.
- **Entradas/alvo:** Recebe `seconds`/`duration` ou o `timer_name` indicado no bloco; não usa `target_path`.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Timer Remaining → Format Duration → UI Set Text`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 951. Wait Seconds

- **ID:** `time.wait_seconds`
- **Categoria:** Tempo
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Retorna aguarda a duração indicada antes de continuar o fluxo. Use para atrasar uma ação simples sem criar um Timer nomeado.
- **Entradas/alvo:** Recebe `seconds`/`duration` ou o `timer_name` indicado no bloco; não usa `target_path`.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Button Pressed → UI Hide → Wait Seconds (2) → UI Show`.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 952. Trace

- **ID:** `debug.log.trace`
- **Categoria:** Debug
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Registra ou desenha informação de depuração no nível `trace` para investigar o grafo durante a execução.
- **Entradas/alvo:** Recebe mensagem/valor; operações de desenho também recebem origem, destino, cor e duração. Não deve controlar regras de gameplay.
- **Saídas/efeito:** Escreve no painel de saída ou desenha uma forma temporária; `assert` e `breakpoint` podem interromper a depuração.
- **Exemplo:** Exemplo: conecte a saída de um cálculo a `Trace` e inclua um rótulo como `Velocidade do jogador` para identificar o valor no painel Saída.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

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
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Registra ou desenha informação de depuração no nível `assert` para investigar o grafo durante a execução.
- **Entradas/alvo:** Recebe mensagem/valor; operações de desenho também recebem origem, destino, cor e duração. Não deve controlar regras de gameplay.
- **Saídas/efeito:** Escreve no painel de saída ou desenha uma forma temporária; `assert` e `breakpoint` podem interromper a depuração.
- **Exemplo:** Exemplo: conecte a saída de um cálculo a `Assert` e inclua um rótulo como `Velocidade do jogador` para identificar o valor no painel Saída.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 957. Draw Line

- **ID:** `debug.log.draw_line`
- **Categoria:** Debug
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Registra ou desenha informação de depuração no nível `draw line` para investigar o grafo durante a execução.
- **Entradas/alvo:** Recebe mensagem/valor; operações de desenho também recebem origem, destino, cor e duração. Não deve controlar regras de gameplay.
- **Saídas/efeito:** Escreve no painel de saída ou desenha uma forma temporária; `assert` e `breakpoint` podem interromper a depuração.
- **Exemplo:** Exemplo: conecte a saída de um cálculo a `Draw Line` e inclua um rótulo como `Velocidade do jogador` para identificar o valor no painel Saída.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 958. Draw Ray

- **ID:** `debug.log.draw_ray`
- **Categoria:** Debug
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Registra ou desenha informação de depuração no nível `draw ray` para investigar o grafo durante a execução.
- **Entradas/alvo:** Recebe mensagem/valor; operações de desenho também recebem origem, destino, cor e duração. Não deve controlar regras de gameplay.
- **Saídas/efeito:** Escreve no painel de saída ou desenha uma forma temporária; `assert` e `breakpoint` podem interromper a depuração.
- **Exemplo:** Exemplo: conecte a saída de um cálculo a `Draw Ray` e inclua um rótulo como `Velocidade do jogador` para identificar o valor no painel Saída.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 959. Draw Sphere

- **ID:** `debug.log.draw_sphere`
- **Categoria:** Debug
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Registra ou desenha informação de depuração no nível `draw sphere` para investigar o grafo durante a execução.
- **Entradas/alvo:** Recebe mensagem/valor; operações de desenho também recebem origem, destino, cor e duração. Não deve controlar regras de gameplay.
- **Saídas/efeito:** Escreve no painel de saída ou desenha uma forma temporária; `assert` e `breakpoint` podem interromper a depuração.
- **Exemplo:** Exemplo: conecte a saída de um cálculo a `Draw Sphere` e inclua um rótulo como `Velocidade do jogador` para identificar o valor no painel Saída.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 960. Breakpoint

- **ID:** `debug.log.breakpoint`
- **Categoria:** Debug
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Registra ou desenha informação de depuração no nível `breakpoint` para investigar o grafo durante a execução.
- **Entradas/alvo:** Recebe mensagem/valor; operações de desenho também recebem origem, destino, cor e duração. Não deve controlar regras de gameplay.
- **Saídas/efeito:** Escreve no painel de saída ou desenha uma forma temporária; `assert` e `breakpoint` podem interromper a depuração.
- **Exemplo:** Exemplo: conecte a saída de um cálculo a `Breakpoint` e inclua um rótulo como `Velocidade do jogador` para identificar o valor no painel Saída.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.

## 961. Watch

- **ID:** `debug.log.watch`
- **Categoria:** Debug
- **Status:** Catalogado; execução nativa ainda não implementada
- **Finalidade:** Registra ou desenha informação de depuração no nível `watch` para investigar o grafo durante a execução.
- **Entradas/alvo:** Recebe mensagem/valor; operações de desenho também recebem origem, destino, cor e duração. Não deve controlar regras de gameplay.
- **Saídas/efeito:** Escreve no painel de saída ou desenha uma forma temporária; `assert` e `breakpoint` podem interromper a depuração.
- **Exemplo:** Exemplo: conecte a saída de um cálculo a `Watch` e inclua um rótulo como `Velocidade do jogador` para identificar o valor no painel Saída.
- **Erros:** Este ID ainda não possui despacho no `MGSNoCodeRunner`; se usado agora, o grafo retorna operação NoCode não implementada. A descrição acima é o contrato planejado, não uma garantia de execução.
