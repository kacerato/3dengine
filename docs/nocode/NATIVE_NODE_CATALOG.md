# Catálogo nativo NoCode — 961 operações

> Gerado por `tools/godot/generate_native_nocode_docs.py`. Não editar manualmente.

Cada entrada abaixo documenta o contrato persistido no `.graph.json`. A presença no catálogo não substitui a validação do tipo do alvo: operações de cena falham explicitamente quando o NodePath ou componente é incompatível.

## 1. Start

- **ID:** `event.scene.start`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `scene.start`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Start → Debug Info` para confirmar no log quando `scene.start` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 2. Ready

- **ID:** `event.scene.ready`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `scene.ready`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Ready → Debug Info` para confirmar no log quando `scene.ready` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 3. Exit

- **ID:** `event.scene.exit`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `scene.exit`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Exit → Debug Info` para confirmar no log quando `scene.exit` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 4. Update

- **ID:** `event.frame.update`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `frame.update`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Update → Debug Info` para confirmar no log quando `frame.update` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 5. Fixed Update

- **ID:** `event.frame.fixed_update`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `frame.fixed update`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Fixed Update → Debug Info` para confirmar no log quando `frame.fixed update` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 6. Touch

- **ID:** `event.object.touch`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `object.touch`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Touch → Debug Info` para confirmar no log quando `object.touch` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 7. Click

- **ID:** `event.object.click`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `object.click`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Click → Debug Info` para confirmar no log quando `object.click` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 8. Enabled

- **ID:** `event.object.enabled`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `object.enabled`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Enabled → Debug Info` para confirmar no log quando `object.enabled` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 9. Disabled

- **ID:** `event.object.disabled`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `object.disabled`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Disabled → Debug Info` para confirmar no log quando `object.disabled` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 10. Created

- **ID:** `event.object.created`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `object.created`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Created → Debug Info` para confirmar no log quando `object.created` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 11. Destroyed

- **ID:** `event.object.destroyed`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `object.destroyed`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Destroyed → Debug Info` para confirmar no log quando `object.destroyed` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 12. Button Pressed

- **ID:** `event.input.button_pressed`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `input.button pressed`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Button Pressed → Debug Info` para confirmar no log quando `input.button pressed` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 13. Button Released

- **ID:** `event.input.button_released`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `input.button released`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Button Released → Debug Info` para confirmar no log quando `input.button released` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 14. Key Down

- **ID:** `event.input.key_down`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `input.key down`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Key Down → Debug Info` para confirmar no log quando `input.key down` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 15. Key Up

- **ID:** `event.input.key_up`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `input.key up`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Key Up → Debug Info` para confirmar no log quando `input.key up` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 16. Axis

- **ID:** `event.input.axis`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `input.axis`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Axis → Debug Info` para confirmar no log quando `input.axis` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 17. Down

- **ID:** `event.pointer.down`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `pointer.down`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Down → Debug Info` para confirmar no log quando `pointer.down` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 18. Up

- **ID:** `event.pointer.up`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `pointer.up`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Up → Debug Info` para confirmar no log quando `pointer.up` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 19. Move

- **ID:** `event.pointer.move`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `pointer.move`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Move → Debug Info` para confirmar no log quando `pointer.move` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 20. Drag

- **ID:** `event.pointer.drag`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `pointer.drag`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Drag → Debug Info` para confirmar no log quando `pointer.drag` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 21. Enter

- **ID:** `event.collision.enter`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `collision.enter`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Enter → Debug Info` para confirmar no log quando `collision.enter` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 22. Stay

- **ID:** `event.collision.stay`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `collision.stay`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Stay → Debug Info` para confirmar no log quando `collision.stay` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 23. Exit

- **ID:** `event.collision.exit`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `collision.exit`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Exit → Debug Info` para confirmar no log quando `collision.exit` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 24. Enter

- **ID:** `event.trigger.enter`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `trigger.enter`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Enter → Debug Info` para confirmar no log quando `trigger.enter` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 25. Stay

- **ID:** `event.trigger.stay`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `trigger.stay`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Stay → Debug Info` para confirmar no log quando `trigger.stay` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 26. Exit

- **ID:** `event.trigger.exit`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `trigger.exit`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Exit → Debug Info` para confirmar no log quando `trigger.exit` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 27. Started

- **ID:** `event.animation.started`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `animation.started`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Started → Debug Info` para confirmar no log quando `animation.started` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 28. Finished

- **ID:** `event.animation.finished`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `animation.finished`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Finished → Debug Info` para confirmar no log quando `animation.finished` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 29. Finished

- **ID:** `event.audio.finished`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `audio.finished`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Finished → Debug Info` para confirmar no log quando `audio.finished` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 30. Focused

- **ID:** `event.ui.focused`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `ui.focused`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Focused → Debug Info` para confirmar no log quando `ui.focused` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 31. Value Changed

- **ID:** `event.ui.value_changed`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `ui.value changed`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Value Changed → Debug Info` para confirmar no log quando `ui.value changed` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 32. Elapsed

- **ID:** `event.timer.elapsed`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `timer.elapsed`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Elapsed → Debug Info` para confirmar no log quando `timer.elapsed` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 33. Connected

- **ID:** `event.network.connected`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `network.connected`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Connected → Debug Info` para confirmar no log quando `network.connected` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 34. Disconnected

- **ID:** `event.network.disconnected`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `network.disconnected`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Disconnected → Debug Info` para confirmar no log quando `network.disconnected` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 35. Loaded

- **ID:** `event.save.loaded`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `save.loaded`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Loaded → Debug Info` para confirmar no log quando `save.loaded` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 36. Completed

- **ID:** `event.save.completed`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `save.completed`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Completed → Debug Info` para confirmar no log quando `save.completed` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 37. Loaded

- **ID:** `event.world.loaded`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `world.loaded`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Loaded → Debug Info` para confirmar no log quando `world.loaded` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 38. Unloaded

- **ID:** `event.world.unloaded`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `world.unloaded`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Unloaded → Debug Info` para confirmar no log quando `world.unloaded` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 39. Received

- **ID:** `event.custom.received`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `custom.received`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Received → Debug Info` para confirmar no log quando `custom.received` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 40. Changed

- **ID:** `event.component.changed`
- **Categoria:** Eventos
- **Finalidade:** Inicia o grafo quando a engine emite o evento `component.changed`.
- **Entradas/alvo:** Filtros opcionais como ação, botão, alvo ou nome do evento; o payload chega pelos pinos de dados.
- **Saídas/efeito:** Dispara `flow` e disponibiliza o payload em `value` quando o evento carrega dados.
- **Exemplo:** Conecte `Changed → Debug Info` para confirmar no log quando `component.changed` acontecer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 41. Sequência 2

- **ID:** `flow.sequence.2`
- **Categoria:** Fluxo
- **Finalidade:** Executa 2 ramificações de fluxo em ordem, da saída 1 até a 2.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 2 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 2` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 42. Sequência 3

- **ID:** `flow.sequence.3`
- **Categoria:** Fluxo
- **Finalidade:** Executa 3 ramificações de fluxo em ordem, da saída 1 até a 3.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 3 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 3` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 43. Sequência 4

- **ID:** `flow.sequence.4`
- **Categoria:** Fluxo
- **Finalidade:** Executa 4 ramificações de fluxo em ordem, da saída 1 até a 4.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 4 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 4` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 44. Sequência 5

- **ID:** `flow.sequence.5`
- **Categoria:** Fluxo
- **Finalidade:** Executa 5 ramificações de fluxo em ordem, da saída 1 até a 5.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 5 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 5` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 45. Sequência 6

- **ID:** `flow.sequence.6`
- **Categoria:** Fluxo
- **Finalidade:** Executa 6 ramificações de fluxo em ordem, da saída 1 até a 6.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 6 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 6` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 46. Sequência 8

- **ID:** `flow.sequence.8`
- **Categoria:** Fluxo
- **Finalidade:** Executa 8 ramificações de fluxo em ordem, da saída 1 até a 8.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 8 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 8` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 47. Sequência 10

- **ID:** `flow.sequence.10`
- **Categoria:** Fluxo
- **Finalidade:** Executa 10 ramificações de fluxo em ordem, da saída 1 até a 10.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 10 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 10` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 48. Sequência 12

- **ID:** `flow.sequence.12`
- **Categoria:** Fluxo
- **Finalidade:** Executa 12 ramificações de fluxo em ordem, da saída 1 até a 12.
- **Entradas/alvo:** Um pulso no pino `flow`; cada saída pode iniciar uma cadeia diferente.
- **Saídas/efeito:** Emite 12 saídas sequenciais no mesmo quadro.
- **Exemplo:** `Button Pressed → Sequência 12` para tocar som, atualizar UI e executar outras ações em ordem.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 49. Branch

- **ID:** `flow.branch`
- **Categoria:** Fluxo
- **Finalidade:** Executa a operação registrada `flow.branch` (branch) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Branch` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 50. Gate

- **ID:** `flow.gate`
- **Categoria:** Fluxo
- **Finalidade:** Executa a operação registrada `flow.gate` (gate) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Gate` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 51. Once

- **ID:** `flow.once`
- **Categoria:** Fluxo
- **Finalidade:** Executa a operação registrada `flow.once` (once) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Once` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 52. Do N

- **ID:** `flow.do_n`
- **Categoria:** Fluxo
- **Finalidade:** Executa a operação registrada `flow.do_n` (do n) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Do N` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 53. While

- **ID:** `flow.while`
- **Categoria:** Fluxo
- **Finalidade:** Executa a operação registrada `flow.while` (while) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `While` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 54. For

- **ID:** `flow.for`
- **Categoria:** Fluxo
- **Finalidade:** Executa a operação registrada `flow.for` (for) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `For` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 55. Foreach

- **ID:** `flow.foreach`
- **Categoria:** Fluxo
- **Finalidade:** Executa a operação registrada `flow.foreach` (foreach) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Foreach` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 56. Delay

- **ID:** `flow.delay`
- **Categoria:** Fluxo
- **Finalidade:** Executa a operação registrada `flow.delay` (delay) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Delay` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 57. Debounce

- **ID:** `flow.debounce`
- **Categoria:** Fluxo
- **Finalidade:** Executa a operação registrada `flow.debounce` (debounce) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Debounce` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 58. Throttle

- **ID:** `flow.throttle`
- **Categoria:** Fluxo
- **Finalidade:** Executa a operação registrada `flow.throttle` (throttle) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Throttle` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 59. Race

- **ID:** `flow.race`
- **Categoria:** Fluxo
- **Finalidade:** Executa a operação registrada `flow.race` (race) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Race` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 60. Parallel

- **ID:** `flow.parallel`
- **Categoria:** Fluxo
- **Finalidade:** Executa a operação registrada `flow.parallel` (parallel) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Parallel` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 61. Cancel

- **ID:** `flow.cancel`
- **Categoria:** Fluxo
- **Finalidade:** Executa a operação registrada `flow.cancel` (cancel) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Cancel` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 62. Break

- **ID:** `flow.break`
- **Categoria:** Fluxo
- **Finalidade:** Executa a operação registrada `flow.break` (break) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Break` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 63. Continue

- **ID:** `flow.continue`
- **Categoria:** Fluxo
- **Finalidade:** Executa a operação registrada `flow.continue` (continue) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Continue` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 64. Switch Bool

- **ID:** `flow.switch_bool`
- **Categoria:** Fluxo
- **Finalidade:** Executa a operação registrada `flow.switch_bool` (switch bool) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Switch Bool` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 65. Switch Number

- **ID:** `flow.switch_number`
- **Categoria:** Fluxo
- **Finalidade:** Executa a operação registrada `flow.switch_number` (switch number) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Switch Number` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 66. Switch Text

- **ID:** `flow.switch_text`
- **Categoria:** Fluxo
- **Finalidade:** Executa a operação registrada `flow.switch_text` (switch text) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Switch Text` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 67. Switch Object

- **ID:** `flow.switch_object`
- **Categoria:** Fluxo
- **Finalidade:** Executa a operação registrada `flow.switch_object` (switch object) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Switch Object` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 68. Flip Flop

- **ID:** `flow.flip_flop`
- **Categoria:** Fluxo
- **Finalidade:** Executa a operação registrada `flow.flip_flop` (flip flop) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Flip Flop` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 69. Pressed

- **ID:** `input.keyboard.pressed`
- **Categoria:** Entrada
- **Finalidade:** Lê `pressed` do dispositivo `keyboard` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `pressed` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Pressed → Debug Info` para visualizar o valor recebido do keyboard.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 70. Released

- **ID:** `input.keyboard.released`
- **Categoria:** Entrada
- **Finalidade:** Lê `released` do dispositivo `keyboard` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `released` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Released → Debug Info` para visualizar o valor recebido do keyboard.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 71. Held

- **ID:** `input.keyboard.held`
- **Categoria:** Entrada
- **Finalidade:** Lê `held` do dispositivo `keyboard` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `held` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Held → Debug Info` para visualizar o valor recebido do keyboard.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 72. Axis

- **ID:** `input.keyboard.axis`
- **Categoria:** Entrada
- **Finalidade:** Lê `axis` do dispositivo `keyboard` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `axis` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Axis → Debug Info` para visualizar o valor recebido do keyboard.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 73. Position

- **ID:** `input.keyboard.position`
- **Categoria:** Entrada
- **Finalidade:** Lê `position` do dispositivo `keyboard` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `position` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Position → Debug Info` para visualizar o valor recebido do keyboard.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 74. Delta

- **ID:** `input.keyboard.delta`
- **Categoria:** Entrada
- **Finalidade:** Lê `delta` do dispositivo `keyboard` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `delta` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Delta → Debug Info` para visualizar o valor recebido do keyboard.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 75. Pressure

- **ID:** `input.keyboard.pressure`
- **Categoria:** Entrada
- **Finalidade:** Lê `pressure` do dispositivo `keyboard` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `pressure` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Pressure → Debug Info` para visualizar o valor recebido do keyboard.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 76. Count

- **ID:** `input.keyboard.count`
- **Categoria:** Entrada
- **Finalidade:** Lê `count` do dispositivo `keyboard` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `count` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Count → Debug Info` para visualizar o valor recebido do keyboard.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 77. Available

- **ID:** `input.keyboard.available`
- **Categoria:** Entrada
- **Finalidade:** Lê `available` do dispositivo `keyboard` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `available` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Available → Debug Info` para visualizar o valor recebido do keyboard.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 78. Name

- **ID:** `input.keyboard.name`
- **Categoria:** Entrada
- **Finalidade:** Lê `name` do dispositivo `keyboard` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `name` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Name → Debug Info` para visualizar o valor recebido do keyboard.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 79. Pressed

- **ID:** `input.mouse.pressed`
- **Categoria:** Entrada
- **Finalidade:** Lê `pressed` do dispositivo `mouse` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `pressed` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Pressed → Debug Info` para visualizar o valor recebido do mouse.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 80. Released

- **ID:** `input.mouse.released`
- **Categoria:** Entrada
- **Finalidade:** Lê `released` do dispositivo `mouse` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `released` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Released → Debug Info` para visualizar o valor recebido do mouse.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 81. Held

- **ID:** `input.mouse.held`
- **Categoria:** Entrada
- **Finalidade:** Lê `held` do dispositivo `mouse` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `held` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Held → Debug Info` para visualizar o valor recebido do mouse.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 82. Axis

- **ID:** `input.mouse.axis`
- **Categoria:** Entrada
- **Finalidade:** Lê `axis` do dispositivo `mouse` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `axis` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Axis → Debug Info` para visualizar o valor recebido do mouse.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 83. Position

- **ID:** `input.mouse.position`
- **Categoria:** Entrada
- **Finalidade:** Lê `position` do dispositivo `mouse` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `position` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Position → Debug Info` para visualizar o valor recebido do mouse.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 84. Delta

- **ID:** `input.mouse.delta`
- **Categoria:** Entrada
- **Finalidade:** Lê `delta` do dispositivo `mouse` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `delta` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Delta → Debug Info` para visualizar o valor recebido do mouse.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 85. Pressure

- **ID:** `input.mouse.pressure`
- **Categoria:** Entrada
- **Finalidade:** Lê `pressure` do dispositivo `mouse` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `pressure` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Pressure → Debug Info` para visualizar o valor recebido do mouse.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 86. Count

- **ID:** `input.mouse.count`
- **Categoria:** Entrada
- **Finalidade:** Lê `count` do dispositivo `mouse` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `count` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Count → Debug Info` para visualizar o valor recebido do mouse.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 87. Available

- **ID:** `input.mouse.available`
- **Categoria:** Entrada
- **Finalidade:** Lê `available` do dispositivo `mouse` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `available` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Available → Debug Info` para visualizar o valor recebido do mouse.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 88. Name

- **ID:** `input.mouse.name`
- **Categoria:** Entrada
- **Finalidade:** Lê `name` do dispositivo `mouse` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `name` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Name → Debug Info` para visualizar o valor recebido do mouse.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 89. Pressed

- **ID:** `input.touch.pressed`
- **Categoria:** Entrada
- **Finalidade:** Lê `pressed` do dispositivo `touch` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `pressed` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Pressed → Debug Info` para visualizar o valor recebido do touch.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 90. Released

- **ID:** `input.touch.released`
- **Categoria:** Entrada
- **Finalidade:** Lê `released` do dispositivo `touch` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `released` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Released → Debug Info` para visualizar o valor recebido do touch.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 91. Held

- **ID:** `input.touch.held`
- **Categoria:** Entrada
- **Finalidade:** Lê `held` do dispositivo `touch` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `held` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Held → Debug Info` para visualizar o valor recebido do touch.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 92. Axis

- **ID:** `input.touch.axis`
- **Categoria:** Entrada
- **Finalidade:** Lê `axis` do dispositivo `touch` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `axis` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Axis → Debug Info` para visualizar o valor recebido do touch.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 93. Position

- **ID:** `input.touch.position`
- **Categoria:** Entrada
- **Finalidade:** Lê `position` do dispositivo `touch` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `position` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Position → Debug Info` para visualizar o valor recebido do touch.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 94. Delta

- **ID:** `input.touch.delta`
- **Categoria:** Entrada
- **Finalidade:** Lê `delta` do dispositivo `touch` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `delta` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Delta → Debug Info` para visualizar o valor recebido do touch.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 95. Pressure

- **ID:** `input.touch.pressure`
- **Categoria:** Entrada
- **Finalidade:** Lê `pressure` do dispositivo `touch` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `pressure` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Pressure → Debug Info` para visualizar o valor recebido do touch.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 96. Count

- **ID:** `input.touch.count`
- **Categoria:** Entrada
- **Finalidade:** Lê `count` do dispositivo `touch` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `count` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Count → Debug Info` para visualizar o valor recebido do touch.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 97. Available

- **ID:** `input.touch.available`
- **Categoria:** Entrada
- **Finalidade:** Lê `available` do dispositivo `touch` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `available` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Available → Debug Info` para visualizar o valor recebido do touch.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 98. Name

- **ID:** `input.touch.name`
- **Categoria:** Entrada
- **Finalidade:** Lê `name` do dispositivo `touch` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `name` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Name → Debug Info` para visualizar o valor recebido do touch.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 99. Pressed

- **ID:** `input.gamepad.pressed`
- **Categoria:** Entrada
- **Finalidade:** Lê `pressed` do dispositivo `gamepad` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `pressed` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Pressed → Debug Info` para visualizar o valor recebido do gamepad.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 100. Released

- **ID:** `input.gamepad.released`
- **Categoria:** Entrada
- **Finalidade:** Lê `released` do dispositivo `gamepad` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `released` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Released → Debug Info` para visualizar o valor recebido do gamepad.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 101. Held

- **ID:** `input.gamepad.held`
- **Categoria:** Entrada
- **Finalidade:** Lê `held` do dispositivo `gamepad` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `held` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Held → Debug Info` para visualizar o valor recebido do gamepad.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 102. Axis

- **ID:** `input.gamepad.axis`
- **Categoria:** Entrada
- **Finalidade:** Lê `axis` do dispositivo `gamepad` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `axis` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Axis → Debug Info` para visualizar o valor recebido do gamepad.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 103. Position

- **ID:** `input.gamepad.position`
- **Categoria:** Entrada
- **Finalidade:** Lê `position` do dispositivo `gamepad` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `position` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Position → Debug Info` para visualizar o valor recebido do gamepad.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 104. Delta

- **ID:** `input.gamepad.delta`
- **Categoria:** Entrada
- **Finalidade:** Lê `delta` do dispositivo `gamepad` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `delta` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Delta → Debug Info` para visualizar o valor recebido do gamepad.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 105. Pressure

- **ID:** `input.gamepad.pressure`
- **Categoria:** Entrada
- **Finalidade:** Lê `pressure` do dispositivo `gamepad` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `pressure` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Pressure → Debug Info` para visualizar o valor recebido do gamepad.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 106. Count

- **ID:** `input.gamepad.count`
- **Categoria:** Entrada
- **Finalidade:** Lê `count` do dispositivo `gamepad` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `count` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Count → Debug Info` para visualizar o valor recebido do gamepad.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 107. Available

- **ID:** `input.gamepad.available`
- **Categoria:** Entrada
- **Finalidade:** Lê `available` do dispositivo `gamepad` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `available` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Available → Debug Info` para visualizar o valor recebido do gamepad.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 108. Name

- **ID:** `input.gamepad.name`
- **Categoria:** Entrada
- **Finalidade:** Lê `name` do dispositivo `gamepad` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `name` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Name → Debug Info` para visualizar o valor recebido do gamepad.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 109. Pressed

- **ID:** `input.sensor.pressed`
- **Categoria:** Entrada
- **Finalidade:** Lê `pressed` do dispositivo `sensor` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `pressed` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Pressed → Debug Info` para visualizar o valor recebido do sensor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 110. Released

- **ID:** `input.sensor.released`
- **Categoria:** Entrada
- **Finalidade:** Lê `released` do dispositivo `sensor` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `released` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Released → Debug Info` para visualizar o valor recebido do sensor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 111. Held

- **ID:** `input.sensor.held`
- **Categoria:** Entrada
- **Finalidade:** Lê `held` do dispositivo `sensor` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `held` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Held → Debug Info` para visualizar o valor recebido do sensor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 112. Axis

- **ID:** `input.sensor.axis`
- **Categoria:** Entrada
- **Finalidade:** Lê `axis` do dispositivo `sensor` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `axis` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Axis → Debug Info` para visualizar o valor recebido do sensor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 113. Position

- **ID:** `input.sensor.position`
- **Categoria:** Entrada
- **Finalidade:** Lê `position` do dispositivo `sensor` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `position` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Position → Debug Info` para visualizar o valor recebido do sensor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 114. Delta

- **ID:** `input.sensor.delta`
- **Categoria:** Entrada
- **Finalidade:** Lê `delta` do dispositivo `sensor` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `delta` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Delta → Debug Info` para visualizar o valor recebido do sensor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 115. Pressure

- **ID:** `input.sensor.pressure`
- **Categoria:** Entrada
- **Finalidade:** Lê `pressure` do dispositivo `sensor` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `pressure` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Pressure → Debug Info` para visualizar o valor recebido do sensor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 116. Count

- **ID:** `input.sensor.count`
- **Categoria:** Entrada
- **Finalidade:** Lê `count` do dispositivo `sensor` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `count` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Count → Debug Info` para visualizar o valor recebido do sensor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 117. Available

- **ID:** `input.sensor.available`
- **Categoria:** Entrada
- **Finalidade:** Lê `available` do dispositivo `sensor` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `available` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Available → Debug Info` para visualizar o valor recebido do sensor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 118. Name

- **ID:** `input.sensor.name`
- **Categoria:** Entrada
- **Finalidade:** Lê `name` do dispositivo `sensor` sem precisar escrever código de plataforma.
- **Entradas/alvo:** Nome da ação/controle e índice do dispositivo quando aplicável; `name` pode exigir eixo ou botão.
- **Saídas/efeito:** Retorna o estado, valor, posição ou disponibilidade em `value`.
- **Exemplo:** `Update → Name → Debug Info` para visualizar o valor recebido do sensor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 119. Add

- **ID:** `math.number.add`
- **Categoria:** Matemática
- **Finalidade:** Calcula `add` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Add` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 120. Subtract

- **ID:** `math.number.subtract`
- **Categoria:** Matemática
- **Finalidade:** Calcula `subtract` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Subtract` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 121. Multiply

- **ID:** `math.number.multiply`
- **Categoria:** Matemática
- **Finalidade:** Calcula `multiply` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Multiply` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 122. Divide

- **ID:** `math.number.divide`
- **Categoria:** Matemática
- **Finalidade:** Calcula `divide` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Divide` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 123. Modulo

- **ID:** `math.number.modulo`
- **Categoria:** Matemática
- **Finalidade:** Calcula `modulo` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Modulo` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 124. Power

- **ID:** `math.number.power`
- **Categoria:** Matemática
- **Finalidade:** Calcula `power` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Power` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 125. Minimum

- **ID:** `math.number.minimum`
- **Categoria:** Matemática
- **Finalidade:** Calcula `minimum` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Minimum` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 126. Maximum

- **ID:** `math.number.maximum`
- **Categoria:** Matemática
- **Finalidade:** Calcula `maximum` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Maximum` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 127. Average

- **ID:** `math.number.average`
- **Categoria:** Matemática
- **Finalidade:** Calcula `average` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Average` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 128. Atan2

- **ID:** `math.number.atan2`
- **Categoria:** Matemática
- **Finalidade:** Calcula `atan2` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Atan2` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 129. Log Base

- **ID:** `math.number.log_base`
- **Categoria:** Matemática
- **Finalidade:** Calcula `log base` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Log Base` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 130. Copy Sign

- **ID:** `math.number.copy_sign`
- **Categoria:** Matemática
- **Finalidade:** Calcula `copy sign` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Copy Sign` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 131. Absolute

- **ID:** `math.number.absolute`
- **Categoria:** Matemática
- **Finalidade:** Calcula `absolute` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor number de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Absolute` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 132. Negative

- **ID:** `math.number.negative`
- **Categoria:** Matemática
- **Finalidade:** Calcula `negative` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor number de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Negative` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 133. Sqrt

- **ID:** `math.number.sqrt`
- **Categoria:** Matemática
- **Finalidade:** Calcula `sqrt` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor number de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Sqrt` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 134. Cube Root

- **ID:** `math.number.cube_root`
- **Categoria:** Matemática
- **Finalidade:** Calcula `cube root` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Cube Root` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 135. Exp

- **ID:** `math.number.exp`
- **Categoria:** Matemática
- **Finalidade:** Calcula `exp` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Exp` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 136. Log

- **ID:** `math.number.log`
- **Categoria:** Matemática
- **Finalidade:** Calcula `log` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Log` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 137. Log10

- **ID:** `math.number.log10`
- **Categoria:** Matemática
- **Finalidade:** Calcula `log10` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Log10` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 138. Floor

- **ID:** `math.number.floor`
- **Categoria:** Matemática
- **Finalidade:** Calcula `floor` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor number de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Floor` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 139. Ceil

- **ID:** `math.number.ceil`
- **Categoria:** Matemática
- **Finalidade:** Calcula `ceil` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor number de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Ceil` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 140. Round

- **ID:** `math.number.round`
- **Categoria:** Matemática
- **Finalidade:** Calcula `round` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor number de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Round` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 141. Truncate

- **ID:** `math.number.truncate`
- **Categoria:** Matemática
- **Finalidade:** Calcula `truncate` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Truncate` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 142. Fraction

- **ID:** `math.number.fraction`
- **Categoria:** Matemática
- **Finalidade:** Calcula `fraction` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Fraction` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 143. Sign

- **ID:** `math.number.sign`
- **Categoria:** Matemática
- **Finalidade:** Calcula `sign` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Sign` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 144. Sin

- **ID:** `math.number.sin`
- **Categoria:** Matemática
- **Finalidade:** Calcula `sin` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Sin` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 145. Cos

- **ID:** `math.number.cos`
- **Categoria:** Matemática
- **Finalidade:** Calcula `cos` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Cos` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 146. Tan

- **ID:** `math.number.tan`
- **Categoria:** Matemática
- **Finalidade:** Calcula `tan` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Tan` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 147. Asin

- **ID:** `math.number.asin`
- **Categoria:** Matemática
- **Finalidade:** Calcula `asin` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Asin` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 148. Acos

- **ID:** `math.number.acos`
- **Categoria:** Matemática
- **Finalidade:** Calcula `acos` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Acos` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 149. Atan

- **ID:** `math.number.atan`
- **Categoria:** Matemática
- **Finalidade:** Calcula `atan` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Atan` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 150. Degrees

- **ID:** `math.number.degrees`
- **Categoria:** Matemática
- **Finalidade:** Calcula `degrees` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Degrees` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 151. Radians

- **ID:** `math.number.radians`
- **Categoria:** Matemática
- **Finalidade:** Calcula `radians` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Radians` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 152. Saturate

- **ID:** `math.number.saturate`
- **Categoria:** Matemática
- **Finalidade:** Calcula `saturate` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Saturate` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 153. Is Finite

- **ID:** `math.number.is_finite`
- **Categoria:** Matemática
- **Finalidade:** Calcula `is finite` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor number que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Finite` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 154. Is Nan

- **ID:** `math.number.is_nan`
- **Categoria:** Matemática
- **Finalidade:** Calcula `is nan` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor number que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Nan` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 155. Add

- **ID:** `math.integer.add`
- **Categoria:** Matemática
- **Finalidade:** Calcula `add` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Add` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 156. Subtract

- **ID:** `math.integer.subtract`
- **Categoria:** Matemática
- **Finalidade:** Calcula `subtract` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Subtract` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 157. Multiply

- **ID:** `math.integer.multiply`
- **Categoria:** Matemática
- **Finalidade:** Calcula `multiply` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Multiply` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 158. Divide

- **ID:** `math.integer.divide`
- **Categoria:** Matemática
- **Finalidade:** Calcula `divide` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Divide` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 159. Modulo

- **ID:** `math.integer.modulo`
- **Categoria:** Matemática
- **Finalidade:** Calcula `modulo` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Modulo` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 160. Power

- **ID:** `math.integer.power`
- **Categoria:** Matemática
- **Finalidade:** Calcula `power` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Power` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 161. Minimum

- **ID:** `math.integer.minimum`
- **Categoria:** Matemática
- **Finalidade:** Calcula `minimum` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Minimum` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 162. Maximum

- **ID:** `math.integer.maximum`
- **Categoria:** Matemática
- **Finalidade:** Calcula `maximum` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Maximum` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 163. Average

- **ID:** `math.integer.average`
- **Categoria:** Matemática
- **Finalidade:** Calcula `average` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Average` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 164. Atan2

- **ID:** `math.integer.atan2`
- **Categoria:** Matemática
- **Finalidade:** Calcula `atan2` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Atan2` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 165. Log Base

- **ID:** `math.integer.log_base`
- **Categoria:** Matemática
- **Finalidade:** Calcula `log base` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Log Base` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 166. Copy Sign

- **ID:** `math.integer.copy_sign`
- **Categoria:** Matemática
- **Finalidade:** Calcula `copy sign` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Copy Sign` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 167. Absolute

- **ID:** `math.integer.absolute`
- **Categoria:** Matemática
- **Finalidade:** Calcula `absolute` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor integer de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Absolute` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 168. Negative

- **ID:** `math.integer.negative`
- **Categoria:** Matemática
- **Finalidade:** Calcula `negative` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor integer de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Negative` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 169. Sqrt

- **ID:** `math.integer.sqrt`
- **Categoria:** Matemática
- **Finalidade:** Calcula `sqrt` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor integer de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Sqrt` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 170. Cube Root

- **ID:** `math.integer.cube_root`
- **Categoria:** Matemática
- **Finalidade:** Calcula `cube root` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Cube Root` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 171. Exp

- **ID:** `math.integer.exp`
- **Categoria:** Matemática
- **Finalidade:** Calcula `exp` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Exp` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 172. Log

- **ID:** `math.integer.log`
- **Categoria:** Matemática
- **Finalidade:** Calcula `log` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Log` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 173. Log10

- **ID:** `math.integer.log10`
- **Categoria:** Matemática
- **Finalidade:** Calcula `log10` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Log10` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 174. Floor

- **ID:** `math.integer.floor`
- **Categoria:** Matemática
- **Finalidade:** Calcula `floor` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor integer de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Floor` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 175. Ceil

- **ID:** `math.integer.ceil`
- **Categoria:** Matemática
- **Finalidade:** Calcula `ceil` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor integer de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Ceil` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 176. Round

- **ID:** `math.integer.round`
- **Categoria:** Matemática
- **Finalidade:** Calcula `round` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor integer de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Round` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 177. Truncate

- **ID:** `math.integer.truncate`
- **Categoria:** Matemática
- **Finalidade:** Calcula `truncate` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Truncate` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 178. Fraction

- **ID:** `math.integer.fraction`
- **Categoria:** Matemática
- **Finalidade:** Calcula `fraction` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Fraction` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 179. Sign

- **ID:** `math.integer.sign`
- **Categoria:** Matemática
- **Finalidade:** Calcula `sign` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Sign` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 180. Sin

- **ID:** `math.integer.sin`
- **Categoria:** Matemática
- **Finalidade:** Calcula `sin` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Sin` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 181. Cos

- **ID:** `math.integer.cos`
- **Categoria:** Matemática
- **Finalidade:** Calcula `cos` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Cos` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 182. Tan

- **ID:** `math.integer.tan`
- **Categoria:** Matemática
- **Finalidade:** Calcula `tan` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Tan` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 183. Asin

- **ID:** `math.integer.asin`
- **Categoria:** Matemática
- **Finalidade:** Calcula `asin` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Asin` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 184. Acos

- **ID:** `math.integer.acos`
- **Categoria:** Matemática
- **Finalidade:** Calcula `acos` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Acos` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 185. Atan

- **ID:** `math.integer.atan`
- **Categoria:** Matemática
- **Finalidade:** Calcula `atan` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Atan` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 186. Degrees

- **ID:** `math.integer.degrees`
- **Categoria:** Matemática
- **Finalidade:** Calcula `degrees` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Degrees` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 187. Radians

- **ID:** `math.integer.radians`
- **Categoria:** Matemática
- **Finalidade:** Calcula `radians` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Radians` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 188. Saturate

- **ID:** `math.integer.saturate`
- **Categoria:** Matemática
- **Finalidade:** Calcula `saturate` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores integer; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Saturate` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 189. Is Finite

- **ID:** `math.integer.is_finite`
- **Categoria:** Matemática
- **Finalidade:** Calcula `is finite` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor integer que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Finite` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 190. Is Nan

- **ID:** `math.integer.is_nan`
- **Categoria:** Matemática
- **Finalidade:** Calcula `is nan` para valores do tipo integer; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor integer que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Nan` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 191. Add

- **ID:** `math.angle.add`
- **Categoria:** Matemática
- **Finalidade:** Calcula `add` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Add` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 192. Subtract

- **ID:** `math.angle.subtract`
- **Categoria:** Matemática
- **Finalidade:** Calcula `subtract` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Subtract` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 193. Multiply

- **ID:** `math.angle.multiply`
- **Categoria:** Matemática
- **Finalidade:** Calcula `multiply` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Multiply` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 194. Divide

- **ID:** `math.angle.divide`
- **Categoria:** Matemática
- **Finalidade:** Calcula `divide` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Divide` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 195. Modulo

- **ID:** `math.angle.modulo`
- **Categoria:** Matemática
- **Finalidade:** Calcula `modulo` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Modulo` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 196. Power

- **ID:** `math.angle.power`
- **Categoria:** Matemática
- **Finalidade:** Calcula `power` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Power` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 197. Minimum

- **ID:** `math.angle.minimum`
- **Categoria:** Matemática
- **Finalidade:** Calcula `minimum` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Minimum` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 198. Maximum

- **ID:** `math.angle.maximum`
- **Categoria:** Matemática
- **Finalidade:** Calcula `maximum` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Maximum` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 199. Average

- **ID:** `math.angle.average`
- **Categoria:** Matemática
- **Finalidade:** Calcula `average` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Average` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 200. Atan2

- **ID:** `math.angle.atan2`
- **Categoria:** Matemática
- **Finalidade:** Calcula `atan2` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Atan2` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 201. Log Base

- **ID:** `math.angle.log_base`
- **Categoria:** Matemática
- **Finalidade:** Calcula `log base` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Log Base` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 202. Copy Sign

- **ID:** `math.angle.copy_sign`
- **Categoria:** Matemática
- **Finalidade:** Calcula `copy sign` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Copy Sign` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 203. Absolute

- **ID:** `math.angle.absolute`
- **Categoria:** Matemática
- **Finalidade:** Calcula `absolute` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor angle de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Absolute` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 204. Negative

- **ID:** `math.angle.negative`
- **Categoria:** Matemática
- **Finalidade:** Calcula `negative` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor angle de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Negative` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 205. Sqrt

- **ID:** `math.angle.sqrt`
- **Categoria:** Matemática
- **Finalidade:** Calcula `sqrt` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor angle de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Sqrt` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 206. Cube Root

- **ID:** `math.angle.cube_root`
- **Categoria:** Matemática
- **Finalidade:** Calcula `cube root` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Cube Root` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 207. Exp

- **ID:** `math.angle.exp`
- **Categoria:** Matemática
- **Finalidade:** Calcula `exp` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Exp` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 208. Log

- **ID:** `math.angle.log`
- **Categoria:** Matemática
- **Finalidade:** Calcula `log` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Log` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 209. Log10

- **ID:** `math.angle.log10`
- **Categoria:** Matemática
- **Finalidade:** Calcula `log10` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Log10` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 210. Floor

- **ID:** `math.angle.floor`
- **Categoria:** Matemática
- **Finalidade:** Calcula `floor` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor angle de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Floor` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 211. Ceil

- **ID:** `math.angle.ceil`
- **Categoria:** Matemática
- **Finalidade:** Calcula `ceil` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor angle de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Ceil` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 212. Round

- **ID:** `math.angle.round`
- **Categoria:** Matemática
- **Finalidade:** Calcula `round` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor angle de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Round` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 213. Truncate

- **ID:** `math.angle.truncate`
- **Categoria:** Matemática
- **Finalidade:** Calcula `truncate` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Truncate` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 214. Fraction

- **ID:** `math.angle.fraction`
- **Categoria:** Matemática
- **Finalidade:** Calcula `fraction` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Fraction` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 215. Sign

- **ID:** `math.angle.sign`
- **Categoria:** Matemática
- **Finalidade:** Calcula `sign` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Sign` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 216. Sin

- **ID:** `math.angle.sin`
- **Categoria:** Matemática
- **Finalidade:** Calcula `sin` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Sin` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 217. Cos

- **ID:** `math.angle.cos`
- **Categoria:** Matemática
- **Finalidade:** Calcula `cos` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Cos` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 218. Tan

- **ID:** `math.angle.tan`
- **Categoria:** Matemática
- **Finalidade:** Calcula `tan` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Tan` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 219. Asin

- **ID:** `math.angle.asin`
- **Categoria:** Matemática
- **Finalidade:** Calcula `asin` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Asin` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 220. Acos

- **ID:** `math.angle.acos`
- **Categoria:** Matemática
- **Finalidade:** Calcula `acos` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Acos` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 221. Atan

- **ID:** `math.angle.atan`
- **Categoria:** Matemática
- **Finalidade:** Calcula `atan` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Atan` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 222. Degrees

- **ID:** `math.angle.degrees`
- **Categoria:** Matemática
- **Finalidade:** Calcula `degrees` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Degrees` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 223. Radians

- **ID:** `math.angle.radians`
- **Categoria:** Matemática
- **Finalidade:** Calcula `radians` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Radians` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 224. Saturate

- **ID:** `math.angle.saturate`
- **Categoria:** Matemática
- **Finalidade:** Calcula `saturate` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores angle; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Saturate` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 225. Is Finite

- **ID:** `math.angle.is_finite`
- **Categoria:** Matemática
- **Finalidade:** Calcula `is finite` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor angle que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Finite` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 226. Is Nan

- **ID:** `math.angle.is_nan`
- **Categoria:** Matemática
- **Finalidade:** Calcula `is nan` para valores do tipo angle; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor angle que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Nan` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 227. Clamp

- **ID:** `math.range.clamp`
- **Categoria:** Matemática
- **Finalidade:** Calcula `clamp` para valores do tipo range; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores range; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Clamp` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 228. Lerp

- **ID:** `math.range.lerp`
- **Categoria:** Matemática
- **Finalidade:** Calcula `lerp` para valores do tipo range; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores range; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Lerp` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 229. Inverse Lerp

- **ID:** `math.range.inverse_lerp`
- **Categoria:** Matemática
- **Finalidade:** Calcula `inverse lerp` para valores do tipo range; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores range; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Inverse Lerp` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 230. Remap

- **ID:** `math.range.remap`
- **Categoria:** Matemática
- **Finalidade:** Calcula `remap` para valores do tipo range; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores range; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Remap` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 231. Smoothstep

- **ID:** `math.range.smoothstep`
- **Categoria:** Matemática
- **Finalidade:** Calcula `smoothstep` para valores do tipo range; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores range; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Smoothstep` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 232. Move Towards

- **ID:** `math.range.move_towards`
- **Categoria:** Matemática
- **Finalidade:** Calcula `move towards` para valores do tipo range; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores range; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Move Towards` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 233. Random Range

- **ID:** `math.range.random_range`
- **Categoria:** Matemática
- **Finalidade:** Calcula `random range` para valores do tipo range; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores range; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Random Range` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 234. Equal

- **ID:** `compare.boolean.equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `equal` para valores do tipo boolean; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 235. Not Equal

- **ID:** `compare.boolean.not_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `not equal` para valores do tipo boolean; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Not Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 236. Greater

- **ID:** `compare.boolean.greater`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater` para valores do tipo boolean; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 237. Greater Equal

- **ID:** `compare.boolean.greater_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater equal` para valores do tipo boolean; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 238. Less

- **ID:** `compare.boolean.less`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less` para valores do tipo boolean; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 239. Less Equal

- **ID:** `compare.boolean.less_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less equal` para valores do tipo boolean; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 240. Between

- **ID:** `compare.boolean.between`
- **Categoria:** Comparação
- **Finalidade:** Calcula `between` para valores do tipo boolean; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Between` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 241. Outside

- **ID:** `compare.boolean.outside`
- **Categoria:** Comparação
- **Finalidade:** Calcula `outside` para valores do tipo boolean; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Outside` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 242. Approximately

- **ID:** `compare.boolean.approximately`
- **Categoria:** Comparação
- **Finalidade:** Calcula `approximately` para valores do tipo boolean; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores boolean; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Approximately` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 243. Is Null

- **ID:** `compare.boolean.is_null`
- **Categoria:** Comparação
- **Finalidade:** Calcula `is null` para valores do tipo boolean; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor boolean que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Null` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 244. Equal

- **ID:** `compare.number.equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `equal` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 245. Not Equal

- **ID:** `compare.number.not_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `not equal` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Not Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 246. Greater

- **ID:** `compare.number.greater`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 247. Greater Equal

- **ID:** `compare.number.greater_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater equal` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 248. Less

- **ID:** `compare.number.less`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 249. Less Equal

- **ID:** `compare.number.less_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less equal` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 250. Between

- **ID:** `compare.number.between`
- **Categoria:** Comparação
- **Finalidade:** Calcula `between` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Between` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 251. Outside

- **ID:** `compare.number.outside`
- **Categoria:** Comparação
- **Finalidade:** Calcula `outside` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Outside` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 252. Approximately

- **ID:** `compare.number.approximately`
- **Categoria:** Comparação
- **Finalidade:** Calcula `approximately` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores number; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Approximately` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 253. Is Null

- **ID:** `compare.number.is_null`
- **Categoria:** Comparação
- **Finalidade:** Calcula `is null` para valores do tipo number; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor number que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Null` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 254. Equal

- **ID:** `compare.text.equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `equal` para valores do tipo text; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 255. Not Equal

- **ID:** `compare.text.not_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `not equal` para valores do tipo text; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Not Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 256. Greater

- **ID:** `compare.text.greater`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater` para valores do tipo text; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 257. Greater Equal

- **ID:** `compare.text.greater_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater equal` para valores do tipo text; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 258. Less

- **ID:** `compare.text.less`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less` para valores do tipo text; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 259. Less Equal

- **ID:** `compare.text.less_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less equal` para valores do tipo text; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 260. Between

- **ID:** `compare.text.between`
- **Categoria:** Comparação
- **Finalidade:** Calcula `between` para valores do tipo text; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Between` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 261. Outside

- **ID:** `compare.text.outside`
- **Categoria:** Comparação
- **Finalidade:** Calcula `outside` para valores do tipo text; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Outside` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 262. Approximately

- **ID:** `compare.text.approximately`
- **Categoria:** Comparação
- **Finalidade:** Calcula `approximately` para valores do tipo text; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores text; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Approximately` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 263. Is Null

- **ID:** `compare.text.is_null`
- **Categoria:** Comparação
- **Finalidade:** Calcula `is null` para valores do tipo text; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor text que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Null` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 264. Equal

- **ID:** `compare.vector2.equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `equal` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 265. Not Equal

- **ID:** `compare.vector2.not_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `not equal` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Not Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 266. Greater

- **ID:** `compare.vector2.greater`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 267. Greater Equal

- **ID:** `compare.vector2.greater_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater equal` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 268. Less

- **ID:** `compare.vector2.less`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 269. Less Equal

- **ID:** `compare.vector2.less_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less equal` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 270. Between

- **ID:** `compare.vector2.between`
- **Categoria:** Comparação
- **Finalidade:** Calcula `between` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Between` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 271. Outside

- **ID:** `compare.vector2.outside`
- **Categoria:** Comparação
- **Finalidade:** Calcula `outside` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Outside` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 272. Approximately

- **ID:** `compare.vector2.approximately`
- **Categoria:** Comparação
- **Finalidade:** Calcula `approximately` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Approximately` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 273. Is Null

- **ID:** `compare.vector2.is_null`
- **Categoria:** Comparação
- **Finalidade:** Calcula `is null` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector2 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Null` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 274. Equal

- **ID:** `compare.vector3.equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `equal` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 275. Not Equal

- **ID:** `compare.vector3.not_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `not equal` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Not Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 276. Greater

- **ID:** `compare.vector3.greater`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 277. Greater Equal

- **ID:** `compare.vector3.greater_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater equal` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 278. Less

- **ID:** `compare.vector3.less`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 279. Less Equal

- **ID:** `compare.vector3.less_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less equal` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 280. Between

- **ID:** `compare.vector3.between`
- **Categoria:** Comparação
- **Finalidade:** Calcula `between` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Between` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 281. Outside

- **ID:** `compare.vector3.outside`
- **Categoria:** Comparação
- **Finalidade:** Calcula `outside` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Outside` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 282. Approximately

- **ID:** `compare.vector3.approximately`
- **Categoria:** Comparação
- **Finalidade:** Calcula `approximately` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Approximately` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 283. Is Null

- **ID:** `compare.vector3.is_null`
- **Categoria:** Comparação
- **Finalidade:** Calcula `is null` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector3 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Null` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 284. Equal

- **ID:** `compare.color.equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `equal` para valores do tipo color; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 285. Not Equal

- **ID:** `compare.color.not_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `not equal` para valores do tipo color; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Not Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 286. Greater

- **ID:** `compare.color.greater`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater` para valores do tipo color; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 287. Greater Equal

- **ID:** `compare.color.greater_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater equal` para valores do tipo color; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 288. Less

- **ID:** `compare.color.less`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less` para valores do tipo color; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 289. Less Equal

- **ID:** `compare.color.less_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less equal` para valores do tipo color; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 290. Between

- **ID:** `compare.color.between`
- **Categoria:** Comparação
- **Finalidade:** Calcula `between` para valores do tipo color; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Between` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 291. Outside

- **ID:** `compare.color.outside`
- **Categoria:** Comparação
- **Finalidade:** Calcula `outside` para valores do tipo color; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Outside` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 292. Approximately

- **ID:** `compare.color.approximately`
- **Categoria:** Comparação
- **Finalidade:** Calcula `approximately` para valores do tipo color; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores color; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Approximately` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 293. Is Null

- **ID:** `compare.color.is_null`
- **Categoria:** Comparação
- **Finalidade:** Calcula `is null` para valores do tipo color; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor color que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Null` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 294. Equal

- **ID:** `compare.object.equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `equal` para valores do tipo object; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 295. Not Equal

- **ID:** `compare.object.not_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `not equal` para valores do tipo object; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Not Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 296. Greater

- **ID:** `compare.object.greater`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater` para valores do tipo object; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 297. Greater Equal

- **ID:** `compare.object.greater_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater equal` para valores do tipo object; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 298. Less

- **ID:** `compare.object.less`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less` para valores do tipo object; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 299. Less Equal

- **ID:** `compare.object.less_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less equal` para valores do tipo object; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 300. Between

- **ID:** `compare.object.between`
- **Categoria:** Comparação
- **Finalidade:** Calcula `between` para valores do tipo object; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Between` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 301. Outside

- **ID:** `compare.object.outside`
- **Categoria:** Comparação
- **Finalidade:** Calcula `outside` para valores do tipo object; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Outside` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 302. Approximately

- **ID:** `compare.object.approximately`
- **Categoria:** Comparação
- **Finalidade:** Calcula `approximately` para valores do tipo object; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores object; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Approximately` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 303. Is Null

- **ID:** `compare.object.is_null`
- **Categoria:** Comparação
- **Finalidade:** Calcula `is null` para valores do tipo object; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor object que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Null` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 304. Equal

- **ID:** `compare.asset.equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `equal` para valores do tipo asset; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 305. Not Equal

- **ID:** `compare.asset.not_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `not equal` para valores do tipo asset; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Not Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 306. Greater

- **ID:** `compare.asset.greater`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater` para valores do tipo asset; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 307. Greater Equal

- **ID:** `compare.asset.greater_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `greater equal` para valores do tipo asset; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Greater Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 308. Less

- **ID:** `compare.asset.less`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less` para valores do tipo asset; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 309. Less Equal

- **ID:** `compare.asset.less_equal`
- **Categoria:** Comparação
- **Finalidade:** Calcula `less equal` para valores do tipo asset; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Less Equal` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 310. Between

- **ID:** `compare.asset.between`
- **Categoria:** Comparação
- **Finalidade:** Calcula `between` para valores do tipo asset; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Between` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 311. Outside

- **ID:** `compare.asset.outside`
- **Categoria:** Comparação
- **Finalidade:** Calcula `outside` para valores do tipo asset; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Outside` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 312. Approximately

- **ID:** `compare.asset.approximately`
- **Categoria:** Comparação
- **Finalidade:** Calcula `approximately` para valores do tipo asset; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores asset; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Approximately` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 313. Is Null

- **ID:** `compare.asset.is_null`
- **Categoria:** Comparação
- **Finalidade:** Calcula `is null` para valores do tipo asset; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor asset que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Null` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 314. Add

- **ID:** `vector.vector2.add`
- **Categoria:** Vetor
- **Finalidade:** Calcula `add` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Add` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 315. Subtract

- **ID:** `vector.vector2.subtract`
- **Categoria:** Vetor
- **Finalidade:** Calcula `subtract` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Subtract` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 316. Multiply

- **ID:** `vector.vector2.multiply`
- **Categoria:** Vetor
- **Finalidade:** Calcula `multiply` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Multiply` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 317. Divide

- **ID:** `vector.vector2.divide`
- **Categoria:** Vetor
- **Finalidade:** Calcula `divide` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Divide` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 318. Scale

- **ID:** `vector.vector2.scale`
- **Categoria:** Vetor
- **Finalidade:** Calcula `scale` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Scale` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 319. Normalize

- **ID:** `vector.vector2.normalize`
- **Categoria:** Vetor
- **Finalidade:** Calcula `normalize` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector2 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Normalize` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 320. Length

- **ID:** `vector.vector2.length`
- **Categoria:** Vetor
- **Finalidade:** Calcula `length` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector2 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Length` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 321. Length Squared

- **ID:** `vector.vector2.length_squared`
- **Categoria:** Vetor
- **Finalidade:** Calcula `length squared` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Length Squared` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 322. Distance

- **ID:** `vector.vector2.distance`
- **Categoria:** Vetor
- **Finalidade:** Calcula `distance` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Distance` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 323. Dot

- **ID:** `vector.vector2.dot`
- **Categoria:** Vetor
- **Finalidade:** Calcula `dot` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Dot` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 324. Cross

- **ID:** `vector.vector2.cross`
- **Categoria:** Vetor
- **Finalidade:** Calcula `cross` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Cross` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 325. Lerp

- **ID:** `vector.vector2.lerp`
- **Categoria:** Vetor
- **Finalidade:** Calcula `lerp` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Lerp` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 326. Move Towards

- **ID:** `vector.vector2.move_towards`
- **Categoria:** Vetor
- **Finalidade:** Calcula `move towards` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Move Towards` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 327. Reflect

- **ID:** `vector.vector2.reflect`
- **Categoria:** Vetor
- **Finalidade:** Calcula `reflect` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Reflect` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 328. Project

- **ID:** `vector.vector2.project`
- **Categoria:** Vetor
- **Finalidade:** Calcula `project` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Project` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 329. Angle

- **ID:** `vector.vector2.angle`
- **Categoria:** Vetor
- **Finalidade:** Calcula `angle` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Angle` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 330. Clamp Length

- **ID:** `vector.vector2.clamp_length`
- **Categoria:** Vetor
- **Finalidade:** Calcula `clamp length` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Clamp Length` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 331. Minimum

- **ID:** `vector.vector2.minimum`
- **Categoria:** Vetor
- **Finalidade:** Calcula `minimum` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Minimum` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 332. Maximum

- **ID:** `vector.vector2.maximum`
- **Categoria:** Vetor
- **Finalidade:** Calcula `maximum` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Maximum` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 333. Absolute

- **ID:** `vector.vector2.absolute`
- **Categoria:** Vetor
- **Finalidade:** Calcula `absolute` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector2 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Absolute` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 334. Floor

- **ID:** `vector.vector2.floor`
- **Categoria:** Vetor
- **Finalidade:** Calcula `floor` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector2 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Floor` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 335. Ceil

- **ID:** `vector.vector2.ceil`
- **Categoria:** Vetor
- **Finalidade:** Calcula `ceil` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector2 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Ceil` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 336. Round

- **ID:** `vector.vector2.round`
- **Categoria:** Vetor
- **Finalidade:** Calcula `round` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector2 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Round` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 337. Snap

- **ID:** `vector.vector2.snap`
- **Categoria:** Vetor
- **Finalidade:** Calcula `snap` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Snap` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 338. Rotate

- **ID:** `vector.vector2.rotate`
- **Categoria:** Vetor
- **Finalidade:** Calcula `rotate` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Rotate` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 339. Inverse

- **ID:** `vector.vector2.inverse`
- **Categoria:** Vetor
- **Finalidade:** Calcula `inverse` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Inverse` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 340. Is Zero

- **ID:** `vector.vector2.is_zero`
- **Categoria:** Vetor
- **Finalidade:** Calcula `is zero` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector2 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Zero` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 341. Is Finite

- **ID:** `vector.vector2.is_finite`
- **Categoria:** Vetor
- **Finalidade:** Calcula `is finite` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector2 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Finite` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 342. Make

- **ID:** `vector.vector2.make`
- **Categoria:** Vetor
- **Finalidade:** Calcula `make` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Make` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 343. Split

- **ID:** `vector.vector2.split`
- **Categoria:** Vetor
- **Finalidade:** Calcula `split` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Split` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 344. With X

- **ID:** `vector.vector2.with_x`
- **Categoria:** Vetor
- **Finalidade:** Calcula `with x` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `With X` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 345. With Y

- **ID:** `vector.vector2.with_y`
- **Categoria:** Vetor
- **Finalidade:** Calcula `with y` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `With Y` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 346. With Z

- **ID:** `vector.vector2.with_z`
- **Categoria:** Vetor
- **Finalidade:** Calcula `with z` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `With Z` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 347. With W

- **ID:** `vector.vector2.with_w`
- **Categoria:** Vetor
- **Finalidade:** Calcula `with w` para valores do tipo vector2; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector2; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `With W` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 348. Add

- **ID:** `vector.vector3.add`
- **Categoria:** Vetor
- **Finalidade:** Calcula `add` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Add` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 349. Subtract

- **ID:** `vector.vector3.subtract`
- **Categoria:** Vetor
- **Finalidade:** Calcula `subtract` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Subtract` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 350. Multiply

- **ID:** `vector.vector3.multiply`
- **Categoria:** Vetor
- **Finalidade:** Calcula `multiply` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Multiply` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 351. Divide

- **ID:** `vector.vector3.divide`
- **Categoria:** Vetor
- **Finalidade:** Calcula `divide` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Divide` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 352. Scale

- **ID:** `vector.vector3.scale`
- **Categoria:** Vetor
- **Finalidade:** Calcula `scale` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Scale` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 353. Normalize

- **ID:** `vector.vector3.normalize`
- **Categoria:** Vetor
- **Finalidade:** Calcula `normalize` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector3 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Normalize` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 354. Length

- **ID:** `vector.vector3.length`
- **Categoria:** Vetor
- **Finalidade:** Calcula `length` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector3 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Length` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 355. Length Squared

- **ID:** `vector.vector3.length_squared`
- **Categoria:** Vetor
- **Finalidade:** Calcula `length squared` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Length Squared` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 356. Distance

- **ID:** `vector.vector3.distance`
- **Categoria:** Vetor
- **Finalidade:** Calcula `distance` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Distance` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 357. Dot

- **ID:** `vector.vector3.dot`
- **Categoria:** Vetor
- **Finalidade:** Calcula `dot` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Dot` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 358. Cross

- **ID:** `vector.vector3.cross`
- **Categoria:** Vetor
- **Finalidade:** Calcula `cross` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Cross` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 359. Lerp

- **ID:** `vector.vector3.lerp`
- **Categoria:** Vetor
- **Finalidade:** Calcula `lerp` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Lerp` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 360. Move Towards

- **ID:** `vector.vector3.move_towards`
- **Categoria:** Vetor
- **Finalidade:** Calcula `move towards` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Move Towards` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 361. Reflect

- **ID:** `vector.vector3.reflect`
- **Categoria:** Vetor
- **Finalidade:** Calcula `reflect` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Reflect` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 362. Project

- **ID:** `vector.vector3.project`
- **Categoria:** Vetor
- **Finalidade:** Calcula `project` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Project` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 363. Angle

- **ID:** `vector.vector3.angle`
- **Categoria:** Vetor
- **Finalidade:** Calcula `angle` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Angle` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 364. Clamp Length

- **ID:** `vector.vector3.clamp_length`
- **Categoria:** Vetor
- **Finalidade:** Calcula `clamp length` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Clamp Length` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 365. Minimum

- **ID:** `vector.vector3.minimum`
- **Categoria:** Vetor
- **Finalidade:** Calcula `minimum` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Minimum` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 366. Maximum

- **ID:** `vector.vector3.maximum`
- **Categoria:** Vetor
- **Finalidade:** Calcula `maximum` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Maximum` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 367. Absolute

- **ID:** `vector.vector3.absolute`
- **Categoria:** Vetor
- **Finalidade:** Calcula `absolute` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector3 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Absolute` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 368. Floor

- **ID:** `vector.vector3.floor`
- **Categoria:** Vetor
- **Finalidade:** Calcula `floor` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector3 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Floor` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 369. Ceil

- **ID:** `vector.vector3.ceil`
- **Categoria:** Vetor
- **Finalidade:** Calcula `ceil` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector3 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Ceil` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 370. Round

- **ID:** `vector.vector3.round`
- **Categoria:** Vetor
- **Finalidade:** Calcula `round` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector3 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Round` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 371. Snap

- **ID:** `vector.vector3.snap`
- **Categoria:** Vetor
- **Finalidade:** Calcula `snap` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Snap` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 372. Rotate

- **ID:** `vector.vector3.rotate`
- **Categoria:** Vetor
- **Finalidade:** Calcula `rotate` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Rotate` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 373. Inverse

- **ID:** `vector.vector3.inverse`
- **Categoria:** Vetor
- **Finalidade:** Calcula `inverse` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Inverse` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 374. Is Zero

- **ID:** `vector.vector3.is_zero`
- **Categoria:** Vetor
- **Finalidade:** Calcula `is zero` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector3 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Zero` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 375. Is Finite

- **ID:** `vector.vector3.is_finite`
- **Categoria:** Vetor
- **Finalidade:** Calcula `is finite` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector3 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Finite` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 376. Make

- **ID:** `vector.vector3.make`
- **Categoria:** Vetor
- **Finalidade:** Calcula `make` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Make` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 377. Split

- **ID:** `vector.vector3.split`
- **Categoria:** Vetor
- **Finalidade:** Calcula `split` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Split` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 378. With X

- **ID:** `vector.vector3.with_x`
- **Categoria:** Vetor
- **Finalidade:** Calcula `with x` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `With X` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 379. With Y

- **ID:** `vector.vector3.with_y`
- **Categoria:** Vetor
- **Finalidade:** Calcula `with y` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `With Y` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 380. With Z

- **ID:** `vector.vector3.with_z`
- **Categoria:** Vetor
- **Finalidade:** Calcula `with z` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `With Z` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 381. With W

- **ID:** `vector.vector3.with_w`
- **Categoria:** Vetor
- **Finalidade:** Calcula `with w` para valores do tipo vector3; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector3; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `With W` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 382. Add

- **ID:** `vector.vector4.add`
- **Categoria:** Vetor
- **Finalidade:** Calcula `add` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Add` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 383. Subtract

- **ID:** `vector.vector4.subtract`
- **Categoria:** Vetor
- **Finalidade:** Calcula `subtract` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Subtract` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 384. Multiply

- **ID:** `vector.vector4.multiply`
- **Categoria:** Vetor
- **Finalidade:** Calcula `multiply` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Multiply` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 385. Divide

- **ID:** `vector.vector4.divide`
- **Categoria:** Vetor
- **Finalidade:** Calcula `divide` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Divide` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 386. Scale

- **ID:** `vector.vector4.scale`
- **Categoria:** Vetor
- **Finalidade:** Calcula `scale` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Scale` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 387. Normalize

- **ID:** `vector.vector4.normalize`
- **Categoria:** Vetor
- **Finalidade:** Calcula `normalize` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector4 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Normalize` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 388. Length

- **ID:** `vector.vector4.length`
- **Categoria:** Vetor
- **Finalidade:** Calcula `length` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector4 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Length` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 389. Length Squared

- **ID:** `vector.vector4.length_squared`
- **Categoria:** Vetor
- **Finalidade:** Calcula `length squared` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Length Squared` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 390. Distance

- **ID:** `vector.vector4.distance`
- **Categoria:** Vetor
- **Finalidade:** Calcula `distance` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Distance` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 391. Dot

- **ID:** `vector.vector4.dot`
- **Categoria:** Vetor
- **Finalidade:** Calcula `dot` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Dot` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 392. Cross

- **ID:** `vector.vector4.cross`
- **Categoria:** Vetor
- **Finalidade:** Calcula `cross` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Cross` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 393. Lerp

- **ID:** `vector.vector4.lerp`
- **Categoria:** Vetor
- **Finalidade:** Calcula `lerp` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Lerp` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 394. Move Towards

- **ID:** `vector.vector4.move_towards`
- **Categoria:** Vetor
- **Finalidade:** Calcula `move towards` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Move Towards` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 395. Reflect

- **ID:** `vector.vector4.reflect`
- **Categoria:** Vetor
- **Finalidade:** Calcula `reflect` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Reflect` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 396. Project

- **ID:** `vector.vector4.project`
- **Categoria:** Vetor
- **Finalidade:** Calcula `project` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Project` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 397. Angle

- **ID:** `vector.vector4.angle`
- **Categoria:** Vetor
- **Finalidade:** Calcula `angle` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Angle` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 398. Clamp Length

- **ID:** `vector.vector4.clamp_length`
- **Categoria:** Vetor
- **Finalidade:** Calcula `clamp length` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Clamp Length` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 399. Minimum

- **ID:** `vector.vector4.minimum`
- **Categoria:** Vetor
- **Finalidade:** Calcula `minimum` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Minimum` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 400. Maximum

- **ID:** `vector.vector4.maximum`
- **Categoria:** Vetor
- **Finalidade:** Calcula `maximum` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Maximum` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 401. Absolute

- **ID:** `vector.vector4.absolute`
- **Categoria:** Vetor
- **Finalidade:** Calcula `absolute` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector4 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Absolute` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 402. Floor

- **ID:** `vector.vector4.floor`
- **Categoria:** Vetor
- **Finalidade:** Calcula `floor` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector4 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Floor` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 403. Ceil

- **ID:** `vector.vector4.ceil`
- **Categoria:** Vetor
- **Finalidade:** Calcula `ceil` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector4 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Ceil` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 404. Round

- **ID:** `vector.vector4.round`
- **Categoria:** Vetor
- **Finalidade:** Calcula `round` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector4 de entrada.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Round` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 405. Snap

- **ID:** `vector.vector4.snap`
- **Categoria:** Vetor
- **Finalidade:** Calcula `snap` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Snap` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 406. Rotate

- **ID:** `vector.vector4.rotate`
- **Categoria:** Vetor
- **Finalidade:** Calcula `rotate` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Rotate` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 407. Inverse

- **ID:** `vector.vector4.inverse`
- **Categoria:** Vetor
- **Finalidade:** Calcula `inverse` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Inverse` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 408. Is Zero

- **ID:** `vector.vector4.is_zero`
- **Categoria:** Vetor
- **Finalidade:** Calcula `is zero` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector4 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Zero` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 409. Is Finite

- **ID:** `vector.vector4.is_finite`
- **Categoria:** Vetor
- **Finalidade:** Calcula `is finite` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `value`: valor vector4 que será testado.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Is Finite` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 410. Make

- **ID:** `vector.vector4.make`
- **Categoria:** Vetor
- **Finalidade:** Calcula `make` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Make` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 411. Split

- **ID:** `vector.vector4.split`
- **Categoria:** Vetor
- **Finalidade:** Calcula `split` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `Split` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 412. With X

- **ID:** `vector.vector4.with_x`
- **Categoria:** Vetor
- **Finalidade:** Calcula `with x` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `With X` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 413. With Y

- **ID:** `vector.vector4.with_y`
- **Categoria:** Vetor
- **Finalidade:** Calcula `with y` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `With Y` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 414. With Z

- **ID:** `vector.vector4.with_z`
- **Categoria:** Vetor
- **Finalidade:** Calcula `with z` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `With Z` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 415. With W

- **ID:** `vector.vector4.with_w`
- **Categoria:** Vetor
- **Finalidade:** Calcula `with w` para valores do tipo vector4; não modifica objetos da cena.
- **Entradas/alvo:** `a` e `b`: valores vector4; parâmetros adicionais aparecem quando a operação exige limite ou fator.
- **Saídas/efeito:** Retorna o cálculo tipado em `value`/`result`.
- **Exemplo:** Conecte constantes ou saídas anteriores a `With W` e use o resultado em `Debug Info` ou em outro bloco compatível.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 416. Make Rgb

- **ID:** `color.make_rgb`
- **Categoria:** Cor
- **Finalidade:** Executa a operação registrada `color.make_rgb` (make rgb) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Make Rgb` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 417. Make Rgba

- **ID:** `color.make_rgba`
- **Categoria:** Cor
- **Finalidade:** Executa a operação registrada `color.make_rgba` (make rgba) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Make Rgba` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 418. Split Rgb

- **ID:** `color.split_rgb`
- **Categoria:** Cor
- **Finalidade:** Executa a operação registrada `color.split_rgb` (split rgb) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Split Rgb` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 419. Split Rgba

- **ID:** `color.split_rgba`
- **Categoria:** Cor
- **Finalidade:** Executa a operação registrada `color.split_rgba` (split rgba) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Split Rgba` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 420. From Hex

- **ID:** `color.from_hex`
- **Categoria:** Cor
- **Finalidade:** Executa a operação registrada `color.from_hex` (from hex) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `From Hex` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 421. To Hex

- **ID:** `color.to_hex`
- **Categoria:** Cor
- **Finalidade:** Executa a operação registrada `color.to_hex` (to hex) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `To Hex` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 422. From Hsv

- **ID:** `color.from_hsv`
- **Categoria:** Cor
- **Finalidade:** Executa a operação registrada `color.from_hsv` (from hsv) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `From Hsv` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 423. To Hsv

- **ID:** `color.to_hsv`
- **Categoria:** Cor
- **Finalidade:** Executa a operação registrada `color.to_hsv` (to hsv) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `To Hsv` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 424. Lerp

- **ID:** `color.lerp`
- **Categoria:** Cor
- **Finalidade:** Executa a operação registrada `color.lerp` (lerp) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Lerp` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 425. Blend Add

- **ID:** `color.blend_add`
- **Categoria:** Cor
- **Finalidade:** Executa a operação registrada `color.blend_add` (blend add) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Blend Add` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 426. Blend Multiply

- **ID:** `color.blend_multiply`
- **Categoria:** Cor
- **Finalidade:** Executa a operação registrada `color.blend_multiply` (blend multiply) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Blend Multiply` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 427. Blend Screen

- **ID:** `color.blend_screen`
- **Categoria:** Cor
- **Finalidade:** Executa a operação registrada `color.blend_screen` (blend screen) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Blend Screen` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 428. Blend Overlay

- **ID:** `color.blend_overlay`
- **Categoria:** Cor
- **Finalidade:** Executa a operação registrada `color.blend_overlay` (blend overlay) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Blend Overlay` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 429. Lighten

- **ID:** `color.lighten`
- **Categoria:** Cor
- **Finalidade:** Executa a operação registrada `color.lighten` (lighten) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Lighten` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 430. Darken

- **ID:** `color.darken`
- **Categoria:** Cor
- **Finalidade:** Executa a operação registrada `color.darken` (darken) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Darken` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 431. Saturate

- **ID:** `color.saturate`
- **Categoria:** Cor
- **Finalidade:** Executa a operação registrada `color.saturate` (saturate) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Saturate` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 432. Desaturate

- **ID:** `color.desaturate`
- **Categoria:** Cor
- **Finalidade:** Executa a operação registrada `color.desaturate` (desaturate) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Desaturate` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 433. Invert

- **ID:** `color.invert`
- **Categoria:** Cor
- **Finalidade:** Executa a operação registrada `color.invert` (invert) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Invert` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 434. Grayscale

- **ID:** `color.grayscale`
- **Categoria:** Cor
- **Finalidade:** Executa a operação registrada `color.grayscale` (grayscale) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Grayscale` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 435. Alpha

- **ID:** `color.alpha`
- **Categoria:** Cor
- **Finalidade:** Executa a operação registrada `color.alpha` (alpha) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Alpha` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 436. With Alpha

- **ID:** `color.with_alpha`
- **Categoria:** Cor
- **Finalidade:** Executa a operação registrada `color.with_alpha` (with alpha) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `With Alpha` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 437. Luminance

- **ID:** `color.luminance`
- **Categoria:** Cor
- **Finalidade:** Executa a operação registrada `color.luminance` (luminance) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Luminance` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 438. Contrast

- **ID:** `color.contrast`
- **Categoria:** Cor
- **Finalidade:** Executa a operação registrada `color.contrast` (contrast) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Contrast` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 439. Temperature

- **ID:** `color.temperature`
- **Categoria:** Cor
- **Finalidade:** Executa a operação registrada `color.temperature` (temperature) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Temperature` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 440. Append

- **ID:** `text.append`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.append` (append) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Append` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 441. Prepend

- **ID:** `text.prepend`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.prepend` (prepend) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Prepend` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 442. Join

- **ID:** `text.join`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.join` (join) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Join` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 443. Split

- **ID:** `text.split`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.split` (split) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Split` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 444. Replace

- **ID:** `text.replace`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.replace` (replace) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Replace` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 445. Replace First

- **ID:** `text.replace_first`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.replace_first` (replace first) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Replace First` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 446. Contains

- **ID:** `text.contains`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.contains` (contains) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Contains` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 447. Starts With

- **ID:** `text.starts_with`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.starts_with` (starts with) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Starts With` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 448. Ends With

- **ID:** `text.ends_with`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.ends_with` (ends with) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Ends With` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 449. Equals Ignore Case

- **ID:** `text.equals_ignore_case`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.equals_ignore_case` (equals ignore case) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Equals Ignore Case` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 450. Uppercase

- **ID:** `text.uppercase`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.uppercase` (uppercase) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Uppercase` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 451. Lowercase

- **ID:** `text.lowercase`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.lowercase` (lowercase) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Lowercase` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 452. Capitalize

- **ID:** `text.capitalize`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.capitalize` (capitalize) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Capitalize` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 453. Trim

- **ID:** `text.trim`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.trim` (trim) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Trim` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 454. Trim Start

- **ID:** `text.trim_start`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.trim_start` (trim start) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Trim Start` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 455. Trim End

- **ID:** `text.trim_end`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.trim_end` (trim end) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Trim End` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 456. Substring

- **ID:** `text.substring`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.substring` (substring) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Substring` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 457. Character At

- **ID:** `text.character_at`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.character_at` (character at) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Character At` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 458. Length

- **ID:** `text.length`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.length` (length) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Length` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 459. Is Empty

- **ID:** `text.is_empty`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.is_empty` (is empty) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Is Empty` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 460. Is Blank

- **ID:** `text.is_blank`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.is_blank` (is blank) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Is Blank` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 461. Pad Start

- **ID:** `text.pad_start`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.pad_start` (pad start) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Pad Start` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 462. Pad End

- **ID:** `text.pad_end`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.pad_end` (pad end) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Pad End` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 463. Repeat

- **ID:** `text.repeat`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.repeat` (repeat) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Repeat` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 464. Reverse

- **ID:** `text.reverse`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.reverse` (reverse) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Reverse` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 465. Format

- **ID:** `text.format`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.format` (format) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Format` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 466. Number To Text

- **ID:** `text.number_to_text`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.number_to_text` (number to text) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Number To Text` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 467. Bool To Text

- **ID:** `text.bool_to_text`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.bool_to_text` (bool to text) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Bool To Text` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 468. Vector To Text

- **ID:** `text.vector_to_text`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.vector_to_text` (vector to text) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Vector To Text` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 469. Parse Number

- **ID:** `text.parse_number`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.parse_number` (parse number) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Parse Number` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 470. Parse Bool

- **ID:** `text.parse_bool`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.parse_bool` (parse bool) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Parse Bool` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 471. Regex Matches

- **ID:** `text.regex_matches`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.regex_matches` (regex matches) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Regex Matches` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 472. Regex Find

- **ID:** `text.regex_find`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.regex_find` (regex find) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Regex Find` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 473. Regex Replace

- **ID:** `text.regex_replace`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.regex_replace` (regex replace) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Regex Replace` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 474. Lines

- **ID:** `text.lines`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.lines` (lines) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Lines` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 475. Words

- **ID:** `text.words`
- **Categoria:** Texto
- **Finalidade:** Executa a operação registrada `text.words` (words) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Words` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 476. Find By Name

- **ID:** `object.find_by_name`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `find by name` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Find By Name`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 477. Find By Tag

- **ID:** `object.find_by_tag`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `find by tag` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Find By Tag`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 478. Find By Id

- **ID:** `object.find_by_id`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `find by id` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Find By Id`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 479. Create

- **ID:** `object.create`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `create` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Create`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 480. Clone

- **ID:** `object.clone`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `clone` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Clone`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 481. Destroy

- **ID:** `object.destroy`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `destroy` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Destroy`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 482. Enable

- **ID:** `object.enable`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `enable` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Enable`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 483. Disable

- **ID:** `object.disable`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `disable` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Disable`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 484. Toggle Enabled

- **ID:** `object.toggle_enabled`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `toggle enabled` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Toggle Enabled`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 485. Set Name

- **ID:** `object.set_name`
- **Categoria:** Objeto
- **Finalidade:** Define `name` no sistema de objeto da cena do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de name, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza name no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Name`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 486. Get Name

- **ID:** `object.get_name`
- **Categoria:** Objeto
- **Finalidade:** Consulta `name` no sistema de objeto da cena sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna name em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Name → Debug Info` mostra o valor atual de name.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 487. Set Parent

- **ID:** `object.set_parent`
- **Categoria:** Objeto
- **Finalidade:** Define `parent` no sistema de objeto da cena do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de parent, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza parent no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Parent`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 488. Get Parent

- **ID:** `object.get_parent`
- **Categoria:** Objeto
- **Finalidade:** Consulta `parent` no sistema de objeto da cena sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna parent em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Parent → Debug Info` mostra o valor atual de parent.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 489. Add Child

- **ID:** `object.add_child`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `add child` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Add Child`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 490. Remove Child

- **ID:** `object.remove_child`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `remove child` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Remove Child`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 491. Get Child

- **ID:** `object.get_child`
- **Categoria:** Objeto
- **Finalidade:** Consulta `child` no sistema de objeto da cena sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna child em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Child → Debug Info` mostra o valor atual de child.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 492. Child Count

- **ID:** `object.child_count`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `child count` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Child Count`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 493. Add Tag

- **ID:** `object.add_tag`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `add tag` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Add Tag`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 494. Remove Tag

- **ID:** `object.remove_tag`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `remove tag` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Remove Tag`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 495. Has Tag

- **ID:** `object.has_tag`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `has tag` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Has Tag`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 496. Send Event

- **ID:** `object.send_event`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `send event` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Send Event`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 497. Send Event Bool

- **ID:** `object.send_event_bool`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `send event bool` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Send Event Bool`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 498. Send Event Number

- **ID:** `object.send_event_number`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `send event number` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Send Event Number`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 499. Send Event Text

- **ID:** `object.send_event_text`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `send event text` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Send Event Text`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 500. Get Component

- **ID:** `object.get_component`
- **Categoria:** Objeto
- **Finalidade:** Consulta `component` no sistema de objeto da cena sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna component em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Component → Debug Info` mostra o valor atual de component.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 501. Has Component

- **ID:** `object.has_component`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `has component` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Has Component`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 502. Add Component

- **ID:** `object.add_component`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `add component` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Add Component`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 503. Remove Component

- **ID:** `object.remove_component`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `remove component` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Remove Component`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 504. Set Layer

- **ID:** `object.set_layer`
- **Categoria:** Objeto
- **Finalidade:** Define `layer` no sistema de objeto da cena do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de layer, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza layer no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Layer`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 505. Get Layer

- **ID:** `object.get_layer`
- **Categoria:** Objeto
- **Finalidade:** Consulta `layer` no sistema de objeto da cena sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna layer em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Layer → Debug Info` mostra o valor atual de layer.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 506. Set Visible

- **ID:** `object.set_visible`
- **Categoria:** Objeto
- **Finalidade:** Define `visible` no sistema de objeto da cena do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de visible, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza visible no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Visible`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 507. Is Visible

- **ID:** `object.is_visible`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `is visible` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Is Visible`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 508. Set Static

- **ID:** `object.set_static`
- **Categoria:** Objeto
- **Finalidade:** Define `static` no sistema de objeto da cena do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de static, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza static no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Static`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 509. Is Static

- **ID:** `object.is_static`
- **Categoria:** Objeto
- **Finalidade:** Executa a ação `is static` no sistema de objeto da cena usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Is Static`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 510. Create

- **ID:** `list.number.create`
- **Categoria:** Listas
- **Finalidade:** Executa `create` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Create → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 511. Add

- **ID:** `list.number.add`
- **Categoria:** Listas
- **Finalidade:** Executa `add` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Add → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 512. Insert

- **ID:** `list.number.insert`
- **Categoria:** Listas
- **Finalidade:** Executa `insert` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Insert → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 513. Set

- **ID:** `list.number.set`
- **Categoria:** Listas
- **Finalidade:** Executa `set` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Set → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 514. Get

- **ID:** `list.number.get`
- **Categoria:** Listas
- **Finalidade:** Executa `get` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Get → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 515. First

- **ID:** `list.number.first`
- **Categoria:** Listas
- **Finalidade:** Executa `first` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → First → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 516. Last

- **ID:** `list.number.last`
- **Categoria:** Listas
- **Finalidade:** Executa `last` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Last → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 517. Remove

- **ID:** `list.number.remove`
- **Categoria:** Listas
- **Finalidade:** Executa `remove` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Remove → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 518. Remove At

- **ID:** `list.number.remove_at`
- **Categoria:** Listas
- **Finalidade:** Executa `remove at` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Remove At → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 519. Clear

- **ID:** `list.number.clear`
- **Categoria:** Listas
- **Finalidade:** Executa `clear` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Clear → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 520. Contains

- **ID:** `list.number.contains`
- **Categoria:** Listas
- **Finalidade:** Executa `contains` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Contains → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 521. Index Of

- **ID:** `list.number.index_of`
- **Categoria:** Listas
- **Finalidade:** Executa `index of` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Index Of → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 522. Last Index Of

- **ID:** `list.number.last_index_of`
- **Categoria:** Listas
- **Finalidade:** Executa `last index of` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Last Index Of → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 523. Count

- **ID:** `list.number.count`
- **Categoria:** Listas
- **Finalidade:** Executa `count` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Count → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 524. Is Empty

- **ID:** `list.number.is_empty`
- **Categoria:** Listas
- **Finalidade:** Executa `is empty` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Is Empty → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 525. Reverse

- **ID:** `list.number.reverse`
- **Categoria:** Listas
- **Finalidade:** Executa `reverse` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Reverse → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 526. Shuffle

- **ID:** `list.number.shuffle`
- **Categoria:** Listas
- **Finalidade:** Executa `shuffle` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Shuffle → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 527. Sort

- **ID:** `list.number.sort`
- **Categoria:** Listas
- **Finalidade:** Executa `sort` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Sort → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 528. Distinct

- **ID:** `list.number.distinct`
- **Categoria:** Listas
- **Finalidade:** Executa `distinct` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Distinct → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 529. Slice

- **ID:** `list.number.slice`
- **Categoria:** Listas
- **Finalidade:** Executa `slice` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Slice → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 530. Concat

- **ID:** `list.number.concat`
- **Categoria:** Listas
- **Finalidade:** Executa `concat` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Concat → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 531. Filter

- **ID:** `list.number.filter`
- **Categoria:** Listas
- **Finalidade:** Executa `filter` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Filter → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 532. Map

- **ID:** `list.number.map`
- **Categoria:** Listas
- **Finalidade:** Executa `map` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Map → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 533. Reduce

- **ID:** `list.number.reduce`
- **Categoria:** Listas
- **Finalidade:** Executa `reduce` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Reduce → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 534. Random

- **ID:** `list.number.random`
- **Categoria:** Listas
- **Finalidade:** Executa `random` em uma lista de number.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Number Create → Random → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 535. Create

- **ID:** `list.text.create`
- **Categoria:** Listas
- **Finalidade:** Executa `create` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Create → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 536. Add

- **ID:** `list.text.add`
- **Categoria:** Listas
- **Finalidade:** Executa `add` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Add → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 537. Insert

- **ID:** `list.text.insert`
- **Categoria:** Listas
- **Finalidade:** Executa `insert` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Insert → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 538. Set

- **ID:** `list.text.set`
- **Categoria:** Listas
- **Finalidade:** Executa `set` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Set → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 539. Get

- **ID:** `list.text.get`
- **Categoria:** Listas
- **Finalidade:** Executa `get` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Get → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 540. First

- **ID:** `list.text.first`
- **Categoria:** Listas
- **Finalidade:** Executa `first` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → First → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 541. Last

- **ID:** `list.text.last`
- **Categoria:** Listas
- **Finalidade:** Executa `last` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Last → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 542. Remove

- **ID:** `list.text.remove`
- **Categoria:** Listas
- **Finalidade:** Executa `remove` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Remove → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 543. Remove At

- **ID:** `list.text.remove_at`
- **Categoria:** Listas
- **Finalidade:** Executa `remove at` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Remove At → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 544. Clear

- **ID:** `list.text.clear`
- **Categoria:** Listas
- **Finalidade:** Executa `clear` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Clear → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 545. Contains

- **ID:** `list.text.contains`
- **Categoria:** Listas
- **Finalidade:** Executa `contains` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Contains → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 546. Index Of

- **ID:** `list.text.index_of`
- **Categoria:** Listas
- **Finalidade:** Executa `index of` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Index Of → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 547. Last Index Of

- **ID:** `list.text.last_index_of`
- **Categoria:** Listas
- **Finalidade:** Executa `last index of` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Last Index Of → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 548. Count

- **ID:** `list.text.count`
- **Categoria:** Listas
- **Finalidade:** Executa `count` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Count → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 549. Is Empty

- **ID:** `list.text.is_empty`
- **Categoria:** Listas
- **Finalidade:** Executa `is empty` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Is Empty → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 550. Reverse

- **ID:** `list.text.reverse`
- **Categoria:** Listas
- **Finalidade:** Executa `reverse` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Reverse → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 551. Shuffle

- **ID:** `list.text.shuffle`
- **Categoria:** Listas
- **Finalidade:** Executa `shuffle` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Shuffle → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 552. Sort

- **ID:** `list.text.sort`
- **Categoria:** Listas
- **Finalidade:** Executa `sort` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Sort → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 553. Distinct

- **ID:** `list.text.distinct`
- **Categoria:** Listas
- **Finalidade:** Executa `distinct` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Distinct → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 554. Slice

- **ID:** `list.text.slice`
- **Categoria:** Listas
- **Finalidade:** Executa `slice` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Slice → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 555. Concat

- **ID:** `list.text.concat`
- **Categoria:** Listas
- **Finalidade:** Executa `concat` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Concat → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 556. Filter

- **ID:** `list.text.filter`
- **Categoria:** Listas
- **Finalidade:** Executa `filter` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Filter → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 557. Map

- **ID:** `list.text.map`
- **Categoria:** Listas
- **Finalidade:** Executa `map` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Map → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 558. Reduce

- **ID:** `list.text.reduce`
- **Categoria:** Listas
- **Finalidade:** Executa `reduce` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Reduce → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 559. Random

- **ID:** `list.text.random`
- **Categoria:** Listas
- **Finalidade:** Executa `random` em uma lista de text.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Text Create → Random → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 560. Create

- **ID:** `list.bool.create`
- **Categoria:** Listas
- **Finalidade:** Executa `create` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Create → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 561. Add

- **ID:** `list.bool.add`
- **Categoria:** Listas
- **Finalidade:** Executa `add` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Add → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 562. Insert

- **ID:** `list.bool.insert`
- **Categoria:** Listas
- **Finalidade:** Executa `insert` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Insert → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 563. Set

- **ID:** `list.bool.set`
- **Categoria:** Listas
- **Finalidade:** Executa `set` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Set → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 564. Get

- **ID:** `list.bool.get`
- **Categoria:** Listas
- **Finalidade:** Executa `get` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Get → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 565. First

- **ID:** `list.bool.first`
- **Categoria:** Listas
- **Finalidade:** Executa `first` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → First → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 566. Last

- **ID:** `list.bool.last`
- **Categoria:** Listas
- **Finalidade:** Executa `last` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Last → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 567. Remove

- **ID:** `list.bool.remove`
- **Categoria:** Listas
- **Finalidade:** Executa `remove` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Remove → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 568. Remove At

- **ID:** `list.bool.remove_at`
- **Categoria:** Listas
- **Finalidade:** Executa `remove at` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Remove At → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 569. Clear

- **ID:** `list.bool.clear`
- **Categoria:** Listas
- **Finalidade:** Executa `clear` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Clear → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 570. Contains

- **ID:** `list.bool.contains`
- **Categoria:** Listas
- **Finalidade:** Executa `contains` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Contains → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 571. Index Of

- **ID:** `list.bool.index_of`
- **Categoria:** Listas
- **Finalidade:** Executa `index of` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Index Of → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 572. Last Index Of

- **ID:** `list.bool.last_index_of`
- **Categoria:** Listas
- **Finalidade:** Executa `last index of` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Last Index Of → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 573. Count

- **ID:** `list.bool.count`
- **Categoria:** Listas
- **Finalidade:** Executa `count` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Count → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 574. Is Empty

- **ID:** `list.bool.is_empty`
- **Categoria:** Listas
- **Finalidade:** Executa `is empty` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Is Empty → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 575. Reverse

- **ID:** `list.bool.reverse`
- **Categoria:** Listas
- **Finalidade:** Executa `reverse` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Reverse → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 576. Shuffle

- **ID:** `list.bool.shuffle`
- **Categoria:** Listas
- **Finalidade:** Executa `shuffle` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Shuffle → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 577. Sort

- **ID:** `list.bool.sort`
- **Categoria:** Listas
- **Finalidade:** Executa `sort` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Sort → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 578. Distinct

- **ID:** `list.bool.distinct`
- **Categoria:** Listas
- **Finalidade:** Executa `distinct` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Distinct → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 579. Slice

- **ID:** `list.bool.slice`
- **Categoria:** Listas
- **Finalidade:** Executa `slice` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Slice → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 580. Concat

- **ID:** `list.bool.concat`
- **Categoria:** Listas
- **Finalidade:** Executa `concat` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Concat → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 581. Filter

- **ID:** `list.bool.filter`
- **Categoria:** Listas
- **Finalidade:** Executa `filter` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Filter → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 582. Map

- **ID:** `list.bool.map`
- **Categoria:** Listas
- **Finalidade:** Executa `map` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Map → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 583. Reduce

- **ID:** `list.bool.reduce`
- **Categoria:** Listas
- **Finalidade:** Executa `reduce` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Reduce → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 584. Random

- **ID:** `list.bool.random`
- **Categoria:** Listas
- **Finalidade:** Executa `random` em uma lista de bool.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Bool Create → Random → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 585. Create

- **ID:** `list.vector3.create`
- **Categoria:** Listas
- **Finalidade:** Executa `create` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Create → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 586. Add

- **ID:** `list.vector3.add`
- **Categoria:** Listas
- **Finalidade:** Executa `add` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Add → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 587. Insert

- **ID:** `list.vector3.insert`
- **Categoria:** Listas
- **Finalidade:** Executa `insert` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Insert → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 588. Set

- **ID:** `list.vector3.set`
- **Categoria:** Listas
- **Finalidade:** Executa `set` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Set → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 589. Get

- **ID:** `list.vector3.get`
- **Categoria:** Listas
- **Finalidade:** Executa `get` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Get → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 590. First

- **ID:** `list.vector3.first`
- **Categoria:** Listas
- **Finalidade:** Executa `first` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → First → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 591. Last

- **ID:** `list.vector3.last`
- **Categoria:** Listas
- **Finalidade:** Executa `last` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Last → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 592. Remove

- **ID:** `list.vector3.remove`
- **Categoria:** Listas
- **Finalidade:** Executa `remove` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Remove → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 593. Remove At

- **ID:** `list.vector3.remove_at`
- **Categoria:** Listas
- **Finalidade:** Executa `remove at` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Remove At → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 594. Clear

- **ID:** `list.vector3.clear`
- **Categoria:** Listas
- **Finalidade:** Executa `clear` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Clear → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 595. Contains

- **ID:** `list.vector3.contains`
- **Categoria:** Listas
- **Finalidade:** Executa `contains` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Contains → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 596. Index Of

- **ID:** `list.vector3.index_of`
- **Categoria:** Listas
- **Finalidade:** Executa `index of` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Index Of → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 597. Last Index Of

- **ID:** `list.vector3.last_index_of`
- **Categoria:** Listas
- **Finalidade:** Executa `last index of` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Last Index Of → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 598. Count

- **ID:** `list.vector3.count`
- **Categoria:** Listas
- **Finalidade:** Executa `count` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Count → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 599. Is Empty

- **ID:** `list.vector3.is_empty`
- **Categoria:** Listas
- **Finalidade:** Executa `is empty` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Is Empty → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 600. Reverse

- **ID:** `list.vector3.reverse`
- **Categoria:** Listas
- **Finalidade:** Executa `reverse` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Reverse → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 601. Shuffle

- **ID:** `list.vector3.shuffle`
- **Categoria:** Listas
- **Finalidade:** Executa `shuffle` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Shuffle → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 602. Sort

- **ID:** `list.vector3.sort`
- **Categoria:** Listas
- **Finalidade:** Executa `sort` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Sort → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 603. Distinct

- **ID:** `list.vector3.distinct`
- **Categoria:** Listas
- **Finalidade:** Executa `distinct` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Distinct → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 604. Slice

- **ID:** `list.vector3.slice`
- **Categoria:** Listas
- **Finalidade:** Executa `slice` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Slice → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 605. Concat

- **ID:** `list.vector3.concat`
- **Categoria:** Listas
- **Finalidade:** Executa `concat` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Concat → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 606. Filter

- **ID:** `list.vector3.filter`
- **Categoria:** Listas
- **Finalidade:** Executa `filter` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Filter → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 607. Map

- **ID:** `list.vector3.map`
- **Categoria:** Listas
- **Finalidade:** Executa `map` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Map → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 608. Reduce

- **ID:** `list.vector3.reduce`
- **Categoria:** Listas
- **Finalidade:** Executa `reduce` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Reduce → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 609. Random

- **ID:** `list.vector3.random`
- **Categoria:** Listas
- **Finalidade:** Executa `random` em uma lista de vector3.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Vector3 Create → Random → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 610. Create

- **ID:** `list.object.create`
- **Categoria:** Listas
- **Finalidade:** Executa `create` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Create → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 611. Add

- **ID:** `list.object.add`
- **Categoria:** Listas
- **Finalidade:** Executa `add` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Add → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 612. Insert

- **ID:** `list.object.insert`
- **Categoria:** Listas
- **Finalidade:** Executa `insert` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Insert → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 613. Set

- **ID:** `list.object.set`
- **Categoria:** Listas
- **Finalidade:** Executa `set` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Set → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 614. Get

- **ID:** `list.object.get`
- **Categoria:** Listas
- **Finalidade:** Executa `get` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Get → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 615. First

- **ID:** `list.object.first`
- **Categoria:** Listas
- **Finalidade:** Executa `first` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → First → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 616. Last

- **ID:** `list.object.last`
- **Categoria:** Listas
- **Finalidade:** Executa `last` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Last → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 617. Remove

- **ID:** `list.object.remove`
- **Categoria:** Listas
- **Finalidade:** Executa `remove` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Remove → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 618. Remove At

- **ID:** `list.object.remove_at`
- **Categoria:** Listas
- **Finalidade:** Executa `remove at` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Remove At → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 619. Clear

- **ID:** `list.object.clear`
- **Categoria:** Listas
- **Finalidade:** Executa `clear` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Clear → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 620. Contains

- **ID:** `list.object.contains`
- **Categoria:** Listas
- **Finalidade:** Executa `contains` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Contains → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 621. Index Of

- **ID:** `list.object.index_of`
- **Categoria:** Listas
- **Finalidade:** Executa `index of` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Index Of → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 622. Last Index Of

- **ID:** `list.object.last_index_of`
- **Categoria:** Listas
- **Finalidade:** Executa `last index of` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Last Index Of → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 623. Count

- **ID:** `list.object.count`
- **Categoria:** Listas
- **Finalidade:** Executa `count` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Count → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 624. Is Empty

- **ID:** `list.object.is_empty`
- **Categoria:** Listas
- **Finalidade:** Executa `is empty` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Is Empty → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 625. Reverse

- **ID:** `list.object.reverse`
- **Categoria:** Listas
- **Finalidade:** Executa `reverse` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Reverse → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 626. Shuffle

- **ID:** `list.object.shuffle`
- **Categoria:** Listas
- **Finalidade:** Executa `shuffle` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Shuffle → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 627. Sort

- **ID:** `list.object.sort`
- **Categoria:** Listas
- **Finalidade:** Executa `sort` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Sort → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 628. Distinct

- **ID:** `list.object.distinct`
- **Categoria:** Listas
- **Finalidade:** Executa `distinct` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Distinct → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 629. Slice

- **ID:** `list.object.slice`
- **Categoria:** Listas
- **Finalidade:** Executa `slice` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Slice → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 630. Concat

- **ID:** `list.object.concat`
- **Categoria:** Listas
- **Finalidade:** Executa `concat` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Concat → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 631. Filter

- **ID:** `list.object.filter`
- **Categoria:** Listas
- **Finalidade:** Executa `filter` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Filter → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 632. Map

- **ID:** `list.object.map`
- **Categoria:** Listas
- **Finalidade:** Executa `map` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Map → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 633. Reduce

- **ID:** `list.object.reduce`
- **Categoria:** Listas
- **Finalidade:** Executa `reduce` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Reduce → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 634. Random

- **ID:** `list.object.random`
- **Categoria:** Listas
- **Finalidade:** Executa `random` em uma lista de object.
- **Entradas/alvo:** `list`: coleção de entrada; `value` e/ou `index` quando a operação precisar de um item ou posição.
- **Saídas/efeito:** Retorna a lista modificada, o item encontrado, índice, contagem ou booleano, conforme a operação.
- **Exemplo:** `List Object Create → Random → Debug Info` demonstra o resultado da operação.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 635. Get

- **ID:** `transform.position.get`
- **Categoria:** Transform
- **Finalidade:** Executa `get` sobre a position de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de position, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a position e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Get`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 636. Set

- **ID:** `transform.position.set`
- **Categoria:** Transform
- **Finalidade:** Executa `set` sobre a position de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de position, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a position e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Set`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 637. Add

- **ID:** `transform.position.add`
- **Categoria:** Transform
- **Finalidade:** Executa `add` sobre a position de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de position, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a position e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Add`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 638. Subtract

- **ID:** `transform.position.subtract`
- **Categoria:** Transform
- **Finalidade:** Executa `subtract` sobre a position de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de position, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a position e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Subtract`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 639. Multiply

- **ID:** `transform.position.multiply`
- **Categoria:** Transform
- **Finalidade:** Executa `multiply` sobre a position de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de position, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a position e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Multiply`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 640. Lerp

- **ID:** `transform.position.lerp`
- **Categoria:** Transform
- **Finalidade:** Executa `lerp` sobre a position de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de position, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a position e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Lerp`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 641. Move Towards

- **ID:** `transform.position.move_towards`
- **Categoria:** Transform
- **Finalidade:** Executa `move towards` sobre a position de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de position, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a position e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Move Towards`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 642. Local To World

- **ID:** `transform.position.local_to_world`
- **Categoria:** Transform
- **Finalidade:** Executa `local to world` sobre a position de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de position, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a position e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Local To World`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 643. World To Local

- **ID:** `transform.position.world_to_local`
- **Categoria:** Transform
- **Finalidade:** Executa `world to local` sobre a position de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de position, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a position e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → World To Local`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 644. Reset

- **ID:** `transform.position.reset`
- **Categoria:** Transform
- **Finalidade:** Executa `reset` sobre a position de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de position, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a position e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Reset`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 645. Look At

- **ID:** `transform.position.look_at`
- **Categoria:** Transform
- **Finalidade:** Executa `look at` sobre a position de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de position, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a position e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Look At`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 646. Face Direction

- **ID:** `transform.position.face_direction`
- **Categoria:** Transform
- **Finalidade:** Executa `face direction` sobre a position de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de position, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a position e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Face Direction`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 647. Get

- **ID:** `transform.rotation.get`
- **Categoria:** Transform
- **Finalidade:** Executa `get` sobre a rotation de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de rotation, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a rotation e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Get`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 648. Set

- **ID:** `transform.rotation.set`
- **Categoria:** Transform
- **Finalidade:** Executa `set` sobre a rotation de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de rotation, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a rotation e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Set`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 649. Add

- **ID:** `transform.rotation.add`
- **Categoria:** Transform
- **Finalidade:** Executa `add` sobre a rotation de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de rotation, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a rotation e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Add`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 650. Subtract

- **ID:** `transform.rotation.subtract`
- **Categoria:** Transform
- **Finalidade:** Executa `subtract` sobre a rotation de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de rotation, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a rotation e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Subtract`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 651. Multiply

- **ID:** `transform.rotation.multiply`
- **Categoria:** Transform
- **Finalidade:** Executa `multiply` sobre a rotation de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de rotation, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a rotation e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Multiply`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 652. Lerp

- **ID:** `transform.rotation.lerp`
- **Categoria:** Transform
- **Finalidade:** Executa `lerp` sobre a rotation de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de rotation, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a rotation e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Lerp`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 653. Move Towards

- **ID:** `transform.rotation.move_towards`
- **Categoria:** Transform
- **Finalidade:** Executa `move towards` sobre a rotation de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de rotation, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a rotation e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Move Towards`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 654. Local To World

- **ID:** `transform.rotation.local_to_world`
- **Categoria:** Transform
- **Finalidade:** Executa `local to world` sobre a rotation de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de rotation, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a rotation e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Local To World`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 655. World To Local

- **ID:** `transform.rotation.world_to_local`
- **Categoria:** Transform
- **Finalidade:** Executa `world to local` sobre a rotation de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de rotation, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a rotation e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → World To Local`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 656. Reset

- **ID:** `transform.rotation.reset`
- **Categoria:** Transform
- **Finalidade:** Executa `reset` sobre a rotation de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de rotation, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a rotation e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Reset`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 657. Look At

- **ID:** `transform.rotation.look_at`
- **Categoria:** Transform
- **Finalidade:** Executa `look at` sobre a rotation de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de rotation, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a rotation e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Look At`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 658. Face Direction

- **ID:** `transform.rotation.face_direction`
- **Categoria:** Transform
- **Finalidade:** Executa `face direction` sobre a rotation de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de rotation, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a rotation e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Face Direction`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 659. Get

- **ID:** `transform.scale.get`
- **Categoria:** Transform
- **Finalidade:** Executa `get` sobre a scale de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de scale, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a scale e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Get`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 660. Set

- **ID:** `transform.scale.set`
- **Categoria:** Transform
- **Finalidade:** Executa `set` sobre a scale de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de scale, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a scale e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Set`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 661. Add

- **ID:** `transform.scale.add`
- **Categoria:** Transform
- **Finalidade:** Executa `add` sobre a scale de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de scale, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a scale e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Add`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 662. Subtract

- **ID:** `transform.scale.subtract`
- **Categoria:** Transform
- **Finalidade:** Executa `subtract` sobre a scale de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de scale, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a scale e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Subtract`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 663. Multiply

- **ID:** `transform.scale.multiply`
- **Categoria:** Transform
- **Finalidade:** Executa `multiply` sobre a scale de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de scale, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a scale e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Multiply`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 664. Lerp

- **ID:** `transform.scale.lerp`
- **Categoria:** Transform
- **Finalidade:** Executa `lerp` sobre a scale de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de scale, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a scale e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Lerp`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 665. Move Towards

- **ID:** `transform.scale.move_towards`
- **Categoria:** Transform
- **Finalidade:** Executa `move towards` sobre a scale de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de scale, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a scale e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Move Towards`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 666. Local To World

- **ID:** `transform.scale.local_to_world`
- **Categoria:** Transform
- **Finalidade:** Executa `local to world` sobre a scale de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de scale, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a scale e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Local To World`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 667. World To Local

- **ID:** `transform.scale.world_to_local`
- **Categoria:** Transform
- **Finalidade:** Executa `world to local` sobre a scale de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de scale, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a scale e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → World To Local`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 668. Reset

- **ID:** `transform.scale.reset`
- **Categoria:** Transform
- **Finalidade:** Executa `reset` sobre a scale de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de scale, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a scale e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Reset`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 669. Look At

- **ID:** `transform.scale.look_at`
- **Categoria:** Transform
- **Finalidade:** Executa `look at` sobre a scale de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de scale, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a scale e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Look At`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 670. Face Direction

- **ID:** `transform.scale.face_direction`
- **Categoria:** Transform
- **Finalidade:** Executa `face direction` sobre a scale de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de scale, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a scale e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Face Direction`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 671. Girar no eixo Y

- **ID:** `transform.rotate.y`
- **Categoria:** Transform
- **Finalidade:** Executa `y` sobre a rotate de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de rotate, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a rotate e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Girar no eixo Y`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 672. Escala uniforme

- **ID:** `transform.scale.uniform`
- **Categoria:** Transform
- **Finalidade:** Executa `uniform` sobre a scale de um `Node2D`/`Node3D`.
- **Entradas/alvo:** `target_path`: nó da cena; valor de scale, destino ou fator conforme a operação.
- **Saídas/efeito:** Retorna ou modifica a scale e emite `flow` quando houver efeito na cena.
- **Exemplo:** `Update → Escala uniforme`, alvo `../Player`; conecte um Vector compatível ao pino de valor.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 673. Add Force

- **ID:** `physics.add_force`
- **Categoria:** Fisica
- **Finalidade:** Aplica uma força contínua ao corpo; use em atualizações de física para aceleração sustentada.
- **Entradas/alvo:** `target_path`: `RigidBody3D`; `force`: `Vector3`; `position` local é opcional.
- **Saídas/efeito:** Altera a velocidade física ao longo do tempo e emite `flow`.
- **Exemplo:** Empurre uma caixa: `Button Pressed → Add Force`, força `Vector3(0, 0, -40)`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 674. Add Impulse

- **ID:** `physics.add_impulse`
- **Categoria:** Fisica
- **Finalidade:** Aplica um impulso instantâneo ao corpo, ideal para impactos, explosões ou saltos físicos.
- **Entradas/alvo:** `target_path`: `RigidBody3D`; `impulse`: `Vector3`; `position` é opcional.
- **Saídas/efeito:** Muda imediatamente a velocidade linear e emite `flow`.
- **Exemplo:** Explosão: `Collision Enter → Add Impulse`, impulso calculado por `Direction × 12`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 675. Add Torque

- **ID:** `physics.add_torque`
- **Categoria:** Fisica
- **Finalidade:** Aplica força de rotação contínua a um corpo físico.
- **Entradas/alvo:** `target_path`: `RigidBody3D`; `torque`: `Vector3` por eixo.
- **Saídas/efeito:** Acelera a rotação do corpo e emite `flow`.
- **Exemplo:** Gire uma hélice: `Fixed Update → Add Torque`, torque `Vector3(0, 8, 0)`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 676. Set Velocity

- **ID:** `physics.set_velocity`
- **Categoria:** Fisica
- **Finalidade:** Define a velocidade linear do corpo em unidades por segundo.
- **Entradas/alvo:** `target_path`: corpo físico compatível; `value`: `Vector3(x, y, z)`.
- **Saídas/efeito:** Substitui a velocidade atual e emite `flow`.
- **Exemplo:** Lance um projétil: `Created → Set Velocity`, valor `Forward × 25`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 677. Get Velocity

- **ID:** `physics.get_velocity`
- **Categoria:** Fisica
- **Finalidade:** Lê a velocidade linear atual do corpo.
- **Entradas/alvo:** `target_path`: corpo físico compatível.
- **Saídas/efeito:** Retorna a velocidade como `Vector3` em `value`.
- **Exemplo:** Velocímetro: `Update → Get Velocity → Vector Length → UI Set Text`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 678. Set Angular Velocity

- **ID:** `physics.set_angular_velocity`
- **Categoria:** Fisica
- **Finalidade:** Define diretamente a velocidade de rotação de um corpo físico nos eixos X, Y e Z, em radianos por segundo.
- **Entradas/alvo:** `target_path`: `RigidBody3D`; `value`: `Vector3` com a rotação por eixo.
- **Saídas/efeito:** Atualiza `angular_velocity` e continua pelo pino `flow`.
- **Exemplo:** Faça uma plataforma girar: `Start → Set Angular Velocity`, alvo `../Plataforma`, valor `Vector3(0, 1.5, 0)` para girar no eixo Y.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 679. Get Angular Velocity

- **ID:** `physics.get_angular_velocity`
- **Categoria:** Fisica
- **Finalidade:** Lê a velocidade de rotação atual de um corpo físico nos eixos X, Y e Z.
- **Entradas/alvo:** `target_path`: `RigidBody3D` que será consultado.
- **Saídas/efeito:** Retorna um `Vector3` em `value`; não altera o corpo.
- **Exemplo:** Exiba a rotação de uma roda: `Update → Get Angular Velocity → Vector Length → UI Set Text`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 680. Set Mass

- **ID:** `physics.set_mass`
- **Categoria:** Fisica
- **Finalidade:** Define `mass` no sistema de física 3D do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de mass, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza mass no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Mass`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 681. Get Mass

- **ID:** `physics.get_mass`
- **Categoria:** Fisica
- **Finalidade:** Consulta `mass` no sistema de física 3D sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna mass em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Mass → Debug Info` mostra o valor atual de mass.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 682. Set Gravity

- **ID:** `physics.set_gravity`
- **Categoria:** Fisica
- **Finalidade:** Define `gravity` no sistema de física 3D do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de gravity, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza gravity no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Gravity`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 683. Use Gravity

- **ID:** `physics.use_gravity`
- **Categoria:** Fisica
- **Finalidade:** Executa a ação `use gravity` no sistema de física 3D usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Use Gravity`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 684. Set Kinematic

- **ID:** `physics.set_kinematic`
- **Categoria:** Fisica
- **Finalidade:** Define `kinematic` no sistema de física 3D do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de kinematic, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza kinematic no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Kinematic`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 685. Freeze Position

- **ID:** `physics.freeze_position`
- **Categoria:** Fisica
- **Finalidade:** Executa a ação `freeze position` no sistema de física 3D usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Freeze Position`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 686. Freeze Rotation

- **ID:** `physics.freeze_rotation`
- **Categoria:** Fisica
- **Finalidade:** Executa a ação `freeze rotation` no sistema de física 3D usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Freeze Rotation`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 687. Raycast

- **ID:** `physics.raycast`
- **Categoria:** Fisica
- **Finalidade:** Dispara um raio entre dois pontos para detectar o primeiro collider atingido.
- **Entradas/alvo:** `origin`, `direction`, `distance` e máscara de colisão opcional.
- **Saídas/efeito:** Retorna acerto, objeto, posição e normal; não altera a cena.
- **Exemplo:** Tiro: `Button Pressed → Raycast`; se `hit`, conecte a `Object Send Event` no objeto atingido.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 688. Sphere Cast

- **ID:** `physics.sphere_cast`
- **Categoria:** Fisica
- **Finalidade:** Executa a ação `sphere cast` no sistema de física 3D usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Sphere Cast`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 689. Box Cast

- **ID:** `physics.box_cast`
- **Categoria:** Fisica
- **Finalidade:** Executa a ação `box cast` no sistema de física 3D usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Box Cast`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 690. Overlap Sphere

- **ID:** `physics.overlap_sphere`
- **Categoria:** Fisica
- **Finalidade:** Executa a ação `overlap sphere` no sistema de física 3D usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Overlap Sphere`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 691. Overlap Box

- **ID:** `physics.overlap_box`
- **Categoria:** Fisica
- **Finalidade:** Executa a ação `overlap box` no sistema de física 3D usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Overlap Box`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 692. Ignore Collision

- **ID:** `physics.ignore_collision`
- **Categoria:** Fisica
- **Finalidade:** Executa a ação `ignore collision` no sistema de física 3D usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Ignore Collision`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 693. Set Friction

- **ID:** `physics.set_friction`
- **Categoria:** Fisica
- **Finalidade:** Define `friction` no sistema de física 3D do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de friction, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza friction no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Friction`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 694. Set Bounciness

- **ID:** `physics.set_bounciness`
- **Categoria:** Fisica
- **Finalidade:** Define `bounciness` no sistema de física 3D do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de bounciness, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza bounciness no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Bounciness`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 695. Wake Up

- **ID:** `physics.wake_up`
- **Categoria:** Fisica
- **Finalidade:** Executa a ação `wake up` no sistema de física 3D usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Wake Up`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 696. Sleep

- **ID:** `physics.sleep`
- **Categoria:** Fisica
- **Finalidade:** Executa a ação `sleep` no sistema de física 3D usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Sleep`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 697. Enter

- **ID:** `vehicle.enter`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `enter` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Enter`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 698. Exit

- **ID:** `vehicle.exit`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `exit` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Exit`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 699. Can Enter

- **ID:** `vehicle.can_enter`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `can enter` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Can Enter`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 700. Get Driver

- **ID:** `vehicle.get_driver`
- **Categoria:** Veiculo
- **Finalidade:** Consulta `driver` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna driver em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Driver → Debug Info` mostra o valor atual de driver.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 701. Open Door

- **ID:** `vehicle.open_door`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `open door` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Open Door`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 702. Close Door

- **ID:** `vehicle.close_door`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `close door` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Close Door`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 703. Toggle Door

- **ID:** `vehicle.toggle_door`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `toggle door` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Toggle Door`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 704. Open Hood

- **ID:** `vehicle.open_hood`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `open hood` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Open Hood`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 705. Close Hood

- **ID:** `vehicle.close_hood`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `close hood` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Close Hood`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 706. Open Trunk

- **ID:** `vehicle.open_trunk`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `open trunk` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Open Trunk`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 707. Close Trunk

- **ID:** `vehicle.close_trunk`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `close trunk` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Close Trunk`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 708. Set Throttle

- **ID:** `vehicle.set_throttle`
- **Categoria:** Veiculo
- **Finalidade:** Define `throttle` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de throttle, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza throttle no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Throttle`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 709. Get Throttle

- **ID:** `vehicle.get_throttle`
- **Categoria:** Veiculo
- **Finalidade:** Consulta `throttle` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna throttle em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Throttle → Debug Info` mostra o valor atual de throttle.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 710. Set Brake

- **ID:** `vehicle.set_brake`
- **Categoria:** Veiculo
- **Finalidade:** Define `brake` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de brake, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza brake no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Brake`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 711. Get Brake

- **ID:** `vehicle.get_brake`
- **Categoria:** Veiculo
- **Finalidade:** Consulta `brake` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna brake em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Brake → Debug Info` mostra o valor atual de brake.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 712. Set Handbrake

- **ID:** `vehicle.set_handbrake`
- **Categoria:** Veiculo
- **Finalidade:** Define `handbrake` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de handbrake, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza handbrake no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Handbrake`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 713. Set Steering

- **ID:** `vehicle.set_steering`
- **Categoria:** Veiculo
- **Finalidade:** Define `steering` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de steering, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza steering no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Steering`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 714. Get Steering

- **ID:** `vehicle.get_steering`
- **Categoria:** Veiculo
- **Finalidade:** Consulta `steering` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna steering em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Steering → Debug Info` mostra o valor atual de steering.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 715. Shift Up

- **ID:** `vehicle.shift_up`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `shift up` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Shift Up`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 716. Shift Down

- **ID:** `vehicle.shift_down`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `shift down` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Shift Down`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 717. Set Gear

- **ID:** `vehicle.set_gear`
- **Categoria:** Veiculo
- **Finalidade:** Define `gear` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de gear, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza gear no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Gear`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 718. Get Gear

- **ID:** `vehicle.get_gear`
- **Categoria:** Veiculo
- **Finalidade:** Consulta `gear` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna gear em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Gear → Debug Info` mostra o valor atual de gear.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 719. Get Speed

- **ID:** `vehicle.get_speed`
- **Categoria:** Veiculo
- **Finalidade:** Consulta `speed` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna speed em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Speed → Debug Info` mostra o valor atual de speed.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 720. Get Rpm

- **ID:** `vehicle.get_rpm`
- **Categoria:** Veiculo
- **Finalidade:** Consulta `rpm` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna rpm em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Rpm → Debug Info` mostra o valor atual de rpm.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 721. Get Wheel Speed

- **ID:** `vehicle.get_wheel_speed`
- **Categoria:** Veiculo
- **Finalidade:** Consulta `wheel speed` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna wheel speed em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Wheel Speed → Debug Info` mostra o valor atual de wheel speed.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 722. Get Slip Ratio

- **ID:** `vehicle.get_slip_ratio`
- **Categoria:** Veiculo
- **Finalidade:** Consulta `slip ratio` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna slip ratio em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Slip Ratio → Debug Info` mostra o valor atual de slip ratio.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 723. Get Lateral Slip

- **ID:** `vehicle.get_lateral_slip`
- **Categoria:** Veiculo
- **Finalidade:** Consulta `lateral slip` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna lateral slip em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Lateral Slip → Debug Info` mostra o valor atual de lateral slip.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 724. Set Mass

- **ID:** `vehicle.set_mass`
- **Categoria:** Veiculo
- **Finalidade:** Define `mass` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de mass, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza mass no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Mass`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 725. Set Engine Power

- **ID:** `vehicle.set_engine_power`
- **Categoria:** Veiculo
- **Finalidade:** Define `engine power` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de engine power, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza engine power no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Engine Power`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 726. Set Max Torque

- **ID:** `vehicle.set_max_torque`
- **Categoria:** Veiculo
- **Finalidade:** Define `max torque` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de max torque, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza max torque no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Max Torque`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 727. Set Redline Rpm

- **ID:** `vehicle.set_redline_rpm`
- **Categoria:** Veiculo
- **Finalidade:** Define `redline rpm` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de redline rpm, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza redline rpm no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Redline Rpm`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 728. Set Top Speed

- **ID:** `vehicle.set_top_speed`
- **Categoria:** Veiculo
- **Finalidade:** Define `top speed` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de top speed, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza top speed no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Top Speed`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 729. Set Drive Type

- **ID:** `vehicle.set_drive_type`
- **Categoria:** Veiculo
- **Finalidade:** Define `drive type` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de drive type, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza drive type no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Drive Type`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 730. Set Gear Ratios

- **ID:** `vehicle.set_gear_ratios`
- **Categoria:** Veiculo
- **Finalidade:** Define `gear ratios` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de gear ratios, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza gear ratios no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Gear Ratios`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 731. Set Final Drive

- **ID:** `vehicle.set_final_drive`
- **Categoria:** Veiculo
- **Finalidade:** Define `final drive` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de final drive, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza final drive no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Final Drive`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 732. Set Drivetrain Efficiency

- **ID:** `vehicle.set_drivetrain_efficiency`
- **Categoria:** Veiculo
- **Finalidade:** Define `drivetrain efficiency` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de drivetrain efficiency, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza drivetrain efficiency no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Drivetrain Efficiency`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 733. Set Tire Grip

- **ID:** `vehicle.set_tire_grip`
- **Categoria:** Veiculo
- **Finalidade:** Define `tire grip` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de tire grip, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza tire grip no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Tire Grip`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 734. Set Lateral Grip

- **ID:** `vehicle.set_lateral_grip`
- **Categoria:** Veiculo
- **Finalidade:** Define `lateral grip` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de lateral grip, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza lateral grip no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Lateral Grip`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 735. Set Traction Control

- **ID:** `vehicle.set_traction_control`
- **Categoria:** Veiculo
- **Finalidade:** Define `traction control` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de traction control, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza traction control no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Traction Control`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 736. Set Abs

- **ID:** `vehicle.set_abs`
- **Categoria:** Veiculo
- **Finalidade:** Define `abs` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de abs, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza abs no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Abs`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 737. Set Stability Assist

- **ID:** `vehicle.set_stability_assist`
- **Categoria:** Veiculo
- **Finalidade:** Define `stability assist` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de stability assist, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza stability assist no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Stability Assist`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 738. Set Steering Angle

- **ID:** `vehicle.set_steering_angle`
- **Categoria:** Veiculo
- **Finalidade:** Define `steering angle` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de steering angle, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza steering angle no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Steering Angle`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 739. Set Steering Response

- **ID:** `vehicle.set_steering_response`
- **Categoria:** Veiculo
- **Finalidade:** Define `steering response` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de steering response, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza steering response no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Steering Response`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 740. Set Wheel Radius

- **ID:** `vehicle.set_wheel_radius`
- **Categoria:** Veiculo
- **Finalidade:** Define `wheel radius` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de wheel radius, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza wheel radius no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Wheel Radius`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 741. Set Wheel Position

- **ID:** `vehicle.set_wheel_position`
- **Categoria:** Veiculo
- **Finalidade:** Define `wheel position` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de wheel position, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza wheel position no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Wheel Position`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 742. Set Wheel Driven

- **ID:** `vehicle.set_wheel_driven`
- **Categoria:** Veiculo
- **Finalidade:** Define `wheel driven` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de wheel driven, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza wheel driven no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Wheel Driven`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 743. Set Wheel Steerable

- **ID:** `vehicle.set_wheel_steerable`
- **Categoria:** Veiculo
- **Finalidade:** Define `wheel steerable` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de wheel steerable, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza wheel steerable no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Wheel Steerable`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 744. Set Suspension Travel

- **ID:** `vehicle.set_suspension_travel`
- **Categoria:** Veiculo
- **Finalidade:** Define `suspension travel` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de suspension travel, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza suspension travel no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Suspension Travel`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 745. Set Spring Strength

- **ID:** `vehicle.set_spring_strength`
- **Categoria:** Veiculo
- **Finalidade:** Define `spring strength` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de spring strength, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza spring strength no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Spring Strength`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 746. Set Suspension Damping

- **ID:** `vehicle.set_suspension_damping`
- **Categoria:** Veiculo
- **Finalidade:** Define `suspension damping` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de suspension damping, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza suspension damping no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Suspension Damping`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 747. Get Suspension Compression

- **ID:** `vehicle.get_suspension_compression`
- **Categoria:** Veiculo
- **Finalidade:** Consulta `suspension compression` no sistema de veículo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna suspension compression em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Suspension Compression → Debug Info` mostra o valor atual de suspension compression.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 748. Set Center Of Mass

- **ID:** `vehicle.set_center_of_mass`
- **Categoria:** Veiculo
- **Finalidade:** Define `center of mass` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de center of mass, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza center of mass no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Center Of Mass`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 749. Set Downforce

- **ID:** `vehicle.set_downforce`
- **Categoria:** Veiculo
- **Finalidade:** Define `downforce` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de downforce, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza downforce no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Downforce`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 750. Set Aero Drag

- **ID:** `vehicle.set_aero_drag`
- **Categoria:** Veiculo
- **Finalidade:** Define `aero drag` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de aero drag, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza aero drag no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Aero Drag`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 751. Set Rolling Resistance

- **ID:** `vehicle.set_rolling_resistance`
- **Categoria:** Veiculo
- **Finalidade:** Define `rolling resistance` no sistema de veículo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de rolling resistance, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza rolling resistance no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Rolling Resistance`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 752. Reset Upright

- **ID:** `vehicle.reset_upright`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `reset upright` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Reset Upright`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 753. Teleport

- **ID:** `vehicle.teleport`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `teleport` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Teleport`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 754. Repair

- **ID:** `vehicle.repair`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `repair` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Repair`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 755. Enable Collision

- **ID:** `vehicle.enable_collision`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `enable collision` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Enable Collision`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 756. Disable Collision

- **ID:** `vehicle.disable_collision`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `disable collision` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Disable Collision`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 757. On Collision

- **ID:** `vehicle.on_collision`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `on collision` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → On Collision`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 758. On Entered

- **ID:** `vehicle.on_entered`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `on entered` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → On Entered`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 759. On Exited

- **ID:** `vehicle.on_exited`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `on exited` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → On Exited`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 760. On Door Opened

- **ID:** `vehicle.on_door_opened`
- **Categoria:** Veiculo
- **Finalidade:** Executa a ação `on door opened` no sistema de veículo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → On Door Opened`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 761. Play

- **ID:** `audio.play`
- **Categoria:** Audio
- **Finalidade:** Executa a ação `play` no sistema de áudio usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Play`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 762. Play 3D

- **ID:** `audio.play_3d`
- **Categoria:** Audio
- **Finalidade:** Executa a ação `play 3d` no sistema de áudio usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Play 3D`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 763. Play Loop

- **ID:** `audio.play_loop`
- **Categoria:** Audio
- **Finalidade:** Executa a ação `play loop` no sistema de áudio usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Play Loop`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 764. Play 3D Loop

- **ID:** `audio.play_3d_loop`
- **Categoria:** Audio
- **Finalidade:** Executa a ação `play 3d loop` no sistema de áudio usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Play 3D Loop`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 765. Pause

- **ID:** `audio.pause`
- **Categoria:** Audio
- **Finalidade:** Executa a ação `pause` no sistema de áudio usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Pause`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 766. Resume

- **ID:** `audio.resume`
- **Categoria:** Audio
- **Finalidade:** Executa a ação `resume` no sistema de áudio usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Resume`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 767. Stop

- **ID:** `audio.stop`
- **Categoria:** Audio
- **Finalidade:** Executa a ação `stop` no sistema de áudio usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Stop`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 768. Stop All

- **ID:** `audio.stop_all`
- **Categoria:** Audio
- **Finalidade:** Executa a ação `stop all` no sistema de áudio usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Stop All`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 769. Set Volume

- **ID:** `audio.set_volume`
- **Categoria:** Audio
- **Finalidade:** Define `volume` no sistema de áudio do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de volume, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza volume no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Volume`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 770. Get Volume

- **ID:** `audio.get_volume`
- **Categoria:** Audio
- **Finalidade:** Consulta `volume` no sistema de áudio sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna volume em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Volume → Debug Info` mostra o valor atual de volume.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 771. Fade In

- **ID:** `audio.fade_in`
- **Categoria:** Audio
- **Finalidade:** Executa a ação `fade in` no sistema de áudio usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Fade In`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 772. Fade Out

- **ID:** `audio.fade_out`
- **Categoria:** Audio
- **Finalidade:** Executa a ação `fade out` no sistema de áudio usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Fade Out`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 773. Set Pitch

- **ID:** `audio.set_pitch`
- **Categoria:** Audio
- **Finalidade:** Define `pitch` no sistema de áudio do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de pitch, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza pitch no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Pitch`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 774. Get Pitch

- **ID:** `audio.get_pitch`
- **Categoria:** Audio
- **Finalidade:** Consulta `pitch` no sistema de áudio sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna pitch em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Pitch → Debug Info` mostra o valor atual de pitch.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 775. Set Pan

- **ID:** `audio.set_pan`
- **Categoria:** Audio
- **Finalidade:** Define `pan` no sistema de áudio do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de pan, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza pan no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Pan`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 776. Set Spatial Blend

- **ID:** `audio.set_spatial_blend`
- **Categoria:** Audio
- **Finalidade:** Define `spatial blend` no sistema de áudio do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de spatial blend, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza spatial blend no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Spatial Blend`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 777. Set Min Distance

- **ID:** `audio.set_min_distance`
- **Categoria:** Audio
- **Finalidade:** Define `min distance` no sistema de áudio do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de min distance, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza min distance no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Min Distance`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 778. Set Max Distance

- **ID:** `audio.set_max_distance`
- **Categoria:** Audio
- **Finalidade:** Define `max distance` no sistema de áudio do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de max distance, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza max distance no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Max Distance`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 779. Is Playing

- **ID:** `audio.is_playing`
- **Categoria:** Audio
- **Finalidade:** Executa a ação `is playing` no sistema de áudio usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Is Playing`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 780. Set Bus

- **ID:** `audio.set_bus`
- **Categoria:** Audio
- **Finalidade:** Define `bus` no sistema de áudio do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de bus, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza bus no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Bus`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 781. Play

- **ID:** `animation.play`
- **Categoria:** Animacao
- **Finalidade:** Executa a ação `play` no sistema de animação usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Play`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 782. Play Crossfade

- **ID:** `animation.play_crossfade`
- **Categoria:** Animacao
- **Finalidade:** Executa a ação `play crossfade` no sistema de animação usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Play Crossfade`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 783. Pause

- **ID:** `animation.pause`
- **Categoria:** Animacao
- **Finalidade:** Executa a ação `pause` no sistema de animação usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Pause`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 784. Resume

- **ID:** `animation.resume`
- **Categoria:** Animacao
- **Finalidade:** Executa a ação `resume` no sistema de animação usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Resume`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 785. Stop

- **ID:** `animation.stop`
- **Categoria:** Animacao
- **Finalidade:** Executa a ação `stop` no sistema de animação usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Stop`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 786. Rewind

- **ID:** `animation.rewind`
- **Categoria:** Animacao
- **Finalidade:** Executa a ação `rewind` no sistema de animação usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Rewind`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 787. Set Speed

- **ID:** `animation.set_speed`
- **Categoria:** Animacao
- **Finalidade:** Define `speed` no sistema de animação do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de speed, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza speed no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Speed`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 788. Get Speed

- **ID:** `animation.get_speed`
- **Categoria:** Animacao
- **Finalidade:** Consulta `speed` no sistema de animação sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna speed em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Speed → Debug Info` mostra o valor atual de speed.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 789. Set Time

- **ID:** `animation.set_time`
- **Categoria:** Animacao
- **Finalidade:** Define `time` no sistema de animação do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de time, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza time no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Time`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 790. Get Time

- **ID:** `animation.get_time`
- **Categoria:** Animacao
- **Finalidade:** Consulta `time` no sistema de animação sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna time em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Time → Debug Info` mostra o valor atual de time.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 791. Set Loop

- **ID:** `animation.set_loop`
- **Categoria:** Animacao
- **Finalidade:** Define `loop` no sistema de animação do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de loop, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza loop no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Loop`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 792. Is Playing

- **ID:** `animation.is_playing`
- **Categoria:** Animacao
- **Finalidade:** Executa a ação `is playing` no sistema de animação usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Is Playing`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 793. Set Bool

- **ID:** `animation.set_bool`
- **Categoria:** Animacao
- **Finalidade:** Define `bool` no sistema de animação do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de bool, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza bool no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Bool`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 794. Set Number

- **ID:** `animation.set_number`
- **Categoria:** Animacao
- **Finalidade:** Define `number` no sistema de animação do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de number, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza number no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Number`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 795. Set Trigger

- **ID:** `animation.set_trigger`
- **Categoria:** Animacao
- **Finalidade:** Define `trigger` no sistema de animação do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de trigger, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza trigger no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Trigger`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 796. Reset Trigger

- **ID:** `animation.reset_trigger`
- **Categoria:** Animacao
- **Finalidade:** Executa a ação `reset trigger` no sistema de animação usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Reset Trigger`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 797. Get State

- **ID:** `animation.get_state`
- **Categoria:** Animacao
- **Finalidade:** Consulta `state` no sistema de animação sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna state em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get State → Debug Info` mostra o valor atual de state.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 798. Set Weight

- **ID:** `animation.set_weight`
- **Categoria:** Animacao
- **Finalidade:** Define `weight` no sistema de animação do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de weight, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza weight no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Weight`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 799. Blend

- **ID:** `animation.blend`
- **Categoria:** Animacao
- **Finalidade:** Executa a ação `blend` no sistema de animação usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Blend`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 800. Play Additive

- **ID:** `animation.play_additive`
- **Categoria:** Animacao
- **Finalidade:** Executa a ação `play additive` no sistema de animação usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Play Additive`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 801. Get

- **ID:** `material.get`
- **Categoria:** Material
- **Finalidade:** Executa a ação `get` no sistema de material usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Get`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 802. Set

- **ID:** `material.set`
- **Categoria:** Material
- **Finalidade:** Executa a ação `set` no sistema de material usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Set`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 803. Clone

- **ID:** `material.clone`
- **Categoria:** Material
- **Finalidade:** Executa a ação `clone` no sistema de material usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Clone`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 804. Set Color

- **ID:** `material.set_color`
- **Categoria:** Material
- **Finalidade:** Define `color` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de color, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza color no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Color`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 805. Get Color

- **ID:** `material.get_color`
- **Categoria:** Material
- **Finalidade:** Consulta `color` no sistema de material sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna color em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Color → Debug Info` mostra o valor atual de color.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 806. Set Number

- **ID:** `material.set_number`
- **Categoria:** Material
- **Finalidade:** Define `number` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de number, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza number no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Number`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 807. Get Number

- **ID:** `material.get_number`
- **Categoria:** Material
- **Finalidade:** Consulta `number` no sistema de material sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna number em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Number → Debug Info` mostra o valor atual de number.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 808. Set Vector

- **ID:** `material.set_vector`
- **Categoria:** Material
- **Finalidade:** Define `vector` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de vector, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza vector no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Vector`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 809. Get Vector

- **ID:** `material.get_vector`
- **Categoria:** Material
- **Finalidade:** Consulta `vector` no sistema de material sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna vector em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Vector → Debug Info` mostra o valor atual de vector.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 810. Set Texture

- **ID:** `material.set_texture`
- **Categoria:** Material
- **Finalidade:** Define `texture` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de texture, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza texture no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Texture`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 811. Get Texture

- **ID:** `material.get_texture`
- **Categoria:** Material
- **Finalidade:** Consulta `texture` no sistema de material sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna texture em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Texture → Debug Info` mostra o valor atual de texture.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 812. Set Emission

- **ID:** `material.set_emission`
- **Categoria:** Material
- **Finalidade:** Define `emission` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de emission, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza emission no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Emission`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 813. Set Metallic

- **ID:** `material.set_metallic`
- **Categoria:** Material
- **Finalidade:** Define `metallic` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de metallic, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza metallic no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Metallic`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 814. Set Roughness

- **ID:** `material.set_roughness`
- **Categoria:** Material
- **Finalidade:** Define `roughness` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de roughness, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza roughness no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Roughness`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 815. Set Opacity

- **ID:** `material.set_opacity`
- **Categoria:** Material
- **Finalidade:** Define `opacity` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de opacity, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza opacity no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Opacity`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 816. Set Uv Offset

- **ID:** `material.set_uv_offset`
- **Categoria:** Material
- **Finalidade:** Define `uv offset` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de uv offset, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza uv offset no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Uv Offset`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 817. Set Uv Scale

- **ID:** `material.set_uv_scale`
- **Categoria:** Material
- **Finalidade:** Define `uv scale` no sistema de material do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de uv scale, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza uv scale no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Uv Scale`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 818. Enable Keyword

- **ID:** `material.enable_keyword`
- **Categoria:** Material
- **Finalidade:** Executa a ação `enable keyword` no sistema de material usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Enable Keyword`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 819. Disable Keyword

- **ID:** `material.disable_keyword`
- **Categoria:** Material
- **Finalidade:** Executa a ação `disable keyword` no sistema de material usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Disable Keyword`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 820. Has Keyword

- **ID:** `material.has_keyword`
- **Categoria:** Material
- **Finalidade:** Executa a ação `has keyword` no sistema de material usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Has Keyword`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 821. Show

- **ID:** `ui.show`
- **Categoria:** Interface
- **Finalidade:** Executa a ação `show` no sistema de interface usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Show`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 822. Hide

- **ID:** `ui.hide`
- **Categoria:** Interface
- **Finalidade:** Executa a ação `hide` no sistema de interface usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Hide`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 823. Toggle

- **ID:** `ui.toggle`
- **Categoria:** Interface
- **Finalidade:** Executa a ação `toggle` no sistema de interface usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Toggle`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 824. Set Text

- **ID:** `ui.set_text`
- **Categoria:** Interface
- **Finalidade:** Define `text` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de text, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza text no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Text`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 825. Get Text

- **ID:** `ui.get_text`
- **Categoria:** Interface
- **Finalidade:** Consulta `text` no sistema de interface sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna text em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Text → Debug Info` mostra o valor atual de text.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 826. Set Image

- **ID:** `ui.set_image`
- **Categoria:** Interface
- **Finalidade:** Define `image` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de image, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza image no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Image`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 827. Set Color

- **ID:** `ui.set_color`
- **Categoria:** Interface
- **Finalidade:** Define `color` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de color, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza color no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Color`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 828. Set Value

- **ID:** `ui.set_value`
- **Categoria:** Interface
- **Finalidade:** Define `value` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de value, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza value no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Value`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 829. Get Value

- **ID:** `ui.get_value`
- **Categoria:** Interface
- **Finalidade:** Consulta `value` no sistema de interface sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna value em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Value → Debug Info` mostra o valor atual de value.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 830. Set Min

- **ID:** `ui.set_min`
- **Categoria:** Interface
- **Finalidade:** Define `min` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de min, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza min no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Min`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 831. Set Max

- **ID:** `ui.set_max`
- **Categoria:** Interface
- **Finalidade:** Define `max` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de max, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza max no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Max`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 832. Set Interactable

- **ID:** `ui.set_interactable`
- **Categoria:** Interface
- **Finalidade:** Define `interactable` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de interactable, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza interactable no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Interactable`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 833. Is Interactable

- **ID:** `ui.is_interactable`
- **Categoria:** Interface
- **Finalidade:** Executa a ação `is interactable` no sistema de interface usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Is Interactable`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 834. Focus

- **ID:** `ui.focus`
- **Categoria:** Interface
- **Finalidade:** Executa a ação `focus` no sistema de interface usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Focus`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 835. Unfocus

- **ID:** `ui.unfocus`
- **Categoria:** Interface
- **Finalidade:** Executa a ação `unfocus` no sistema de interface usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Unfocus`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 836. Set Position

- **ID:** `ui.set_position`
- **Categoria:** Interface
- **Finalidade:** Define `position` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de position, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza position no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Position`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 837. Set Size

- **ID:** `ui.set_size`
- **Categoria:** Interface
- **Finalidade:** Define `size` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de size, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza size no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Size`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 838. Set Anchor

- **ID:** `ui.set_anchor`
- **Categoria:** Interface
- **Finalidade:** Define `anchor` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de anchor, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza anchor no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Anchor`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 839. Set Progress

- **ID:** `ui.set_progress`
- **Categoria:** Interface
- **Finalidade:** Define `progress` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de progress, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza progress no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Progress`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 840. Animate Value

- **ID:** `ui.animate_value`
- **Categoria:** Interface
- **Finalidade:** Executa a ação `animate value` no sistema de interface usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Animate Value`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 841. Toast

- **ID:** `ui.toast`
- **Categoria:** Interface
- **Finalidade:** Executa a ação `toast` no sistema de interface usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Toast`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 842. Open Panel

- **ID:** `ui.open_panel`
- **Categoria:** Interface
- **Finalidade:** Executa a ação `open panel` no sistema de interface usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Open Panel`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 843. Close Panel

- **ID:** `ui.close_panel`
- **Categoria:** Interface
- **Finalidade:** Executa a ação `close panel` no sistema de interface usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Close Panel`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 844. Set Placeholder

- **ID:** `ui.set_placeholder`
- **Categoria:** Interface
- **Finalidade:** Define `placeholder` no sistema de interface do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de placeholder, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza placeholder no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Placeholder`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 845. Load

- **ID:** `world.load`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `load` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Load`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 846. Load Additive

- **ID:** `world.load_additive`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `load additive` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Load Additive`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 847. Unload

- **ID:** `world.unload`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `unload` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Unload`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 848. Reload

- **ID:** `world.reload`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `reload` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Reload`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 849. Set Active

- **ID:** `world.set_active`
- **Categoria:** Mundo
- **Finalidade:** Define `active` no sistema de mundo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de active, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza active no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Active`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 850. Get Active

- **ID:** `world.get_active`
- **Categoria:** Mundo
- **Finalidade:** Consulta `active` no sistema de mundo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna active em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Active → Debug Info` mostra o valor atual de active.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 851. Pause

- **ID:** `world.pause`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `pause` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Pause`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 852. Resume

- **ID:** `world.resume`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `resume` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Resume`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 853. Set Time Scale

- **ID:** `world.set_time_scale`
- **Categoria:** Mundo
- **Finalidade:** Define `time scale` no sistema de mundo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de time scale, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza time scale no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Time Scale`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 854. Get Time Scale

- **ID:** `world.get_time_scale`
- **Categoria:** Mundo
- **Finalidade:** Consulta `time scale` no sistema de mundo sem alterar o alvo.
- **Entradas/alvo:** `target_path`: nó compatível que será consultado.
- **Saídas/efeito:** Retorna time scale em `value` e permite continuar o fluxo.
- **Exemplo:** `Update → Get Time Scale → Debug Info` mostra o valor atual de time scale.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 855. Set Ambient Color

- **ID:** `world.set_ambient_color`
- **Categoria:** Mundo
- **Finalidade:** Define `ambient color` no sistema de mundo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de ambient color, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza ambient color no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Ambient Color`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 856. Set Skybox

- **ID:** `world.set_skybox`
- **Categoria:** Mundo
- **Finalidade:** Define `skybox` no sistema de mundo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de skybox, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza skybox no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Skybox`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 857. Set Fog

- **ID:** `world.set_fog`
- **Categoria:** Mundo
- **Finalidade:** Define `fog` no sistema de mundo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de fog, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza fog no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Fog`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 858. Set Gravity

- **ID:** `world.set_gravity`
- **Categoria:** Mundo
- **Finalidade:** Define `gravity` no sistema de mundo do alvo indicado.
- **Entradas/alvo:** `target_path`: nó compatível; `value`: novo valor de gravity, pelo inspetor ou por conexão tipada.
- **Saídas/efeito:** Atualiza gravity no alvo e emite `flow`.
- **Exemplo:** `Button Pressed → Set Gravity`, selecione o alvo da cena e conecte uma constante ao pino `value`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 859. Find Spawn

- **ID:** `world.find_spawn`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `find spawn` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Find Spawn`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 860. Spawn At

- **ID:** `world.spawn_at`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `spawn at` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Spawn At`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 861. Destroy All

- **ID:** `world.destroy_all`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `destroy all` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Destroy All`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 862. Preload

- **ID:** `world.preload`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `preload` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Preload`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 863. Release

- **ID:** `world.release`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `release` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Release`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 864. Quit

- **ID:** `world.quit`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `quit` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Quit`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 865. Terrain Get Height

- **ID:** `world.terrain_get_height`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain get height` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Get Height`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 866. Terrain Set Height

- **ID:** `world.terrain_set_height`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain set height` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Set Height`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 867. Terrain Raise

- **ID:** `world.terrain_raise`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain raise` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Raise`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 868. Terrain Lower

- **ID:** `world.terrain_lower`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain lower` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Lower`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 869. Terrain Smooth

- **ID:** `world.terrain_smooth`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain smooth` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Smooth`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 870. Terrain Flatten

- **ID:** `world.terrain_flatten`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain flatten` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Flatten`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 871. Terrain Add Noise

- **ID:** `world.terrain_add_noise`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain add noise` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Add Noise`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 872. Terrain Paint Layer

- **ID:** `world.terrain_paint_layer`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain paint layer` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Paint Layer`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 873. Terrain Get Layer Weight

- **ID:** `world.terrain_get_layer_weight`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain get layer weight` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Get Layer Weight`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 874. Terrain Apply Auto Tile

- **ID:** `world.terrain_apply_auto_tile`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain apply auto tile` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Apply Auto Tile`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 875. Terrain Add Auto Tile Rule

- **ID:** `world.terrain_add_auto_tile_rule`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain add auto tile rule` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Add Auto Tile Rule`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 876. Terrain Remove Auto Tile Rule

- **ID:** `world.terrain_remove_auto_tile_rule`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain remove auto tile rule` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Remove Auto Tile Rule`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 877. Terrain Set Material

- **ID:** `world.terrain_set_material`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain set material` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Set Material`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 878. Terrain Set Texture Scale

- **ID:** `world.terrain_set_texture_scale`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain set texture scale` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Set Texture Scale`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 879. Terrain Set Texture Rotation

- **ID:** `world.terrain_set_texture_rotation`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain set texture rotation` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Set Texture Rotation`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 880. Terrain Set Texture Offset

- **ID:** `world.terrain_set_texture_offset`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain set texture offset` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Set Texture Offset`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 881. Terrain Set Roughness

- **ID:** `world.terrain_set_roughness`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain set roughness` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Set Roughness`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 882. Terrain Set Metallic

- **ID:** `world.terrain_set_metallic`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain set metallic` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Set Metallic`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 883. Terrain Import Heightmap

- **ID:** `world.terrain_import_heightmap`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain import heightmap` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Import Heightmap`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 884. Terrain Export Heightmap

- **ID:** `world.terrain_export_heightmap`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain export heightmap` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Export Heightmap`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 885. Terrain Generate Semi Arid

- **ID:** `world.terrain_generate_semi_arid`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain generate semi arid` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Generate Semi Arid`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 886. Terrain Scatter Tiles

- **ID:** `world.terrain_scatter_tiles`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain scatter tiles` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Scatter Tiles`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 887. Terrain Clear Tiles

- **ID:** `world.terrain_clear_tiles`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `terrain clear tiles` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Terrain Clear Tiles`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 888. Character Set Camera First Person

- **ID:** `world.character_set_camera_first_person`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `character set camera first person` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Character Set Camera First Person`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 889. Character Set Camera Third Person

- **ID:** `world.character_set_camera_third_person`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `character set camera third person` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Character Set Camera Third Person`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 890. Character Set Camera Top Down

- **ID:** `world.character_set_camera_top_down`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `character set camera top down` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Character Set Camera Top Down`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 891. Character Set Speed

- **ID:** `world.character_set_speed`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `character set speed` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Character Set Speed`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 892. Character Jump

- **ID:** `world.character_jump`
- **Categoria:** Mundo
- **Finalidade:** Faz um `CharacterBody3D` pular somente quando `is_on_floor()` confirma contato com o chão.
- **Entradas/alvo:** `target_path`: personagem; `force`: velocidade vertical positiva; evento recomendado `Button Pressed` com ação `jump`.
- **Saídas/efeito:** Define a velocidade Y do personagem e emite `flow`; no ar, não aplica um segundo pulo.
- **Exemplo:** Pulo mobile: `Button Pressed (jump) → Character Jump`, alvo `../Player`, força `6.5`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 893. Character Set Look Sensitivity

- **ID:** `world.character_set_look_sensitivity`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `character set look sensitivity` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Character Set Look Sensitivity`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 894. Joystick Get Axis

- **ID:** `world.joystick_get_axis`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `joystick get axis` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Joystick Get Axis`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 895. Joystick Set Dead Zone

- **ID:** `world.joystick_set_dead_zone`
- **Categoria:** Mundo
- **Finalidade:** Executa a ação `joystick set dead zone` no sistema de mundo usando a API segura registrada pela engine.
- **Entradas/alvo:** `target_path` quando a ação atua em um nó; demais pinos recebem os valores exibidos no bloco ou conexões do mesmo tipo.
- **Saídas/efeito:** Aplica a ação e emite `flow`; operações de consulta também retornam `value`.
- **Exemplo:** `Button Pressed → Joystick Set Dead Zone`; escolha um alvo compatível no seletor de cena e ajuste os parâmetros no próprio bloco.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 896. Mover personagem

- **ID:** `world.character_move`
- **Categoria:** Mundo
- **Finalidade:** Move um `CharacterBody3D` usando o joystick relativo à direção da câmera, aplica gravidade e chama `move_and_slide()`.
- **Entradas/alvo:** `target_path`: personagem; `speed`: unidades por segundo; eixo vindo de `Joystick Get Axis` ou das ações `ui_left/right/up/down`.
- **Saídas/efeito:** Atualiza a velocidade horizontal, preserva a gravidade e emite `flow`.
- **Exemplo:** Controle mobile: `Update → Joystick Get Axis → Character Move`, alvo `../Player` e velocidade `5.0`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 897. Girar câmera do personagem

- **ID:** `world.character_look`
- **Categoria:** Mundo
- **Finalidade:** Gira o personagem no eixo horizontal e o pivô da câmera no vertical, limitando o pitch para evitar que a visão vire ao contrário.
- **Entradas/alvo:** `target_path`: personagem/pivô; `look_delta`: movimento do toque; `sensitivity`: multiplicador da rotação.
- **Saídas/efeito:** Altera yaw e pitch e emite `flow`.
- **Exemplo:** Câmera mobile: `Pointer Drag → Character Look`, usando o delta do arrasto e sensibilidade `0.003`.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 898. Save

- **ID:** `save.bool.save`
- **Categoria:** Save Game
- **Finalidade:** Executa `save` para um valor persistente do tipo bool no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_bool`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 899. Load

- **ID:** `save.bool.load`
- **Categoria:** Save Game
- **Finalidade:** Executa `load` para um valor persistente do tipo bool no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_bool`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 900. Has

- **ID:** `save.bool.has`
- **Categoria:** Save Game
- **Finalidade:** Executa `has` para um valor persistente do tipo bool no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_bool`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 901. Delete

- **ID:** `save.bool.delete`
- **Categoria:** Save Game
- **Finalidade:** Executa `delete` para um valor persistente do tipo bool no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_bool`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 902. Save

- **ID:** `save.number.save`
- **Categoria:** Save Game
- **Finalidade:** Executa `save` para um valor persistente do tipo number no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_number`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 903. Load

- **ID:** `save.number.load`
- **Categoria:** Save Game
- **Finalidade:** Executa `load` para um valor persistente do tipo number no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_number`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 904. Has

- **ID:** `save.number.has`
- **Categoria:** Save Game
- **Finalidade:** Executa `has` para um valor persistente do tipo number no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_number`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 905. Delete

- **ID:** `save.number.delete`
- **Categoria:** Save Game
- **Finalidade:** Executa `delete` para um valor persistente do tipo number no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_number`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 906. Save

- **ID:** `save.integer.save`
- **Categoria:** Save Game
- **Finalidade:** Executa `save` para um valor persistente do tipo integer no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_integer`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 907. Load

- **ID:** `save.integer.load`
- **Categoria:** Save Game
- **Finalidade:** Executa `load` para um valor persistente do tipo integer no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_integer`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 908. Has

- **ID:** `save.integer.has`
- **Categoria:** Save Game
- **Finalidade:** Executa `has` para um valor persistente do tipo integer no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_integer`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 909. Delete

- **ID:** `save.integer.delete`
- **Categoria:** Save Game
- **Finalidade:** Executa `delete` para um valor persistente do tipo integer no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_integer`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 910. Save

- **ID:** `save.text.save`
- **Categoria:** Save Game
- **Finalidade:** Executa `save` para um valor persistente do tipo text no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_text`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 911. Load

- **ID:** `save.text.load`
- **Categoria:** Save Game
- **Finalidade:** Executa `load` para um valor persistente do tipo text no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_text`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 912. Has

- **ID:** `save.text.has`
- **Categoria:** Save Game
- **Finalidade:** Executa `has` para um valor persistente do tipo text no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_text`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 913. Delete

- **ID:** `save.text.delete`
- **Categoria:** Save Game
- **Finalidade:** Executa `delete` para um valor persistente do tipo text no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_text`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 914. Save

- **ID:** `save.vector2.save`
- **Categoria:** Save Game
- **Finalidade:** Executa `save` para um valor persistente do tipo vector2 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector2`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 915. Load

- **ID:** `save.vector2.load`
- **Categoria:** Save Game
- **Finalidade:** Executa `load` para um valor persistente do tipo vector2 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector2`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 916. Has

- **ID:** `save.vector2.has`
- **Categoria:** Save Game
- **Finalidade:** Executa `has` para um valor persistente do tipo vector2 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector2`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 917. Delete

- **ID:** `save.vector2.delete`
- **Categoria:** Save Game
- **Finalidade:** Executa `delete` para um valor persistente do tipo vector2 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector2`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 918. Save

- **ID:** `save.vector3.save`
- **Categoria:** Save Game
- **Finalidade:** Executa `save` para um valor persistente do tipo vector3 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector3`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 919. Load

- **ID:** `save.vector3.load`
- **Categoria:** Save Game
- **Finalidade:** Executa `load` para um valor persistente do tipo vector3 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector3`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 920. Has

- **ID:** `save.vector3.has`
- **Categoria:** Save Game
- **Finalidade:** Executa `has` para um valor persistente do tipo vector3 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector3`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 921. Delete

- **ID:** `save.vector3.delete`
- **Categoria:** Save Game
- **Finalidade:** Executa `delete` para um valor persistente do tipo vector3 no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_vector3`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 922. Save

- **ID:** `save.color.save`
- **Categoria:** Save Game
- **Finalidade:** Executa `save` para um valor persistente do tipo color no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_color`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 923. Load

- **ID:** `save.color.load`
- **Categoria:** Save Game
- **Finalidade:** Executa `load` para um valor persistente do tipo color no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_color`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 924. Has

- **ID:** `save.color.has`
- **Categoria:** Save Game
- **Finalidade:** Executa `has` para um valor persistente do tipo color no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_color`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 925. Delete

- **ID:** `save.color.delete`
- **Categoria:** Save Game
- **Finalidade:** Executa `delete` para um valor persistente do tipo color no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_color`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 926. Save

- **ID:** `save.object_id.save`
- **Categoria:** Save Game
- **Finalidade:** Executa `save` para um valor persistente do tipo object id no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_object id`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 927. Load

- **ID:** `save.object_id.load`
- **Categoria:** Save Game
- **Finalidade:** Executa `load` para um valor persistente do tipo object id no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_object id`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 928. Has

- **ID:** `save.object_id.has`
- **Categoria:** Save Game
- **Finalidade:** Executa `has` para um valor persistente do tipo object id no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_object id`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 929. Delete

- **ID:** `save.object_id.delete`
- **Categoria:** Save Game
- **Finalidade:** Executa `delete` para um valor persistente do tipo object id no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_object id`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 930. Save

- **ID:** `save.list.save`
- **Categoria:** Save Game
- **Finalidade:** Executa `save` para um valor persistente do tipo list no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_list`: `Button Pressed → Save` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 931. Load

- **ID:** `save.list.load`
- **Categoria:** Save Game
- **Finalidade:** Executa `load` para um valor persistente do tipo list no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_list`: `Button Pressed → Load` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 932. Has

- **ID:** `save.list.has`
- **Categoria:** Save Game
- **Finalidade:** Executa `has` para um valor persistente do tipo list no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_list`: `Button Pressed → Has` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 933. Delete

- **ID:** `save.list.delete`
- **Categoria:** Save Game
- **Finalidade:** Executa `delete` para um valor persistente do tipo list no armazenamento do jogo.
- **Entradas/alvo:** `key`: chave estável; `value` é obrigatório ao salvar e opcional como padrão ao carregar.
- **Saídas/efeito:** Retorna o valor carregado/estado da chave e emite `flow` após concluir.
- **Exemplo:** Use a chave `player_list`: `Button Pressed → Delete` e conecte o resultado à interface.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 934. Delta

- **ID:** `time.delta`
- **Categoria:** Tempo
- **Finalidade:** Executa a operação registrada `time.delta` (delta) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Delta` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 935. Fixed Delta

- **ID:** `time.fixed_delta`
- **Categoria:** Tempo
- **Finalidade:** Executa a operação registrada `time.fixed_delta` (fixed delta) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Fixed Delta` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 936. Elapsed

- **ID:** `time.elapsed`
- **Categoria:** Tempo
- **Finalidade:** Executa a operação registrada `time.elapsed` (elapsed) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Elapsed` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 937. Unscaled Elapsed

- **ID:** `time.unscaled_elapsed`
- **Categoria:** Tempo
- **Finalidade:** Executa a operação registrada `time.unscaled_elapsed` (unscaled elapsed) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Unscaled Elapsed` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 938. Frame

- **ID:** `time.frame`
- **Categoria:** Tempo
- **Finalidade:** Executa a operação registrada `time.frame` (frame) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Frame` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 939. Fps

- **ID:** `time.fps`
- **Categoria:** Tempo
- **Finalidade:** Executa a operação registrada `time.fps` (fps) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Fps` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 940. Timestamp

- **ID:** `time.timestamp`
- **Categoria:** Tempo
- **Finalidade:** Executa a operação registrada `time.timestamp` (timestamp) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Timestamp` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 941. Date

- **ID:** `time.date`
- **Categoria:** Tempo
- **Finalidade:** Executa a operação registrada `time.date` (date) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Date` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 942. Time

- **ID:** `time.time`
- **Categoria:** Tempo
- **Finalidade:** Executa a operação registrada `time.time` (time) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Time` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 943. Timezone

- **ID:** `time.timezone`
- **Categoria:** Tempo
- **Finalidade:** Executa a operação registrada `time.timezone` (timezone) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Timezone` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 944. Timer Start

- **ID:** `time.timer_start`
- **Categoria:** Tempo
- **Finalidade:** Executa a operação registrada `time.timer_start` (timer start) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Timer Start` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 945. Timer Pause

- **ID:** `time.timer_pause`
- **Categoria:** Tempo
- **Finalidade:** Executa a operação registrada `time.timer_pause` (timer pause) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Timer Pause` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 946. Timer Resume

- **ID:** `time.timer_resume`
- **Categoria:** Tempo
- **Finalidade:** Executa a operação registrada `time.timer_resume` (timer resume) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Timer Resume` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 947. Timer Stop

- **ID:** `time.timer_stop`
- **Categoria:** Tempo
- **Finalidade:** Executa a operação registrada `time.timer_stop` (timer stop) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Timer Stop` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 948. Timer Remaining

- **ID:** `time.timer_remaining`
- **Categoria:** Tempo
- **Finalidade:** Executa a operação registrada `time.timer_remaining` (timer remaining) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Timer Remaining` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 949. Timer Elapsed

- **ID:** `time.timer_elapsed`
- **Categoria:** Tempo
- **Finalidade:** Executa a operação registrada `time.timer_elapsed` (timer elapsed) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Timer Elapsed` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 950. Format Duration

- **ID:** `time.format_duration`
- **Categoria:** Tempo
- **Finalidade:** Executa a operação registrada `time.format_duration` (format duration) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Format Duration` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 951. Wait Seconds

- **ID:** `time.wait_seconds`
- **Categoria:** Tempo
- **Finalidade:** Executa a operação registrada `time.wait_seconds` (wait seconds) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Wait Seconds` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 952. Trace

- **ID:** `debug.log.trace`
- **Categoria:** Debug
- **Finalidade:** Executa a operação registrada `debug.log.trace` (trace) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Trace` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 953. Info

- **ID:** `debug.log.info`
- **Categoria:** Debug
- **Finalidade:** Executa a operação registrada `debug.log.info` (info) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Info` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 954. Warning

- **ID:** `debug.log.warning`
- **Categoria:** Debug
- **Finalidade:** Executa a operação registrada `debug.log.warning` (warning) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Warning` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 955. Error

- **ID:** `debug.log.error`
- **Categoria:** Debug
- **Finalidade:** Executa a operação registrada `debug.log.error` (error) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Error` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 956. Assert

- **ID:** `debug.log.assert`
- **Categoria:** Debug
- **Finalidade:** Executa a operação registrada `debug.log.assert` (assert) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Assert` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 957. Draw Line

- **ID:** `debug.log.draw_line`
- **Categoria:** Debug
- **Finalidade:** Executa a operação registrada `debug.log.draw_line` (draw line) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Draw Line` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 958. Draw Ray

- **ID:** `debug.log.draw_ray`
- **Categoria:** Debug
- **Finalidade:** Executa a operação registrada `debug.log.draw_ray` (draw ray) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Draw Ray` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 959. Draw Sphere

- **ID:** `debug.log.draw_sphere`
- **Categoria:** Debug
- **Finalidade:** Executa a operação registrada `debug.log.draw_sphere` (draw sphere) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Draw Sphere` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 960. Breakpoint

- **ID:** `debug.log.breakpoint`
- **Categoria:** Debug
- **Finalidade:** Executa a operação registrada `debug.log.breakpoint` (breakpoint) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Breakpoint` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.

## 961. Watch

- **ID:** `debug.log.watch`
- **Categoria:** Debug
- **Finalidade:** Executa a operação registrada `debug.log.watch` (watch) no runtime NoCode.
- **Entradas/alvo:** Use os pinos mostrados no bloco; cada conexão aceita somente o tipo indicado e constantes podem ser definidas no inspetor do nó.
- **Saídas/efeito:** Retorna `value`/`result` para dados e `flow` para encadear ações.
- **Exemplo:** Adicione `Watch` ao grafo, conecte `Start` ou `Update` ao fluxo e envie a saída para `Debug Info` para validar o resultado.
- **Erros:** dados ausentes, alvo incompatível ou operação indisponível geram `graph_error`; o runner não executa método arbitrário.
