# Python experimental

Contrato inicial para futura integração. `MegazordContext` expõe somente evento,
busca de objeto e log. O sandbox/backend Android ainda não faz parte desta etapa;
portanto estes arquivos não são anunciados como runtime Python funcional.

Hooks reservados: `on_start(ctx)` e `on_event(ctx, name, value)`.
