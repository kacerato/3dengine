# Catálogo nativo NoCode — 961 operações

> Gerado por `tools/godot/generate_native_nocode_docs.py`. Não editar manualmente.

Cada entrada abaixo documenta o contrato persistido no `.graph.json`. A presença no catálogo não substitui a validação do tipo do alvo: operações de cena falham explicitamente quando o NodePath ou componente é incompatível.

## 1. Start

- **ID:** `event.scene.start`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `scene` informa `start`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `scene` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Start` a uma ação relacionada a `scene`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 2. Ready

- **ID:** `event.scene.ready`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `scene` informa `ready`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `scene` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Ready` a uma ação relacionada a `scene`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 3. Exit

- **ID:** `event.scene.exit`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `scene` informa `exit`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `scene` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Exit` a uma ação relacionada a `scene`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 4. Update

- **ID:** `event.frame.update`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `frame` informa `update`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `frame` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Update` a uma ação relacionada a `frame`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 5. Fixed Update

- **ID:** `event.frame.fixed_update`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `frame` informa `fixed update`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `frame` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Fixed Update` a uma ação relacionada a `frame`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 6. Touch

- **ID:** `event.object.touch`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `object` informa `touch`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `object` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Touch` a uma ação relacionada a `object`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 7. Click

- **ID:** `event.object.click`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `object` informa `click`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `object` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Click` a uma ação relacionada a `object`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 8. Enabled

- **ID:** `event.object.enabled`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `object` informa `enabled`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `object` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Enabled` a uma ação relacionada a `object`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 9. Disabled

- **ID:** `event.object.disabled`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `object` informa `disabled`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `object` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Disabled` a uma ação relacionada a `object`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 10. Created

- **ID:** `event.object.created`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `object` informa `created`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `object` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Created` a uma ação relacionada a `object`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 11. Destroyed

- **ID:** `event.object.destroyed`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `object` informa `destroyed`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `object` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Destroyed` a uma ação relacionada a `object`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 12. Button Pressed

- **ID:** `event.input.button_pressed`
- **Categoria:** Eventos
- **Finalidade:** Dispara quando uma ação do Input Map ou botão mobile é pressionado. É o evento recomendado para pulo, interação, ataque e botões da interface porque funciona com teclado, controle e toque quando todos estão mapeados para a mesma ação.
- **Entradas/alvo:** `action`: nome configurado no Input Map, por exemplo `jump`; opcionalmente `device` e `button_index`.
- **Saídas/efeito:** Emite `flow` uma vez e disponibiliza ação, dispositivo e intensidade no payload.
- **Exemplo:** Pulo multiplataforma: configure a ação `jump`, conecte `Button Pressed (jump) → Character Jump`, alvo `../Player`, força `6.5`. O mesmo grafo responde à barra de espaço, botão do gamepad e botão touch.
- **Erros:** Se não disparar, verifique foco da janela, nome exato da ação no Input Map, dispositivo selecionado e se outro Control está consumindo o evento.

## 13. Button Released

- **ID:** `event.input.button_released`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `input` informa `button released`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `input` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Button Released` a uma ação relacionada a `input`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Se não disparar, verifique foco da janela, nome exato da ação no Input Map, dispositivo selecionado e se outro Control está consumindo o evento.

## 14. Key Down

- **ID:** `event.input.key_down`
- **Categoria:** Eventos
- **Finalidade:** Dispara uma vez no instante em que uma tecla física é pressionada. Use para ações pontuais, como abrir uma porta, pausar, recarregar ou começar a correr; para movimento contínuo enquanto a tecla permanece pressionada, use `Input Keyboard Held`.
- **Entradas/alvo:** `key` ou `physical_keycode`: tecla que deve ativar o fluxo, por exemplo `E`, `Escape` ou `Shift`; opcionalmente use `action` para uma ação configurada no Input Map, como `interact`. O evento não precisa de `target_path`.
- **Saídas/efeito:** Emite `flow` uma vez por pressionamento. O payload informa a tecla recebida, código físico, modificadores (Shift/Ctrl/Alt) e repetição do teclado quando disponíveis.
- **Exemplo:** Abrir uma porta com E: adicione `Key Down`, defina `key = E`, conecte `flow → Object Send Event`, selecione `../Door` como alvo e envie o evento `open`. Ao pressionar E, a porta recebe `open` uma única vez; manter E segurado não repete a ação, salvo se a repetição estiver habilitada.
- **Erros:** Se não disparar, confira se a janela do jogo está em foco, se a tecla física escolhida corresponde ao layout do aparelho e se `action` existe no Input Map. Não use este evento para teclado virtual Android; nesse caso, prefira uma ação ligada a botão touch.

## 15. Key Up

- **ID:** `event.input.key_up`
- **Categoria:** Eventos
- **Finalidade:** Dispara uma vez quando uma tecla física é solta. Use para encerrar uma ação iniciada no pressionamento, como parar corrida, soltar um objeto ou finalizar carregamento de ataque.
- **Entradas/alvo:** `key`/`physical_keycode` ou uma `action` do Input Map. Não usa alvo de cena.
- **Saídas/efeito:** Emite `flow` e entrega a tecla e os modificadores no payload.
- **Exemplo:** Corrida com Shift: `Key Down (Shift) → Character Set Speed (9)` e `Key Up (Shift) → Character Set Speed (5)`. O personagem corre somente enquanto Shift estiver apertado.
- **Erros:** Se não disparar, verifique foco da janela, nome exato da ação no Input Map, dispositivo selecionado e se outro Control está consumindo o evento.

## 16. Axis

- **ID:** `event.input.axis`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `input` informa `axis`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `input` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Axis` a uma ação relacionada a `input`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Se não disparar, verifique foco da janela, nome exato da ação no Input Map, dispositivo selecionado e se outro Control está consumindo o evento.

## 17. Down

- **ID:** `event.pointer.down`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `pointer` informa `down`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `pointer` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Down` a uma ação relacionada a `pointer`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 18. Up

- **ID:** `event.pointer.up`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `pointer` informa `up`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `pointer` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Up` a uma ação relacionada a `pointer`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 19. Move

- **ID:** `event.pointer.move`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `pointer` informa `move`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `pointer` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Move` a uma ação relacionada a `pointer`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 20. Drag

- **ID:** `event.pointer.drag`
- **Categoria:** Eventos
- **Finalidade:** Dispara enquanto o usuário arrasta o dedo ou mouse. Use para girar câmera, mover peças, controlar uma mira ou deslizar painéis.
- **Entradas/alvo:** Filtro opcional de dedo/botão e região da tela. O payload fornece posição inicial, posição atual e `delta` desde a última atualização.
- **Saídas/efeito:** Emite `flow`, `position` e `delta` como `Vector2`.
- **Exemplo:** Câmera mobile: `Pointer Drag → Character Look`; conecte `delta` em `look_delta`, selecione `../Player/CameraPivot` e use sensibilidade `0.003`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 21. Enter

- **ID:** `event.collision.enter`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `collision` informa `enter`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `collision` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Enter` a uma ação relacionada a `collision`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 22. Stay

- **ID:** `event.collision.stay`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `collision` informa `stay`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `collision` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Stay` a uma ação relacionada a `collision`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 23. Exit

- **ID:** `event.collision.exit`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `collision` informa `exit`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `collision` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Exit` a uma ação relacionada a `collision`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 24. Enter

- **ID:** `event.trigger.enter`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `trigger` informa `enter`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `trigger` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Enter` a uma ação relacionada a `trigger`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 25. Stay

- **ID:** `event.trigger.stay`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `trigger` informa `stay`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `trigger` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Stay` a uma ação relacionada a `trigger`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 26. Exit

- **ID:** `event.trigger.exit`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `trigger` informa `exit`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `trigger` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Exit` a uma ação relacionada a `trigger`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 27. Started

- **ID:** `event.animation.started`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `animation` informa `started`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `animation` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Started` a uma ação relacionada a `animation`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 28. Finished

- **ID:** `event.animation.finished`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `animation` informa `finished`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `animation` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Finished` a uma ação relacionada a `animation`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 29. Finished

- **ID:** `event.audio.finished`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `audio` informa `finished`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `audio` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Finished` a uma ação relacionada a `audio`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 30. Focused

- **ID:** `event.ui.focused`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `ui` informa `focused`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `ui` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Focused` a uma ação relacionada a `ui`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 31. Value Changed

- **ID:** `event.ui.value_changed`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `ui` informa `value changed`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `ui` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Value Changed` a uma ação relacionada a `ui`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 32. Elapsed

- **ID:** `event.timer.elapsed`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `timer` informa `elapsed`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `timer` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Elapsed` a uma ação relacionada a `timer`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 33. Connected

- **ID:** `event.network.connected`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `network` informa `connected`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `network` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Connected` a uma ação relacionada a `network`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 34. Disconnected

- **ID:** `event.network.disconnected`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `network` informa `disconnected`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `network` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Disconnected` a uma ação relacionada a `network`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 35. Loaded

- **ID:** `event.save.loaded`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `save` informa `loaded`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `save` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Loaded` a uma ação relacionada a `save`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 36. Completed

- **ID:** `event.save.completed`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `save` informa `completed`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `save` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Completed` a uma ação relacionada a `save`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 37. Loaded

- **ID:** `event.world.loaded`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `world` informa `loaded`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `world` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Loaded` a uma ação relacionada a `world`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 38. Unloaded

- **ID:** `event.world.unloaded`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `world` informa `unloaded`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `world` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Unloaded` a uma ação relacionada a `world`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 39. Received

- **ID:** `event.custom.received`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `custom` informa `received`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `custom` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Received` a uma ação relacionada a `custom`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 40. Changed

- **ID:** `event.component.changed`
- **Categoria:** Eventos
- **Finalidade:** Dispara o fluxo quando `component` informa `changed`. Use este evento para iniciar ações que devem ocorrer exatamente nesse momento, sem consultar o estado a cada quadro.
- **Entradas/alvo:** Filtros exibidos no bloco limitam qual `component` deve ativá-lo. Quando existir objeto envolvido, o payload inclui sua referência; eventos nomeados aceitam o nome esperado.
- **Saídas/efeito:** Emite `flow` uma vez por ocorrência e fornece nos pinos de dados o payload específico do evento, que pode ser conectado diretamente aos blocos seguintes.
- **Exemplo:** Exemplo de gameplay: conecte `Changed` a uma ação relacionada a `component`, como atualizar a interface, tocar um som ou alterar o objeto recebido pelo payload. Configure o filtro no próprio evento para impedir que outras ocorrências ativem o mesmo fluxo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 41. Sequência 2

- **ID:** `flow.sequence.2`
- **Categoria:** Fluxo
- **Finalidade:** Executa 2 ramificações de fluxo em ordem, da saída 1 até a 2.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 2 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 2` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 42. Sequência 3

- **ID:** `flow.sequence.3`
- **Categoria:** Fluxo
- **Finalidade:** Executa 3 ramificações de fluxo em ordem, da saída 1 até a 3.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 3 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 3` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 43. Sequência 4

- **ID:** `flow.sequence.4`
- **Categoria:** Fluxo
- **Finalidade:** Executa 4 ramificações de fluxo em ordem, da saída 1 até a 4.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 4 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 4` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 44. Sequência 5

- **ID:** `flow.sequence.5`
- **Categoria:** Fluxo
- **Finalidade:** Executa 5 ramificações de fluxo em ordem, da saída 1 até a 5.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 5 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 5` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 45. Sequência 6

- **ID:** `flow.sequence.6`
- **Categoria:** Fluxo
- **Finalidade:** Executa 6 ramificações de fluxo em ordem, da saída 1 até a 6.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 6 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 6` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 46. Sequência 8

- **ID:** `flow.sequence.8`
- **Categoria:** Fluxo
- **Finalidade:** Executa 8 ramificações de fluxo em ordem, da saída 1 até a 8.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 8 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 8` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 47. Sequência 10

- **ID:** `flow.sequence.10`
- **Categoria:** Fluxo
- **Finalidade:** Executa 10 ramificações de fluxo em ordem, da saída 1 até a 10.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 10 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 10` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 48. Sequência 12

- **ID:** `flow.sequence.12`
- **Categoria:** Fluxo
- **Finalidade:** Executa 12 ramificações de fluxo em ordem, da saída 1 até a 12.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 12 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 12` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 49. Branch

- **ID:** `flow.branch`
- **Categoria:** Fluxo
- **Finalidade:** Controla a ordem do grafo: escolhe entre as saídas True e False usando uma condição booleana.
- **Entradas/alvo:** Recebe `flow` e os parâmetros exibidos no bloco, como condição, duração, limite ou casos. Não atua diretamente em um Node da cena.
- **Saídas/efeito:** Emite uma ou mais saídas de fluxo; blocos de repetição também fornecem índice/item.
- **Exemplo:** Exemplo: `Button Pressed → Branch`; conecte cada saída a uma ação diferente, como `UI Show`, `Audio Play` ou `Object Enable`, conforme a decisão desejada.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 50. Gate

- **ID:** `flow.gate`
- **Categoria:** Fluxo
- **Finalidade:** Controla a ordem do grafo: abre ou fecha a passagem de pulsos sem desconectar o grafo.
- **Entradas/alvo:** Recebe `flow` e os parâmetros exibidos no bloco, como condição, duração, limite ou casos. Não atua diretamente em um Node da cena.
- **Saídas/efeito:** Emite uma ou mais saídas de fluxo; blocos de repetição também fornecem índice/item.
- **Exemplo:** Exemplo: `Button Pressed → Gate`; conecte cada saída a uma ação diferente, como `UI Show`, `Audio Play` ou `Object Enable`, conforme a decisão desejada.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 51. Once

- **ID:** `flow.once`
- **Categoria:** Fluxo
- **Finalidade:** Controla a ordem do grafo: deixa o fluxo passar somente na primeira chamada até ser reiniciado.
- **Entradas/alvo:** Recebe `flow` e os parâmetros exibidos no bloco, como condição, duração, limite ou casos. Não atua diretamente em um Node da cena.
- **Saídas/efeito:** Emite uma ou mais saídas de fluxo; blocos de repetição também fornecem índice/item.
- **Exemplo:** Exemplo: `Button Pressed → Once`; conecte cada saída a uma ação diferente, como `UI Show`, `Audio Play` ou `Object Enable`, conforme a decisão desejada.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 52. Do N

- **ID:** `flow.do_n`
- **Categoria:** Fluxo
- **Finalidade:** Controla a ordem do grafo: limita a passagem do fluxo a uma quantidade configurada.
- **Entradas/alvo:** Recebe `flow` e os parâmetros exibidos no bloco, como condição, duração, limite ou casos. Não atua diretamente em um Node da cena.
- **Saídas/efeito:** Emite uma ou mais saídas de fluxo; blocos de repetição também fornecem índice/item.
- **Exemplo:** Exemplo: `Button Pressed → Do N`; conecte cada saída a uma ação diferente, como `UI Show`, `Audio Play` ou `Object Enable`, conforme a decisão desejada.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 53. While

- **ID:** `flow.while`
- **Categoria:** Fluxo
- **Finalidade:** Controla a ordem do grafo: repete o corpo enquanto a condição permanecer verdadeira, respeitando o limite de segurança.
- **Entradas/alvo:** Recebe `flow` e os parâmetros exibidos no bloco, como condição, duração, limite ou casos. Não atua diretamente em um Node da cena.
- **Saídas/efeito:** Emite uma ou mais saídas de fluxo; blocos de repetição também fornecem índice/item.
- **Exemplo:** Exemplo: `Button Pressed → While`; conecte cada saída a uma ação diferente, como `UI Show`, `Audio Play` ou `Object Enable`, conforme a decisão desejada.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 54. For

- **ID:** `flow.for`
- **Categoria:** Fluxo
- **Finalidade:** Controla a ordem do grafo: repete usando índice inicial, final e passo.
- **Entradas/alvo:** Recebe `flow` e os parâmetros exibidos no bloco, como condição, duração, limite ou casos. Não atua diretamente em um Node da cena.
- **Saídas/efeito:** Emite uma ou mais saídas de fluxo; blocos de repetição também fornecem índice/item.
- **Exemplo:** Exemplo: `Button Pressed → For`; conecte cada saída a uma ação diferente, como `UI Show`, `Audio Play` ou `Object Enable`, conforme a decisão desejada.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 55. Foreach

- **ID:** `flow.foreach`
- **Categoria:** Fluxo
- **Finalidade:** Controla a ordem do grafo: executa o corpo uma vez para cada item de uma lista.
- **Entradas/alvo:** Recebe `flow` e os parâmetros exibidos no bloco, como condição, duração, limite ou casos. Não atua diretamente em um Node da cena.
- **Saídas/efeito:** Emite uma ou mais saídas de fluxo; blocos de repetição também fornecem índice/item.
- **Exemplo:** Exemplo: `Button Pressed → Foreach`; conecte cada saída a uma ação diferente, como `UI Show`, `Audio Play` ou `Object Enable`, conforme a decisão desejada.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 56. Delay

- **ID:** `flow.delay`
- **Categoria:** Fluxo
- **Finalidade:** Controla a ordem do grafo: continua o fluxo após uma duração.
- **Entradas/alvo:** Recebe `flow` e os parâmetros exibidos no bloco, como condição, duração, limite ou casos. Não atua diretamente em um Node da cena.
- **Saídas/efeito:** Emite uma ou mais saídas de fluxo; blocos de repetição também fornecem índice/item.
- **Exemplo:** Exemplo: `Button Pressed → Delay`; conecte cada saída a uma ação diferente, como `UI Show`, `Audio Play` ou `Object Enable`, conforme a decisão desejada.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 57. Debounce

- **ID:** `flow.debounce`
- **Categoria:** Fluxo
- **Finalidade:** Controla a ordem do grafo: executa somente depois que chamadas rápidas pararem.
- **Entradas/alvo:** Recebe `flow` e os parâmetros exibidos no bloco, como condição, duração, limite ou casos. Não atua diretamente em um Node da cena.
- **Saídas/efeito:** Emite uma ou mais saídas de fluxo; blocos de repetição também fornecem índice/item.
- **Exemplo:** Exemplo: `Button Pressed → Debounce`; conecte cada saída a uma ação diferente, como `UI Show`, `Audio Play` ou `Object Enable`, conforme a decisão desejada.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 58. Throttle

- **ID:** `flow.throttle`
- **Categoria:** Fluxo
- **Finalidade:** Controla a ordem do grafo: limita quantas vezes um fluxo pode executar por intervalo.
- **Entradas/alvo:** Recebe `flow` e os parâmetros exibidos no bloco, como condição, duração, limite ou casos. Não atua diretamente em um Node da cena.
- **Saídas/efeito:** Emite uma ou mais saídas de fluxo; blocos de repetição também fornecem índice/item.
- **Exemplo:** Exemplo: `Button Pressed → Throttle`; conecte cada saída a uma ação diferente, como `UI Show`, `Audio Play` ou `Object Enable`, conforme a decisão desejada.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 59. Race

- **ID:** `flow.race`
- **Categoria:** Fluxo
- **Finalidade:** Controla a ordem do grafo: executa caminhos concorrentes e continua com o primeiro que terminar.
- **Entradas/alvo:** Recebe `flow` e os parâmetros exibidos no bloco, como condição, duração, limite ou casos. Não atua diretamente em um Node da cena.
- **Saídas/efeito:** Emite uma ou mais saídas de fluxo; blocos de repetição também fornecem índice/item.
- **Exemplo:** Exemplo: `Button Pressed → Race`; conecte cada saída a uma ação diferente, como `UI Show`, `Audio Play` ou `Object Enable`, conforme a decisão desejada.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 60. Parallel

- **ID:** `flow.parallel`
- **Categoria:** Fluxo
- **Finalidade:** Controla a ordem do grafo: inicia vários caminhos no mesmo disparo.
- **Entradas/alvo:** Recebe `flow` e os parâmetros exibidos no bloco, como condição, duração, limite ou casos. Não atua diretamente em um Node da cena.
- **Saídas/efeito:** Emite uma ou mais saídas de fluxo; blocos de repetição também fornecem índice/item.
- **Exemplo:** Exemplo: `Button Pressed → Parallel`; conecte cada saída a uma ação diferente, como `UI Show`, `Audio Play` ou `Object Enable`, conforme a decisão desejada.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 61. Cancel

- **ID:** `flow.cancel`
- **Categoria:** Fluxo
- **Finalidade:** Controla a ordem do grafo: cancela uma execução atrasada ou concorrente identificada.
- **Entradas/alvo:** Recebe `flow` e os parâmetros exibidos no bloco, como condição, duração, limite ou casos. Não atua diretamente em um Node da cena.
- **Saídas/efeito:** Emite uma ou mais saídas de fluxo; blocos de repetição também fornecem índice/item.
- **Exemplo:** Exemplo: `Button Pressed → Cancel`; conecte cada saída a uma ação diferente, como `UI Show`, `Audio Play` ou `Object Enable`, conforme a decisão desejada.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 62. Break

- **ID:** `flow.break`
- **Categoria:** Fluxo
- **Finalidade:** Controla a ordem do grafo: encerra o laço atual.
- **Entradas/alvo:** Recebe `flow` e os parâmetros exibidos no bloco, como condição, duração, limite ou casos. Não atua diretamente em um Node da cena.
- **Saídas/efeito:** Emite uma ou mais saídas de fluxo; blocos de repetição também fornecem índice/item.
- **Exemplo:** Exemplo: `Button Pressed → Break`; conecte cada saída a uma ação diferente, como `UI Show`, `Audio Play` ou `Object Enable`, conforme a decisão desejada.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 63. Continue

- **ID:** `flow.continue`
- **Categoria:** Fluxo
- **Finalidade:** Controla a ordem do grafo: pula o restante da iteração e inicia a próxima.
- **Entradas/alvo:** Recebe `flow` e os parâmetros exibidos no bloco, como condição, duração, limite ou casos. Não atua diretamente em um Node da cena.
- **Saídas/efeito:** Emite uma ou mais saídas de fluxo; blocos de repetição também fornecem índice/item.
- **Exemplo:** Exemplo: `Button Pressed → Continue`; conecte cada saída a uma ação diferente, como `UI Show`, `Audio Play` ou `Object Enable`, conforme a decisão desejada.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 64. Switch Bool

- **ID:** `flow.switch_bool`
- **Categoria:** Fluxo
- **Finalidade:** Controla a ordem do grafo: encaminha um booleano para uma saída nomeada.
- **Entradas/alvo:** Recebe `flow` e os parâmetros exibidos no bloco, como condição, duração, limite ou casos. Não atua diretamente em um Node da cena.
- **Saídas/efeito:** Emite uma ou mais saídas de fluxo; blocos de repetição também fornecem índice/item.
- **Exemplo:** Exemplo: `Button Pressed → Switch Bool`; conecte cada saída a uma ação diferente, como `UI Show`, `Audio Play` ou `Object Enable`, conforme a decisão desejada.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 65. Switch Number

- **ID:** `flow.switch_number`
- **Categoria:** Fluxo
- **Finalidade:** Controla a ordem do grafo: encaminha um número para o caso correspondente.
- **Entradas/alvo:** Recebe `flow` e os parâmetros exibidos no bloco, como condição, duração, limite ou casos. Não atua diretamente em um Node da cena.
- **Saídas/efeito:** Emite uma ou mais saídas de fluxo; blocos de repetição também fornecem índice/item.
- **Exemplo:** Exemplo: `Button Pressed → Switch Number`; conecte cada saída a uma ação diferente, como `UI Show`, `Audio Play` ou `Object Enable`, conforme a decisão desejada.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 66. Switch Text

- **ID:** `flow.switch_text`
- **Categoria:** Fluxo
- **Finalidade:** Controla a ordem do grafo: encaminha um texto para o caso correspondente.
- **Entradas/alvo:** Recebe `flow` e os parâmetros exibidos no bloco, como condição, duração, limite ou casos. Não atua diretamente em um Node da cena.
- **Saídas/efeito:** Emite uma ou mais saídas de fluxo; blocos de repetição também fornecem índice/item.
- **Exemplo:** Exemplo: `Button Pressed → Switch Text`; conecte cada saída a uma ação diferente, como `UI Show`, `Audio Play` ou `Object Enable`, conforme a decisão desejada.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 67. Switch Object

- **ID:** `flow.switch_object`
- **Categoria:** Fluxo
- **Finalidade:** Controla a ordem do grafo: encaminha um objeto para o caso correspondente.
- **Entradas/alvo:** Recebe `flow` e os parâmetros exibidos no bloco, como condição, duração, limite ou casos. Não atua diretamente em um Node da cena.
- **Saídas/efeito:** Emite uma ou mais saídas de fluxo; blocos de repetição também fornecem índice/item.
- **Exemplo:** Exemplo: `Button Pressed → Switch Object`; conecte cada saída a uma ação diferente, como `UI Show`, `Audio Play` ou `Object Enable`, conforme a decisão desejada.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 68. Flip Flop

- **ID:** `flow.flip_flop`
- **Categoria:** Fluxo
- **Finalidade:** Controla a ordem do grafo: alterna entre as saídas A e B a cada disparo.
- **Entradas/alvo:** Recebe `flow` e os parâmetros exibidos no bloco, como condição, duração, limite ou casos. Não atua diretamente em um Node da cena.
- **Saídas/efeito:** Emite uma ou mais saídas de fluxo; blocos de repetição também fornecem índice/item.
- **Exemplo:** Exemplo: `Button Pressed → Flip Flop`; conecte cada saída a uma ação diferente, como `UI Show`, `Audio Play` ou `Object Enable`, conforme a decisão desejada.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 69. Pressed

- **ID:** `input.keyboard.pressed`
- **Categoria:** Entrada
- **Finalidade:** Lê `pressed` do dispositivo `keyboard` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `pressed` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Pressed → Debug Info` para visualizar o valor recebido do keyboard.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 70. Released

- **ID:** `input.keyboard.released`
- **Categoria:** Entrada
- **Finalidade:** Lê `released` do dispositivo `keyboard` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `released` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Released → Debug Info` para visualizar o valor recebido do keyboard.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 71. Held

- **ID:** `input.keyboard.held`
- **Categoria:** Entrada
- **Finalidade:** Lê `held` do dispositivo `keyboard` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `held` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Held → Debug Info` para visualizar o valor recebido do keyboard.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 72. Axis

- **ID:** `input.keyboard.axis`
- **Categoria:** Entrada
- **Finalidade:** Lê `axis` do dispositivo `keyboard` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `axis` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Axis → Debug Info` para visualizar o valor recebido do keyboard.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 73. Position

- **ID:** `input.keyboard.position`
- **Categoria:** Entrada
- **Finalidade:** Lê `position` do dispositivo `keyboard` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `position` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Position → Debug Info` para visualizar o valor recebido do keyboard.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 74. Delta

- **ID:** `input.keyboard.delta`
- **Categoria:** Entrada
- **Finalidade:** Lê `delta` do dispositivo `keyboard` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `delta` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Delta → Debug Info` para visualizar o valor recebido do keyboard.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 75. Pressure

- **ID:** `input.keyboard.pressure`
- **Categoria:** Entrada
- **Finalidade:** Lê `pressure` do dispositivo `keyboard` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `pressure` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Pressure → Debug Info` para visualizar o valor recebido do keyboard.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 76. Count

- **ID:** `input.keyboard.count`
- **Categoria:** Entrada
- **Finalidade:** Lê `count` do dispositivo `keyboard` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `count` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Count → Debug Info` para visualizar o valor recebido do keyboard.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 77. Available

- **ID:** `input.keyboard.available`
- **Categoria:** Entrada
- **Finalidade:** Lê `available` do dispositivo `keyboard` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `available` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Available → Debug Info` para visualizar o valor recebido do keyboard.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 78. Name

- **ID:** `input.keyboard.name`
- **Categoria:** Entrada
- **Finalidade:** Lê `name` do dispositivo `keyboard` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `name` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Name → Debug Info` para visualizar o valor recebido do keyboard.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 79. Pressed

- **ID:** `input.mouse.pressed`
- **Categoria:** Entrada
- **Finalidade:** Lê `pressed` do dispositivo `mouse` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `pressed` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Pressed → Debug Info` para visualizar o valor recebido do mouse.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 80. Released

- **ID:** `input.mouse.released`
- **Categoria:** Entrada
- **Finalidade:** Lê `released` do dispositivo `mouse` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `released` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Released → Debug Info` para visualizar o valor recebido do mouse.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 81. Held

- **ID:** `input.mouse.held`
- **Categoria:** Entrada
- **Finalidade:** Lê `held` do dispositivo `mouse` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `held` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Held → Debug Info` para visualizar o valor recebido do mouse.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 82. Axis

- **ID:** `input.mouse.axis`
- **Categoria:** Entrada
- **Finalidade:** Lê `axis` do dispositivo `mouse` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `axis` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Axis → Debug Info` para visualizar o valor recebido do mouse.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 83. Position

- **ID:** `input.mouse.position`
- **Categoria:** Entrada
- **Finalidade:** Lê `position` do dispositivo `mouse` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `position` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Position → Debug Info` para visualizar o valor recebido do mouse.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 84. Delta

- **ID:** `input.mouse.delta`
- **Categoria:** Entrada
- **Finalidade:** Lê `delta` do dispositivo `mouse` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `delta` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Delta → Debug Info` para visualizar o valor recebido do mouse.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 85. Pressure

- **ID:** `input.mouse.pressure`
- **Categoria:** Entrada
- **Finalidade:** Lê `pressure` do dispositivo `mouse` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `pressure` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Pressure → Debug Info` para visualizar o valor recebido do mouse.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 86. Count

- **ID:** `input.mouse.count`
- **Categoria:** Entrada
- **Finalidade:** Lê `count` do dispositivo `mouse` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `count` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Count → Debug Info` para visualizar o valor recebido do mouse.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 87. Available

- **ID:** `input.mouse.available`
- **Categoria:** Entrada
- **Finalidade:** Lê `available` do dispositivo `mouse` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `available` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Available → Debug Info` para visualizar o valor recebido do mouse.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 88. Name

- **ID:** `input.mouse.name`
- **Categoria:** Entrada
- **Finalidade:** Lê `name` do dispositivo `mouse` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `name` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Name → Debug Info` para visualizar o valor recebido do mouse.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 89. Pressed

- **ID:** `input.touch.pressed`
- **Categoria:** Entrada
- **Finalidade:** Lê `pressed` do dispositivo `touch` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `pressed` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Pressed → Debug Info` para visualizar o valor recebido do touch.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 90. Released

- **ID:** `input.touch.released`
- **Categoria:** Entrada
- **Finalidade:** Lê `released` do dispositivo `touch` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `released` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Released → Debug Info` para visualizar o valor recebido do touch.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 91. Held

- **ID:** `input.touch.held`
- **Categoria:** Entrada
- **Finalidade:** Lê `held` do dispositivo `touch` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `held` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Held → Debug Info` para visualizar o valor recebido do touch.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 92. Axis

- **ID:** `input.touch.axis`
- **Categoria:** Entrada
- **Finalidade:** Lê `axis` do dispositivo `touch` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `axis` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Axis → Debug Info` para visualizar o valor recebido do touch.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 93. Position

- **ID:** `input.touch.position`
- **Categoria:** Entrada
- **Finalidade:** Lê `position` do dispositivo `touch` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `position` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Position → Debug Info` para visualizar o valor recebido do touch.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 94. Delta

- **ID:** `input.touch.delta`
- **Categoria:** Entrada
- **Finalidade:** Lê `delta` do dispositivo `touch` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `delta` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Delta → Debug Info` para visualizar o valor recebido do touch.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 95. Pressure

- **ID:** `input.touch.pressure`
- **Categoria:** Entrada
- **Finalidade:** Lê `pressure` do dispositivo `touch` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `pressure` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Pressure → Debug Info` para visualizar o valor recebido do touch.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 96. Count

- **ID:** `input.touch.count`
- **Categoria:** Entrada
- **Finalidade:** Lê `count` do dispositivo `touch` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `count` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Count → Debug Info` para visualizar o valor recebido do touch.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 97. Available

- **ID:** `input.touch.available`
- **Categoria:** Entrada
- **Finalidade:** Lê `available` do dispositivo `touch` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `available` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Available → Debug Info` para visualizar o valor recebido do touch.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 98. Name

- **ID:** `input.touch.name`
- **Categoria:** Entrada
- **Finalidade:** Lê `name` do dispositivo `touch` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `name` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Name → Debug Info` para visualizar o valor recebido do touch.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 99. Pressed

- **ID:** `input.gamepad.pressed`
- **Categoria:** Entrada
- **Finalidade:** Lê `pressed` do dispositivo `gamepad` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `pressed` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Pressed → Debug Info` para visualizar o valor recebido do gamepad.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 100. Released

- **ID:** `input.gamepad.released`
- **Categoria:** Entrada
- **Finalidade:** Lê `released` do dispositivo `gamepad` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `released` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Released → Debug Info` para visualizar o valor recebido do gamepad.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 101. Held

- **ID:** `input.gamepad.held`
- **Categoria:** Entrada
- **Finalidade:** Lê `held` do dispositivo `gamepad` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `held` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Held → Debug Info` para visualizar o valor recebido do gamepad.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 102. Axis

- **ID:** `input.gamepad.axis`
- **Categoria:** Entrada
- **Finalidade:** Lê `axis` do dispositivo `gamepad` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `axis` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Axis → Debug Info` para visualizar o valor recebido do gamepad.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 103. Position

- **ID:** `input.gamepad.position`
- **Categoria:** Entrada
- **Finalidade:** Lê `position` do dispositivo `gamepad` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `position` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Position → Debug Info` para visualizar o valor recebido do gamepad.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 104. Delta

- **ID:** `input.gamepad.delta`
- **Categoria:** Entrada
- **Finalidade:** Lê `delta` do dispositivo `gamepad` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `delta` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Delta → Debug Info` para visualizar o valor recebido do gamepad.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 105. Pressure

- **ID:** `input.gamepad.pressure`
- **Categoria:** Entrada
- **Finalidade:** Lê `pressure` do dispositivo `gamepad` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `pressure` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Pressure → Debug Info` para visualizar o valor recebido do gamepad.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 106. Count

- **ID:** `input.gamepad.count`
- **Categoria:** Entrada
- **Finalidade:** Lê `count` do dispositivo `gamepad` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `count` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Count → Debug Info` para visualizar o valor recebido do gamepad.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 107. Available

- **ID:** `input.gamepad.available`
- **Categoria:** Entrada
- **Finalidade:** Lê `available` do dispositivo `gamepad` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `available` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Available → Debug Info` para visualizar o valor recebido do gamepad.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 108. Name

- **ID:** `input.gamepad.name`
- **Categoria:** Entrada
- **Finalidade:** Lê `name` do dispositivo `gamepad` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `name` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Name → Debug Info` para visualizar o valor recebido do gamepad.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 109. Pressed

- **ID:** `input.sensor.pressed`
- **Categoria:** Entrada
- **Finalidade:** Lê `pressed` do dispositivo `sensor` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `pressed` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Pressed → Debug Info` para visualizar o valor recebido do sensor.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 110. Released

- **ID:** `input.sensor.released`
- **Categoria:** Entrada
- **Finalidade:** Lê `released` do dispositivo `sensor` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `released` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Released → Debug Info` para visualizar o valor recebido do sensor.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 111. Held

- **ID:** `input.sensor.held`
- **Categoria:** Entrada
- **Finalidade:** Lê `held` do dispositivo `sensor` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `held` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Held → Debug Info` para visualizar o valor recebido do sensor.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 112. Axis

- **ID:** `input.sensor.axis`
- **Categoria:** Entrada
- **Finalidade:** Lê `axis` do dispositivo `sensor` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `axis` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Axis → Debug Info` para visualizar o valor recebido do sensor.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 113. Position

- **ID:** `input.sensor.position`
- **Categoria:** Entrada
- **Finalidade:** Lê `position` do dispositivo `sensor` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `position` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Position → Debug Info` para visualizar o valor recebido do sensor.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 114. Delta

- **ID:** `input.sensor.delta`
- **Categoria:** Entrada
- **Finalidade:** Lê `delta` do dispositivo `sensor` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `delta` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Delta → Debug Info` para visualizar o valor recebido do sensor.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 115. Pressure

- **ID:** `input.sensor.pressure`
- **Categoria:** Entrada
- **Finalidade:** Lê `pressure` do dispositivo `sensor` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `pressure` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Pressure → Debug Info` para visualizar o valor recebido do sensor.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 116. Count

- **ID:** `input.sensor.count`
- **Categoria:** Entrada
- **Finalidade:** Lê `count` do dispositivo `sensor` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `count` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Count → Debug Info` para visualizar o valor recebido do sensor.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 117. Available

- **ID:** `input.sensor.available`
- **Categoria:** Entrada
- **Finalidade:** Lê `available` do dispositivo `sensor` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `available` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Available → Debug Info` para visualizar o valor recebido do sensor.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 118. Name

- **ID:** `input.sensor.name`
- **Categoria:** Entrada
- **Finalidade:** Lê `name` do dispositivo `sensor` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `name` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Name → Debug Info` para visualizar o valor recebido do sensor.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 119. Add

- **ID:** `math.number.add`
- **Categoria:** Matemática
- **Finalidade:** Calcula `add` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Add` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 120. Subtract

- **ID:** `math.number.subtract`
- **Categoria:** Matemática
- **Finalidade:** Calcula `subtract` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Subtract` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 121. Multiply

- **ID:** `math.number.multiply`
- **Categoria:** Matemática
- **Finalidade:** Calcula `multiply` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Multiply` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 122. Divide

- **ID:** `math.number.divide`
- **Categoria:** Matemática
- **Finalidade:** Calcula `divide` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Divide` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 123. Modulo

- **ID:** `math.number.modulo`
- **Categoria:** Matemática
- **Finalidade:** Calcula `modulo` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Modulo` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 124. Power

- **ID:** `math.number.power`
- **Categoria:** Matemática
- **Finalidade:** Calcula `power` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Power` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 125. Minimum

- **ID:** `math.number.minimum`
- **Categoria:** Matemática
- **Finalidade:** Calcula `minimum` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Minimum` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 126. Maximum

- **ID:** `math.number.maximum`
- **Categoria:** Matemática
- **Finalidade:** Calcula `maximum` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Maximum` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 127. Average

- **ID:** `math.number.average`
- **Categoria:** Matemática
- **Finalidade:** Calcula `average` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Average` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 128. Atan2

- **ID:** `math.number.atan2`
- **Categoria:** Matemática
- **Finalidade:** Calcula `atan2` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Atan2` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 129. Log Base

- **ID:** `math.number.log_base`
- **Categoria:** Matemática
- **Finalidade:** Calcula `log base` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Log Base` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 130. Copy Sign

- **ID:** `math.number.copy_sign`
- **Categoria:** Matemática
- **Finalidade:** Calcula `copy sign` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Copy Sign` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 131. Absolute

- **ID:** `math.number.absolute`
- **Categoria:** Matemática
- **Finalidade:** Calcula `absolute` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor number de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Absolute` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 132. Negative

- **ID:** `math.number.negative`
- **Categoria:** Matemática
- **Finalidade:** Calcula `negative` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor number de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Negative` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 133. Sqrt

- **ID:** `math.number.sqrt`
- **Categoria:** Matemática
- **Finalidade:** Calcula `sqrt` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor number de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Sqrt` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 134. Cube Root

- **ID:** `math.number.cube_root`
- **Categoria:** Matemática
- **Finalidade:** Calcula `cube root` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Cube Root` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 135. Exp

- **ID:** `math.number.exp`
- **Categoria:** Matemática
- **Finalidade:** Calcula `exp` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Exp` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 136. Log

- **ID:** `math.number.log`
- **Categoria:** Matemática
- **Finalidade:** Calcula `log` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Log` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 137. Log10

- **ID:** `math.number.log10`
- **Categoria:** Matemática
- **Finalidade:** Calcula `log10` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Log10` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 138. Floor

- **ID:** `math.number.floor`
- **Categoria:** Matemática
- **Finalidade:** Calcula `floor` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor number de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Floor` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 139. Ceil

- **ID:** `math.number.ceil`
- **Categoria:** Matemática
- **Finalidade:** Calcula `ceil` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor number de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Ceil` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 140. Round

- **ID:** `math.number.round`
- **Categoria:** Matemática
- **Finalidade:** Calcula `round` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor number de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Round` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 141. Truncate

- **ID:** `math.number.truncate`
- **Categoria:** Matemática
- **Finalidade:** Calcula `truncate` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Truncate` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 142. Fraction

- **ID:** `math.number.fraction`
- **Categoria:** Matemática
- **Finalidade:** Calcula `fraction` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Fraction` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 143. Sign

- **ID:** `math.number.sign`
- **Categoria:** Matemática
- **Finalidade:** Calcula `sign` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Sign` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 144. Sin

- **ID:** `math.number.sin`
- **Categoria:** Matemática
- **Finalidade:** Calcula `sin` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Sin` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 145. Cos

- **ID:** `math.number.cos`
- **Categoria:** Matemática
- **Finalidade:** Calcula `cos` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Cos` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 146. Tan

- **ID:** `math.number.tan`
- **Categoria:** Matemática
- **Finalidade:** Calcula `tan` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Tan` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 147. Asin

- **ID:** `math.number.asin`
- **Categoria:** Matemática
- **Finalidade:** Calcula `asin` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Asin` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 148. Acos

- **ID:** `math.number.acos`
- **Categoria:** Matemática
- **Finalidade:** Calcula `acos` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Acos` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 149. Atan

- **ID:** `math.number.atan`
- **Categoria:** Matemática
- **Finalidade:** Calcula `atan` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Atan` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 150. Degrees

- **ID:** `math.number.degrees`
- **Categoria:** Matemática
- **Finalidade:** Calcula `degrees` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Degrees` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 151. Radians

- **ID:** `math.number.radians`
- **Categoria:** Matemática
- **Finalidade:** Calcula `radians` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Radians` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 152. Saturate

- **ID:** `math.number.saturate`
- **Categoria:** Matemática
- **Finalidade:** Calcula `saturate` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Saturate` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 153. Is Finite

- **ID:** `math.number.is_finite`
- **Categoria:** Matemática
- **Finalidade:** Calcula `is finite` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor number que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Finite` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 154. Is Nan

- **ID:** `math.number.is_nan`
- **Categoria:** Matemática
- **Finalidade:** Calcula `is nan` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor number que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Nan` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 155. Add

- **ID:** `math.integer.add`
- **Categoria:** Matemática
- **Finalidade:** Calcula `add` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Add` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 156. Subtract

- **ID:** `math.integer.subtract`
- **Categoria:** Matemática
- **Finalidade:** Calcula `subtract` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Subtract` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 157. Multiply

- **ID:** `math.integer.multiply`
- **Categoria:** Matemática
- **Finalidade:** Calcula `multiply` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Multiply` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 158. Divide

- **ID:** `math.integer.divide`
- **Categoria:** Matemática
- **Finalidade:** Calcula `divide` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Divide` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 159. Modulo

- **ID:** `math.integer.modulo`
- **Categoria:** Matemática
- **Finalidade:** Calcula `modulo` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Modulo` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 160. Power

- **ID:** `math.integer.power`
- **Categoria:** Matemática
- **Finalidade:** Calcula `power` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Power` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 161. Minimum

- **ID:** `math.integer.minimum`
- **Categoria:** Matemática
- **Finalidade:** Calcula `minimum` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Minimum` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 162. Maximum

- **ID:** `math.integer.maximum`
- **Categoria:** Matemática
- **Finalidade:** Calcula `maximum` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Maximum` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 163. Average

- **ID:** `math.integer.average`
- **Categoria:** Matemática
- **Finalidade:** Calcula `average` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Average` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 164. Atan2

- **ID:** `math.integer.atan2`
- **Categoria:** Matemática
- **Finalidade:** Calcula `atan2` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Atan2` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 165. Log Base

- **ID:** `math.integer.log_base`
- **Categoria:** Matemática
- **Finalidade:** Calcula `log base` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Log Base` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 166. Copy Sign

- **ID:** `math.integer.copy_sign`
- **Categoria:** Matemática
- **Finalidade:** Calcula `copy sign` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Copy Sign` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 167. Absolute

- **ID:** `math.integer.absolute`
- **Categoria:** Matemática
- **Finalidade:** Calcula `absolute` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor integer de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Absolute` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 168. Negative

- **ID:** `math.integer.negative`
- **Categoria:** Matemática
- **Finalidade:** Calcula `negative` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor integer de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Negative` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 169. Sqrt

- **ID:** `math.integer.sqrt`
- **Categoria:** Matemática
- **Finalidade:** Calcula `sqrt` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor integer de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Sqrt` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 170. Cube Root

- **ID:** `math.integer.cube_root`
- **Categoria:** Matemática
- **Finalidade:** Calcula `cube root` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Cube Root` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 171. Exp

- **ID:** `math.integer.exp`
- **Categoria:** Matemática
- **Finalidade:** Calcula `exp` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Exp` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 172. Log

- **ID:** `math.integer.log`
- **Categoria:** Matemática
- **Finalidade:** Calcula `log` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Log` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 173. Log10

- **ID:** `math.integer.log10`
- **Categoria:** Matemática
- **Finalidade:** Calcula `log10` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Log10` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 174. Floor

- **ID:** `math.integer.floor`
- **Categoria:** Matemática
- **Finalidade:** Calcula `floor` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor integer de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Floor` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 175. Ceil

- **ID:** `math.integer.ceil`
- **Categoria:** Matemática
- **Finalidade:** Calcula `ceil` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor integer de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Ceil` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 176. Round

- **ID:** `math.integer.round`
- **Categoria:** Matemática
- **Finalidade:** Calcula `round` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor integer de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Round` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 177. Truncate

- **ID:** `math.integer.truncate`
- **Categoria:** Matemática
- **Finalidade:** Calcula `truncate` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Truncate` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 178. Fraction

- **ID:** `math.integer.fraction`
- **Categoria:** Matemática
- **Finalidade:** Calcula `fraction` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Fraction` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 179. Sign

- **ID:** `math.integer.sign`
- **Categoria:** Matemática
- **Finalidade:** Calcula `sign` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Sign` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 180. Sin

- **ID:** `math.integer.sin`
- **Categoria:** Matemática
- **Finalidade:** Calcula `sin` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Sin` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 181. Cos

- **ID:** `math.integer.cos`
- **Categoria:** Matemática
- **Finalidade:** Calcula `cos` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Cos` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 182. Tan

- **ID:** `math.integer.tan`
- **Categoria:** Matemática
- **Finalidade:** Calcula `tan` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Tan` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 183. Asin

- **ID:** `math.integer.asin`
- **Categoria:** Matemática
- **Finalidade:** Calcula `asin` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Asin` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 184. Acos

- **ID:** `math.integer.acos`
- **Categoria:** Matemática
- **Finalidade:** Calcula `acos` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Acos` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 185. Atan

- **ID:** `math.integer.atan`
- **Categoria:** Matemática
- **Finalidade:** Calcula `atan` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Atan` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 186. Degrees

- **ID:** `math.integer.degrees`
- **Categoria:** Matemática
- **Finalidade:** Calcula `degrees` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Degrees` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 187. Radians

- **ID:** `math.integer.radians`
- **Categoria:** Matemática
- **Finalidade:** Calcula `radians` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Radians` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 188. Saturate

- **ID:** `math.integer.saturate`
- **Categoria:** Matemática
- **Finalidade:** Calcula `saturate` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Saturate` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 189. Is Finite

- **ID:** `math.integer.is_finite`
- **Categoria:** Matemática
- **Finalidade:** Calcula `is finite` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor integer que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Finite` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 190. Is Nan

- **ID:** `math.integer.is_nan`
- **Categoria:** Matemática
- **Finalidade:** Calcula `is nan` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor integer que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Nan` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 191. Add

- **ID:** `math.angle.add`
- **Categoria:** Matemática
- **Finalidade:** Calcula `add` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Add` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 192. Subtract

- **ID:** `math.angle.subtract`
- **Categoria:** Matemática
- **Finalidade:** Calcula `subtract` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Subtract` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 193. Multiply

- **ID:** `math.angle.multiply`
- **Categoria:** Matemática
- **Finalidade:** Calcula `multiply` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Multiply` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 194. Divide

- **ID:** `math.angle.divide`
- **Categoria:** Matemática
- **Finalidade:** Calcula `divide` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Divide` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 195. Modulo

- **ID:** `math.angle.modulo`
- **Categoria:** Matemática
- **Finalidade:** Calcula `modulo` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Modulo` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 196. Power

- **ID:** `math.angle.power`
- **Categoria:** Matemática
- **Finalidade:** Calcula `power` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Power` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 197. Minimum

- **ID:** `math.angle.minimum`
- **Categoria:** Matemática
- **Finalidade:** Calcula `minimum` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Minimum` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 198. Maximum

- **ID:** `math.angle.maximum`
- **Categoria:** Matemática
- **Finalidade:** Calcula `maximum` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Maximum` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 199. Average

- **ID:** `math.angle.average`
- **Categoria:** Matemática
- **Finalidade:** Calcula `average` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Average` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 200. Atan2

- **ID:** `math.angle.atan2`
- **Categoria:** Matemática
- **Finalidade:** Calcula `atan2` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Atan2` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 201. Log Base

- **ID:** `math.angle.log_base`
- **Categoria:** Matemática
- **Finalidade:** Calcula `log base` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Log Base` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 202. Copy Sign

- **ID:** `math.angle.copy_sign`
- **Categoria:** Matemática
- **Finalidade:** Calcula `copy sign` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Copy Sign` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 203. Absolute

- **ID:** `math.angle.absolute`
- **Categoria:** Matemática
- **Finalidade:** Calcula `absolute` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor angle de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Absolute` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 204. Negative

- **ID:** `math.angle.negative`
- **Categoria:** Matemática
- **Finalidade:** Calcula `negative` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor angle de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Negative` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 205. Sqrt

- **ID:** `math.angle.sqrt`
- **Categoria:** Matemática
- **Finalidade:** Calcula `sqrt` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor angle de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Sqrt` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 206. Cube Root

- **ID:** `math.angle.cube_root`
- **Categoria:** Matemática
- **Finalidade:** Calcula `cube root` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Cube Root` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 207. Exp

- **ID:** `math.angle.exp`
- **Categoria:** Matemática
- **Finalidade:** Calcula `exp` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Exp` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 208. Log

- **ID:** `math.angle.log`
- **Categoria:** Matemática
- **Finalidade:** Calcula `log` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Log` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 209. Log10

- **ID:** `math.angle.log10`
- **Categoria:** Matemática
- **Finalidade:** Calcula `log10` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Log10` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 210. Floor

- **ID:** `math.angle.floor`
- **Categoria:** Matemática
- **Finalidade:** Calcula `floor` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor angle de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Floor` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 211. Ceil

- **ID:** `math.angle.ceil`
- **Categoria:** Matemática
- **Finalidade:** Calcula `ceil` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor angle de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Ceil` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 212. Round

- **ID:** `math.angle.round`
- **Categoria:** Matemática
- **Finalidade:** Calcula `round` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor angle de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Round` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 213. Truncate

- **ID:** `math.angle.truncate`
- **Categoria:** Matemática
- **Finalidade:** Calcula `truncate` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Truncate` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 214. Fraction

- **ID:** `math.angle.fraction`
- **Categoria:** Matemática
- **Finalidade:** Calcula `fraction` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Fraction` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 215. Sign

- **ID:** `math.angle.sign`
- **Categoria:** Matemática
- **Finalidade:** Calcula `sign` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Sign` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 216. Sin

- **ID:** `math.angle.sin`
- **Categoria:** Matemática
- **Finalidade:** Calcula `sin` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Sin` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 217. Cos

- **ID:** `math.angle.cos`
- **Categoria:** Matemática
- **Finalidade:** Calcula `cos` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Cos` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 218. Tan

- **ID:** `math.angle.tan`
- **Categoria:** Matemática
- **Finalidade:** Calcula `tan` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Tan` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 219. Asin

- **ID:** `math.angle.asin`
- **Categoria:** Matemática
- **Finalidade:** Calcula `asin` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Asin` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 220. Acos

- **ID:** `math.angle.acos`
- **Categoria:** Matemática
- **Finalidade:** Calcula `acos` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Acos` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 221. Atan

- **ID:** `math.angle.atan`
- **Categoria:** Matemática
- **Finalidade:** Calcula `atan` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Atan` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 222. Degrees

- **ID:** `math.angle.degrees`
- **Categoria:** Matemática
- **Finalidade:** Calcula `degrees` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Degrees` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 223. Radians

- **ID:** `math.angle.radians`
- **Categoria:** Matemática
- **Finalidade:** Calcula `radians` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Radians` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 224. Saturate

- **ID:** `math.angle.saturate`
- **Categoria:** Matemática
- **Finalidade:** Calcula `saturate` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Saturate` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 225. Is Finite

- **ID:** `math.angle.is_finite`
- **Categoria:** Matemática
- **Finalidade:** Calcula `is finite` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor angle que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Finite` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 226. Is Nan

- **ID:** `math.angle.is_nan`
- **Categoria:** Matemática
- **Finalidade:** Calcula `is nan` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor angle que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Nan` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 227. Clamp

- **ID:** `math.range.clamp`
- **Categoria:** Matemática
- **Finalidade:** Calcula `clamp` para valores do tipo range; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores range; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Clamp` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 228. Lerp

- **ID:** `math.range.lerp`
- **Categoria:** Matemática
- **Finalidade:** Calcula `lerp` para valores do tipo range; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores range; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Lerp` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 229. Inverse Lerp

- **ID:** `math.range.inverse_lerp`
- **Categoria:** Matemática
- **Finalidade:** Calcula `inverse lerp` para valores do tipo range; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores range; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Inverse Lerp` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 230. Remap

- **ID:** `math.range.remap`
- **Categoria:** Matemática
- **Finalidade:** Calcula `remap` para valores do tipo range; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores range; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Remap` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 231. Smoothstep

- **ID:** `math.range.smoothstep`
- **Categoria:** Matemática
- **Finalidade:** Calcula `smoothstep` para valores do tipo range; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores range; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Smoothstep` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 232. Move Towards

- **ID:** `math.range.move_towards`
- **Categoria:** Matemática
- **Finalidade:** Calcula `move towards` para valores do tipo range; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores range; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Move Towards` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 233. Random Range

- **ID:** `math.range.random_range`
- **Categoria:** Matemática
- **Finalidade:** Calcula `random range` para valores do tipo range; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores range; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Random Range` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 234. Equal

- **ID:** `compare.boolean.equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `equal` para valores do tipo boolean; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 235. Not Equal

- **ID:** `compare.boolean.not_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `not equal` para valores do tipo boolean; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Not Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 236. Greater

- **ID:** `compare.boolean.greater`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater` para valores do tipo boolean; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 237. Greater Equal

- **ID:** `compare.boolean.greater_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater equal` para valores do tipo boolean; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 238. Less

- **ID:** `compare.boolean.less`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less` para valores do tipo boolean; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 239. Less Equal

- **ID:** `compare.boolean.less_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less equal` para valores do tipo boolean; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 240. Between

- **ID:** `compare.boolean.between`
- **Categoria:** Comparação
- **Finalidade:** Calcula `between` para valores do tipo boolean; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Between` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 241. Outside

- **ID:** `compare.boolean.outside`
- **Categoria:** Comparação
- **Finalidade:** Calcula `outside` para valores do tipo boolean; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Outside` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 242. Approximately

- **ID:** `compare.boolean.approximately`
- **Categoria:** Comparação
- **Finalidade:** Calcula `approximately` para valores do tipo boolean; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Approximately` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 243. Is Null

- **ID:** `compare.boolean.is_null`
- **Categoria:** Comparação
- **Finalidade:** Calcula `is null` para valores do tipo boolean; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor boolean que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Null` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 244. Equal

- **ID:** `compare.number.equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `equal` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 245. Not Equal

- **ID:** `compare.number.not_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `not equal` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Not Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 246. Greater

- **ID:** `compare.number.greater`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 247. Greater Equal

- **ID:** `compare.number.greater_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater equal` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 248. Less

- **ID:** `compare.number.less`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 249. Less Equal

- **ID:** `compare.number.less_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less equal` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 250. Between

- **ID:** `compare.number.between`
- **Categoria:** Comparação
- **Finalidade:** Calcula `between` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Between` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 251. Outside

- **ID:** `compare.number.outside`
- **Categoria:** Comparação
- **Finalidade:** Calcula `outside` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Outside` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 252. Approximately

- **ID:** `compare.number.approximately`
- **Categoria:** Comparação
- **Finalidade:** Calcula `approximately` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Approximately` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 253. Is Null

- **ID:** `compare.number.is_null`
- **Categoria:** Comparação
- **Finalidade:** Calcula `is null` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor number que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Null` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 254. Equal

- **ID:** `compare.text.equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `equal` para valores do tipo text; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 255. Not Equal

- **ID:** `compare.text.not_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `not equal` para valores do tipo text; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Not Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 256. Greater

- **ID:** `compare.text.greater`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater` para valores do tipo text; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 257. Greater Equal

- **ID:** `compare.text.greater_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater equal` para valores do tipo text; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 258. Less

- **ID:** `compare.text.less`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less` para valores do tipo text; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 259. Less Equal

- **ID:** `compare.text.less_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less equal` para valores do tipo text; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 260. Between

- **ID:** `compare.text.between`
- **Categoria:** Comparação
- **Finalidade:** Calcula `between` para valores do tipo text; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Between` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 261. Outside

- **ID:** `compare.text.outside`
- **Categoria:** Comparação
- **Finalidade:** Calcula `outside` para valores do tipo text; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Outside` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 262. Approximately

- **ID:** `compare.text.approximately`
- **Categoria:** Comparação
- **Finalidade:** Calcula `approximately` para valores do tipo text; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Approximately` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 263. Is Null

- **ID:** `compare.text.is_null`
- **Categoria:** Comparação
- **Finalidade:** Calcula `is null` para valores do tipo text; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor text que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Null` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 264. Equal

- **ID:** `compare.vector2.equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `equal` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 265. Not Equal

- **ID:** `compare.vector2.not_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `not equal` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Not Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 266. Greater

- **ID:** `compare.vector2.greater`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 267. Greater Equal

- **ID:** `compare.vector2.greater_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater equal` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 268. Less

- **ID:** `compare.vector2.less`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 269. Less Equal

- **ID:** `compare.vector2.less_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less equal` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 270. Between

- **ID:** `compare.vector2.between`
- **Categoria:** Comparação
- **Finalidade:** Calcula `between` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Between` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 271. Outside

- **ID:** `compare.vector2.outside`
- **Categoria:** Comparação
- **Finalidade:** Calcula `outside` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Outside` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 272. Approximately

- **ID:** `compare.vector2.approximately`
- **Categoria:** Comparação
- **Finalidade:** Calcula `approximately` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Approximately` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 273. Is Null

- **ID:** `compare.vector2.is_null`
- **Categoria:** Comparação
- **Finalidade:** Calcula `is null` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector2 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Null` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 274. Equal

- **ID:** `compare.vector3.equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `equal` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 275. Not Equal

- **ID:** `compare.vector3.not_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `not equal` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Not Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 276. Greater

- **ID:** `compare.vector3.greater`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 277. Greater Equal

- **ID:** `compare.vector3.greater_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater equal` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 278. Less

- **ID:** `compare.vector3.less`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 279. Less Equal

- **ID:** `compare.vector3.less_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less equal` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 280. Between

- **ID:** `compare.vector3.between`
- **Categoria:** Comparação
- **Finalidade:** Calcula `between` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Between` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 281. Outside

- **ID:** `compare.vector3.outside`
- **Categoria:** Comparação
- **Finalidade:** Calcula `outside` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Outside` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 282. Approximately

- **ID:** `compare.vector3.approximately`
- **Categoria:** Comparação
- **Finalidade:** Calcula `approximately` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Approximately` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 283. Is Null

- **ID:** `compare.vector3.is_null`
- **Categoria:** Comparação
- **Finalidade:** Calcula `is null` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector3 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Null` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 284. Equal

- **ID:** `compare.color.equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `equal` para valores do tipo color; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 285. Not Equal

- **ID:** `compare.color.not_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `not equal` para valores do tipo color; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Not Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 286. Greater

- **ID:** `compare.color.greater`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater` para valores do tipo color; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 287. Greater Equal

- **ID:** `compare.color.greater_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater equal` para valores do tipo color; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 288. Less

- **ID:** `compare.color.less`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less` para valores do tipo color; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 289. Less Equal

- **ID:** `compare.color.less_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less equal` para valores do tipo color; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 290. Between

- **ID:** `compare.color.between`
- **Categoria:** Comparação
- **Finalidade:** Calcula `between` para valores do tipo color; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Between` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 291. Outside

- **ID:** `compare.color.outside`
- **Categoria:** Comparação
- **Finalidade:** Calcula `outside` para valores do tipo color; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Outside` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 292. Approximately

- **ID:** `compare.color.approximately`
- **Categoria:** Comparação
- **Finalidade:** Calcula `approximately` para valores do tipo color; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Approximately` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 293. Is Null

- **ID:** `compare.color.is_null`
- **Categoria:** Comparação
- **Finalidade:** Calcula `is null` para valores do tipo color; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor color que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Null` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 294. Equal

- **ID:** `compare.object.equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `equal` para valores do tipo object; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 295. Not Equal

- **ID:** `compare.object.not_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `not equal` para valores do tipo object; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Not Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 296. Greater

- **ID:** `compare.object.greater`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater` para valores do tipo object; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 297. Greater Equal

- **ID:** `compare.object.greater_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater equal` para valores do tipo object; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 298. Less

- **ID:** `compare.object.less`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less` para valores do tipo object; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 299. Less Equal

- **ID:** `compare.object.less_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less equal` para valores do tipo object; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 300. Between

- **ID:** `compare.object.between`
- **Categoria:** Comparação
- **Finalidade:** Calcula `between` para valores do tipo object; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Between` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 301. Outside

- **ID:** `compare.object.outside`
- **Categoria:** Comparação
- **Finalidade:** Calcula `outside` para valores do tipo object; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Outside` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 302. Approximately

- **ID:** `compare.object.approximately`
- **Categoria:** Comparação
- **Finalidade:** Calcula `approximately` para valores do tipo object; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Approximately` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 303. Is Null

- **ID:** `compare.object.is_null`
- **Categoria:** Comparação
- **Finalidade:** Calcula `is null` para valores do tipo object; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor object que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Null` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 304. Equal

- **ID:** `compare.asset.equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `equal` para valores do tipo asset; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 305. Not Equal

- **ID:** `compare.asset.not_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `not equal` para valores do tipo asset; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Not Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 306. Greater

- **ID:** `compare.asset.greater`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater` para valores do tipo asset; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 307. Greater Equal

- **ID:** `compare.asset.greater_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater equal` para valores do tipo asset; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 308. Less

- **ID:** `compare.asset.less`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less` para valores do tipo asset; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 309. Less Equal

- **ID:** `compare.asset.less_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less equal` para valores do tipo asset; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 310. Between

- **ID:** `compare.asset.between`
- **Categoria:** Comparação
- **Finalidade:** Calcula `between` para valores do tipo asset; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Between` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 311. Outside

- **ID:** `compare.asset.outside`
- **Categoria:** Comparação
- **Finalidade:** Calcula `outside` para valores do tipo asset; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Outside` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 312. Approximately

- **ID:** `compare.asset.approximately`
- **Categoria:** Comparação
- **Finalidade:** Calcula `approximately` para valores do tipo asset; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Approximately` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 313. Is Null

- **ID:** `compare.asset.is_null`
- **Categoria:** Comparação
- **Finalidade:** Calcula `is null` para valores do tipo asset; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor asset que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Null` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 314. Add

- **ID:** `vector.vector2.add`
- **Categoria:** Vetor
- **Finalidade:** Calcula `add` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Add` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 315. Subtract

- **ID:** `vector.vector2.subtract`
- **Categoria:** Vetor
- **Finalidade:** Calcula `subtract` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Subtract` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 316. Multiply

- **ID:** `vector.vector2.multiply`
- **Categoria:** Vetor
- **Finalidade:** Calcula `multiply` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Multiply` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 317. Divide

- **ID:** `vector.vector2.divide`
- **Categoria:** Vetor
- **Finalidade:** Calcula `divide` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Divide` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 318. Scale

- **ID:** `vector.vector2.scale`
- **Categoria:** Vetor
- **Finalidade:** Calcula `scale` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Scale` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 319. Normalize

- **ID:** `vector.vector2.normalize`
- **Categoria:** Vetor
- **Finalidade:** Calcula `normalize` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector2 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Normalize` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 320. Length

- **ID:** `vector.vector2.length`
- **Categoria:** Vetor
- **Finalidade:** Calcula `length` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector2 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Length` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 321. Length Squared

- **ID:** `vector.vector2.length_squared`
- **Categoria:** Vetor
- **Finalidade:** Calcula `length squared` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Length Squared` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 322. Distance

- **ID:** `vector.vector2.distance`
- **Categoria:** Vetor
- **Finalidade:** Calcula `distance` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Distance` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 323. Dot

- **ID:** `vector.vector2.dot`
- **Categoria:** Vetor
- **Finalidade:** Calcula `dot` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Dot` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 324. Cross

- **ID:** `vector.vector2.cross`
- **Categoria:** Vetor
- **Finalidade:** Calcula `cross` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Cross` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 325. Lerp

- **ID:** `vector.vector2.lerp`
- **Categoria:** Vetor
- **Finalidade:** Calcula `lerp` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Lerp` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 326. Move Towards

- **ID:** `vector.vector2.move_towards`
- **Categoria:** Vetor
- **Finalidade:** Calcula `move towards` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Move Towards` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 327. Reflect

- **ID:** `vector.vector2.reflect`
- **Categoria:** Vetor
- **Finalidade:** Calcula `reflect` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Reflect` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 328. Project

- **ID:** `vector.vector2.project`
- **Categoria:** Vetor
- **Finalidade:** Calcula `project` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Project` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 329. Angle

- **ID:** `vector.vector2.angle`
- **Categoria:** Vetor
- **Finalidade:** Calcula `angle` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Angle` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 330. Clamp Length

- **ID:** `vector.vector2.clamp_length`
- **Categoria:** Vetor
- **Finalidade:** Calcula `clamp length` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Clamp Length` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 331. Minimum

- **ID:** `vector.vector2.minimum`
- **Categoria:** Vetor
- **Finalidade:** Calcula `minimum` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Minimum` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 332. Maximum

- **ID:** `vector.vector2.maximum`
- **Categoria:** Vetor
- **Finalidade:** Calcula `maximum` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Maximum` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 333. Absolute

- **ID:** `vector.vector2.absolute`
- **Categoria:** Vetor
- **Finalidade:** Calcula `absolute` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector2 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Absolute` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 334. Floor

- **ID:** `vector.vector2.floor`
- **Categoria:** Vetor
- **Finalidade:** Calcula `floor` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector2 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Floor` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 335. Ceil

- **ID:** `vector.vector2.ceil`
- **Categoria:** Vetor
- **Finalidade:** Calcula `ceil` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector2 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Ceil` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 336. Round

- **ID:** `vector.vector2.round`
- **Categoria:** Vetor
- **Finalidade:** Calcula `round` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector2 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Round` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 337. Snap

- **ID:** `vector.vector2.snap`
- **Categoria:** Vetor
- **Finalidade:** Calcula `snap` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Snap` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 338. Rotate

- **ID:** `vector.vector2.rotate`
- **Categoria:** Vetor
- **Finalidade:** Calcula `rotate` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Rotate` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 339. Inverse

- **ID:** `vector.vector2.inverse`
- **Categoria:** Vetor
- **Finalidade:** Calcula `inverse` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Inverse` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 340. Is Zero

- **ID:** `vector.vector2.is_zero`
- **Categoria:** Vetor
- **Finalidade:** Calcula `is zero` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector2 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Zero` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 341. Is Finite

- **ID:** `vector.vector2.is_finite`
- **Categoria:** Vetor
- **Finalidade:** Calcula `is finite` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector2 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Finite` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 342. Make

- **ID:** `vector.vector2.make`
- **Categoria:** Vetor
- **Finalidade:** Calcula `make` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Make` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 343. Split

- **ID:** `vector.vector2.split`
- **Categoria:** Vetor
- **Finalidade:** Calcula `split` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Split` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 344. With X

- **ID:** `vector.vector2.with_x`
- **Categoria:** Vetor
- **Finalidade:** Calcula `with x` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `With X` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 345. With Y

- **ID:** `vector.vector2.with_y`
- **Categoria:** Vetor
- **Finalidade:** Calcula `with y` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `With Y` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 346. With Z

- **ID:** `vector.vector2.with_z`
- **Categoria:** Vetor
- **Finalidade:** Calcula `with z` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `With Z` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 347. With W

- **ID:** `vector.vector2.with_w`
- **Categoria:** Vetor
- **Finalidade:** Calcula `with w` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `With W` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 348. Add

- **ID:** `vector.vector3.add`
- **Categoria:** Vetor
- **Finalidade:** Calcula `add` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Add` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 349. Subtract

- **ID:** `vector.vector3.subtract`
- **Categoria:** Vetor
- **Finalidade:** Calcula `subtract` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Subtract` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 350. Multiply

- **ID:** `vector.vector3.multiply`
- **Categoria:** Vetor
- **Finalidade:** Calcula `multiply` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Multiply` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 351. Divide

- **ID:** `vector.vector3.divide`
- **Categoria:** Vetor
- **Finalidade:** Calcula `divide` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Divide` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 352. Scale

- **ID:** `vector.vector3.scale`
- **Categoria:** Vetor
- **Finalidade:** Calcula `scale` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Scale` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 353. Normalize

- **ID:** `vector.vector3.normalize`
- **Categoria:** Vetor
- **Finalidade:** Calcula `normalize` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector3 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Normalize` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 354. Length

- **ID:** `vector.vector3.length`
- **Categoria:** Vetor
- **Finalidade:** Calcula `length` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector3 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Length` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 355. Length Squared

- **ID:** `vector.vector3.length_squared`
- **Categoria:** Vetor
- **Finalidade:** Calcula `length squared` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Length Squared` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 356. Distance

- **ID:** `vector.vector3.distance`
- **Categoria:** Vetor
- **Finalidade:** Calcula `distance` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Distance` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 357. Dot

- **ID:** `vector.vector3.dot`
- **Categoria:** Vetor
- **Finalidade:** Calcula `dot` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Dot` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 358. Cross

- **ID:** `vector.vector3.cross`
- **Categoria:** Vetor
- **Finalidade:** Calcula `cross` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Cross` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 359. Lerp

- **ID:** `vector.vector3.lerp`
- **Categoria:** Vetor
- **Finalidade:** Calcula `lerp` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Lerp` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 360. Move Towards

- **ID:** `vector.vector3.move_towards`
- **Categoria:** Vetor
- **Finalidade:** Calcula `move towards` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Move Towards` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 361. Reflect

- **ID:** `vector.vector3.reflect`
- **Categoria:** Vetor
- **Finalidade:** Calcula `reflect` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Reflect` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 362. Project

- **ID:** `vector.vector3.project`
- **Categoria:** Vetor
- **Finalidade:** Calcula `project` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Project` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 363. Angle

- **ID:** `vector.vector3.angle`
- **Categoria:** Vetor
- **Finalidade:** Calcula `angle` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Angle` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 364. Clamp Length

- **ID:** `vector.vector3.clamp_length`
- **Categoria:** Vetor
- **Finalidade:** Calcula `clamp length` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Clamp Length` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 365. Minimum

- **ID:** `vector.vector3.minimum`
- **Categoria:** Vetor
- **Finalidade:** Calcula `minimum` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Minimum` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 366. Maximum

- **ID:** `vector.vector3.maximum`
- **Categoria:** Vetor
- **Finalidade:** Calcula `maximum` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Maximum` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 367. Absolute

- **ID:** `vector.vector3.absolute`
- **Categoria:** Vetor
- **Finalidade:** Calcula `absolute` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector3 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Absolute` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 368. Floor

- **ID:** `vector.vector3.floor`
- **Categoria:** Vetor
- **Finalidade:** Calcula `floor` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector3 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Floor` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 369. Ceil

- **ID:** `vector.vector3.ceil`
- **Categoria:** Vetor
- **Finalidade:** Calcula `ceil` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector3 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Ceil` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 370. Round

- **ID:** `vector.vector3.round`
- **Categoria:** Vetor
- **Finalidade:** Calcula `round` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector3 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Round` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 371. Snap

- **ID:** `vector.vector3.snap`
- **Categoria:** Vetor
- **Finalidade:** Calcula `snap` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Snap` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 372. Rotate

- **ID:** `vector.vector3.rotate`
- **Categoria:** Vetor
- **Finalidade:** Calcula `rotate` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Rotate` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 373. Inverse

- **ID:** `vector.vector3.inverse`
- **Categoria:** Vetor
- **Finalidade:** Calcula `inverse` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Inverse` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 374. Is Zero

- **ID:** `vector.vector3.is_zero`
- **Categoria:** Vetor
- **Finalidade:** Calcula `is zero` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector3 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Zero` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 375. Is Finite

- **ID:** `vector.vector3.is_finite`
- **Categoria:** Vetor
- **Finalidade:** Calcula `is finite` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector3 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Finite` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 376. Make

- **ID:** `vector.vector3.make`
- **Categoria:** Vetor
- **Finalidade:** Calcula `make` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Make` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 377. Split

- **ID:** `vector.vector3.split`
- **Categoria:** Vetor
- **Finalidade:** Calcula `split` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Split` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 378. With X

- **ID:** `vector.vector3.with_x`
- **Categoria:** Vetor
- **Finalidade:** Calcula `with x` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `With X` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 379. With Y

- **ID:** `vector.vector3.with_y`
- **Categoria:** Vetor
- **Finalidade:** Calcula `with y` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `With Y` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 380. With Z

- **ID:** `vector.vector3.with_z`
- **Categoria:** Vetor
- **Finalidade:** Calcula `with z` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `With Z` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 381. With W

- **ID:** `vector.vector3.with_w`
- **Categoria:** Vetor
- **Finalidade:** Calcula `with w` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `With W` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 382. Add

- **ID:** `vector.vector4.add`
- **Categoria:** Vetor
- **Finalidade:** Calcula `add` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Add` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 383. Subtract

- **ID:** `vector.vector4.subtract`
- **Categoria:** Vetor
- **Finalidade:** Calcula `subtract` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Subtract` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 384. Multiply

- **ID:** `vector.vector4.multiply`
- **Categoria:** Vetor
- **Finalidade:** Calcula `multiply` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Multiply` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 385. Divide

- **ID:** `vector.vector4.divide`
- **Categoria:** Vetor
- **Finalidade:** Calcula `divide` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Divide` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 386. Scale

- **ID:** `vector.vector4.scale`
- **Categoria:** Vetor
- **Finalidade:** Calcula `scale` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Scale` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 387. Normalize

- **ID:** `vector.vector4.normalize`
- **Categoria:** Vetor
- **Finalidade:** Calcula `normalize` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector4 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Normalize` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 388. Length

- **ID:** `vector.vector4.length`
- **Categoria:** Vetor
- **Finalidade:** Calcula `length` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector4 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Length` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 389. Length Squared

- **ID:** `vector.vector4.length_squared`
- **Categoria:** Vetor
- **Finalidade:** Calcula `length squared` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Length Squared` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 390. Distance

- **ID:** `vector.vector4.distance`
- **Categoria:** Vetor
- **Finalidade:** Calcula `distance` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Distance` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 391. Dot

- **ID:** `vector.vector4.dot`
- **Categoria:** Vetor
- **Finalidade:** Calcula `dot` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Dot` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 392. Cross

- **ID:** `vector.vector4.cross`
- **Categoria:** Vetor
- **Finalidade:** Calcula `cross` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Cross` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 393. Lerp

- **ID:** `vector.vector4.lerp`
- **Categoria:** Vetor
- **Finalidade:** Calcula `lerp` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Lerp` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 394. Move Towards

- **ID:** `vector.vector4.move_towards`
- **Categoria:** Vetor
- **Finalidade:** Calcula `move towards` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Move Towards` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 395. Reflect

- **ID:** `vector.vector4.reflect`
- **Categoria:** Vetor
- **Finalidade:** Calcula `reflect` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Reflect` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 396. Project

- **ID:** `vector.vector4.project`
- **Categoria:** Vetor
- **Finalidade:** Calcula `project` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Project` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 397. Angle

- **ID:** `vector.vector4.angle`
- **Categoria:** Vetor
- **Finalidade:** Calcula `angle` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Angle` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 398. Clamp Length

- **ID:** `vector.vector4.clamp_length`
- **Categoria:** Vetor
- **Finalidade:** Calcula `clamp length` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Clamp Length` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 399. Minimum

- **ID:** `vector.vector4.minimum`
- **Categoria:** Vetor
- **Finalidade:** Calcula `minimum` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Minimum` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 400. Maximum

- **ID:** `vector.vector4.maximum`
- **Categoria:** Vetor
- **Finalidade:** Calcula `maximum` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Maximum` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 401. Absolute

- **ID:** `vector.vector4.absolute`
- **Categoria:** Vetor
- **Finalidade:** Calcula `absolute` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector4 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Absolute` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 402. Floor

- **ID:** `vector.vector4.floor`
- **Categoria:** Vetor
- **Finalidade:** Calcula `floor` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector4 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Floor` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 403. Ceil

- **ID:** `vector.vector4.ceil`
- **Categoria:** Vetor
- **Finalidade:** Calcula `ceil` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector4 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Ceil` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 404. Round

- **ID:** `vector.vector4.round`
- **Categoria:** Vetor
- **Finalidade:** Calcula `round` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector4 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Round` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 405. Snap

- **ID:** `vector.vector4.snap`
- **Categoria:** Vetor
- **Finalidade:** Calcula `snap` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Snap` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 406. Rotate

- **ID:** `vector.vector4.rotate`
- **Categoria:** Vetor
- **Finalidade:** Calcula `rotate` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Rotate` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 407. Inverse

- **ID:** `vector.vector4.inverse`
- **Categoria:** Vetor
- **Finalidade:** Calcula `inverse` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Inverse` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 408. Is Zero

- **ID:** `vector.vector4.is_zero`
- **Categoria:** Vetor
- **Finalidade:** Calcula `is zero` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector4 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Zero` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 409. Is Finite

- **ID:** `vector.vector4.is_finite`
- **Categoria:** Vetor
- **Finalidade:** Calcula `is finite` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector4 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Finite` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 410. Make

- **ID:** `vector.vector4.make`
- **Categoria:** Vetor
- **Finalidade:** Calcula `make` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Make` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 411. Split

- **ID:** `vector.vector4.split`
- **Categoria:** Vetor
- **Finalidade:** Calcula `split` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Split` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 412. With X

- **ID:** `vector.vector4.with_x`
- **Categoria:** Vetor
- **Finalidade:** Calcula `with x` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `With X` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 413. With Y

- **ID:** `vector.vector4.with_y`
- **Categoria:** Vetor
- **Finalidade:** Calcula `with y` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `With Y` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 414. With Z

- **ID:** `vector.vector4.with_z`
- **Categoria:** Vetor
- **Finalidade:** Calcula `with z` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `With Z` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 415. With W

- **ID:** `vector.vector4.with_w`
- **Categoria:** Vetor
- **Finalidade:** Calcula `with w` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `With W` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** Emite `graph_error` para tipos incompatíveis ou entradas ausentes. Divisão por zero, valores não finitos e operações inválidas devem ser tratados antes com nós de comparação/branch.

## 416. Make Rgb

- **ID:** `color.make_rgb`
- **Categoria:** Cor
- **Finalidade:** Calcula `make rgb` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Make Rgb → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 417. Make Rgba

- **ID:** `color.make_rgba`
- **Categoria:** Cor
- **Finalidade:** Calcula `make rgba` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Make Rgba → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 418. Split Rgb

- **ID:** `color.split_rgb`
- **Categoria:** Cor
- **Finalidade:** Calcula `split rgb` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Split Rgb → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 419. Split Rgba

- **ID:** `color.split_rgba`
- **Categoria:** Cor
- **Finalidade:** Calcula `split rgba` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Split Rgba → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 420. From Hex

- **ID:** `color.from_hex`
- **Categoria:** Cor
- **Finalidade:** Calcula `from hex` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color From Hex → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 421. To Hex

- **ID:** `color.to_hex`
- **Categoria:** Cor
- **Finalidade:** Calcula `to hex` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color To Hex → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 422. From Hsv

- **ID:** `color.from_hsv`
- **Categoria:** Cor
- **Finalidade:** Calcula `from hsv` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color From Hsv → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 423. To Hsv

- **ID:** `color.to_hsv`
- **Categoria:** Cor
- **Finalidade:** Calcula `to hsv` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color To Hsv → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 424. Lerp

- **ID:** `color.lerp`
- **Categoria:** Cor
- **Finalidade:** Calcula `lerp` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Lerp → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 425. Blend Add

- **ID:** `color.blend_add`
- **Categoria:** Cor
- **Finalidade:** Calcula `blend add` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Blend Add → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 426. Blend Multiply

- **ID:** `color.blend_multiply`
- **Categoria:** Cor
- **Finalidade:** Calcula `blend multiply` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Blend Multiply → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 427. Blend Screen

- **ID:** `color.blend_screen`
- **Categoria:** Cor
- **Finalidade:** Calcula `blend screen` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Blend Screen → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 428. Blend Overlay

- **ID:** `color.blend_overlay`
- **Categoria:** Cor
- **Finalidade:** Calcula `blend overlay` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Blend Overlay → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 429. Lighten

- **ID:** `color.lighten`
- **Categoria:** Cor
- **Finalidade:** Calcula `lighten` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Lighten → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 430. Darken

- **ID:** `color.darken`
- **Categoria:** Cor
- **Finalidade:** Calcula `darken` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Darken → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 431. Saturate

- **ID:** `color.saturate`
- **Categoria:** Cor
- **Finalidade:** Calcula `saturate` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Saturate → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 432. Desaturate

- **ID:** `color.desaturate`
- **Categoria:** Cor
- **Finalidade:** Calcula `desaturate` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Desaturate → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 433. Invert

- **ID:** `color.invert`
- **Categoria:** Cor
- **Finalidade:** Calcula `invert` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Invert → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 434. Grayscale

- **ID:** `color.grayscale`
- **Categoria:** Cor
- **Finalidade:** Calcula `grayscale` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Grayscale → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 435. Alpha

- **ID:** `color.alpha`
- **Categoria:** Cor
- **Finalidade:** Calcula `alpha` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Alpha → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 436. With Alpha

- **ID:** `color.with_alpha`
- **Categoria:** Cor
- **Finalidade:** Calcula `with alpha` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color With Alpha → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 437. Luminance

- **ID:** `color.luminance`
- **Categoria:** Cor
- **Finalidade:** Calcula `luminance` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Luminance → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 438. Contrast

- **ID:** `color.contrast`
- **Categoria:** Cor
- **Finalidade:** Calcula `contrast` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Contrast → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 439. Temperature

- **ID:** `color.temperature`
- **Categoria:** Cor
- **Finalidade:** Calcula `temperature` usando valores `Color` com canais vermelho, verde, azul e alfa entre 0 e 1.
- **Entradas/alvo:** Recebe uma ou duas cores; operações de criação usam canais/hex/HSV e misturas recebem um fator entre `0.0` e `1.0`.
- **Saídas/efeito:** Retorna uma nova `Color`; o bloco não altera material ou interface até a saída ser conectada a `Material Set Color` ou `UI Set Color`.
- **Exemplo:** Exemplo: `Color Temperature → Material Set Color`, alvo `../Player/Mesh`, para aplicar o resultado visualmente.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 440. Append

- **ID:** `text.append`
- **Categoria:** Texto
- **Finalidade:** Aplica `append` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Append → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 441. Prepend

- **ID:** `text.prepend`
- **Categoria:** Texto
- **Finalidade:** Aplica `prepend` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Prepend → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 442. Join

- **ID:** `text.join`
- **Categoria:** Texto
- **Finalidade:** Aplica `join` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Join → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 443. Split

- **ID:** `text.split`
- **Categoria:** Texto
- **Finalidade:** Aplica `split` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Split → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 444. Replace

- **ID:** `text.replace`
- **Categoria:** Texto
- **Finalidade:** Aplica `replace` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Replace → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 445. Replace First

- **ID:** `text.replace_first`
- **Categoria:** Texto
- **Finalidade:** Aplica `replace first` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Replace First → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 446. Contains

- **ID:** `text.contains`
- **Categoria:** Texto
- **Finalidade:** Aplica `contains` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Contains → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 447. Starts With

- **ID:** `text.starts_with`
- **Categoria:** Texto
- **Finalidade:** Aplica `starts with` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Starts With → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 448. Ends With

- **ID:** `text.ends_with`
- **Categoria:** Texto
- **Finalidade:** Aplica `ends with` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Ends With → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 449. Equals Ignore Case

- **ID:** `text.equals_ignore_case`
- **Categoria:** Texto
- **Finalidade:** Aplica `equals ignore case` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Equals Ignore Case → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 450. Uppercase

- **ID:** `text.uppercase`
- **Categoria:** Texto
- **Finalidade:** Aplica `uppercase` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Uppercase → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 451. Lowercase

- **ID:** `text.lowercase`
- **Categoria:** Texto
- **Finalidade:** Aplica `lowercase` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Lowercase → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 452. Capitalize

- **ID:** `text.capitalize`
- **Categoria:** Texto
- **Finalidade:** Aplica `capitalize` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Capitalize → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 453. Trim

- **ID:** `text.trim`
- **Categoria:** Texto
- **Finalidade:** Aplica `trim` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Trim → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 454. Trim Start

- **ID:** `text.trim_start`
- **Categoria:** Texto
- **Finalidade:** Aplica `trim start` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Trim Start → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 455. Trim End

- **ID:** `text.trim_end`
- **Categoria:** Texto
- **Finalidade:** Aplica `trim end` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Trim End → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 456. Substring

- **ID:** `text.substring`
- **Categoria:** Texto
- **Finalidade:** Aplica `substring` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Substring → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 457. Character At

- **ID:** `text.character_at`
- **Categoria:** Texto
- **Finalidade:** Aplica `character at` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Character At → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 458. Length

- **ID:** `text.length`
- **Categoria:** Texto
- **Finalidade:** Aplica `length` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Length → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 459. Is Empty

- **ID:** `text.is_empty`
- **Categoria:** Texto
- **Finalidade:** Aplica `is empty` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Is Empty → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 460. Is Blank

- **ID:** `text.is_blank`
- **Categoria:** Texto
- **Finalidade:** Aplica `is blank` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Is Blank → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 461. Pad Start

- **ID:** `text.pad_start`
- **Categoria:** Texto
- **Finalidade:** Aplica `pad start` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Pad Start → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 462. Pad End

- **ID:** `text.pad_end`
- **Categoria:** Texto
- **Finalidade:** Aplica `pad end` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Pad End → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 463. Repeat

- **ID:** `text.repeat`
- **Categoria:** Texto
- **Finalidade:** Aplica `repeat` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Repeat → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 464. Reverse

- **ID:** `text.reverse`
- **Categoria:** Texto
- **Finalidade:** Aplica `reverse` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Reverse → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 465. Format

- **ID:** `text.format`
- **Categoria:** Texto
- **Finalidade:** Aplica `format` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Format → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 466. Number To Text

- **ID:** `text.number_to_text`
- **Categoria:** Texto
- **Finalidade:** Aplica `number to text` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Number To Text → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 467. Bool To Text

- **ID:** `text.bool_to_text`
- **Categoria:** Texto
- **Finalidade:** Aplica `bool to text` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Bool To Text → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 468. Vector To Text

- **ID:** `text.vector_to_text`
- **Categoria:** Texto
- **Finalidade:** Aplica `vector to text` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Vector To Text → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 469. Parse Number

- **ID:** `text.parse_number`
- **Categoria:** Texto
- **Finalidade:** Aplica `parse number` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Parse Number → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 470. Parse Bool

- **ID:** `text.parse_bool`
- **Categoria:** Texto
- **Finalidade:** Aplica `parse bool` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Parse Bool → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 471. Regex Matches

- **ID:** `text.regex_matches`
- **Categoria:** Texto
- **Finalidade:** Aplica `regex matches` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Regex Matches → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 472. Regex Find

- **ID:** `text.regex_find`
- **Categoria:** Texto
- **Finalidade:** Aplica `regex find` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Regex Find → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 473. Regex Replace

- **ID:** `text.regex_replace`
- **Categoria:** Texto
- **Finalidade:** Aplica `regex replace` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Regex Replace → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 474. Lines

- **ID:** `text.lines`
- **Categoria:** Texto
- **Finalidade:** Aplica `lines` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Lines → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 475. Words

- **ID:** `text.words`
- **Categoria:** Texto
- **Finalidade:** Aplica `words` a texto. Use este bloco para preparar nomes, mensagens, placares, comandos ou dados antes de exibi-los ou salvá-los.
- **Entradas/alvo:** `text`: texto principal; operações de combinação recebem `value`/`separator`, buscas recebem trecho/padrão e operações por posição recebem `index`/`length`.
- **Saídas/efeito:** Retorna o novo texto, número, booleano, lista de trechos ou posição encontrada, sem alterar o texto original.
- **Exemplo:** Exemplo: conecte `UI Get Text → Words → UI Set Text`; configure os parâmetros do bloco para transformar a mensagem antes de devolvê-la ao rótulo.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 476. Find By Name

- **ID:** `object.find_by_name`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `find by name` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Find By Name`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 477. Find By Tag

- **ID:** `object.find_by_tag`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `find by tag` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Find By Tag`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 478. Find By Id

- **ID:** `object.find_by_id`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `find by id` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Find By Id`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 479. Create

- **ID:** `object.create`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `create` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Create`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 480. Clone

- **ID:** `object.clone`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `clone` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Clone`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 481. Destroy

- **ID:** `object.destroy`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `destroy` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Destroy`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 482. Enable

- **ID:** `object.enable`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `enable` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Enable`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 483. Disable

- **ID:** `object.disable`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `disable` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Disable`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 484. Toggle Enabled

- **ID:** `object.toggle_enabled`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `toggle enabled` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Toggle Enabled`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 485. Set Name

- **ID:** `object.set_name`
- **Categoria:** Objeto
- **Finalidade:** Define `name` no sistema de objeto da cena do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de name, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza name no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Name`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 486. Get Name

- **ID:** `object.get_name`
- **Categoria:** Objeto
- **Finalidade:** Consulta `name` no sistema de objeto da cena sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna name em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Name → Debug Info` mostra o valor atual de name.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 487. Set Parent

- **ID:** `object.set_parent`
- **Categoria:** Objeto
- **Finalidade:** Define `parent` no sistema de objeto da cena do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de parent, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza parent no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Parent`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 488. Get Parent

- **ID:** `object.get_parent`
- **Categoria:** Objeto
- **Finalidade:** Consulta `parent` no sistema de objeto da cena sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna parent em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Parent → Debug Info` mostra o valor atual de parent.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 489. Add Child

- **ID:** `object.add_child`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `add child` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Add Child`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 490. Remove Child

- **ID:** `object.remove_child`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `remove child` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Remove Child`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 491. Get Child

- **ID:** `object.get_child`
- **Categoria:** Objeto
- **Finalidade:** Consulta `child` no sistema de objeto da cena sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna child em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Child → Debug Info` mostra o valor atual de child.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 492. Child Count

- **ID:** `object.child_count`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `child count` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Child Count`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 493. Add Tag

- **ID:** `object.add_tag`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `add tag` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Add Tag`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 494. Remove Tag

- **ID:** `object.remove_tag`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `remove tag` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Remove Tag`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 495. Has Tag

- **ID:** `object.has_tag`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `has tag` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Has Tag`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 496. Send Event

- **ID:** `object.send_event`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `send event` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Send Event`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 497. Send Event Bool

- **ID:** `object.send_event_bool`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `send event bool` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Send Event Bool`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 498. Send Event Number

- **ID:** `object.send_event_number`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `send event number` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Send Event Number`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 499. Send Event Text

- **ID:** `object.send_event_text`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `send event text` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Send Event Text`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 500. Get Component

- **ID:** `object.get_component`
- **Categoria:** Objeto
- **Finalidade:** Consulta `component` no sistema de objeto da cena sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna component em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Component → Debug Info` mostra o valor atual de component.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 501. Has Component

- **ID:** `object.has_component`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `has component` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Has Component`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 502. Add Component

- **ID:** `object.add_component`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `add component` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Add Component`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 503. Remove Component

- **ID:** `object.remove_component`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `remove component` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Remove Component`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 504. Set Layer

- **ID:** `object.set_layer`
- **Categoria:** Objeto
- **Finalidade:** Define `layer` no sistema de objeto da cena do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de layer, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza layer no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Layer`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 505. Get Layer

- **ID:** `object.get_layer`
- **Categoria:** Objeto
- **Finalidade:** Consulta `layer` no sistema de objeto da cena sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna layer em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Layer → Debug Info` mostra o valor atual de layer.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 506. Set Visible

- **ID:** `object.set_visible`
- **Categoria:** Objeto
- **Finalidade:** Define `visible` no sistema de objeto da cena do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de visible, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza visible no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Visible`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 507. Is Visible

- **ID:** `object.is_visible`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `is visible` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Is Visible`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 508. Set Static

- **ID:** `object.set_static`
- **Categoria:** Objeto
- **Finalidade:** Define `static` no sistema de objeto da cena do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de static, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza static no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Static`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 509. Is Static

- **ID:** `object.is_static`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `is static` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Is Static`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 510. Create

- **ID:** `list.number.create`
- **Categoria:** Listas
- **Finalidade:** Executa `create` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Create → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 511. Add

- **ID:** `list.number.add`
- **Categoria:** Listas
- **Finalidade:** Executa `add` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Add → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 512. Insert

- **ID:** `list.number.insert`
- **Categoria:** Listas
- **Finalidade:** Executa `insert` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Insert → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 513. Set

- **ID:** `list.number.set`
- **Categoria:** Listas
- **Finalidade:** Executa `set` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Set → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 514. Get

- **ID:** `list.number.get`
- **Categoria:** Listas
- **Finalidade:** Executa `get` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Get → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 515. First

- **ID:** `list.number.first`
- **Categoria:** Listas
- **Finalidade:** Executa `first` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → First → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 516. Last

- **ID:** `list.number.last`
- **Categoria:** Listas
- **Finalidade:** Executa `last` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Last → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 517. Remove

- **ID:** `list.number.remove`
- **Categoria:** Listas
- **Finalidade:** Executa `remove` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Remove → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 518. Remove At

- **ID:** `list.number.remove_at`
- **Categoria:** Listas
- **Finalidade:** Executa `remove at` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Remove At → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 519. Clear

- **ID:** `list.number.clear`
- **Categoria:** Listas
- **Finalidade:** Executa `clear` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Clear → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 520. Contains

- **ID:** `list.number.contains`
- **Categoria:** Listas
- **Finalidade:** Executa `contains` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Contains → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 521. Index Of

- **ID:** `list.number.index_of`
- **Categoria:** Listas
- **Finalidade:** Executa `index of` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Index Of → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 522. Last Index Of

- **ID:** `list.number.last_index_of`
- **Categoria:** Listas
- **Finalidade:** Executa `last index of` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Last Index Of → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 523. Count

- **ID:** `list.number.count`
- **Categoria:** Listas
- **Finalidade:** Executa `count` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Count → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 524. Is Empty

- **ID:** `list.number.is_empty`
- **Categoria:** Listas
- **Finalidade:** Executa `is empty` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Is Empty → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 525. Reverse

- **ID:** `list.number.reverse`
- **Categoria:** Listas
- **Finalidade:** Executa `reverse` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Reverse → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 526. Shuffle

- **ID:** `list.number.shuffle`
- **Categoria:** Listas
- **Finalidade:** Executa `shuffle` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Shuffle → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 527. Sort

- **ID:** `list.number.sort`
- **Categoria:** Listas
- **Finalidade:** Executa `sort` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Sort → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 528. Distinct

- **ID:** `list.number.distinct`
- **Categoria:** Listas
- **Finalidade:** Executa `distinct` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Distinct → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 529. Slice

- **ID:** `list.number.slice`
- **Categoria:** Listas
- **Finalidade:** Executa `slice` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Slice → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 530. Concat

- **ID:** `list.number.concat`
- **Categoria:** Listas
- **Finalidade:** Executa `concat` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Concat → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 531. Filter

- **ID:** `list.number.filter`
- **Categoria:** Listas
- **Finalidade:** Executa `filter` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Filter → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 532. Map

- **ID:** `list.number.map`
- **Categoria:** Listas
- **Finalidade:** Executa `map` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Map → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 533. Reduce

- **ID:** `list.number.reduce`
- **Categoria:** Listas
- **Finalidade:** Executa `reduce` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Reduce → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 534. Random

- **ID:** `list.number.random`
- **Categoria:** Listas
- **Finalidade:** Executa `random` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Random → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 535. Create

- **ID:** `list.text.create`
- **Categoria:** Listas
- **Finalidade:** Executa `create` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Create → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 536. Add

- **ID:** `list.text.add`
- **Categoria:** Listas
- **Finalidade:** Executa `add` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Add → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 537. Insert

- **ID:** `list.text.insert`
- **Categoria:** Listas
- **Finalidade:** Executa `insert` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Insert → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 538. Set

- **ID:** `list.text.set`
- **Categoria:** Listas
- **Finalidade:** Executa `set` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Set → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 539. Get

- **ID:** `list.text.get`
- **Categoria:** Listas
- **Finalidade:** Executa `get` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Get → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 540. First

- **ID:** `list.text.first`
- **Categoria:** Listas
- **Finalidade:** Executa `first` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → First → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 541. Last

- **ID:** `list.text.last`
- **Categoria:** Listas
- **Finalidade:** Executa `last` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Last → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 542. Remove

- **ID:** `list.text.remove`
- **Categoria:** Listas
- **Finalidade:** Executa `remove` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Remove → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 543. Remove At

- **ID:** `list.text.remove_at`
- **Categoria:** Listas
- **Finalidade:** Executa `remove at` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Remove At → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 544. Clear

- **ID:** `list.text.clear`
- **Categoria:** Listas
- **Finalidade:** Executa `clear` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Clear → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 545. Contains

- **ID:** `list.text.contains`
- **Categoria:** Listas
- **Finalidade:** Executa `contains` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Contains → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 546. Index Of

- **ID:** `list.text.index_of`
- **Categoria:** Listas
- **Finalidade:** Executa `index of` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Index Of → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 547. Last Index Of

- **ID:** `list.text.last_index_of`
- **Categoria:** Listas
- **Finalidade:** Executa `last index of` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Last Index Of → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 548. Count

- **ID:** `list.text.count`
- **Categoria:** Listas
- **Finalidade:** Executa `count` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Count → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 549. Is Empty

- **ID:** `list.text.is_empty`
- **Categoria:** Listas
- **Finalidade:** Executa `is empty` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Is Empty → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 550. Reverse

- **ID:** `list.text.reverse`
- **Categoria:** Listas
- **Finalidade:** Executa `reverse` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Reverse → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 551. Shuffle

- **ID:** `list.text.shuffle`
- **Categoria:** Listas
- **Finalidade:** Executa `shuffle` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Shuffle → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 552. Sort

- **ID:** `list.text.sort`
- **Categoria:** Listas
- **Finalidade:** Executa `sort` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Sort → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 553. Distinct

- **ID:** `list.text.distinct`
- **Categoria:** Listas
- **Finalidade:** Executa `distinct` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Distinct → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 554. Slice

- **ID:** `list.text.slice`
- **Categoria:** Listas
- **Finalidade:** Executa `slice` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Slice → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 555. Concat

- **ID:** `list.text.concat`
- **Categoria:** Listas
- **Finalidade:** Executa `concat` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Concat → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 556. Filter

- **ID:** `list.text.filter`
- **Categoria:** Listas
- **Finalidade:** Executa `filter` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Filter → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 557. Map

- **ID:** `list.text.map`
- **Categoria:** Listas
- **Finalidade:** Executa `map` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Map → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 558. Reduce

- **ID:** `list.text.reduce`
- **Categoria:** Listas
- **Finalidade:** Executa `reduce` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Reduce → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 559. Random

- **ID:** `list.text.random`
- **Categoria:** Listas
- **Finalidade:** Executa `random` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Random → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 560. Create

- **ID:** `list.bool.create`
- **Categoria:** Listas
- **Finalidade:** Executa `create` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Create → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 561. Add

- **ID:** `list.bool.add`
- **Categoria:** Listas
- **Finalidade:** Executa `add` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Add → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 562. Insert

- **ID:** `list.bool.insert`
- **Categoria:** Listas
- **Finalidade:** Executa `insert` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Insert → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 563. Set

- **ID:** `list.bool.set`
- **Categoria:** Listas
- **Finalidade:** Executa `set` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Set → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 564. Get

- **ID:** `list.bool.get`
- **Categoria:** Listas
- **Finalidade:** Executa `get` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Get → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 565. First

- **ID:** `list.bool.first`
- **Categoria:** Listas
- **Finalidade:** Executa `first` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → First → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 566. Last

- **ID:** `list.bool.last`
- **Categoria:** Listas
- **Finalidade:** Executa `last` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Last → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 567. Remove

- **ID:** `list.bool.remove`
- **Categoria:** Listas
- **Finalidade:** Executa `remove` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Remove → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 568. Remove At

- **ID:** `list.bool.remove_at`
- **Categoria:** Listas
- **Finalidade:** Executa `remove at` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Remove At → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 569. Clear

- **ID:** `list.bool.clear`
- **Categoria:** Listas
- **Finalidade:** Executa `clear` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Clear → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 570. Contains

- **ID:** `list.bool.contains`
- **Categoria:** Listas
- **Finalidade:** Executa `contains` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Contains → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 571. Index Of

- **ID:** `list.bool.index_of`
- **Categoria:** Listas
- **Finalidade:** Executa `index of` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Index Of → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 572. Last Index Of

- **ID:** `list.bool.last_index_of`
- **Categoria:** Listas
- **Finalidade:** Executa `last index of` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Last Index Of → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 573. Count

- **ID:** `list.bool.count`
- **Categoria:** Listas
- **Finalidade:** Executa `count` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Count → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 574. Is Empty

- **ID:** `list.bool.is_empty`
- **Categoria:** Listas
- **Finalidade:** Executa `is empty` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Is Empty → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 575. Reverse

- **ID:** `list.bool.reverse`
- **Categoria:** Listas
- **Finalidade:** Executa `reverse` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Reverse → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 576. Shuffle

- **ID:** `list.bool.shuffle`
- **Categoria:** Listas
- **Finalidade:** Executa `shuffle` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Shuffle → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 577. Sort

- **ID:** `list.bool.sort`
- **Categoria:** Listas
- **Finalidade:** Executa `sort` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Sort → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 578. Distinct

- **ID:** `list.bool.distinct`
- **Categoria:** Listas
- **Finalidade:** Executa `distinct` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Distinct → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 579. Slice

- **ID:** `list.bool.slice`
- **Categoria:** Listas
- **Finalidade:** Executa `slice` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Slice → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 580. Concat

- **ID:** `list.bool.concat`
- **Categoria:** Listas
- **Finalidade:** Executa `concat` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Concat → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 581. Filter

- **ID:** `list.bool.filter`
- **Categoria:** Listas
- **Finalidade:** Executa `filter` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Filter → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 582. Map

- **ID:** `list.bool.map`
- **Categoria:** Listas
- **Finalidade:** Executa `map` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Map → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 583. Reduce

- **ID:** `list.bool.reduce`
- **Categoria:** Listas
- **Finalidade:** Executa `reduce` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Reduce → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 584. Random

- **ID:** `list.bool.random`
- **Categoria:** Listas
- **Finalidade:** Executa `random` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Random → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 585. Create

- **ID:** `list.vector3.create`
- **Categoria:** Listas
- **Finalidade:** Executa `create` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Create → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 586. Add

- **ID:** `list.vector3.add`
- **Categoria:** Listas
- **Finalidade:** Executa `add` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Add → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 587. Insert

- **ID:** `list.vector3.insert`
- **Categoria:** Listas
- **Finalidade:** Executa `insert` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Insert → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 588. Set

- **ID:** `list.vector3.set`
- **Categoria:** Listas
- **Finalidade:** Executa `set` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Set → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 589. Get

- **ID:** `list.vector3.get`
- **Categoria:** Listas
- **Finalidade:** Executa `get` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Get → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 590. First

- **ID:** `list.vector3.first`
- **Categoria:** Listas
- **Finalidade:** Executa `first` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → First → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 591. Last

- **ID:** `list.vector3.last`
- **Categoria:** Listas
- **Finalidade:** Executa `last` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Last → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 592. Remove

- **ID:** `list.vector3.remove`
- **Categoria:** Listas
- **Finalidade:** Executa `remove` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Remove → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 593. Remove At

- **ID:** `list.vector3.remove_at`
- **Categoria:** Listas
- **Finalidade:** Executa `remove at` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Remove At → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 594. Clear

- **ID:** `list.vector3.clear`
- **Categoria:** Listas
- **Finalidade:** Executa `clear` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Clear → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 595. Contains

- **ID:** `list.vector3.contains`
- **Categoria:** Listas
- **Finalidade:** Executa `contains` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Contains → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 596. Index Of

- **ID:** `list.vector3.index_of`
- **Categoria:** Listas
- **Finalidade:** Executa `index of` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Index Of → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 597. Last Index Of

- **ID:** `list.vector3.last_index_of`
- **Categoria:** Listas
- **Finalidade:** Executa `last index of` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Last Index Of → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 598. Count

- **ID:** `list.vector3.count`
- **Categoria:** Listas
- **Finalidade:** Executa `count` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Count → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 599. Is Empty

- **ID:** `list.vector3.is_empty`
- **Categoria:** Listas
- **Finalidade:** Executa `is empty` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Is Empty → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 600. Reverse

- **ID:** `list.vector3.reverse`
- **Categoria:** Listas
- **Finalidade:** Executa `reverse` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Reverse → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 601. Shuffle

- **ID:** `list.vector3.shuffle`
- **Categoria:** Listas
- **Finalidade:** Executa `shuffle` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Shuffle → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 602. Sort

- **ID:** `list.vector3.sort`
- **Categoria:** Listas
- **Finalidade:** Executa `sort` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Sort → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 603. Distinct

- **ID:** `list.vector3.distinct`
- **Categoria:** Listas
- **Finalidade:** Executa `distinct` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Distinct → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 604. Slice

- **ID:** `list.vector3.slice`
- **Categoria:** Listas
- **Finalidade:** Executa `slice` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Slice → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 605. Concat

- **ID:** `list.vector3.concat`
- **Categoria:** Listas
- **Finalidade:** Executa `concat` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Concat → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 606. Filter

- **ID:** `list.vector3.filter`
- **Categoria:** Listas
- **Finalidade:** Executa `filter` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Filter → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 607. Map

- **ID:** `list.vector3.map`
- **Categoria:** Listas
- **Finalidade:** Executa `map` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Map → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 608. Reduce

- **ID:** `list.vector3.reduce`
- **Categoria:** Listas
- **Finalidade:** Executa `reduce` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Reduce → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 609. Random

- **ID:** `list.vector3.random`
- **Categoria:** Listas
- **Finalidade:** Executa `random` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Random → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 610. Create

- **ID:** `list.object.create`
- **Categoria:** Listas
- **Finalidade:** Executa `create` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Create → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 611. Add

- **ID:** `list.object.add`
- **Categoria:** Listas
- **Finalidade:** Executa `add` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Add → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 612. Insert

- **ID:** `list.object.insert`
- **Categoria:** Listas
- **Finalidade:** Executa `insert` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Insert → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 613. Set

- **ID:** `list.object.set`
- **Categoria:** Listas
- **Finalidade:** Executa `set` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Set → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 614. Get

- **ID:** `list.object.get`
- **Categoria:** Listas
- **Finalidade:** Executa `get` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Get → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 615. First

- **ID:** `list.object.first`
- **Categoria:** Listas
- **Finalidade:** Executa `first` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → First → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 616. Last

- **ID:** `list.object.last`
- **Categoria:** Listas
- **Finalidade:** Executa `last` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Last → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 617. Remove

- **ID:** `list.object.remove`
- **Categoria:** Listas
- **Finalidade:** Executa `remove` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Remove → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 618. Remove At

- **ID:** `list.object.remove_at`
- **Categoria:** Listas
- **Finalidade:** Executa `remove at` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Remove At → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 619. Clear

- **ID:** `list.object.clear`
- **Categoria:** Listas
- **Finalidade:** Executa `clear` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Clear → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 620. Contains

- **ID:** `list.object.contains`
- **Categoria:** Listas
- **Finalidade:** Executa `contains` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Contains → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 621. Index Of

- **ID:** `list.object.index_of`
- **Categoria:** Listas
- **Finalidade:** Executa `index of` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Index Of → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 622. Last Index Of

- **ID:** `list.object.last_index_of`
- **Categoria:** Listas
- **Finalidade:** Executa `last index of` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Last Index Of → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 623. Count

- **ID:** `list.object.count`
- **Categoria:** Listas
- **Finalidade:** Executa `count` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Count → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 624. Is Empty

- **ID:** `list.object.is_empty`
- **Categoria:** Listas
- **Finalidade:** Executa `is empty` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Is Empty → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 625. Reverse

- **ID:** `list.object.reverse`
- **Categoria:** Listas
- **Finalidade:** Executa `reverse` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Reverse → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 626. Shuffle

- **ID:** `list.object.shuffle`
- **Categoria:** Listas
- **Finalidade:** Executa `shuffle` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Shuffle → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 627. Sort

- **ID:** `list.object.sort`
- **Categoria:** Listas
- **Finalidade:** Executa `sort` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Sort → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 628. Distinct

- **ID:** `list.object.distinct`
- **Categoria:** Listas
- **Finalidade:** Executa `distinct` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Distinct → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 629. Slice

- **ID:** `list.object.slice`
- **Categoria:** Listas
- **Finalidade:** Executa `slice` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Slice → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 630. Concat

- **ID:** `list.object.concat`
- **Categoria:** Listas
- **Finalidade:** Executa `concat` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Concat → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 631. Filter

- **ID:** `list.object.filter`
- **Categoria:** Listas
- **Finalidade:** Executa `filter` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Filter → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 632. Map

- **ID:** `list.object.map`
- **Categoria:** Listas
- **Finalidade:** Executa `map` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Map → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 633. Reduce

- **ID:** `list.object.reduce`
- **Categoria:** Listas
- **Finalidade:** Executa `reduce` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Reduce → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 634. Random

- **ID:** `list.object.random`
- **Categoria:** Listas
- **Finalidade:** Executa `random` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Random → Debug Info` demonstra o resultado da operação.
- **Erros:** Emite `graph_error` quando a lista tem outro tipo, o índice está fora do intervalo ou falta um item obrigatório. Consulte `Count` antes de acessar uma posição variável.

## 635. Get

- **ID:** `transform.position.get`
- **Categoria:** Transform
- **Finalidade:** Executa `get` sobre a position de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de position, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a position e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Get`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 636. Set

- **ID:** `transform.position.set`
- **Categoria:** Transform
- **Finalidade:** Executa `set` sobre a position de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de position, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a position e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Set`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 637. Add

- **ID:** `transform.position.add`
- **Categoria:** Transform
- **Finalidade:** Executa `add` sobre a position de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de position, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a position e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Add`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 638. Subtract

- **ID:** `transform.position.subtract`
- **Categoria:** Transform
- **Finalidade:** Executa `subtract` sobre a position de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de position, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a position e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Subtract`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 639. Multiply

- **ID:** `transform.position.multiply`
- **Categoria:** Transform
- **Finalidade:** Executa `multiply` sobre a position de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de position, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a position e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Multiply`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 640. Lerp

- **ID:** `transform.position.lerp`
- **Categoria:** Transform
- **Finalidade:** Executa `lerp` sobre a position de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de position, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a position e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Lerp`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 641. Move Towards

- **ID:** `transform.position.move_towards`
- **Categoria:** Transform
- **Finalidade:** Executa `move towards` sobre a position de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de position, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a position e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Move Towards`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 642. Local To World

- **ID:** `transform.position.local_to_world`
- **Categoria:** Transform
- **Finalidade:** Executa `local to world` sobre a position de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de position, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a position e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Local To World`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 643. World To Local

- **ID:** `transform.position.world_to_local`
- **Categoria:** Transform
- **Finalidade:** Executa `world to local` sobre a position de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de position, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a position e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → World To Local`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 644. Reset

- **ID:** `transform.position.reset`
- **Categoria:** Transform
- **Finalidade:** Executa `reset` sobre a position de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de position, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a position e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Reset`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 645. Look At

- **ID:** `transform.position.look_at`
- **Categoria:** Transform
- **Finalidade:** Executa `look at` sobre a position de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de position, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a position e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Look At`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 646. Face Direction

- **ID:** `transform.position.face_direction`
- **Categoria:** Transform
- **Finalidade:** Executa `face direction` sobre a position de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de position, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a position e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Face Direction`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 647. Get

- **ID:** `transform.rotation.get`
- **Categoria:** Transform
- **Finalidade:** Executa `get` sobre a rotation de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de rotation, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a rotation e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Get`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 648. Set

- **ID:** `transform.rotation.set`
- **Categoria:** Transform
- **Finalidade:** Executa `set` sobre a rotation de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de rotation, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a rotation e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Set`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 649. Add

- **ID:** `transform.rotation.add`
- **Categoria:** Transform
- **Finalidade:** Executa `add` sobre a rotation de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de rotation, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a rotation e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Add`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 650. Subtract

- **ID:** `transform.rotation.subtract`
- **Categoria:** Transform
- **Finalidade:** Executa `subtract` sobre a rotation de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de rotation, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a rotation e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Subtract`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 651. Multiply

- **ID:** `transform.rotation.multiply`
- **Categoria:** Transform
- **Finalidade:** Executa `multiply` sobre a rotation de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de rotation, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a rotation e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Multiply`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 652. Lerp

- **ID:** `transform.rotation.lerp`
- **Categoria:** Transform
- **Finalidade:** Executa `lerp` sobre a rotation de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de rotation, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a rotation e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Lerp`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 653. Move Towards

- **ID:** `transform.rotation.move_towards`
- **Categoria:** Transform
- **Finalidade:** Executa `move towards` sobre a rotation de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de rotation, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a rotation e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Move Towards`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 654. Local To World

- **ID:** `transform.rotation.local_to_world`
- **Categoria:** Transform
- **Finalidade:** Executa `local to world` sobre a rotation de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de rotation, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a rotation e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Local To World`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 655. World To Local

- **ID:** `transform.rotation.world_to_local`
- **Categoria:** Transform
- **Finalidade:** Executa `world to local` sobre a rotation de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de rotation, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a rotation e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → World To Local`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 656. Reset

- **ID:** `transform.rotation.reset`
- **Categoria:** Transform
- **Finalidade:** Executa `reset` sobre a rotation de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de rotation, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a rotation e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Reset`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 657. Look At

- **ID:** `transform.rotation.look_at`
- **Categoria:** Transform
- **Finalidade:** Executa `look at` sobre a rotation de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de rotation, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a rotation e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Look At`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 658. Face Direction

- **ID:** `transform.rotation.face_direction`
- **Categoria:** Transform
- **Finalidade:** Executa `face direction` sobre a rotation de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de rotation, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a rotation e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Face Direction`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 659. Get

- **ID:** `transform.scale.get`
- **Categoria:** Transform
- **Finalidade:** Executa `get` sobre a scale de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de scale, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a scale e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Get`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 660. Set

- **ID:** `transform.scale.set`
- **Categoria:** Transform
- **Finalidade:** Executa `set` sobre a scale de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de scale, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a scale e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Set`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 661. Add

- **ID:** `transform.scale.add`
- **Categoria:** Transform
- **Finalidade:** Executa `add` sobre a scale de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de scale, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a scale e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Add`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 662. Subtract

- **ID:** `transform.scale.subtract`
- **Categoria:** Transform
- **Finalidade:** Executa `subtract` sobre a scale de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de scale, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a scale e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Subtract`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 663. Multiply

- **ID:** `transform.scale.multiply`
- **Categoria:** Transform
- **Finalidade:** Executa `multiply` sobre a scale de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de scale, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a scale e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Multiply`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 664. Lerp

- **ID:** `transform.scale.lerp`
- **Categoria:** Transform
- **Finalidade:** Executa `lerp` sobre a scale de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de scale, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a scale e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Lerp`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 665. Move Towards

- **ID:** `transform.scale.move_towards`
- **Categoria:** Transform
- **Finalidade:** Executa `move towards` sobre a scale de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de scale, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a scale e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Move Towards`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 666. Local To World

- **ID:** `transform.scale.local_to_world`
- **Categoria:** Transform
- **Finalidade:** Executa `local to world` sobre a scale de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de scale, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a scale e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Local To World`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 667. World To Local

- **ID:** `transform.scale.world_to_local`
- **Categoria:** Transform
- **Finalidade:** Executa `world to local` sobre a scale de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de scale, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a scale e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → World To Local`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 668. Reset

- **ID:** `transform.scale.reset`
- **Categoria:** Transform
- **Finalidade:** Executa `reset` sobre a scale de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de scale, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a scale e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Reset`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 669. Look At

- **ID:** `transform.scale.look_at`
- **Categoria:** Transform
- **Finalidade:** Executa `look at` sobre a scale de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de scale, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a scale e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Look At`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 670. Face Direction

- **ID:** `transform.scale.face_direction`
- **Categoria:** Transform
- **Finalidade:** Executa `face direction` sobre a scale de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de scale, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a scale e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Face Direction`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 671. Girar no eixo Y

- **ID:** `transform.rotate.y`
- **Categoria:** Transform
- **Finalidade:** Executa `y` sobre a rotate de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de rotate, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a rotate e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Girar no eixo Y`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 672. Escala uniforme

- **ID:** `transform.scale.uniform`
- **Categoria:** Transform
- **Finalidade:** Executa `uniform` sobre a scale de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de scale, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a scale e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Escala uniforme`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 673. Add Force

- **ID:** `physics.add_force`
- **Categoria:** Fisica
- **Finalidade:** Aplica uma força contínua ao corpo; use em atualizações de física para aceleração sustentada.
- **Entradas/alvo:** `target_path`: `RigidBody3D`; `force`: `Vector3`; `position` local é opcional.
- **Saídas/efeito:** Altera a velocidade física ao longo do tempo e emite `flow`.
- **Exemplo:** Empurre uma caixa: `Button Pressed → Add Force`, força `Vector3(0, 0, -40)`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 674. Add Impulse

- **ID:** `physics.add_impulse`
- **Categoria:** Fisica
- **Finalidade:** Aplica um impulso instantâneo ao corpo, ideal para impactos, explosões ou saltos físicos.
- **Entradas/alvo:** `target_path`: `RigidBody3D`; `impulse`: `Vector3`; `position` é opcional.
- **Saídas/efeito:** Muda imediatamente a velocidade linear e emite `flow`.
- **Exemplo:** Explosão: `Collision Enter → Add Impulse`, impulso calculado por `Direction × 12`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 675. Add Torque

- **ID:** `physics.add_torque`
- **Categoria:** Fisica
- **Finalidade:** Aplica força de rotação contínua a um corpo físico.
- **Entradas/alvo:** `target_path`: `RigidBody3D`; `torque`: `Vector3` por eixo.
- **Saídas/efeito:** Acelera a rotação do corpo e emite `flow`.
- **Exemplo:** Gire uma hélice: `Fixed Update → Add Torque`, torque `Vector3(0, 8, 0)`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 676. Set Velocity

- **ID:** `physics.set_velocity`
- **Categoria:** Fisica
- **Finalidade:** Define a velocidade linear do corpo em unidades por segundo.
- **Entradas/alvo:** `target_path`: corpo físico compatível; `value`: `Vector3(x, y, z)`.
- **Saídas/efeito:** Substitui a velocidade atual e emite `flow`.
- **Exemplo:** Lance um projétil: `Created → Set Velocity`, valor `Forward × 25`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 677. Get Velocity

- **ID:** `physics.get_velocity`
- **Categoria:** Fisica
- **Finalidade:** Lê a velocidade linear atual do corpo.
- **Entradas/alvo:** `target_path`: corpo físico compatível.
- **Saídas/efeito:** Retorna a velocidade como `Vector3` em `value`.
- **Exemplo:** Velocímetro: `Update → Get Velocity → Vector Length → UI Set Text`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 678. Set Angular Velocity

- **ID:** `physics.set_angular_velocity`
- **Categoria:** Fisica
- **Finalidade:** Define diretamente a velocidade de rotação de um corpo físico nos eixos X, Y e Z, em radianos por segundo.
- **Entradas/alvo:** `target_path`: `RigidBody3D`; `value`: `Vector3` com a rotação por eixo.
- **Saídas/efeito:** Atualiza `angular_velocity` e continua pelo pino `flow`.
- **Exemplo:** Faça uma plataforma girar: `Start → Set Angular Velocity`, alvo `../Plataforma`, valor `Vector3(0, 1.5, 0)` para girar no eixo Y.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 679. Get Angular Velocity

- **ID:** `physics.get_angular_velocity`
- **Categoria:** Fisica
- **Finalidade:** Lê a velocidade de rotação atual de um corpo físico nos eixos X, Y e Z.
- **Entradas/alvo:** `target_path`: `RigidBody3D` que será consultado.
- **Saídas/efeito:** Retorna um `Vector3` em `value`; não altera o corpo.
- **Exemplo:** Exiba a rotação de uma roda: `Update → Get Angular Velocity → Vector Length → UI Set Text`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 680. Set Mass

- **ID:** `physics.set_mass`
- **Categoria:** Fisica
- **Finalidade:** Define `mass` no sistema de física 3D do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de mass, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza mass no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Mass`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 681. Get Mass

- **ID:** `physics.get_mass`
- **Categoria:** Fisica
- **Finalidade:** Consulta `mass` no sistema de física 3D sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna mass em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Mass → Debug Info` mostra o valor atual de mass.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 682. Set Gravity

- **ID:** `physics.set_gravity`
- **Categoria:** Fisica
- **Finalidade:** Define `gravity` no sistema de física 3D do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de gravity, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza gravity no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Gravity`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 683. Use Gravity

- **ID:** `physics.use_gravity`
- **Categoria:** Fisica
- **Finalidade:** Executa a ação `use gravity` no sistema de física 3D usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Use Gravity`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 684. Set Kinematic

- **ID:** `physics.set_kinematic`
- **Categoria:** Fisica
- **Finalidade:** Define `kinematic` no sistema de física 3D do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de kinematic, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza kinematic no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Kinematic`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 685. Freeze Position

- **ID:** `physics.freeze_position`
- **Categoria:** Fisica
- **Finalidade:** Executa a ação `freeze position` no sistema de física 3D usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Freeze Position`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 686. Freeze Rotation

- **ID:** `physics.freeze_rotation`
- **Categoria:** Fisica
- **Finalidade:** Executa a ação `freeze rotation` no sistema de física 3D usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Freeze Rotation`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 687. Raycast

- **ID:** `physics.raycast`
- **Categoria:** Fisica
- **Finalidade:** Dispara um raio entre dois pontos para detectar o primeiro collider atingido.
- **Entradas/alvo:** `origin`, `direction`, `distance` e máscara de colisão opcional.
- **Saídas/efeito:** Retorna acerto, objeto, posição e normal; não altera a cena.
- **Exemplo:** Tiro: `Button Pressed → Raycast`; se `hit`, conecte a `Object Send Event` no objeto atingido.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 688. Sphere Cast

- **ID:** `physics.sphere_cast`
- **Categoria:** Fisica
- **Finalidade:** Executa a ação `sphere cast` no sistema de física 3D usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Sphere Cast`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 689. Box Cast

- **ID:** `physics.box_cast`
- **Categoria:** Fisica
- **Finalidade:** Executa a ação `box cast` no sistema de física 3D usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Box Cast`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 690. Overlap Sphere

- **ID:** `physics.overlap_sphere`
- **Categoria:** Fisica
- **Finalidade:** Executa a ação `overlap sphere` no sistema de física 3D usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Overlap Sphere`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 691. Overlap Box

- **ID:** `physics.overlap_box`
- **Categoria:** Fisica
- **Finalidade:** Executa a ação `overlap box` no sistema de física 3D usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Overlap Box`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 692. Ignore Collision

- **ID:** `physics.ignore_collision`
- **Categoria:** Fisica
- **Finalidade:** Executa a ação `ignore collision` no sistema de física 3D usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Ignore Collision`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 693. Set Friction

- **ID:** `physics.set_friction`
- **Categoria:** Fisica
- **Finalidade:** Define `friction` no sistema de física 3D do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de friction, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza friction no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Friction`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 694. Set Bounciness

- **ID:** `physics.set_bounciness`
- **Categoria:** Fisica
- **Finalidade:** Define `bounciness` no sistema de física 3D do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de bounciness, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza bounciness no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Bounciness`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 695. Wake Up

- **ID:** `physics.wake_up`
- **Categoria:** Fisica
- **Finalidade:** Executa a ação `wake up` no sistema de física 3D usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Wake Up`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 696. Sleep

- **ID:** `physics.sleep`
- **Categoria:** Fisica
- **Finalidade:** Executa a ação `sleep` no sistema de física 3D usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Sleep`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 697. Enter

- **ID:** `vehicle.enter`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `enter` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Enter`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 698. Exit

- **ID:** `vehicle.exit`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `exit` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Exit`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 699. Can Enter

- **ID:** `vehicle.can_enter`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `can enter` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Can Enter`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 700. Get Driver

- **ID:** `vehicle.get_driver`
- **Categoria:** Veiculo
- **Finalidade:** Consulta `driver` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna driver em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Driver → Debug Info` mostra o valor atual de driver.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 701. Open Door

- **ID:** `vehicle.open_door`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `open door` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Open Door`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 702. Close Door

- **ID:** `vehicle.close_door`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `close door` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Close Door`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 703. Toggle Door

- **ID:** `vehicle.toggle_door`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `toggle door` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Toggle Door`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 704. Open Hood

- **ID:** `vehicle.open_hood`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `open hood` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Open Hood`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 705. Close Hood

- **ID:** `vehicle.close_hood`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `close hood` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Close Hood`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 706. Open Trunk

- **ID:** `vehicle.open_trunk`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `open trunk` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Open Trunk`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 707. Close Trunk

- **ID:** `vehicle.close_trunk`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `close trunk` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Close Trunk`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 708. Set Throttle

- **ID:** `vehicle.set_throttle`
- **Categoria:** Veiculo
- **Finalidade:** Define `throttle` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de throttle, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza throttle no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Throttle`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 709. Get Throttle

- **ID:** `vehicle.get_throttle`
- **Categoria:** Veiculo
- **Finalidade:** Consulta `throttle` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna throttle em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Throttle → Debug Info` mostra o valor atual de throttle.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 710. Set Brake

- **ID:** `vehicle.set_brake`
- **Categoria:** Veiculo
- **Finalidade:** Define `brake` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de brake, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza brake no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Brake`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 711. Get Brake

- **ID:** `vehicle.get_brake`
- **Categoria:** Veiculo
- **Finalidade:** Consulta `brake` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna brake em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Brake → Debug Info` mostra o valor atual de brake.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 712. Set Handbrake

- **ID:** `vehicle.set_handbrake`
- **Categoria:** Veiculo
- **Finalidade:** Define `handbrake` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de handbrake, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza handbrake no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Handbrake`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 713. Set Steering

- **ID:** `vehicle.set_steering`
- **Categoria:** Veiculo
- **Finalidade:** Define `steering` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de steering, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza steering no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Steering`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 714. Get Steering

- **ID:** `vehicle.get_steering`
- **Categoria:** Veiculo
- **Finalidade:** Consulta `steering` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna steering em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Steering → Debug Info` mostra o valor atual de steering.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 715. Shift Up

- **ID:** `vehicle.shift_up`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `shift up` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Shift Up`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 716. Shift Down

- **ID:** `vehicle.shift_down`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `shift down` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Shift Down`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 717. Set Gear

- **ID:** `vehicle.set_gear`
- **Categoria:** Veiculo
- **Finalidade:** Define `gear` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de gear, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza gear no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Gear`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 718. Get Gear

- **ID:** `vehicle.get_gear`
- **Categoria:** Veiculo
- **Finalidade:** Consulta `gear` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna gear em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Gear → Debug Info` mostra o valor atual de gear.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 719. Get Speed

- **ID:** `vehicle.get_speed`
- **Categoria:** Veiculo
- **Finalidade:** Consulta `speed` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna speed em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Speed → Debug Info` mostra o valor atual de speed.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 720. Get Rpm

- **ID:** `vehicle.get_rpm`
- **Categoria:** Veiculo
- **Finalidade:** Consulta `rpm` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna rpm em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Rpm → Debug Info` mostra o valor atual de rpm.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 721. Get Wheel Speed

- **ID:** `vehicle.get_wheel_speed`
- **Categoria:** Veiculo
- **Finalidade:** Consulta `wheel speed` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna wheel speed em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Wheel Speed → Debug Info` mostra o valor atual de wheel speed.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 722. Get Slip Ratio

- **ID:** `vehicle.get_slip_ratio`
- **Categoria:** Veiculo
- **Finalidade:** Consulta `slip ratio` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna slip ratio em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Slip Ratio → Debug Info` mostra o valor atual de slip ratio.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 723. Get Lateral Slip

- **ID:** `vehicle.get_lateral_slip`
- **Categoria:** Veiculo
- **Finalidade:** Consulta `lateral slip` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna lateral slip em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Lateral Slip → Debug Info` mostra o valor atual de lateral slip.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 724. Set Mass

- **ID:** `vehicle.set_mass`
- **Categoria:** Veiculo
- **Finalidade:** Define `mass` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de mass, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza mass no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Mass`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 725. Set Engine Power

- **ID:** `vehicle.set_engine_power`
- **Categoria:** Veiculo
- **Finalidade:** Define `engine power` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de engine power, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza engine power no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Engine Power`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 726. Set Max Torque

- **ID:** `vehicle.set_max_torque`
- **Categoria:** Veiculo
- **Finalidade:** Define `max torque` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de max torque, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza max torque no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Max Torque`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 727. Set Redline Rpm

- **ID:** `vehicle.set_redline_rpm`
- **Categoria:** Veiculo
- **Finalidade:** Define `redline rpm` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de redline rpm, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza redline rpm no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Redline Rpm`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 728. Set Top Speed

- **ID:** `vehicle.set_top_speed`
- **Categoria:** Veiculo
- **Finalidade:** Define `top speed` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de top speed, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza top speed no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Top Speed`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 729. Set Drive Type

- **ID:** `vehicle.set_drive_type`
- **Categoria:** Veiculo
- **Finalidade:** Define `drive type` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de drive type, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza drive type no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Drive Type`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 730. Set Gear Ratios

- **ID:** `vehicle.set_gear_ratios`
- **Categoria:** Veiculo
- **Finalidade:** Define `gear ratios` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de gear ratios, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza gear ratios no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Gear Ratios`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 731. Set Final Drive

- **ID:** `vehicle.set_final_drive`
- **Categoria:** Veiculo
- **Finalidade:** Define `final drive` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de final drive, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza final drive no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Final Drive`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 732. Set Drivetrain Efficiency

- **ID:** `vehicle.set_drivetrain_efficiency`
- **Categoria:** Veiculo
- **Finalidade:** Define `drivetrain efficiency` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de drivetrain efficiency, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza drivetrain efficiency no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Drivetrain Efficiency`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 733. Set Tire Grip

- **ID:** `vehicle.set_tire_grip`
- **Categoria:** Veiculo
- **Finalidade:** Define `tire grip` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de tire grip, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza tire grip no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Tire Grip`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 734. Set Lateral Grip

- **ID:** `vehicle.set_lateral_grip`
- **Categoria:** Veiculo
- **Finalidade:** Define `lateral grip` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de lateral grip, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza lateral grip no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Lateral Grip`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 735. Set Traction Control

- **ID:** `vehicle.set_traction_control`
- **Categoria:** Veiculo
- **Finalidade:** Define `traction control` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de traction control, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza traction control no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Traction Control`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 736. Set Abs

- **ID:** `vehicle.set_abs`
- **Categoria:** Veiculo
- **Finalidade:** Define `abs` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de abs, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza abs no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Abs`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 737. Set Stability Assist

- **ID:** `vehicle.set_stability_assist`
- **Categoria:** Veiculo
- **Finalidade:** Define `stability assist` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de stability assist, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza stability assist no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Stability Assist`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 738. Set Steering Angle

- **ID:** `vehicle.set_steering_angle`
- **Categoria:** Veiculo
- **Finalidade:** Define `steering angle` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de steering angle, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza steering angle no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Steering Angle`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 739. Set Steering Response

- **ID:** `vehicle.set_steering_response`
- **Categoria:** Veiculo
- **Finalidade:** Define `steering response` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de steering response, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza steering response no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Steering Response`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 740. Set Wheel Radius

- **ID:** `vehicle.set_wheel_radius`
- **Categoria:** Veiculo
- **Finalidade:** Define `wheel radius` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de wheel radius, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza wheel radius no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Wheel Radius`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 741. Set Wheel Position

- **ID:** `vehicle.set_wheel_position`
- **Categoria:** Veiculo
- **Finalidade:** Define `wheel position` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de wheel position, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza wheel position no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Wheel Position`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 742. Set Wheel Driven

- **ID:** `vehicle.set_wheel_driven`
- **Categoria:** Veiculo
- **Finalidade:** Define `wheel driven` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de wheel driven, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza wheel driven no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Wheel Driven`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 743. Set Wheel Steerable

- **ID:** `vehicle.set_wheel_steerable`
- **Categoria:** Veiculo
- **Finalidade:** Define `wheel steerable` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de wheel steerable, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza wheel steerable no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Wheel Steerable`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 744. Set Suspension Travel

- **ID:** `vehicle.set_suspension_travel`
- **Categoria:** Veiculo
- **Finalidade:** Define `suspension travel` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de suspension travel, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza suspension travel no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Suspension Travel`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 745. Set Spring Strength

- **ID:** `vehicle.set_spring_strength`
- **Categoria:** Veiculo
- **Finalidade:** Define `spring strength` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de spring strength, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza spring strength no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Spring Strength`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 746. Set Suspension Damping

- **ID:** `vehicle.set_suspension_damping`
- **Categoria:** Veiculo
- **Finalidade:** Define `suspension damping` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de suspension damping, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza suspension damping no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Suspension Damping`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 747. Get Suspension Compression

- **ID:** `vehicle.get_suspension_compression`
- **Categoria:** Veiculo
- **Finalidade:** Consulta `suspension compression` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna suspension compression em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Suspension Compression → Debug Info` mostra o valor atual de suspension compression.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 748. Set Center Of Mass

- **ID:** `vehicle.set_center_of_mass`
- **Categoria:** Veiculo
- **Finalidade:** Define `center of mass` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de center of mass, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza center of mass no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Center Of Mass`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 749. Set Downforce

- **ID:** `vehicle.set_downforce`
- **Categoria:** Veiculo
- **Finalidade:** Define `downforce` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de downforce, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza downforce no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Downforce`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 750. Set Aero Drag

- **ID:** `vehicle.set_aero_drag`
- **Categoria:** Veiculo
- **Finalidade:** Define `aero drag` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de aero drag, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza aero drag no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Aero Drag`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 751. Set Rolling Resistance

- **ID:** `vehicle.set_rolling_resistance`
- **Categoria:** Veiculo
- **Finalidade:** Define `rolling resistance` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de rolling resistance, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza rolling resistance no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Rolling Resistance`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 752. Reset Upright

- **ID:** `vehicle.reset_upright`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `reset upright` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Reset Upright`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 753. Teleport

- **ID:** `vehicle.teleport`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `teleport` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Teleport`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 754. Repair

- **ID:** `vehicle.repair`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `repair` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Repair`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 755. Enable Collision

- **ID:** `vehicle.enable_collision`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `enable collision` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Enable Collision`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 756. Disable Collision

- **ID:** `vehicle.disable_collision`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `disable collision` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Disable Collision`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 757. On Collision

- **ID:** `vehicle.on_collision`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `on collision` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → On Collision`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 758. On Entered

- **ID:** `vehicle.on_entered`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `on entered` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → On Entered`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 759. On Exited

- **ID:** `vehicle.on_exited`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `on exited` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → On Exited`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 760. On Door Opened

- **ID:** `vehicle.on_door_opened`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `on door opened` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → On Door Opened`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 761. Play

- **ID:** `audio.play`
- **Categoria:** Audio
- **Finalidade:** Executa a ação `play` no sistema de áudio usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Play`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 762. Play 3D

- **ID:** `audio.play_3d`
- **Categoria:** Audio
- **Finalidade:** Executa a ação `play 3d` no sistema de áudio usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Play 3D`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 763. Play Loop

- **ID:** `audio.play_loop`
- **Categoria:** Audio
- **Finalidade:** Executa a ação `play loop` no sistema de áudio usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Play Loop`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 764. Play 3D Loop

- **ID:** `audio.play_3d_loop`
- **Categoria:** Audio
- **Finalidade:** Executa a ação `play 3d loop` no sistema de áudio usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Play 3D Loop`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 765. Pause

- **ID:** `audio.pause`
- **Categoria:** Audio
- **Finalidade:** Executa a ação `pause` no sistema de áudio usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Pause`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 766. Resume

- **ID:** `audio.resume`
- **Categoria:** Audio
- **Finalidade:** Executa a ação `resume` no sistema de áudio usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Resume`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 767. Stop

- **ID:** `audio.stop`
- **Categoria:** Audio
- **Finalidade:** Executa a ação `stop` no sistema de áudio usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Stop`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 768. Stop All

- **ID:** `audio.stop_all`
- **Categoria:** Audio
- **Finalidade:** Executa a ação `stop all` no sistema de áudio usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Stop All`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 769. Set Volume

- **ID:** `audio.set_volume`
- **Categoria:** Audio
- **Finalidade:** Define `volume` no sistema de áudio do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de volume, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza volume no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Volume`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 770. Get Volume

- **ID:** `audio.get_volume`
- **Categoria:** Audio
- **Finalidade:** Consulta `volume` no sistema de áudio sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna volume em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Volume → Debug Info` mostra o valor atual de volume.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 771. Fade In

- **ID:** `audio.fade_in`
- **Categoria:** Audio
- **Finalidade:** Executa a ação `fade in` no sistema de áudio usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Fade In`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 772. Fade Out

- **ID:** `audio.fade_out`
- **Categoria:** Audio
- **Finalidade:** Executa a ação `fade out` no sistema de áudio usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Fade Out`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 773. Set Pitch

- **ID:** `audio.set_pitch`
- **Categoria:** Audio
- **Finalidade:** Define `pitch` no sistema de áudio do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de pitch, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza pitch no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Pitch`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 774. Get Pitch

- **ID:** `audio.get_pitch`
- **Categoria:** Audio
- **Finalidade:** Consulta `pitch` no sistema de áudio sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna pitch em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Pitch → Debug Info` mostra o valor atual de pitch.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 775. Set Pan

- **ID:** `audio.set_pan`
- **Categoria:** Audio
- **Finalidade:** Define `pan` no sistema de áudio do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de pan, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza pan no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Pan`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 776. Set Spatial Blend

- **ID:** `audio.set_spatial_blend`
- **Categoria:** Audio
- **Finalidade:** Define `spatial blend` no sistema de áudio do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de spatial blend, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza spatial blend no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Spatial Blend`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 777. Set Min Distance

- **ID:** `audio.set_min_distance`
- **Categoria:** Audio
- **Finalidade:** Define `min distance` no sistema de áudio do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de min distance, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza min distance no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Min Distance`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 778. Set Max Distance

- **ID:** `audio.set_max_distance`
- **Categoria:** Audio
- **Finalidade:** Define `max distance` no sistema de áudio do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de max distance, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza max distance no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Max Distance`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 779. Is Playing

- **ID:** `audio.is_playing`
- **Categoria:** Audio
- **Finalidade:** Executa a ação `is playing` no sistema de áudio usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Is Playing`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 780. Set Bus

- **ID:** `audio.set_bus`
- **Categoria:** Audio
- **Finalidade:** Define `bus` no sistema de áudio do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de bus, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza bus no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Bus`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 781. Play

- **ID:** `animation.play`
- **Categoria:** Animacao
- **Finalidade:** Executa a ação `play` no sistema de animação usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Play`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 782. Play Crossfade

- **ID:** `animation.play_crossfade`
- **Categoria:** Animacao
- **Finalidade:** Executa a ação `play crossfade` no sistema de animação usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Play Crossfade`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 783. Pause

- **ID:** `animation.pause`
- **Categoria:** Animacao
- **Finalidade:** Executa a ação `pause` no sistema de animação usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Pause`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 784. Resume

- **ID:** `animation.resume`
- **Categoria:** Animacao
- **Finalidade:** Executa a ação `resume` no sistema de animação usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Resume`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 785. Stop

- **ID:** `animation.stop`
- **Categoria:** Animacao
- **Finalidade:** Executa a ação `stop` no sistema de animação usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Stop`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 786. Rewind

- **ID:** `animation.rewind`
- **Categoria:** Animacao
- **Finalidade:** Executa a ação `rewind` no sistema de animação usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Rewind`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 787. Set Speed

- **ID:** `animation.set_speed`
- **Categoria:** Animacao
- **Finalidade:** Define `speed` no sistema de animação do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de speed, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza speed no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Speed`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 788. Get Speed

- **ID:** `animation.get_speed`
- **Categoria:** Animacao
- **Finalidade:** Consulta `speed` no sistema de animação sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna speed em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Speed → Debug Info` mostra o valor atual de speed.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 789. Set Time

- **ID:** `animation.set_time`
- **Categoria:** Animacao
- **Finalidade:** Define `time` no sistema de animação do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de time, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza time no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Time`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 790. Get Time

- **ID:** `animation.get_time`
- **Categoria:** Animacao
- **Finalidade:** Consulta `time` no sistema de animação sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna time em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Time → Debug Info` mostra o valor atual de time.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 791. Set Loop

- **ID:** `animation.set_loop`
- **Categoria:** Animacao
- **Finalidade:** Define `loop` no sistema de animação do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de loop, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza loop no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Loop`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 792. Is Playing

- **ID:** `animation.is_playing`
- **Categoria:** Animacao
- **Finalidade:** Executa a ação `is playing` no sistema de animação usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Is Playing`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 793. Set Bool

- **ID:** `animation.set_bool`
- **Categoria:** Animacao
- **Finalidade:** Define `bool` no sistema de animação do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de bool, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza bool no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Bool`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 794. Set Number

- **ID:** `animation.set_number`
- **Categoria:** Animacao
- **Finalidade:** Define `number` no sistema de animação do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de number, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza number no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Number`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 795. Set Trigger

- **ID:** `animation.set_trigger`
- **Categoria:** Animacao
- **Finalidade:** Define `trigger` no sistema de animação do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de trigger, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza trigger no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Trigger`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 796. Reset Trigger

- **ID:** `animation.reset_trigger`
- **Categoria:** Animacao
- **Finalidade:** Executa a ação `reset trigger` no sistema de animação usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Reset Trigger`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 797. Get State

- **ID:** `animation.get_state`
- **Categoria:** Animacao
- **Finalidade:** Consulta `state` no sistema de animação sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna state em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get State → Debug Info` mostra o valor atual de state.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 798. Set Weight

- **ID:** `animation.set_weight`
- **Categoria:** Animacao
- **Finalidade:** Define `weight` no sistema de animação do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de weight, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza weight no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Weight`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 799. Blend

- **ID:** `animation.blend`
- **Categoria:** Animacao
- **Finalidade:** Executa a ação `blend` no sistema de animação usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Blend`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 800. Play Additive

- **ID:** `animation.play_additive`
- **Categoria:** Animacao
- **Finalidade:** Executa a ação `play additive` no sistema de animação usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Play Additive`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 801. Get

- **ID:** `material.get`
- **Categoria:** Material
- **Finalidade:** Executa a ação `get` no sistema de material usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Get`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 802. Set

- **ID:** `material.set`
- **Categoria:** Material
- **Finalidade:** Executa a ação `set` no sistema de material usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Set`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 803. Clone

- **ID:** `material.clone`
- **Categoria:** Material
- **Finalidade:** Executa a ação `clone` no sistema de material usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Clone`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 804. Set Color

- **ID:** `material.set_color`
- **Categoria:** Material
- **Finalidade:** Define `color` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de color, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza color no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Color`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 805. Get Color

- **ID:** `material.get_color`
- **Categoria:** Material
- **Finalidade:** Consulta `color` no sistema de material sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna color em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Color → Debug Info` mostra o valor atual de color.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 806. Set Number

- **ID:** `material.set_number`
- **Categoria:** Material
- **Finalidade:** Define `number` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de number, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza number no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Number`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 807. Get Number

- **ID:** `material.get_number`
- **Categoria:** Material
- **Finalidade:** Consulta `number` no sistema de material sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna number em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Number → Debug Info` mostra o valor atual de number.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 808. Set Vector

- **ID:** `material.set_vector`
- **Categoria:** Material
- **Finalidade:** Define `vector` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de vector, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza vector no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Vector`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 809. Get Vector

- **ID:** `material.get_vector`
- **Categoria:** Material
- **Finalidade:** Consulta `vector` no sistema de material sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna vector em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Vector → Debug Info` mostra o valor atual de vector.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 810. Set Texture

- **ID:** `material.set_texture`
- **Categoria:** Material
- **Finalidade:** Define `texture` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de texture, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza texture no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Texture`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 811. Get Texture

- **ID:** `material.get_texture`
- **Categoria:** Material
- **Finalidade:** Consulta `texture` no sistema de material sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna texture em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Texture → Debug Info` mostra o valor atual de texture.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 812. Set Emission

- **ID:** `material.set_emission`
- **Categoria:** Material
- **Finalidade:** Define `emission` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de emission, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza emission no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Emission`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 813. Set Metallic

- **ID:** `material.set_metallic`
- **Categoria:** Material
- **Finalidade:** Define `metallic` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de metallic, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza metallic no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Metallic`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 814. Set Roughness

- **ID:** `material.set_roughness`
- **Categoria:** Material
- **Finalidade:** Define `roughness` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de roughness, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza roughness no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Roughness`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 815. Set Opacity

- **ID:** `material.set_opacity`
- **Categoria:** Material
- **Finalidade:** Define `opacity` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de opacity, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza opacity no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Opacity`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 816. Set Uv Offset

- **ID:** `material.set_uv_offset`
- **Categoria:** Material
- **Finalidade:** Define `uv offset` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de uv offset, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza uv offset no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Uv Offset`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 817. Set Uv Scale

- **ID:** `material.set_uv_scale`
- **Categoria:** Material
- **Finalidade:** Define `uv scale` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de uv scale, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza uv scale no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Uv Scale`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 818. Enable Keyword

- **ID:** `material.enable_keyword`
- **Categoria:** Material
- **Finalidade:** Executa a ação `enable keyword` no sistema de material usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Enable Keyword`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 819. Disable Keyword

- **ID:** `material.disable_keyword`
- **Categoria:** Material
- **Finalidade:** Executa a ação `disable keyword` no sistema de material usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Disable Keyword`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 820. Has Keyword

- **ID:** `material.has_keyword`
- **Categoria:** Material
- **Finalidade:** Executa a ação `has keyword` no sistema de material usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Has Keyword`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 821. Show

- **ID:** `ui.show`
- **Categoria:** Interface
- **Finalidade:** Executa a ação `show` no sistema de interface usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Show`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 822. Hide

- **ID:** `ui.hide`
- **Categoria:** Interface
- **Finalidade:** Executa a ação `hide` no sistema de interface usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Hide`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 823. Toggle

- **ID:** `ui.toggle`
- **Categoria:** Interface
- **Finalidade:** Executa a ação `toggle` no sistema de interface usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Toggle`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 824. Set Text

- **ID:** `ui.set_text`
- **Categoria:** Interface
- **Finalidade:** Define `text` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de text, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza text no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Text`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 825. Get Text

- **ID:** `ui.get_text`
- **Categoria:** Interface
- **Finalidade:** Consulta `text` no sistema de interface sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna text em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Text → Debug Info` mostra o valor atual de text.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 826. Set Image

- **ID:** `ui.set_image`
- **Categoria:** Interface
- **Finalidade:** Define `image` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de image, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza image no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Image`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 827. Set Color

- **ID:** `ui.set_color`
- **Categoria:** Interface
- **Finalidade:** Define `color` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de color, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza color no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Color`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 828. Set Value

- **ID:** `ui.set_value`
- **Categoria:** Interface
- **Finalidade:** Define `value` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de value, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza value no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Value`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 829. Get Value

- **ID:** `ui.get_value`
- **Categoria:** Interface
- **Finalidade:** Consulta `value` no sistema de interface sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna value em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Value → Debug Info` mostra o valor atual de value.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 830. Set Min

- **ID:** `ui.set_min`
- **Categoria:** Interface
- **Finalidade:** Define `min` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de min, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza min no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Min`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 831. Set Max

- **ID:** `ui.set_max`
- **Categoria:** Interface
- **Finalidade:** Define `max` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de max, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza max no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Max`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 832. Set Interactable

- **ID:** `ui.set_interactable`
- **Categoria:** Interface
- **Finalidade:** Define `interactable` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de interactable, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza interactable no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Interactable`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 833. Is Interactable

- **ID:** `ui.is_interactable`
- **Categoria:** Interface
- **Finalidade:** Executa a ação `is interactable` no sistema de interface usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Is Interactable`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 834. Focus

- **ID:** `ui.focus`
- **Categoria:** Interface
- **Finalidade:** Executa a ação `focus` no sistema de interface usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Focus`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 835. Unfocus

- **ID:** `ui.unfocus`
- **Categoria:** Interface
- **Finalidade:** Executa a ação `unfocus` no sistema de interface usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Unfocus`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 836. Set Position

- **ID:** `ui.set_position`
- **Categoria:** Interface
- **Finalidade:** Define `position` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de position, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza position no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Position`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 837. Set Size

- **ID:** `ui.set_size`
- **Categoria:** Interface
- **Finalidade:** Define `size` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de size, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza size no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Size`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 838. Set Anchor

- **ID:** `ui.set_anchor`
- **Categoria:** Interface
- **Finalidade:** Define `anchor` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de anchor, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza anchor no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Anchor`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 839. Set Progress

- **ID:** `ui.set_progress`
- **Categoria:** Interface
- **Finalidade:** Define `progress` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de progress, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza progress no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Progress`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 840. Animate Value

- **ID:** `ui.animate_value`
- **Categoria:** Interface
- **Finalidade:** Executa a ação `animate value` no sistema de interface usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Animate Value`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 841. Toast

- **ID:** `ui.toast`
- **Categoria:** Interface
- **Finalidade:** Executa a ação `toast` no sistema de interface usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Toast`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 842. Open Panel

- **ID:** `ui.open_panel`
- **Categoria:** Interface
- **Finalidade:** Executa a ação `open panel` no sistema de interface usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Open Panel`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 843. Close Panel

- **ID:** `ui.close_panel`
- **Categoria:** Interface
- **Finalidade:** Executa a ação `close panel` no sistema de interface usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Close Panel`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 844. Set Placeholder

- **ID:** `ui.set_placeholder`
- **Categoria:** Interface
- **Finalidade:** Define `placeholder` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de placeholder, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza placeholder no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Placeholder`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Emite `graph_error` quando `target_path` não existe, aponta para um tipo incompatível ou algum pino obrigatório está vazio. Confirme o NodePath a partir do nó que contém o runner e o tipo exigido nesta entrada.

## 845. Load

- **ID:** `world.load`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `load` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Load`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 846. Load Additive

- **ID:** `world.load_additive`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `load additive` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Load Additive`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 847. Unload

- **ID:** `world.unload`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `unload` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Unload`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 848. Reload

- **ID:** `world.reload`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `reload` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Reload`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 849. Set Active

- **ID:** `world.set_active`
- **Categoria:** Mundo
- **Finalidade:** Define `active` no sistema de mundo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de active, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza active no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Active`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 850. Get Active

- **ID:** `world.get_active`
- **Categoria:** Mundo
- **Finalidade:** Consulta `active` no sistema de mundo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna active em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Active → Debug Info` mostra o valor atual de active.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 851. Pause

- **ID:** `world.pause`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `pause` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Pause`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 852. Resume

- **ID:** `world.resume`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `resume` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Resume`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 853. Set Time Scale

- **ID:** `world.set_time_scale`
- **Categoria:** Mundo
- **Finalidade:** Define `time scale` no sistema de mundo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de time scale, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza time scale no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Time Scale`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 854. Get Time Scale

- **ID:** `world.get_time_scale`
- **Categoria:** Mundo
- **Finalidade:** Consulta `time scale` no sistema de mundo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna time scale em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Time Scale → Debug Info` mostra o valor atual de time scale.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 855. Set Ambient Color

- **ID:** `world.set_ambient_color`
- **Categoria:** Mundo
- **Finalidade:** Define `ambient color` no sistema de mundo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de ambient color, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza ambient color no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Ambient Color`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 856. Set Skybox

- **ID:** `world.set_skybox`
- **Categoria:** Mundo
- **Finalidade:** Define `skybox` no sistema de mundo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de skybox, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza skybox no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Skybox`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 857. Set Fog

- **ID:** `world.set_fog`
- **Categoria:** Mundo
- **Finalidade:** Define `fog` no sistema de mundo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de fog, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza fog no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Fog`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 858. Set Gravity

- **ID:** `world.set_gravity`
- **Categoria:** Mundo
- **Finalidade:** Define `gravity` no sistema de mundo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de gravity, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza gravity no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Gravity`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 859. Find Spawn

- **ID:** `world.find_spawn`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `find spawn` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Find Spawn`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 860. Spawn At

- **ID:** `world.spawn_at`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `spawn at` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Spawn At`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 861. Destroy All

- **ID:** `world.destroy_all`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `destroy all` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Destroy All`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 862. Preload

- **ID:** `world.preload`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `preload` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Preload`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 863. Release

- **ID:** `world.release`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `release` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Release`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 864. Quit

- **ID:** `world.quit`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `quit` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Quit`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 865. Terrain Get Height

- **ID:** `world.terrain_get_height`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain get height` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Get Height`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 866. Terrain Set Height

- **ID:** `world.terrain_set_height`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain set height` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Set Height`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 867. Terrain Raise

- **ID:** `world.terrain_raise`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain raise` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Raise`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 868. Terrain Lower

- **ID:** `world.terrain_lower`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain lower` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Lower`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 869. Terrain Smooth

- **ID:** `world.terrain_smooth`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain smooth` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Smooth`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 870. Terrain Flatten

- **ID:** `world.terrain_flatten`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain flatten` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Flatten`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 871. Terrain Add Noise

- **ID:** `world.terrain_add_noise`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain add noise` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Add Noise`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 872. Terrain Paint Layer

- **ID:** `world.terrain_paint_layer`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain paint layer` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Paint Layer`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 873. Terrain Get Layer Weight

- **ID:** `world.terrain_get_layer_weight`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain get layer weight` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Get Layer Weight`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 874. Terrain Apply Auto Tile

- **ID:** `world.terrain_apply_auto_tile`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain apply auto tile` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Apply Auto Tile`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 875. Terrain Add Auto Tile Rule

- **ID:** `world.terrain_add_auto_tile_rule`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain add auto tile rule` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Add Auto Tile Rule`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 876. Terrain Remove Auto Tile Rule

- **ID:** `world.terrain_remove_auto_tile_rule`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain remove auto tile rule` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Remove Auto Tile Rule`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 877. Terrain Set Material

- **ID:** `world.terrain_set_material`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain set material` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Set Material`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 878. Terrain Set Texture Scale

- **ID:** `world.terrain_set_texture_scale`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain set texture scale` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Set Texture Scale`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 879. Terrain Set Texture Rotation

- **ID:** `world.terrain_set_texture_rotation`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain set texture rotation` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Set Texture Rotation`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 880. Terrain Set Texture Offset

- **ID:** `world.terrain_set_texture_offset`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain set texture offset` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Set Texture Offset`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 881. Terrain Set Roughness

- **ID:** `world.terrain_set_roughness`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain set roughness` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Set Roughness`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 882. Terrain Set Metallic

- **ID:** `world.terrain_set_metallic`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain set metallic` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Set Metallic`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 883. Terrain Import Heightmap

- **ID:** `world.terrain_import_heightmap`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain import heightmap` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Import Heightmap`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 884. Terrain Export Heightmap

- **ID:** `world.terrain_export_heightmap`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain export heightmap` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Export Heightmap`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 885. Terrain Generate Semi Arid

- **ID:** `world.terrain_generate_semi_arid`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain generate semi arid` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Generate Semi Arid`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 886. Terrain Scatter Tiles

- **ID:** `world.terrain_scatter_tiles`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain scatter tiles` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Scatter Tiles`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 887. Terrain Clear Tiles

- **ID:** `world.terrain_clear_tiles`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain clear tiles` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Clear Tiles`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 888. Character Set Camera First Person

- **ID:** `world.character_set_camera_first_person`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `character set camera first person` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Character Set Camera First Person`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 889. Character Set Camera Third Person

- **ID:** `world.character_set_camera_third_person`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `character set camera third person` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Character Set Camera Third Person`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 890. Character Set Camera Top Down

- **ID:** `world.character_set_camera_top_down`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `character set camera top down` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Character Set Camera Top Down`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 891. Character Set Speed

- **ID:** `world.character_set_speed`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `character set speed` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Character Set Speed`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 892. Character Jump

- **ID:** `world.character_jump`
- **Categoria:** Mundo
- **Finalidade:** Faz um `CharacterBody3D` pular somente quando `is_on_floor()` confirma contato com o chão.
- **Entradas/alvo:** `target_path`: personagem; `force`: velocidade vertical positiva; evento recomendado `Button Pressed` com ação `jump`.
- **Saídas/efeito:** Define a velocidade Y do personagem e emite `flow`; no ar, não aplica um segundo pulo.
- **Exemplo:** Pulo mobile: `Button Pressed (jump) → Character Jump`, alvo `../Player`, força `6.5`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 893. Character Set Look Sensitivity

- **ID:** `world.character_set_look_sensitivity`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `character set look sensitivity` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Character Set Look Sensitivity`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 894. Joystick Get Axis

- **ID:** `world.joystick_get_axis`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `joystick get axis` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Joystick Get Axis`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 895. Joystick Set Dead Zone

- **ID:** `world.joystick_set_dead_zone`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `joystick set dead zone` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Joystick Set Dead Zone`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 896. Mover personagem

- **ID:** `world.character_move`
- **Categoria:** Mundo
- **Finalidade:** Move um `CharacterBody3D` usando o joystick relativo à direção da câmera, aplica gravidade e chama `move_and_slide()`.
- **Entradas/alvo:** `target_path`: personagem; `speed`: unidades por segundo; eixo vindo de `Joystick Get Axis` ou das ações `ui_left/right/up/down`.
- **Saídas/efeito:** Atualiza a velocidade horizontal, preserva a gravidade e emite `flow`.
- **Exemplo:** Controle mobile: `Update → Joystick Get Axis → Character Move`, alvo `../Player` e velocidade `5.0`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 897. Girar câmera do personagem

- **ID:** `world.character_look`
- **Categoria:** Mundo
- **Finalidade:** Gira o personagem no eixo horizontal e o pivô da câmera no vertical, limitando o pitch para evitar que a visão vire ao contrário.
- **Entradas/alvo:** `target_path`: personagem/pivô; `look_delta`: movimento do toque; `sensitivity`: multiplicador da rotação.
- **Saídas/efeito:** Altera yaw e pitch e emite `flow`.
- **Exemplo:** Câmera mobile: `Pointer Drag → Character Look`, usando o delta do arrasto e sensibilidade `0.003`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 898. Save

- **ID:** `save.bool.save`
- **Categoria:** Save Game
- **Finalidade:** Executa `save` para um valor persistente do tipo bool no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_bool`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 899. Load

- **ID:** `save.bool.load`
- **Categoria:** Save Game
- **Finalidade:** Executa `load` para um valor persistente do tipo bool no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_bool`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 900. Has

- **ID:** `save.bool.has`
- **Categoria:** Save Game
- **Finalidade:** Executa `has` para um valor persistente do tipo bool no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_bool`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 901. Delete

- **ID:** `save.bool.delete`
- **Categoria:** Save Game
- **Finalidade:** Executa `delete` para um valor persistente do tipo bool no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_bool`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 902. Save

- **ID:** `save.number.save`
- **Categoria:** Save Game
- **Finalidade:** Executa `save` para um valor persistente do tipo number no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_number`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 903. Load

- **ID:** `save.number.load`
- **Categoria:** Save Game
- **Finalidade:** Executa `load` para um valor persistente do tipo number no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_number`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 904. Has

- **ID:** `save.number.has`
- **Categoria:** Save Game
- **Finalidade:** Executa `has` para um valor persistente do tipo number no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_number`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 905. Delete

- **ID:** `save.number.delete`
- **Categoria:** Save Game
- **Finalidade:** Executa `delete` para um valor persistente do tipo number no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_number`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 906. Save

- **ID:** `save.integer.save`
- **Categoria:** Save Game
- **Finalidade:** Executa `save` para um valor persistente do tipo integer no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_integer`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 907. Load

- **ID:** `save.integer.load`
- **Categoria:** Save Game
- **Finalidade:** Executa `load` para um valor persistente do tipo integer no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_integer`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 908. Has

- **ID:** `save.integer.has`
- **Categoria:** Save Game
- **Finalidade:** Executa `has` para um valor persistente do tipo integer no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_integer`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 909. Delete

- **ID:** `save.integer.delete`
- **Categoria:** Save Game
- **Finalidade:** Executa `delete` para um valor persistente do tipo integer no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_integer`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 910. Save

- **ID:** `save.text.save`
- **Categoria:** Save Game
- **Finalidade:** Executa `save` para um valor persistente do tipo text no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_text`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 911. Load

- **ID:** `save.text.load`
- **Categoria:** Save Game
- **Finalidade:** Executa `load` para um valor persistente do tipo text no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_text`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 912. Has

- **ID:** `save.text.has`
- **Categoria:** Save Game
- **Finalidade:** Executa `has` para um valor persistente do tipo text no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_text`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 913. Delete

- **ID:** `save.text.delete`
- **Categoria:** Save Game
- **Finalidade:** Executa `delete` para um valor persistente do tipo text no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_text`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 914. Save

- **ID:** `save.vector2.save`
- **Categoria:** Save Game
- **Finalidade:** Executa `save` para um valor persistente do tipo vector2 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector2`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 915. Load

- **ID:** `save.vector2.load`
- **Categoria:** Save Game
- **Finalidade:** Executa `load` para um valor persistente do tipo vector2 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector2`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 916. Has

- **ID:** `save.vector2.has`
- **Categoria:** Save Game
- **Finalidade:** Executa `has` para um valor persistente do tipo vector2 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector2`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 917. Delete

- **ID:** `save.vector2.delete`
- **Categoria:** Save Game
- **Finalidade:** Executa `delete` para um valor persistente do tipo vector2 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector2`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 918. Save

- **ID:** `save.vector3.save`
- **Categoria:** Save Game
- **Finalidade:** Executa `save` para um valor persistente do tipo vector3 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector3`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 919. Load

- **ID:** `save.vector3.load`
- **Categoria:** Save Game
- **Finalidade:** Executa `load` para um valor persistente do tipo vector3 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector3`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 920. Has

- **ID:** `save.vector3.has`
- **Categoria:** Save Game
- **Finalidade:** Executa `has` para um valor persistente do tipo vector3 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector3`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 921. Delete

- **ID:** `save.vector3.delete`
- **Categoria:** Save Game
- **Finalidade:** Executa `delete` para um valor persistente do tipo vector3 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector3`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 922. Save

- **ID:** `save.color.save`
- **Categoria:** Save Game
- **Finalidade:** Executa `save` para um valor persistente do tipo color no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_color`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 923. Load

- **ID:** `save.color.load`
- **Categoria:** Save Game
- **Finalidade:** Executa `load` para um valor persistente do tipo color no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_color`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 924. Has

- **ID:** `save.color.has`
- **Categoria:** Save Game
- **Finalidade:** Executa `has` para um valor persistente do tipo color no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_color`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 925. Delete

- **ID:** `save.color.delete`
- **Categoria:** Save Game
- **Finalidade:** Executa `delete` para um valor persistente do tipo color no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_color`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 926. Save

- **ID:** `save.object_id.save`
- **Categoria:** Save Game
- **Finalidade:** Executa `save` para um valor persistente do tipo object id no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_object id`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 927. Load

- **ID:** `save.object_id.load`
- **Categoria:** Save Game
- **Finalidade:** Executa `load` para um valor persistente do tipo object id no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_object id`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 928. Has

- **ID:** `save.object_id.has`
- **Categoria:** Save Game
- **Finalidade:** Executa `has` para um valor persistente do tipo object id no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_object id`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 929. Delete

- **ID:** `save.object_id.delete`
- **Categoria:** Save Game
- **Finalidade:** Executa `delete` para um valor persistente do tipo object id no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_object id`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 930. Save

- **ID:** `save.list.save`
- **Categoria:** Save Game
- **Finalidade:** Executa `save` para um valor persistente do tipo list no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_list`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 931. Load

- **ID:** `save.list.load`
- **Categoria:** Save Game
- **Finalidade:** Executa `load` para um valor persistente do tipo list no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_list`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 932. Has

- **ID:** `save.list.has`
- **Categoria:** Save Game
- **Finalidade:** Executa `has` para um valor persistente do tipo list no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_list`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 933. Delete

- **ID:** `save.list.delete`
- **Categoria:** Save Game
- **Finalidade:** Executa `delete` para um valor persistente do tipo list no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_list`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** Falha quando a chave está vazia, o valor salvo tem outro tipo ou o armazenamento não pode ser acessado. Use `Has` e um valor padrão antes de depender de dados antigos.

## 934. Delta

- **ID:** `time.delta`
- **Categoria:** Tempo
- **Finalidade:** Retorna tempo em segundos desde o quadro anterior. Use para multiplicar movimento por Delta para manter a mesma velocidade em aparelhos rápidos e lentos.
- **Entradas/alvo:** Não possui entrada nem alvo; lê o relógio interno da engine.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Update → Delta → Multiply (speed) → Transform Position Add`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 935. Fixed Delta

- **ID:** `time.fixed_delta`
- **Categoria:** Tempo
- **Finalidade:** Retorna intervalo fixo, em segundos, usado pela atualização de física. Use para calcular forças e física sem depender da taxa de quadros.
- **Entradas/alvo:** Não possui entrada nem alvo; lê o relógio interno da engine.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Fixed Update → Fixed Delta → Multiply (acceleration) → Add Force`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 936. Elapsed

- **ID:** `time.elapsed`
- **Categoria:** Tempo
- **Finalidade:** Retorna segundos transcorridos desde o início da execução. Use para criar animações, cronômetros ou dificuldade progressiva.
- **Entradas/alvo:** Não possui entrada nem alvo; lê o relógio interno da engine.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Update → Elapsed → Math Sin → Material Set Emission`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 937. Unscaled Elapsed

- **ID:** `time.unscaled_elapsed`
- **Categoria:** Tempo
- **Finalidade:** Retorna tempo transcorrido ignorando pausa e escala de tempo. Use para animar menus e telas de pausa enquanto o jogo está congelado.
- **Entradas/alvo:** Não possui entrada nem alvo; lê o relógio interno da engine.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Update → Unscaled Elapsed → UI Animate Value`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 938. Frame

- **ID:** `time.frame`
- **Categoria:** Tempo
- **Finalidade:** Retorna número do quadro atualmente processado. Use para executar amostragem ou tarefas a cada quantidade de quadros.
- **Entradas/alvo:** Não possui entrada nem alvo; lê o relógio interno da engine.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Update → Frame → Modulo (30) → Equal (0) → Branch`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 939. Fps

- **ID:** `time.fps`
- **Categoria:** Tempo
- **Finalidade:** Retorna quantidade aproximada de quadros renderizados por segundo. Use para mostrar um contador de desempenho ou adaptar efeitos em aparelhos lentos.
- **Entradas/alvo:** Não possui entrada nem alvo; lê o relógio interno da engine.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Update → Fps → Number To Text → UI Set Text`, alvo `../HUD/FpsLabel`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 940. Timestamp

- **ID:** `time.timestamp`
- **Categoria:** Tempo
- **Finalidade:** Retorna instante atual como timestamp Unix. Use para registrar quando um save, partida ou recompensa ocorreu.
- **Entradas/alvo:** Não possui entrada nem alvo; lê o relógio interno da engine.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Button Pressed → Timestamp → Save Integer`, chave `last_save_time`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 941. Date

- **ID:** `time.date`
- **Categoria:** Tempo
- **Finalidade:** Retorna data atual do sistema já formatada. Use para mostrar a data local em saves ou telas de perfil.
- **Entradas/alvo:** Não possui entrada nem alvo; lê o relógio interno da engine.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Ready → Date → UI Set Text`, alvo `../HUD/DateLabel`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 942. Time

- **ID:** `time.time`
- **Categoria:** Tempo
- **Finalidade:** Retorna horário local atual do sistema. Use para exibir relógio ou criar eventos dependentes do horário.
- **Entradas/alvo:** Não possui entrada nem alvo; lê o relógio interno da engine.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Timer Elapsed → Time → UI Set Text`, alvo `../HUD/ClockLabel`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 943. Timezone

- **ID:** `time.timezone`
- **Categoria:** Tempo
- **Finalidade:** Retorna fuso horário informado pelo sistema. Use para normalizar datas de placar ou explicar o horário mostrado.
- **Entradas/alvo:** Não possui entrada nem alvo; lê o relógio interno da engine.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Ready → Timezone → Text Append → UI Set Text`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 944. Timer Start

- **ID:** `time.timer_start`
- **Categoria:** Tempo
- **Finalidade:** Retorna inicia um temporizador identificado por nome. Use para criar cooldowns, contagens regressivas e eventos atrasados reutilizáveis.
- **Entradas/alvo:** Recebe `seconds`/`duration` ou o `timer_name` indicado no bloco; não usa `target_path`.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Button Pressed → Timer Start`, nome `dash_cooldown`, duração `2.0`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 945. Timer Pause

- **ID:** `time.timer_pause`
- **Categoria:** Tempo
- **Finalidade:** Retorna pausa um temporizador ativo preservando o tempo restante. Use para congelar uma missão ou contagem sem reiniciá-la.
- **Entradas/alvo:** Recebe `seconds`/`duration` ou o `timer_name` indicado no bloco; não usa `target_path`.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Button Pressed (pause) → Timer Pause`, nome `mission`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 946. Timer Resume

- **ID:** `time.timer_resume`
- **Categoria:** Tempo
- **Finalidade:** Retorna continua um temporizador anteriormente pausado. Use para retomar cooldowns e contagens.
- **Entradas/alvo:** Recebe `seconds`/`duration` ou o `timer_name` indicado no bloco; não usa `target_path`.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Button Pressed (resume) → Timer Resume`, nome `mission`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 947. Timer Stop

- **ID:** `time.timer_stop`
- **Categoria:** Tempo
- **Finalidade:** Retorna cancela e remove um temporizador ativo. Use para cancelar uma ação carregada ou prazo de missão.
- **Entradas/alvo:** Recebe `seconds`/`duration` ou o `timer_name` indicado no bloco; não usa `target_path`.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Collision Exit → Timer Stop`, nome `capture_zone`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 948. Timer Remaining

- **ID:** `time.timer_remaining`
- **Categoria:** Tempo
- **Finalidade:** Retorna consulta quantos segundos faltam em um temporizador. Use para atualizar uma barra ou texto de cooldown.
- **Entradas/alvo:** Recebe `seconds`/`duration` ou o `timer_name` indicado no bloco; não usa `target_path`.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Update → Timer Remaining (dash_cooldown) → UI Set Text`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 949. Timer Elapsed

- **ID:** `time.timer_elapsed`
- **Categoria:** Tempo
- **Finalidade:** Retorna informa se um temporizador chegou ao fim. Use para liberar novamente uma habilidade ou concluir contagem.
- **Entradas/alvo:** Recebe `seconds`/`duration` ou o `timer_name` indicado no bloco; não usa `target_path`.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Update → Timer Elapsed (dash_cooldown) → Branch → UI Set Interactable`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 950. Format Duration

- **ID:** `time.format_duration`
- **Categoria:** Tempo
- **Finalidade:** Retorna converte segundos para texto legível de duração. Use para mostrar `01:35` no lugar de `95.0` segundos.
- **Entradas/alvo:** Recebe `seconds`/`duration` ou o `timer_name` indicado no bloco; não usa `target_path`.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Timer Remaining → Format Duration → UI Set Text`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 951. Wait Seconds

- **ID:** `time.wait_seconds`
- **Categoria:** Tempo
- **Finalidade:** Retorna aguarda a duração indicada antes de continuar o fluxo. Use para atrasar uma ação simples sem criar um Timer nomeado.
- **Entradas/alvo:** Recebe `seconds`/`duration` ou o `timer_name` indicado no bloco; não usa `target_path`.
- **Saídas/efeito:** Fornece o valor temporal em `value`; ações de timer e espera também continuam por `flow`.
- **Exemplo:** `Button Pressed → UI Hide → Wait Seconds (2) → UI Show`.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 952. Trace

- **ID:** `debug.log.trace`
- **Categoria:** Debug
- **Finalidade:** Registra ou desenha informação de depuração no nível `trace` para investigar o grafo durante a execução.
- **Entradas/alvo:** Recebe mensagem/valor; operações de desenho também recebem origem, destino, cor e duração. Não deve controlar regras de gameplay.
- **Saídas/efeito:** Escreve no painel de saída ou desenha uma forma temporária; `assert` e `breakpoint` podem interromper a depuração.
- **Exemplo:** Exemplo: conecte a saída de um cálculo a `Trace` e inclua um rótulo como `Velocidade do jogador` para identificar o valor no painel Saída.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 953. Info

- **ID:** `debug.log.info`
- **Categoria:** Debug
- **Finalidade:** Registra ou desenha informação de depuração no nível `info` para investigar o grafo durante a execução.
- **Entradas/alvo:** Recebe mensagem/valor; operações de desenho também recebem origem, destino, cor e duração. Não deve controlar regras de gameplay.
- **Saídas/efeito:** Escreve no painel de saída ou desenha uma forma temporária; `assert` e `breakpoint` podem interromper a depuração.
- **Exemplo:** Exemplo: conecte a saída de um cálculo a `Info` e inclua um rótulo como `Velocidade do jogador` para identificar o valor no painel Saída.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 954. Warning

- **ID:** `debug.log.warning`
- **Categoria:** Debug
- **Finalidade:** Registra ou desenha informação de depuração no nível `warning` para investigar o grafo durante a execução.
- **Entradas/alvo:** Recebe mensagem/valor; operações de desenho também recebem origem, destino, cor e duração. Não deve controlar regras de gameplay.
- **Saídas/efeito:** Escreve no painel de saída ou desenha uma forma temporária; `assert` e `breakpoint` podem interromper a depuração.
- **Exemplo:** Exemplo: conecte a saída de um cálculo a `Warning` e inclua um rótulo como `Velocidade do jogador` para identificar o valor no painel Saída.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 955. Error

- **ID:** `debug.log.error`
- **Categoria:** Debug
- **Finalidade:** Registra ou desenha informação de depuração no nível `error` para investigar o grafo durante a execução.
- **Entradas/alvo:** Recebe mensagem/valor; operações de desenho também recebem origem, destino, cor e duração. Não deve controlar regras de gameplay.
- **Saídas/efeito:** Escreve no painel de saída ou desenha uma forma temporária; `assert` e `breakpoint` podem interromper a depuração.
- **Exemplo:** Exemplo: conecte a saída de um cálculo a `Error` e inclua um rótulo como `Velocidade do jogador` para identificar o valor no painel Saída.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 956. Assert

- **ID:** `debug.log.assert`
- **Categoria:** Debug
- **Finalidade:** Registra ou desenha informação de depuração no nível `assert` para investigar o grafo durante a execução.
- **Entradas/alvo:** Recebe mensagem/valor; operações de desenho também recebem origem, destino, cor e duração. Não deve controlar regras de gameplay.
- **Saídas/efeito:** Escreve no painel de saída ou desenha uma forma temporária; `assert` e `breakpoint` podem interromper a depuração.
- **Exemplo:** Exemplo: conecte a saída de um cálculo a `Assert` e inclua um rótulo como `Velocidade do jogador` para identificar o valor no painel Saída.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 957. Draw Line

- **ID:** `debug.log.draw_line`
- **Categoria:** Debug
- **Finalidade:** Registra ou desenha informação de depuração no nível `draw line` para investigar o grafo durante a execução.
- **Entradas/alvo:** Recebe mensagem/valor; operações de desenho também recebem origem, destino, cor e duração. Não deve controlar regras de gameplay.
- **Saídas/efeito:** Escreve no painel de saída ou desenha uma forma temporária; `assert` e `breakpoint` podem interromper a depuração.
- **Exemplo:** Exemplo: conecte a saída de um cálculo a `Draw Line` e inclua um rótulo como `Velocidade do jogador` para identificar o valor no painel Saída.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 958. Draw Ray

- **ID:** `debug.log.draw_ray`
- **Categoria:** Debug
- **Finalidade:** Registra ou desenha informação de depuração no nível `draw ray` para investigar o grafo durante a execução.
- **Entradas/alvo:** Recebe mensagem/valor; operações de desenho também recebem origem, destino, cor e duração. Não deve controlar regras de gameplay.
- **Saídas/efeito:** Escreve no painel de saída ou desenha uma forma temporária; `assert` e `breakpoint` podem interromper a depuração.
- **Exemplo:** Exemplo: conecte a saída de um cálculo a `Draw Ray` e inclua um rótulo como `Velocidade do jogador` para identificar o valor no painel Saída.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 959. Draw Sphere

- **ID:** `debug.log.draw_sphere`
- **Categoria:** Debug
- **Finalidade:** Registra ou desenha informação de depuração no nível `draw sphere` para investigar o grafo durante a execução.
- **Entradas/alvo:** Recebe mensagem/valor; operações de desenho também recebem origem, destino, cor e duração. Não deve controlar regras de gameplay.
- **Saídas/efeito:** Escreve no painel de saída ou desenha uma forma temporária; `assert` e `breakpoint` podem interromper a depuração.
- **Exemplo:** Exemplo: conecte a saída de um cálculo a `Draw Sphere` e inclua um rótulo como `Velocidade do jogador` para identificar o valor no painel Saída.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 960. Breakpoint

- **ID:** `debug.log.breakpoint`
- **Categoria:** Debug
- **Finalidade:** Registra ou desenha informação de depuração no nível `breakpoint` para investigar o grafo durante a execução.
- **Entradas/alvo:** Recebe mensagem/valor; operações de desenho também recebem origem, destino, cor e duração. Não deve controlar regras de gameplay.
- **Saídas/efeito:** Escreve no painel de saída ou desenha uma forma temporária; `assert` e `breakpoint` podem interromper a depuração.
- **Exemplo:** Exemplo: conecte a saída de um cálculo a `Breakpoint` e inclua um rótulo como `Velocidade do jogador` para identificar o valor no painel Saída.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.

## 961. Watch

- **ID:** `debug.log.watch`
- **Categoria:** Debug
- **Finalidade:** Registra ou desenha informação de depuração no nível `watch` para investigar o grafo durante a execução.
- **Entradas/alvo:** Recebe mensagem/valor; operações de desenho também recebem origem, destino, cor e duração. Não deve controlar regras de gameplay.
- **Saídas/efeito:** Escreve no painel de saída ou desenha uma forma temporária; `assert` e `breakpoint` podem interromper a depuração.
- **Exemplo:** Exemplo: conecte a saída de um cálculo a `Watch` e inclua um rótulo como `Velocidade do jogador` para identificar o valor no painel Saída.
- **Erros:** Entradas ausentes, tipos incompatíveis ou operação indisponível emitem `graph_error`. O runner interrompe somente esse caminho do grafo e não chama métodos arbitrários.
