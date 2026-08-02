# Catálogo nativo NoCode — 961 operações

> Gerado por `tools/godot/generate_native_nocode_docs.py`. Não editar manualmente.

Cada entrada abaixo documenta o contrato persistido no `.graph.json`. A presença no catálogo não substitui a validação do tipo do alvo: operações de cena falham explicitamente quando o NodePath ou componente é incompatível.

## 1. Start

- **ID:** `event.scene.start`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 2. Ready

- **ID:** `event.scene.ready`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 3. Exit

- **ID:** `event.scene.exit`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 4. Update

- **ID:** `event.frame.update`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 5. Fixed Update

- **ID:** `event.frame.fixed_update`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 6. Touch

- **ID:** `event.object.touch`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 7. Click

- **ID:** `event.object.click`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 8. Enabled

- **ID:** `event.object.enabled`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 9. Disabled

- **ID:** `event.object.disabled`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 10. Created

- **ID:** `event.object.created`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 11. Destroyed

- **ID:** `event.object.destroyed`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 12. Button Pressed

- **ID:** `event.input.button_pressed`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 13. Button Released

- **ID:** `event.input.button_released`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 14. Key Down

- **ID:** `event.input.key_down`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 15. Key Up

- **ID:** `event.input.key_up`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 16. Axis

- **ID:** `event.input.axis`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 17. Down

- **ID:** `event.pointer.down`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 18. Up

- **ID:** `event.pointer.up`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 19. Move

- **ID:** `event.pointer.move`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 20. Drag

- **ID:** `event.pointer.drag`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 21. Enter

- **ID:** `event.collision.enter`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 22. Stay

- **ID:** `event.collision.stay`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 23. Exit

- **ID:** `event.collision.exit`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 24. Enter

- **ID:** `event.trigger.enter`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 25. Stay

- **ID:** `event.trigger.stay`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 26. Exit

- **ID:** `event.trigger.exit`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 27. Started

- **ID:** `event.animation.started`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 28. Finished

- **ID:** `event.animation.finished`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 29. Finished

- **ID:** `event.audio.finished`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 30. Focused

- **ID:** `event.ui.focused`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 31. Value Changed

- **ID:** `event.ui.value_changed`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 32. Elapsed

- **ID:** `event.timer.elapsed`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 33. Connected

- **ID:** `event.network.connected`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 34. Disconnected

- **ID:** `event.network.disconnected`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 35. Loaded

- **ID:** `event.save.loaded`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 36. Completed

- **ID:** `event.save.completed`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 37. Loaded

- **ID:** `event.world.loaded`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 38. Unloaded

- **ID:** `event.world.unloaded`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 39. Received

- **ID:** `event.custom.received`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 40. Changed

- **ID:** `event.component.changed`
- **Categoria:** Eventos
- **Finalidade:** Inicia execução quando o evento correspondente é emitido pela engine.
- **Entradas/alvo:** Filtros opcionais em `values`, conforme o evento.
- **Saídas/efeito:** `flow` e, quando aplicável, `value` com o payload.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 41. Sequência 2

- **ID:** `flow.sequence.2`
- **Categoria:** Fluxo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 42. Sequência 3

- **ID:** `flow.sequence.3`
- **Categoria:** Fluxo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 43. Sequência 4

- **ID:** `flow.sequence.4`
- **Categoria:** Fluxo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 44. Sequência 5

- **ID:** `flow.sequence.5`
- **Categoria:** Fluxo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 45. Sequência 6

- **ID:** `flow.sequence.6`
- **Categoria:** Fluxo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 46. Sequência 8

- **ID:** `flow.sequence.8`
- **Categoria:** Fluxo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 47. Sequência 10

- **ID:** `flow.sequence.10`
- **Categoria:** Fluxo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 48. Sequência 12

- **ID:** `flow.sequence.12`
- **Categoria:** Fluxo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 49. Branch

- **ID:** `flow.branch`
- **Categoria:** Fluxo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 50. Gate

- **ID:** `flow.gate`
- **Categoria:** Fluxo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 51. Once

- **ID:** `flow.once`
- **Categoria:** Fluxo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 52. Do N

- **ID:** `flow.do_n`
- **Categoria:** Fluxo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 53. While

- **ID:** `flow.while`
- **Categoria:** Fluxo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 54. For

- **ID:** `flow.for`
- **Categoria:** Fluxo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 55. Foreach

- **ID:** `flow.foreach`
- **Categoria:** Fluxo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 56. Delay

- **ID:** `flow.delay`
- **Categoria:** Fluxo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 57. Debounce

- **ID:** `flow.debounce`
- **Categoria:** Fluxo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 58. Throttle

- **ID:** `flow.throttle`
- **Categoria:** Fluxo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 59. Race

- **ID:** `flow.race`
- **Categoria:** Fluxo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 60. Parallel

- **ID:** `flow.parallel`
- **Categoria:** Fluxo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 61. Cancel

- **ID:** `flow.cancel`
- **Categoria:** Fluxo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 62. Break

- **ID:** `flow.break`
- **Categoria:** Fluxo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 63. Continue

- **ID:** `flow.continue`
- **Categoria:** Fluxo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 64. Switch Bool

- **ID:** `flow.switch_bool`
- **Categoria:** Fluxo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 65. Switch Number

- **ID:** `flow.switch_number`
- **Categoria:** Fluxo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 66. Switch Text

- **ID:** `flow.switch_text`
- **Categoria:** Fluxo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 67. Switch Object

- **ID:** `flow.switch_object`
- **Categoria:** Fluxo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 68. Flip Flop

- **ID:** `flow.flip_flop`
- **Categoria:** Fluxo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 69. Pressed

- **ID:** `input.keyboard.pressed`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 70. Released

- **ID:** `input.keyboard.released`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 71. Held

- **ID:** `input.keyboard.held`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 72. Axis

- **ID:** `input.keyboard.axis`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 73. Position

- **ID:** `input.keyboard.position`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 74. Delta

- **ID:** `input.keyboard.delta`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 75. Pressure

- **ID:** `input.keyboard.pressure`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 76. Count

- **ID:** `input.keyboard.count`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 77. Available

- **ID:** `input.keyboard.available`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 78. Name

- **ID:** `input.keyboard.name`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 79. Pressed

- **ID:** `input.mouse.pressed`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 80. Released

- **ID:** `input.mouse.released`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 81. Held

- **ID:** `input.mouse.held`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 82. Axis

- **ID:** `input.mouse.axis`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 83. Position

- **ID:** `input.mouse.position`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 84. Delta

- **ID:** `input.mouse.delta`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 85. Pressure

- **ID:** `input.mouse.pressure`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 86. Count

- **ID:** `input.mouse.count`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 87. Available

- **ID:** `input.mouse.available`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 88. Name

- **ID:** `input.mouse.name`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 89. Pressed

- **ID:** `input.touch.pressed`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 90. Released

- **ID:** `input.touch.released`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 91. Held

- **ID:** `input.touch.held`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 92. Axis

- **ID:** `input.touch.axis`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 93. Position

- **ID:** `input.touch.position`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 94. Delta

- **ID:** `input.touch.delta`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 95. Pressure

- **ID:** `input.touch.pressure`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 96. Count

- **ID:** `input.touch.count`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 97. Available

- **ID:** `input.touch.available`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 98. Name

- **ID:** `input.touch.name`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 99. Pressed

- **ID:** `input.gamepad.pressed`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 100. Released

- **ID:** `input.gamepad.released`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 101. Held

- **ID:** `input.gamepad.held`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 102. Axis

- **ID:** `input.gamepad.axis`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 103. Position

- **ID:** `input.gamepad.position`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 104. Delta

- **ID:** `input.gamepad.delta`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 105. Pressure

- **ID:** `input.gamepad.pressure`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 106. Count

- **ID:** `input.gamepad.count`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 107. Available

- **ID:** `input.gamepad.available`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 108. Name

- **ID:** `input.gamepad.name`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 109. Pressed

- **ID:** `input.sensor.pressed`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 110. Released

- **ID:** `input.sensor.released`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 111. Held

- **ID:** `input.sensor.held`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 112. Axis

- **ID:** `input.sensor.axis`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 113. Position

- **ID:** `input.sensor.position`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 114. Delta

- **ID:** `input.sensor.delta`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 115. Pressure

- **ID:** `input.sensor.pressure`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 116. Count

- **ID:** `input.sensor.count`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 117. Available

- **ID:** `input.sensor.available`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 118. Name

- **ID:** `input.sensor.name`
- **Categoria:** Entrada
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 119. Add

- **ID:** `math.number.add`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 120. Subtract

- **ID:** `math.number.subtract`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 121. Multiply

- **ID:** `math.number.multiply`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 122. Divide

- **ID:** `math.number.divide`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 123. Modulo

- **ID:** `math.number.modulo`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 124. Power

- **ID:** `math.number.power`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 125. Minimum

- **ID:** `math.number.minimum`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 126. Maximum

- **ID:** `math.number.maximum`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 127. Average

- **ID:** `math.number.average`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 128. Atan2

- **ID:** `math.number.atan2`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 129. Log Base

- **ID:** `math.number.log_base`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 130. Copy Sign

- **ID:** `math.number.copy_sign`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 131. Absolute

- **ID:** `math.number.absolute`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 132. Negative

- **ID:** `math.number.negative`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 133. Sqrt

- **ID:** `math.number.sqrt`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 134. Cube Root

- **ID:** `math.number.cube_root`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 135. Exp

- **ID:** `math.number.exp`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 136. Log

- **ID:** `math.number.log`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 137. Log10

- **ID:** `math.number.log10`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 138. Floor

- **ID:** `math.number.floor`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 139. Ceil

- **ID:** `math.number.ceil`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 140. Round

- **ID:** `math.number.round`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 141. Truncate

- **ID:** `math.number.truncate`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 142. Fraction

- **ID:** `math.number.fraction`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 143. Sign

- **ID:** `math.number.sign`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 144. Sin

- **ID:** `math.number.sin`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 145. Cos

- **ID:** `math.number.cos`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 146. Tan

- **ID:** `math.number.tan`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 147. Asin

- **ID:** `math.number.asin`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 148. Acos

- **ID:** `math.number.acos`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 149. Atan

- **ID:** `math.number.atan`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 150. Degrees

- **ID:** `math.number.degrees`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 151. Radians

- **ID:** `math.number.radians`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 152. Saturate

- **ID:** `math.number.saturate`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 153. Is Finite

- **ID:** `math.number.is_finite`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 154. Is Nan

- **ID:** `math.number.is_nan`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 155. Add

- **ID:** `math.integer.add`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 156. Subtract

- **ID:** `math.integer.subtract`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 157. Multiply

- **ID:** `math.integer.multiply`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 158. Divide

- **ID:** `math.integer.divide`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 159. Modulo

- **ID:** `math.integer.modulo`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 160. Power

- **ID:** `math.integer.power`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 161. Minimum

- **ID:** `math.integer.minimum`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 162. Maximum

- **ID:** `math.integer.maximum`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 163. Average

- **ID:** `math.integer.average`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 164. Atan2

- **ID:** `math.integer.atan2`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 165. Log Base

- **ID:** `math.integer.log_base`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 166. Copy Sign

- **ID:** `math.integer.copy_sign`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 167. Absolute

- **ID:** `math.integer.absolute`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 168. Negative

- **ID:** `math.integer.negative`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 169. Sqrt

- **ID:** `math.integer.sqrt`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 170. Cube Root

- **ID:** `math.integer.cube_root`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 171. Exp

- **ID:** `math.integer.exp`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 172. Log

- **ID:** `math.integer.log`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 173. Log10

- **ID:** `math.integer.log10`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 174. Floor

- **ID:** `math.integer.floor`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 175. Ceil

- **ID:** `math.integer.ceil`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 176. Round

- **ID:** `math.integer.round`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 177. Truncate

- **ID:** `math.integer.truncate`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 178. Fraction

- **ID:** `math.integer.fraction`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 179. Sign

- **ID:** `math.integer.sign`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 180. Sin

- **ID:** `math.integer.sin`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 181. Cos

- **ID:** `math.integer.cos`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 182. Tan

- **ID:** `math.integer.tan`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 183. Asin

- **ID:** `math.integer.asin`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 184. Acos

- **ID:** `math.integer.acos`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 185. Atan

- **ID:** `math.integer.atan`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 186. Degrees

- **ID:** `math.integer.degrees`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 187. Radians

- **ID:** `math.integer.radians`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 188. Saturate

- **ID:** `math.integer.saturate`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 189. Is Finite

- **ID:** `math.integer.is_finite`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 190. Is Nan

- **ID:** `math.integer.is_nan`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 191. Add

- **ID:** `math.angle.add`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 192. Subtract

- **ID:** `math.angle.subtract`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 193. Multiply

- **ID:** `math.angle.multiply`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 194. Divide

- **ID:** `math.angle.divide`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 195. Modulo

- **ID:** `math.angle.modulo`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 196. Power

- **ID:** `math.angle.power`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 197. Minimum

- **ID:** `math.angle.minimum`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 198. Maximum

- **ID:** `math.angle.maximum`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 199. Average

- **ID:** `math.angle.average`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 200. Atan2

- **ID:** `math.angle.atan2`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 201. Log Base

- **ID:** `math.angle.log_base`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 202. Copy Sign

- **ID:** `math.angle.copy_sign`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 203. Absolute

- **ID:** `math.angle.absolute`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 204. Negative

- **ID:** `math.angle.negative`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 205. Sqrt

- **ID:** `math.angle.sqrt`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 206. Cube Root

- **ID:** `math.angle.cube_root`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 207. Exp

- **ID:** `math.angle.exp`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 208. Log

- **ID:** `math.angle.log`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 209. Log10

- **ID:** `math.angle.log10`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 210. Floor

- **ID:** `math.angle.floor`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 211. Ceil

- **ID:** `math.angle.ceil`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 212. Round

- **ID:** `math.angle.round`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 213. Truncate

- **ID:** `math.angle.truncate`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 214. Fraction

- **ID:** `math.angle.fraction`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 215. Sign

- **ID:** `math.angle.sign`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 216. Sin

- **ID:** `math.angle.sin`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 217. Cos

- **ID:** `math.angle.cos`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 218. Tan

- **ID:** `math.angle.tan`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 219. Asin

- **ID:** `math.angle.asin`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 220. Acos

- **ID:** `math.angle.acos`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 221. Atan

- **ID:** `math.angle.atan`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 222. Degrees

- **ID:** `math.angle.degrees`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 223. Radians

- **ID:** `math.angle.radians`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 224. Saturate

- **ID:** `math.angle.saturate`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 225. Is Finite

- **ID:** `math.angle.is_finite`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 226. Is Nan

- **ID:** `math.angle.is_nan`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 227. Clamp

- **ID:** `math.range.clamp`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 228. Lerp

- **ID:** `math.range.lerp`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 229. Inverse Lerp

- **ID:** `math.range.inverse_lerp`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 230. Remap

- **ID:** `math.range.remap`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 231. Smoothstep

- **ID:** `math.range.smoothstep`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 232. Move Towards

- **ID:** `math.range.move_towards`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 233. Random Range

- **ID:** `math.range.random_range`
- **Categoria:** Matemática
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 234. Equal

- **ID:** `compare.boolean.equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 235. Not Equal

- **ID:** `compare.boolean.not_equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 236. Greater

- **ID:** `compare.boolean.greater`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 237. Greater Equal

- **ID:** `compare.boolean.greater_equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 238. Less

- **ID:** `compare.boolean.less`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 239. Less Equal

- **ID:** `compare.boolean.less_equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 240. Between

- **ID:** `compare.boolean.between`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 241. Outside

- **ID:** `compare.boolean.outside`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 242. Approximately

- **ID:** `compare.boolean.approximately`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 243. Is Null

- **ID:** `compare.boolean.is_null`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 244. Equal

- **ID:** `compare.number.equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 245. Not Equal

- **ID:** `compare.number.not_equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 246. Greater

- **ID:** `compare.number.greater`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 247. Greater Equal

- **ID:** `compare.number.greater_equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 248. Less

- **ID:** `compare.number.less`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 249. Less Equal

- **ID:** `compare.number.less_equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 250. Between

- **ID:** `compare.number.between`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 251. Outside

- **ID:** `compare.number.outside`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 252. Approximately

- **ID:** `compare.number.approximately`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 253. Is Null

- **ID:** `compare.number.is_null`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 254. Equal

- **ID:** `compare.text.equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 255. Not Equal

- **ID:** `compare.text.not_equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 256. Greater

- **ID:** `compare.text.greater`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 257. Greater Equal

- **ID:** `compare.text.greater_equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 258. Less

- **ID:** `compare.text.less`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 259. Less Equal

- **ID:** `compare.text.less_equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 260. Between

- **ID:** `compare.text.between`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 261. Outside

- **ID:** `compare.text.outside`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 262. Approximately

- **ID:** `compare.text.approximately`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 263. Is Null

- **ID:** `compare.text.is_null`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 264. Equal

- **ID:** `compare.vector2.equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 265. Not Equal

- **ID:** `compare.vector2.not_equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 266. Greater

- **ID:** `compare.vector2.greater`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 267. Greater Equal

- **ID:** `compare.vector2.greater_equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 268. Less

- **ID:** `compare.vector2.less`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 269. Less Equal

- **ID:** `compare.vector2.less_equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 270. Between

- **ID:** `compare.vector2.between`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 271. Outside

- **ID:** `compare.vector2.outside`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 272. Approximately

- **ID:** `compare.vector2.approximately`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 273. Is Null

- **ID:** `compare.vector2.is_null`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 274. Equal

- **ID:** `compare.vector3.equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 275. Not Equal

- **ID:** `compare.vector3.not_equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 276. Greater

- **ID:** `compare.vector3.greater`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 277. Greater Equal

- **ID:** `compare.vector3.greater_equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 278. Less

- **ID:** `compare.vector3.less`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 279. Less Equal

- **ID:** `compare.vector3.less_equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 280. Between

- **ID:** `compare.vector3.between`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 281. Outside

- **ID:** `compare.vector3.outside`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 282. Approximately

- **ID:** `compare.vector3.approximately`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 283. Is Null

- **ID:** `compare.vector3.is_null`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 284. Equal

- **ID:** `compare.color.equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 285. Not Equal

- **ID:** `compare.color.not_equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 286. Greater

- **ID:** `compare.color.greater`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 287. Greater Equal

- **ID:** `compare.color.greater_equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 288. Less

- **ID:** `compare.color.less`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 289. Less Equal

- **ID:** `compare.color.less_equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 290. Between

- **ID:** `compare.color.between`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 291. Outside

- **ID:** `compare.color.outside`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 292. Approximately

- **ID:** `compare.color.approximately`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 293. Is Null

- **ID:** `compare.color.is_null`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 294. Equal

- **ID:** `compare.object.equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 295. Not Equal

- **ID:** `compare.object.not_equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 296. Greater

- **ID:** `compare.object.greater`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 297. Greater Equal

- **ID:** `compare.object.greater_equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 298. Less

- **ID:** `compare.object.less`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 299. Less Equal

- **ID:** `compare.object.less_equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 300. Between

- **ID:** `compare.object.between`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 301. Outside

- **ID:** `compare.object.outside`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 302. Approximately

- **ID:** `compare.object.approximately`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 303. Is Null

- **ID:** `compare.object.is_null`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 304. Equal

- **ID:** `compare.asset.equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 305. Not Equal

- **ID:** `compare.asset.not_equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 306. Greater

- **ID:** `compare.asset.greater`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 307. Greater Equal

- **ID:** `compare.asset.greater_equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 308. Less

- **ID:** `compare.asset.less`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 309. Less Equal

- **ID:** `compare.asset.less_equal`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 310. Between

- **ID:** `compare.asset.between`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 311. Outside

- **ID:** `compare.asset.outside`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 312. Approximately

- **ID:** `compare.asset.approximately`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 313. Is Null

- **ID:** `compare.asset.is_null`
- **Categoria:** Comparação
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 314. Add

- **ID:** `vector.vector2.add`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 315. Subtract

- **ID:** `vector.vector2.subtract`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 316. Multiply

- **ID:** `vector.vector2.multiply`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 317. Divide

- **ID:** `vector.vector2.divide`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 318. Scale

- **ID:** `vector.vector2.scale`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 319. Normalize

- **ID:** `vector.vector2.normalize`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 320. Length

- **ID:** `vector.vector2.length`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 321. Length Squared

- **ID:** `vector.vector2.length_squared`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 322. Distance

- **ID:** `vector.vector2.distance`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 323. Dot

- **ID:** `vector.vector2.dot`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 324. Cross

- **ID:** `vector.vector2.cross`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 325. Lerp

- **ID:** `vector.vector2.lerp`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 326. Move Towards

- **ID:** `vector.vector2.move_towards`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 327. Reflect

- **ID:** `vector.vector2.reflect`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 328. Project

- **ID:** `vector.vector2.project`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 329. Angle

- **ID:** `vector.vector2.angle`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 330. Clamp Length

- **ID:** `vector.vector2.clamp_length`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 331. Minimum

- **ID:** `vector.vector2.minimum`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 332. Maximum

- **ID:** `vector.vector2.maximum`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 333. Absolute

- **ID:** `vector.vector2.absolute`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 334. Floor

- **ID:** `vector.vector2.floor`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 335. Ceil

- **ID:** `vector.vector2.ceil`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 336. Round

- **ID:** `vector.vector2.round`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 337. Snap

- **ID:** `vector.vector2.snap`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 338. Rotate

- **ID:** `vector.vector2.rotate`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 339. Inverse

- **ID:** `vector.vector2.inverse`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 340. Is Zero

- **ID:** `vector.vector2.is_zero`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 341. Is Finite

- **ID:** `vector.vector2.is_finite`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 342. Make

- **ID:** `vector.vector2.make`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 343. Split

- **ID:** `vector.vector2.split`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 344. With X

- **ID:** `vector.vector2.with_x`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 345. With Y

- **ID:** `vector.vector2.with_y`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 346. With Z

- **ID:** `vector.vector2.with_z`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 347. With W

- **ID:** `vector.vector2.with_w`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 348. Add

- **ID:** `vector.vector3.add`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 349. Subtract

- **ID:** `vector.vector3.subtract`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 350. Multiply

- **ID:** `vector.vector3.multiply`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 351. Divide

- **ID:** `vector.vector3.divide`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 352. Scale

- **ID:** `vector.vector3.scale`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 353. Normalize

- **ID:** `vector.vector3.normalize`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 354. Length

- **ID:** `vector.vector3.length`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 355. Length Squared

- **ID:** `vector.vector3.length_squared`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 356. Distance

- **ID:** `vector.vector3.distance`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 357. Dot

- **ID:** `vector.vector3.dot`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 358. Cross

- **ID:** `vector.vector3.cross`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 359. Lerp

- **ID:** `vector.vector3.lerp`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 360. Move Towards

- **ID:** `vector.vector3.move_towards`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 361. Reflect

- **ID:** `vector.vector3.reflect`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 362. Project

- **ID:** `vector.vector3.project`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 363. Angle

- **ID:** `vector.vector3.angle`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 364. Clamp Length

- **ID:** `vector.vector3.clamp_length`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 365. Minimum

- **ID:** `vector.vector3.minimum`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 366. Maximum

- **ID:** `vector.vector3.maximum`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 367. Absolute

- **ID:** `vector.vector3.absolute`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 368. Floor

- **ID:** `vector.vector3.floor`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 369. Ceil

- **ID:** `vector.vector3.ceil`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 370. Round

- **ID:** `vector.vector3.round`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 371. Snap

- **ID:** `vector.vector3.snap`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 372. Rotate

- **ID:** `vector.vector3.rotate`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 373. Inverse

- **ID:** `vector.vector3.inverse`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 374. Is Zero

- **ID:** `vector.vector3.is_zero`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 375. Is Finite

- **ID:** `vector.vector3.is_finite`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 376. Make

- **ID:** `vector.vector3.make`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 377. Split

- **ID:** `vector.vector3.split`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 378. With X

- **ID:** `vector.vector3.with_x`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 379. With Y

- **ID:** `vector.vector3.with_y`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 380. With Z

- **ID:** `vector.vector3.with_z`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 381. With W

- **ID:** `vector.vector3.with_w`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 382. Add

- **ID:** `vector.vector4.add`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 383. Subtract

- **ID:** `vector.vector4.subtract`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 384. Multiply

- **ID:** `vector.vector4.multiply`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 385. Divide

- **ID:** `vector.vector4.divide`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 386. Scale

- **ID:** `vector.vector4.scale`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 387. Normalize

- **ID:** `vector.vector4.normalize`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 388. Length

- **ID:** `vector.vector4.length`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 389. Length Squared

- **ID:** `vector.vector4.length_squared`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 390. Distance

- **ID:** `vector.vector4.distance`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 391. Dot

- **ID:** `vector.vector4.dot`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 392. Cross

- **ID:** `vector.vector4.cross`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 393. Lerp

- **ID:** `vector.vector4.lerp`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 394. Move Towards

- **ID:** `vector.vector4.move_towards`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 395. Reflect

- **ID:** `vector.vector4.reflect`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 396. Project

- **ID:** `vector.vector4.project`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 397. Angle

- **ID:** `vector.vector4.angle`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 398. Clamp Length

- **ID:** `vector.vector4.clamp_length`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 399. Minimum

- **ID:** `vector.vector4.minimum`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 400. Maximum

- **ID:** `vector.vector4.maximum`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 401. Absolute

- **ID:** `vector.vector4.absolute`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 402. Floor

- **ID:** `vector.vector4.floor`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 403. Ceil

- **ID:** `vector.vector4.ceil`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 404. Round

- **ID:** `vector.vector4.round`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 405. Snap

- **ID:** `vector.vector4.snap`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 406. Rotate

- **ID:** `vector.vector4.rotate`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 407. Inverse

- **ID:** `vector.vector4.inverse`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 408. Is Zero

- **ID:** `vector.vector4.is_zero`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 409. Is Finite

- **ID:** `vector.vector4.is_finite`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 410. Make

- **ID:** `vector.vector4.make`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 411. Split

- **ID:** `vector.vector4.split`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 412. With X

- **ID:** `vector.vector4.with_x`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 413. With Y

- **ID:** `vector.vector4.with_y`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 414. With Z

- **ID:** `vector.vector4.with_z`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 415. With W

- **ID:** `vector.vector4.with_w`
- **Categoria:** Vetor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 416. Make Rgb

- **ID:** `color.make_rgb`
- **Categoria:** Cor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 417. Make Rgba

- **ID:** `color.make_rgba`
- **Categoria:** Cor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 418. Split Rgb

- **ID:** `color.split_rgb`
- **Categoria:** Cor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 419. Split Rgba

- **ID:** `color.split_rgba`
- **Categoria:** Cor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 420. From Hex

- **ID:** `color.from_hex`
- **Categoria:** Cor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 421. To Hex

- **ID:** `color.to_hex`
- **Categoria:** Cor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 422. From Hsv

- **ID:** `color.from_hsv`
- **Categoria:** Cor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 423. To Hsv

- **ID:** `color.to_hsv`
- **Categoria:** Cor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 424. Lerp

- **ID:** `color.lerp`
- **Categoria:** Cor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 425. Blend Add

- **ID:** `color.blend_add`
- **Categoria:** Cor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 426. Blend Multiply

- **ID:** `color.blend_multiply`
- **Categoria:** Cor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 427. Blend Screen

- **ID:** `color.blend_screen`
- **Categoria:** Cor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 428. Blend Overlay

- **ID:** `color.blend_overlay`
- **Categoria:** Cor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 429. Lighten

- **ID:** `color.lighten`
- **Categoria:** Cor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 430. Darken

- **ID:** `color.darken`
- **Categoria:** Cor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 431. Saturate

- **ID:** `color.saturate`
- **Categoria:** Cor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 432. Desaturate

- **ID:** `color.desaturate`
- **Categoria:** Cor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 433. Invert

- **ID:** `color.invert`
- **Categoria:** Cor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 434. Grayscale

- **ID:** `color.grayscale`
- **Categoria:** Cor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 435. Alpha

- **ID:** `color.alpha`
- **Categoria:** Cor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 436. With Alpha

- **ID:** `color.with_alpha`
- **Categoria:** Cor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 437. Luminance

- **ID:** `color.luminance`
- **Categoria:** Cor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 438. Contrast

- **ID:** `color.contrast`
- **Categoria:** Cor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 439. Temperature

- **ID:** `color.temperature`
- **Categoria:** Cor
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 440. Append

- **ID:** `text.append`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 441. Prepend

- **ID:** `text.prepend`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 442. Join

- **ID:** `text.join`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 443. Split

- **ID:** `text.split`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 444. Replace

- **ID:** `text.replace`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 445. Replace First

- **ID:** `text.replace_first`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 446. Contains

- **ID:** `text.contains`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 447. Starts With

- **ID:** `text.starts_with`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 448. Ends With

- **ID:** `text.ends_with`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 449. Equals Ignore Case

- **ID:** `text.equals_ignore_case`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 450. Uppercase

- **ID:** `text.uppercase`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 451. Lowercase

- **ID:** `text.lowercase`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 452. Capitalize

- **ID:** `text.capitalize`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 453. Trim

- **ID:** `text.trim`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 454. Trim Start

- **ID:** `text.trim_start`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 455. Trim End

- **ID:** `text.trim_end`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 456. Substring

- **ID:** `text.substring`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 457. Character At

- **ID:** `text.character_at`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 458. Length

- **ID:** `text.length`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 459. Is Empty

- **ID:** `text.is_empty`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 460. Is Blank

- **ID:** `text.is_blank`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 461. Pad Start

- **ID:** `text.pad_start`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 462. Pad End

- **ID:** `text.pad_end`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 463. Repeat

- **ID:** `text.repeat`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 464. Reverse

- **ID:** `text.reverse`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 465. Format

- **ID:** `text.format`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 466. Number To Text

- **ID:** `text.number_to_text`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 467. Bool To Text

- **ID:** `text.bool_to_text`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 468. Vector To Text

- **ID:** `text.vector_to_text`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 469. Parse Number

- **ID:** `text.parse_number`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 470. Parse Bool

- **ID:** `text.parse_bool`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 471. Regex Matches

- **ID:** `text.regex_matches`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 472. Regex Find

- **ID:** `text.regex_find`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 473. Regex Replace

- **ID:** `text.regex_replace`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 474. Lines

- **ID:** `text.lines`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 475. Words

- **ID:** `text.words`
- **Categoria:** Texto
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 476. Find By Name

- **ID:** `object.find_by_name`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 477. Find By Tag

- **ID:** `object.find_by_tag`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 478. Find By Id

- **ID:** `object.find_by_id`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 479. Create

- **ID:** `object.create`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 480. Clone

- **ID:** `object.clone`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 481. Destroy

- **ID:** `object.destroy`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 482. Enable

- **ID:** `object.enable`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 483. Disable

- **ID:** `object.disable`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 484. Toggle Enabled

- **ID:** `object.toggle_enabled`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 485. Set Name

- **ID:** `object.set_name`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 486. Get Name

- **ID:** `object.get_name`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 487. Set Parent

- **ID:** `object.set_parent`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 488. Get Parent

- **ID:** `object.get_parent`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 489. Add Child

- **ID:** `object.add_child`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 490. Remove Child

- **ID:** `object.remove_child`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 491. Get Child

- **ID:** `object.get_child`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 492. Child Count

- **ID:** `object.child_count`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 493. Add Tag

- **ID:** `object.add_tag`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 494. Remove Tag

- **ID:** `object.remove_tag`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 495. Has Tag

- **ID:** `object.has_tag`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 496. Send Event

- **ID:** `object.send_event`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 497. Send Event Bool

- **ID:** `object.send_event_bool`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 498. Send Event Number

- **ID:** `object.send_event_number`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 499. Send Event Text

- **ID:** `object.send_event_text`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 500. Get Component

- **ID:** `object.get_component`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 501. Has Component

- **ID:** `object.has_component`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 502. Add Component

- **ID:** `object.add_component`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 503. Remove Component

- **ID:** `object.remove_component`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 504. Set Layer

- **ID:** `object.set_layer`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 505. Get Layer

- **ID:** `object.get_layer`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 506. Set Visible

- **ID:** `object.set_visible`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 507. Is Visible

- **ID:** `object.is_visible`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 508. Set Static

- **ID:** `object.set_static`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 509. Is Static

- **ID:** `object.is_static`
- **Categoria:** Objeto
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 510. Create

- **ID:** `list.number.create`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 511. Add

- **ID:** `list.number.add`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 512. Insert

- **ID:** `list.number.insert`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 513. Set

- **ID:** `list.number.set`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 514. Get

- **ID:** `list.number.get`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 515. First

- **ID:** `list.number.first`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 516. Last

- **ID:** `list.number.last`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 517. Remove

- **ID:** `list.number.remove`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 518. Remove At

- **ID:** `list.number.remove_at`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 519. Clear

- **ID:** `list.number.clear`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 520. Contains

- **ID:** `list.number.contains`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 521. Index Of

- **ID:** `list.number.index_of`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 522. Last Index Of

- **ID:** `list.number.last_index_of`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 523. Count

- **ID:** `list.number.count`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 524. Is Empty

- **ID:** `list.number.is_empty`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 525. Reverse

- **ID:** `list.number.reverse`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 526. Shuffle

- **ID:** `list.number.shuffle`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 527. Sort

- **ID:** `list.number.sort`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 528. Distinct

- **ID:** `list.number.distinct`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 529. Slice

- **ID:** `list.number.slice`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 530. Concat

- **ID:** `list.number.concat`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 531. Filter

- **ID:** `list.number.filter`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 532. Map

- **ID:** `list.number.map`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 533. Reduce

- **ID:** `list.number.reduce`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 534. Random

- **ID:** `list.number.random`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 535. Create

- **ID:** `list.text.create`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 536. Add

- **ID:** `list.text.add`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 537. Insert

- **ID:** `list.text.insert`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 538. Set

- **ID:** `list.text.set`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 539. Get

- **ID:** `list.text.get`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 540. First

- **ID:** `list.text.first`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 541. Last

- **ID:** `list.text.last`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 542. Remove

- **ID:** `list.text.remove`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 543. Remove At

- **ID:** `list.text.remove_at`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 544. Clear

- **ID:** `list.text.clear`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 545. Contains

- **ID:** `list.text.contains`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 546. Index Of

- **ID:** `list.text.index_of`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 547. Last Index Of

- **ID:** `list.text.last_index_of`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 548. Count

- **ID:** `list.text.count`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 549. Is Empty

- **ID:** `list.text.is_empty`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 550. Reverse

- **ID:** `list.text.reverse`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 551. Shuffle

- **ID:** `list.text.shuffle`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 552. Sort

- **ID:** `list.text.sort`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 553. Distinct

- **ID:** `list.text.distinct`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 554. Slice

- **ID:** `list.text.slice`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 555. Concat

- **ID:** `list.text.concat`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 556. Filter

- **ID:** `list.text.filter`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 557. Map

- **ID:** `list.text.map`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 558. Reduce

- **ID:** `list.text.reduce`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 559. Random

- **ID:** `list.text.random`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 560. Create

- **ID:** `list.bool.create`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 561. Add

- **ID:** `list.bool.add`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 562. Insert

- **ID:** `list.bool.insert`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 563. Set

- **ID:** `list.bool.set`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 564. Get

- **ID:** `list.bool.get`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 565. First

- **ID:** `list.bool.first`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 566. Last

- **ID:** `list.bool.last`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 567. Remove

- **ID:** `list.bool.remove`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 568. Remove At

- **ID:** `list.bool.remove_at`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 569. Clear

- **ID:** `list.bool.clear`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 570. Contains

- **ID:** `list.bool.contains`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 571. Index Of

- **ID:** `list.bool.index_of`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 572. Last Index Of

- **ID:** `list.bool.last_index_of`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 573. Count

- **ID:** `list.bool.count`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 574. Is Empty

- **ID:** `list.bool.is_empty`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 575. Reverse

- **ID:** `list.bool.reverse`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 576. Shuffle

- **ID:** `list.bool.shuffle`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 577. Sort

- **ID:** `list.bool.sort`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 578. Distinct

- **ID:** `list.bool.distinct`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 579. Slice

- **ID:** `list.bool.slice`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 580. Concat

- **ID:** `list.bool.concat`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 581. Filter

- **ID:** `list.bool.filter`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 582. Map

- **ID:** `list.bool.map`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 583. Reduce

- **ID:** `list.bool.reduce`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 584. Random

- **ID:** `list.bool.random`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 585. Create

- **ID:** `list.vector3.create`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 586. Add

- **ID:** `list.vector3.add`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 587. Insert

- **ID:** `list.vector3.insert`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 588. Set

- **ID:** `list.vector3.set`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 589. Get

- **ID:** `list.vector3.get`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 590. First

- **ID:** `list.vector3.first`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 591. Last

- **ID:** `list.vector3.last`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 592. Remove

- **ID:** `list.vector3.remove`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 593. Remove At

- **ID:** `list.vector3.remove_at`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 594. Clear

- **ID:** `list.vector3.clear`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 595. Contains

- **ID:** `list.vector3.contains`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 596. Index Of

- **ID:** `list.vector3.index_of`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 597. Last Index Of

- **ID:** `list.vector3.last_index_of`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 598. Count

- **ID:** `list.vector3.count`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 599. Is Empty

- **ID:** `list.vector3.is_empty`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 600. Reverse

- **ID:** `list.vector3.reverse`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 601. Shuffle

- **ID:** `list.vector3.shuffle`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 602. Sort

- **ID:** `list.vector3.sort`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 603. Distinct

- **ID:** `list.vector3.distinct`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 604. Slice

- **ID:** `list.vector3.slice`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 605. Concat

- **ID:** `list.vector3.concat`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 606. Filter

- **ID:** `list.vector3.filter`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 607. Map

- **ID:** `list.vector3.map`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 608. Reduce

- **ID:** `list.vector3.reduce`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 609. Random

- **ID:** `list.vector3.random`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 610. Create

- **ID:** `list.object.create`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 611. Add

- **ID:** `list.object.add`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 612. Insert

- **ID:** `list.object.insert`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 613. Set

- **ID:** `list.object.set`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 614. Get

- **ID:** `list.object.get`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 615. First

- **ID:** `list.object.first`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 616. Last

- **ID:** `list.object.last`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 617. Remove

- **ID:** `list.object.remove`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 618. Remove At

- **ID:** `list.object.remove_at`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 619. Clear

- **ID:** `list.object.clear`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 620. Contains

- **ID:** `list.object.contains`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 621. Index Of

- **ID:** `list.object.index_of`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 622. Last Index Of

- **ID:** `list.object.last_index_of`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 623. Count

- **ID:** `list.object.count`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 624. Is Empty

- **ID:** `list.object.is_empty`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 625. Reverse

- **ID:** `list.object.reverse`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 626. Shuffle

- **ID:** `list.object.shuffle`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 627. Sort

- **ID:** `list.object.sort`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 628. Distinct

- **ID:** `list.object.distinct`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 629. Slice

- **ID:** `list.object.slice`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 630. Concat

- **ID:** `list.object.concat`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 631. Filter

- **ID:** `list.object.filter`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 632. Map

- **ID:** `list.object.map`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 633. Reduce

- **ID:** `list.object.reduce`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 634. Random

- **ID:** `list.object.random`
- **Categoria:** Listas
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 635. Get

- **ID:** `transform.position.get`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 636. Set

- **ID:** `transform.position.set`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 637. Add

- **ID:** `transform.position.add`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 638. Subtract

- **ID:** `transform.position.subtract`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 639. Multiply

- **ID:** `transform.position.multiply`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 640. Lerp

- **ID:** `transform.position.lerp`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 641. Move Towards

- **ID:** `transform.position.move_towards`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 642. Local To World

- **ID:** `transform.position.local_to_world`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 643. World To Local

- **ID:** `transform.position.world_to_local`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 644. Reset

- **ID:** `transform.position.reset`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 645. Look At

- **ID:** `transform.position.look_at`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 646. Face Direction

- **ID:** `transform.position.face_direction`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 647. Get

- **ID:** `transform.rotation.get`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 648. Set

- **ID:** `transform.rotation.set`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 649. Add

- **ID:** `transform.rotation.add`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 650. Subtract

- **ID:** `transform.rotation.subtract`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 651. Multiply

- **ID:** `transform.rotation.multiply`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 652. Lerp

- **ID:** `transform.rotation.lerp`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 653. Move Towards

- **ID:** `transform.rotation.move_towards`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 654. Local To World

- **ID:** `transform.rotation.local_to_world`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 655. World To Local

- **ID:** `transform.rotation.world_to_local`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 656. Reset

- **ID:** `transform.rotation.reset`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 657. Look At

- **ID:** `transform.rotation.look_at`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 658. Face Direction

- **ID:** `transform.rotation.face_direction`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 659. Get

- **ID:** `transform.scale.get`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 660. Set

- **ID:** `transform.scale.set`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 661. Add

- **ID:** `transform.scale.add`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 662. Subtract

- **ID:** `transform.scale.subtract`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 663. Multiply

- **ID:** `transform.scale.multiply`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 664. Lerp

- **ID:** `transform.scale.lerp`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 665. Move Towards

- **ID:** `transform.scale.move_towards`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 666. Local To World

- **ID:** `transform.scale.local_to_world`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 667. World To Local

- **ID:** `transform.scale.world_to_local`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 668. Reset

- **ID:** `transform.scale.reset`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 669. Look At

- **ID:** `transform.scale.look_at`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 670. Face Direction

- **ID:** `transform.scale.face_direction`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 671. Girar no eixo Y

- **ID:** `transform.rotate.y`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 672. Escala uniforme

- **ID:** `transform.scale.uniform`
- **Categoria:** Transform
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 673. Add Force

- **ID:** `physics.add_force`
- **Categoria:** Fisica
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 674. Add Impulse

- **ID:** `physics.add_impulse`
- **Categoria:** Fisica
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 675. Add Torque

- **ID:** `physics.add_torque`
- **Categoria:** Fisica
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 676. Set Velocity

- **ID:** `physics.set_velocity`
- **Categoria:** Fisica
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 677. Get Velocity

- **ID:** `physics.get_velocity`
- **Categoria:** Fisica
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 678. Set Angular Velocity

- **ID:** `physics.set_angular_velocity`
- **Categoria:** Fisica
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 679. Get Angular Velocity

- **ID:** `physics.get_angular_velocity`
- **Categoria:** Fisica
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 680. Set Mass

- **ID:** `physics.set_mass`
- **Categoria:** Fisica
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 681. Get Mass

- **ID:** `physics.get_mass`
- **Categoria:** Fisica
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 682. Set Gravity

- **ID:** `physics.set_gravity`
- **Categoria:** Fisica
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 683. Use Gravity

- **ID:** `physics.use_gravity`
- **Categoria:** Fisica
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 684. Set Kinematic

- **ID:** `physics.set_kinematic`
- **Categoria:** Fisica
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 685. Freeze Position

- **ID:** `physics.freeze_position`
- **Categoria:** Fisica
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 686. Freeze Rotation

- **ID:** `physics.freeze_rotation`
- **Categoria:** Fisica
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 687. Raycast

- **ID:** `physics.raycast`
- **Categoria:** Fisica
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 688. Sphere Cast

- **ID:** `physics.sphere_cast`
- **Categoria:** Fisica
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 689. Box Cast

- **ID:** `physics.box_cast`
- **Categoria:** Fisica
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 690. Overlap Sphere

- **ID:** `physics.overlap_sphere`
- **Categoria:** Fisica
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 691. Overlap Box

- **ID:** `physics.overlap_box`
- **Categoria:** Fisica
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 692. Ignore Collision

- **ID:** `physics.ignore_collision`
- **Categoria:** Fisica
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 693. Set Friction

- **ID:** `physics.set_friction`
- **Categoria:** Fisica
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 694. Set Bounciness

- **ID:** `physics.set_bounciness`
- **Categoria:** Fisica
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 695. Wake Up

- **ID:** `physics.wake_up`
- **Categoria:** Fisica
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 696. Sleep

- **ID:** `physics.sleep`
- **Categoria:** Fisica
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 697. Enter

- **ID:** `vehicle.enter`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 698. Exit

- **ID:** `vehicle.exit`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 699. Can Enter

- **ID:** `vehicle.can_enter`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 700. Get Driver

- **ID:** `vehicle.get_driver`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 701. Open Door

- **ID:** `vehicle.open_door`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 702. Close Door

- **ID:** `vehicle.close_door`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 703. Toggle Door

- **ID:** `vehicle.toggle_door`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 704. Open Hood

- **ID:** `vehicle.open_hood`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 705. Close Hood

- **ID:** `vehicle.close_hood`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 706. Open Trunk

- **ID:** `vehicle.open_trunk`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 707. Close Trunk

- **ID:** `vehicle.close_trunk`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 708. Set Throttle

- **ID:** `vehicle.set_throttle`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 709. Get Throttle

- **ID:** `vehicle.get_throttle`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 710. Set Brake

- **ID:** `vehicle.set_brake`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 711. Get Brake

- **ID:** `vehicle.get_brake`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 712. Set Handbrake

- **ID:** `vehicle.set_handbrake`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 713. Set Steering

- **ID:** `vehicle.set_steering`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 714. Get Steering

- **ID:** `vehicle.get_steering`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 715. Shift Up

- **ID:** `vehicle.shift_up`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 716. Shift Down

- **ID:** `vehicle.shift_down`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 717. Set Gear

- **ID:** `vehicle.set_gear`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 718. Get Gear

- **ID:** `vehicle.get_gear`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 719. Get Speed

- **ID:** `vehicle.get_speed`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 720. Get Rpm

- **ID:** `vehicle.get_rpm`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 721. Get Wheel Speed

- **ID:** `vehicle.get_wheel_speed`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 722. Get Slip Ratio

- **ID:** `vehicle.get_slip_ratio`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 723. Get Lateral Slip

- **ID:** `vehicle.get_lateral_slip`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 724. Set Mass

- **ID:** `vehicle.set_mass`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 725. Set Engine Power

- **ID:** `vehicle.set_engine_power`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 726. Set Max Torque

- **ID:** `vehicle.set_max_torque`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 727. Set Redline Rpm

- **ID:** `vehicle.set_redline_rpm`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 728. Set Top Speed

- **ID:** `vehicle.set_top_speed`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 729. Set Drive Type

- **ID:** `vehicle.set_drive_type`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 730. Set Gear Ratios

- **ID:** `vehicle.set_gear_ratios`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 731. Set Final Drive

- **ID:** `vehicle.set_final_drive`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 732. Set Drivetrain Efficiency

- **ID:** `vehicle.set_drivetrain_efficiency`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 733. Set Tire Grip

- **ID:** `vehicle.set_tire_grip`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 734. Set Lateral Grip

- **ID:** `vehicle.set_lateral_grip`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 735. Set Traction Control

- **ID:** `vehicle.set_traction_control`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 736. Set Abs

- **ID:** `vehicle.set_abs`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 737. Set Stability Assist

- **ID:** `vehicle.set_stability_assist`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 738. Set Steering Angle

- **ID:** `vehicle.set_steering_angle`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 739. Set Steering Response

- **ID:** `vehicle.set_steering_response`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 740. Set Wheel Radius

- **ID:** `vehicle.set_wheel_radius`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 741. Set Wheel Position

- **ID:** `vehicle.set_wheel_position`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 742. Set Wheel Driven

- **ID:** `vehicle.set_wheel_driven`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 743. Set Wheel Steerable

- **ID:** `vehicle.set_wheel_steerable`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 744. Set Suspension Travel

- **ID:** `vehicle.set_suspension_travel`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 745. Set Spring Strength

- **ID:** `vehicle.set_spring_strength`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 746. Set Suspension Damping

- **ID:** `vehicle.set_suspension_damping`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 747. Get Suspension Compression

- **ID:** `vehicle.get_suspension_compression`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 748. Set Center Of Mass

- **ID:** `vehicle.set_center_of_mass`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 749. Set Downforce

- **ID:** `vehicle.set_downforce`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 750. Set Aero Drag

- **ID:** `vehicle.set_aero_drag`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 751. Set Rolling Resistance

- **ID:** `vehicle.set_rolling_resistance`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 752. Reset Upright

- **ID:** `vehicle.reset_upright`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 753. Teleport

- **ID:** `vehicle.teleport`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 754. Repair

- **ID:** `vehicle.repair`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 755. Enable Collision

- **ID:** `vehicle.enable_collision`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 756. Disable Collision

- **ID:** `vehicle.disable_collision`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 757. On Collision

- **ID:** `vehicle.on_collision`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 758. On Entered

- **ID:** `vehicle.on_entered`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 759. On Exited

- **ID:** `vehicle.on_exited`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 760. On Door Opened

- **ID:** `vehicle.on_door_opened`
- **Categoria:** Veiculo
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 761. Play

- **ID:** `audio.play`
- **Categoria:** Audio
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 762. Play 3D

- **ID:** `audio.play_3d`
- **Categoria:** Audio
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 763. Play Loop

- **ID:** `audio.play_loop`
- **Categoria:** Audio
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 764. Play 3D Loop

- **ID:** `audio.play_3d_loop`
- **Categoria:** Audio
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 765. Pause

- **ID:** `audio.pause`
- **Categoria:** Audio
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 766. Resume

- **ID:** `audio.resume`
- **Categoria:** Audio
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 767. Stop

- **ID:** `audio.stop`
- **Categoria:** Audio
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 768. Stop All

- **ID:** `audio.stop_all`
- **Categoria:** Audio
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 769. Set Volume

- **ID:** `audio.set_volume`
- **Categoria:** Audio
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 770. Get Volume

- **ID:** `audio.get_volume`
- **Categoria:** Audio
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 771. Fade In

- **ID:** `audio.fade_in`
- **Categoria:** Audio
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 772. Fade Out

- **ID:** `audio.fade_out`
- **Categoria:** Audio
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 773. Set Pitch

- **ID:** `audio.set_pitch`
- **Categoria:** Audio
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 774. Get Pitch

- **ID:** `audio.get_pitch`
- **Categoria:** Audio
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 775. Set Pan

- **ID:** `audio.set_pan`
- **Categoria:** Audio
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 776. Set Spatial Blend

- **ID:** `audio.set_spatial_blend`
- **Categoria:** Audio
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 777. Set Min Distance

- **ID:** `audio.set_min_distance`
- **Categoria:** Audio
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 778. Set Max Distance

- **ID:** `audio.set_max_distance`
- **Categoria:** Audio
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 779. Is Playing

- **ID:** `audio.is_playing`
- **Categoria:** Audio
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 780. Set Bus

- **ID:** `audio.set_bus`
- **Categoria:** Audio
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 781. Play

- **ID:** `animation.play`
- **Categoria:** Animacao
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 782. Play Crossfade

- **ID:** `animation.play_crossfade`
- **Categoria:** Animacao
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 783. Pause

- **ID:** `animation.pause`
- **Categoria:** Animacao
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 784. Resume

- **ID:** `animation.resume`
- **Categoria:** Animacao
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 785. Stop

- **ID:** `animation.stop`
- **Categoria:** Animacao
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 786. Rewind

- **ID:** `animation.rewind`
- **Categoria:** Animacao
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 787. Set Speed

- **ID:** `animation.set_speed`
- **Categoria:** Animacao
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 788. Get Speed

- **ID:** `animation.get_speed`
- **Categoria:** Animacao
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 789. Set Time

- **ID:** `animation.set_time`
- **Categoria:** Animacao
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 790. Get Time

- **ID:** `animation.get_time`
- **Categoria:** Animacao
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 791. Set Loop

- **ID:** `animation.set_loop`
- **Categoria:** Animacao
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 792. Is Playing

- **ID:** `animation.is_playing`
- **Categoria:** Animacao
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 793. Set Bool

- **ID:** `animation.set_bool`
- **Categoria:** Animacao
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 794. Set Number

- **ID:** `animation.set_number`
- **Categoria:** Animacao
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 795. Set Trigger

- **ID:** `animation.set_trigger`
- **Categoria:** Animacao
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 796. Reset Trigger

- **ID:** `animation.reset_trigger`
- **Categoria:** Animacao
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 797. Get State

- **ID:** `animation.get_state`
- **Categoria:** Animacao
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 798. Set Weight

- **ID:** `animation.set_weight`
- **Categoria:** Animacao
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 799. Blend

- **ID:** `animation.blend`
- **Categoria:** Animacao
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 800. Play Additive

- **ID:** `animation.play_additive`
- **Categoria:** Animacao
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 801. Get

- **ID:** `material.get`
- **Categoria:** Material
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 802. Set

- **ID:** `material.set`
- **Categoria:** Material
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 803. Clone

- **ID:** `material.clone`
- **Categoria:** Material
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 804. Set Color

- **ID:** `material.set_color`
- **Categoria:** Material
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 805. Get Color

- **ID:** `material.get_color`
- **Categoria:** Material
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 806. Set Number

- **ID:** `material.set_number`
- **Categoria:** Material
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 807. Get Number

- **ID:** `material.get_number`
- **Categoria:** Material
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 808. Set Vector

- **ID:** `material.set_vector`
- **Categoria:** Material
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 809. Get Vector

- **ID:** `material.get_vector`
- **Categoria:** Material
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 810. Set Texture

- **ID:** `material.set_texture`
- **Categoria:** Material
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 811. Get Texture

- **ID:** `material.get_texture`
- **Categoria:** Material
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 812. Set Emission

- **ID:** `material.set_emission`
- **Categoria:** Material
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 813. Set Metallic

- **ID:** `material.set_metallic`
- **Categoria:** Material
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 814. Set Roughness

- **ID:** `material.set_roughness`
- **Categoria:** Material
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 815. Set Opacity

- **ID:** `material.set_opacity`
- **Categoria:** Material
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 816. Set Uv Offset

- **ID:** `material.set_uv_offset`
- **Categoria:** Material
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 817. Set Uv Scale

- **ID:** `material.set_uv_scale`
- **Categoria:** Material
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 818. Enable Keyword

- **ID:** `material.enable_keyword`
- **Categoria:** Material
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 819. Disable Keyword

- **ID:** `material.disable_keyword`
- **Categoria:** Material
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 820. Has Keyword

- **ID:** `material.has_keyword`
- **Categoria:** Material
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 821. Show

- **ID:** `ui.show`
- **Categoria:** Interface
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 822. Hide

- **ID:** `ui.hide`
- **Categoria:** Interface
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 823. Toggle

- **ID:** `ui.toggle`
- **Categoria:** Interface
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 824. Set Text

- **ID:** `ui.set_text`
- **Categoria:** Interface
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 825. Get Text

- **ID:** `ui.get_text`
- **Categoria:** Interface
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 826. Set Image

- **ID:** `ui.set_image`
- **Categoria:** Interface
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 827. Set Color

- **ID:** `ui.set_color`
- **Categoria:** Interface
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 828. Set Value

- **ID:** `ui.set_value`
- **Categoria:** Interface
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 829. Get Value

- **ID:** `ui.get_value`
- **Categoria:** Interface
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 830. Set Min

- **ID:** `ui.set_min`
- **Categoria:** Interface
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 831. Set Max

- **ID:** `ui.set_max`
- **Categoria:** Interface
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 832. Set Interactable

- **ID:** `ui.set_interactable`
- **Categoria:** Interface
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 833. Is Interactable

- **ID:** `ui.is_interactable`
- **Categoria:** Interface
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 834. Focus

- **ID:** `ui.focus`
- **Categoria:** Interface
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 835. Unfocus

- **ID:** `ui.unfocus`
- **Categoria:** Interface
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 836. Set Position

- **ID:** `ui.set_position`
- **Categoria:** Interface
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 837. Set Size

- **ID:** `ui.set_size`
- **Categoria:** Interface
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 838. Set Anchor

- **ID:** `ui.set_anchor`
- **Categoria:** Interface
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 839. Set Progress

- **ID:** `ui.set_progress`
- **Categoria:** Interface
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 840. Animate Value

- **ID:** `ui.animate_value`
- **Categoria:** Interface
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 841. Toast

- **ID:** `ui.toast`
- **Categoria:** Interface
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 842. Open Panel

- **ID:** `ui.open_panel`
- **Categoria:** Interface
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 843. Close Panel

- **ID:** `ui.close_panel`
- **Categoria:** Interface
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 844. Set Placeholder

- **ID:** `ui.set_placeholder`
- **Categoria:** Interface
- **Finalidade:** Requer `values.target_path` apontando para um nó Godot compatível na cena.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 845. Load

- **ID:** `world.load`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 846. Load Additive

- **ID:** `world.load_additive`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 847. Unload

- **ID:** `world.unload`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 848. Reload

- **ID:** `world.reload`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 849. Set Active

- **ID:** `world.set_active`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 850. Get Active

- **ID:** `world.get_active`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 851. Pause

- **ID:** `world.pause`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 852. Resume

- **ID:** `world.resume`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 853. Set Time Scale

- **ID:** `world.set_time_scale`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 854. Get Time Scale

- **ID:** `world.get_time_scale`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 855. Set Ambient Color

- **ID:** `world.set_ambient_color`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 856. Set Skybox

- **ID:** `world.set_skybox`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 857. Set Fog

- **ID:** `world.set_fog`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 858. Set Gravity

- **ID:** `world.set_gravity`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 859. Find Spawn

- **ID:** `world.find_spawn`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 860. Spawn At

- **ID:** `world.spawn_at`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 861. Destroy All

- **ID:** `world.destroy_all`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 862. Preload

- **ID:** `world.preload`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 863. Release

- **ID:** `world.release`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 864. Quit

- **ID:** `world.quit`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 865. Terrain Get Height

- **ID:** `world.terrain_get_height`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 866. Terrain Set Height

- **ID:** `world.terrain_set_height`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 867. Terrain Raise

- **ID:** `world.terrain_raise`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 868. Terrain Lower

- **ID:** `world.terrain_lower`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 869. Terrain Smooth

- **ID:** `world.terrain_smooth`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 870. Terrain Flatten

- **ID:** `world.terrain_flatten`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 871. Terrain Add Noise

- **ID:** `world.terrain_add_noise`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 872. Terrain Paint Layer

- **ID:** `world.terrain_paint_layer`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 873. Terrain Get Layer Weight

- **ID:** `world.terrain_get_layer_weight`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 874. Terrain Apply Auto Tile

- **ID:** `world.terrain_apply_auto_tile`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 875. Terrain Add Auto Tile Rule

- **ID:** `world.terrain_add_auto_tile_rule`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 876. Terrain Remove Auto Tile Rule

- **ID:** `world.terrain_remove_auto_tile_rule`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 877. Terrain Set Material

- **ID:** `world.terrain_set_material`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 878. Terrain Set Texture Scale

- **ID:** `world.terrain_set_texture_scale`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 879. Terrain Set Texture Rotation

- **ID:** `world.terrain_set_texture_rotation`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 880. Terrain Set Texture Offset

- **ID:** `world.terrain_set_texture_offset`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 881. Terrain Set Roughness

- **ID:** `world.terrain_set_roughness`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 882. Terrain Set Metallic

- **ID:** `world.terrain_set_metallic`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 883. Terrain Import Heightmap

- **ID:** `world.terrain_import_heightmap`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 884. Terrain Export Heightmap

- **ID:** `world.terrain_export_heightmap`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 885. Terrain Generate Semi Arid

- **ID:** `world.terrain_generate_semi_arid`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 886. Terrain Scatter Tiles

- **ID:** `world.terrain_scatter_tiles`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 887. Terrain Clear Tiles

- **ID:** `world.terrain_clear_tiles`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 888. Character Set Camera First Person

- **ID:** `world.character_set_camera_first_person`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 889. Character Set Camera Third Person

- **ID:** `world.character_set_camera_third_person`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 890. Character Set Camera Top Down

- **ID:** `world.character_set_camera_top_down`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 891. Character Set Speed

- **ID:** `world.character_set_speed`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 892. Character Jump

- **ID:** `world.character_jump`
- **Categoria:** Mundo
- **Finalidade:** Aplica impulso vertical somente quando o `CharacterBody3D` está no chão.
- **Entradas/alvo:** `target_path`, `force`; normalmente ligado ao evento de botão `jump`.
- **Saídas/efeito:** Fluxo; altera a velocidade vertical.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 893. Character Set Look Sensitivity

- **ID:** `world.character_set_look_sensitivity`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 894. Joystick Get Axis

- **ID:** `world.joystick_get_axis`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 895. Joystick Set Dead Zone

- **ID:** `world.joystick_set_dead_zone`
- **Categoria:** Mundo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 896. Mover personagem

- **ID:** `world.character_move`
- **Categoria:** Mundo
- **Finalidade:** Move um `CharacterBody3D` a cada frame, aplica gravidade e chama `move_and_slide()`.
- **Entradas/alvo:** `target_path`, `speed`; lê `ui_left/right/up/down`.
- **Saídas/efeito:** Fluxo; altera posição e velocidade do personagem.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 897. Girar câmera do personagem

- **ID:** `world.character_look`
- **Categoria:** Mundo
- **Finalidade:** Gira um pivô `Node3D`, com limite vertical para a câmera mobile.
- **Entradas/alvo:** `target_path`, `sensitivity`; lê `look_left/right/up/down`.
- **Saídas/efeito:** Fluxo; altera a rotação do pivô da câmera.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 898. Save

- **ID:** `save.bool.save`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 899. Load

- **ID:** `save.bool.load`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 900. Has

- **ID:** `save.bool.has`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 901. Delete

- **ID:** `save.bool.delete`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 902. Save

- **ID:** `save.number.save`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 903. Load

- **ID:** `save.number.load`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 904. Has

- **ID:** `save.number.has`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 905. Delete

- **ID:** `save.number.delete`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 906. Save

- **ID:** `save.integer.save`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 907. Load

- **ID:** `save.integer.load`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 908. Has

- **ID:** `save.integer.has`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 909. Delete

- **ID:** `save.integer.delete`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 910. Save

- **ID:** `save.text.save`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 911. Load

- **ID:** `save.text.load`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 912. Has

- **ID:** `save.text.has`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 913. Delete

- **ID:** `save.text.delete`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 914. Save

- **ID:** `save.vector2.save`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 915. Load

- **ID:** `save.vector2.load`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 916. Has

- **ID:** `save.vector2.has`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 917. Delete

- **ID:** `save.vector2.delete`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 918. Save

- **ID:** `save.vector3.save`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 919. Load

- **ID:** `save.vector3.load`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 920. Has

- **ID:** `save.vector3.has`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 921. Delete

- **ID:** `save.vector3.delete`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 922. Save

- **ID:** `save.color.save`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 923. Load

- **ID:** `save.color.load`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 924. Has

- **ID:** `save.color.has`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 925. Delete

- **ID:** `save.color.delete`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 926. Save

- **ID:** `save.object_id.save`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 927. Load

- **ID:** `save.object_id.load`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 928. Has

- **ID:** `save.object_id.has`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 929. Delete

- **ID:** `save.object_id.delete`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 930. Save

- **ID:** `save.list.save`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 931. Load

- **ID:** `save.list.load`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 932. Has

- **ID:** `save.list.has`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 933. Delete

- **ID:** `save.list.delete`
- **Categoria:** Save Game
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 934. Delta

- **ID:** `time.delta`
- **Categoria:** Tempo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 935. Fixed Delta

- **ID:** `time.fixed_delta`
- **Categoria:** Tempo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 936. Elapsed

- **ID:** `time.elapsed`
- **Categoria:** Tempo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 937. Unscaled Elapsed

- **ID:** `time.unscaled_elapsed`
- **Categoria:** Tempo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 938. Frame

- **ID:** `time.frame`
- **Categoria:** Tempo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 939. Fps

- **ID:** `time.fps`
- **Categoria:** Tempo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 940. Timestamp

- **ID:** `time.timestamp`
- **Categoria:** Tempo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 941. Date

- **ID:** `time.date`
- **Categoria:** Tempo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 942. Time

- **ID:** `time.time`
- **Categoria:** Tempo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 943. Timezone

- **ID:** `time.timezone`
- **Categoria:** Tempo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 944. Timer Start

- **ID:** `time.timer_start`
- **Categoria:** Tempo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 945. Timer Pause

- **ID:** `time.timer_pause`
- **Categoria:** Tempo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 946. Timer Resume

- **ID:** `time.timer_resume`
- **Categoria:** Tempo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 947. Timer Stop

- **ID:** `time.timer_stop`
- **Categoria:** Tempo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 948. Timer Remaining

- **ID:** `time.timer_remaining`
- **Categoria:** Tempo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 949. Timer Elapsed

- **ID:** `time.timer_elapsed`
- **Categoria:** Tempo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 950. Format Duration

- **ID:** `time.format_duration`
- **Categoria:** Tempo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 951. Wait Seconds

- **ID:** `time.wait_seconds`
- **Categoria:** Tempo
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 952. Trace

- **ID:** `debug.log.trace`
- **Categoria:** Debug
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 953. Info

- **ID:** `debug.log.info`
- **Categoria:** Debug
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 954. Warning

- **ID:** `debug.log.warning`
- **Categoria:** Debug
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 955. Error

- **ID:** `debug.log.error`
- **Categoria:** Debug
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 956. Assert

- **ID:** `debug.log.assert`
- **Categoria:** Debug
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 957. Draw Line

- **ID:** `debug.log.draw_line`
- **Categoria:** Debug
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 958. Draw Ray

- **ID:** `debug.log.draw_ray`
- **Categoria:** Debug
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 959. Draw Sphere

- **ID:** `debug.log.draw_sphere`
- **Categoria:** Debug
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 960. Breakpoint

- **ID:** `debug.log.breakpoint`
- **Categoria:** Debug
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 961. Watch

- **ID:** `debug.log.watch`
- **Categoria:** Debug
- **Finalidade:** Não usa alvo; opera somente sobre valores ou estado global.
- **Entradas/alvo:** Entradas são definidas pelo sufixo da operação; valores também podem vir de conexões tipadas.
- **Saídas/efeito:** Produz `value`/`result` quando a operação retorna dados e `flow` quando participa do fluxo.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.
