# ADR 0001 — Fundação modular

- Status: aceita
- Data: 2026-07-28

## Contexto

A engine precisa evoluir de editor de projetos para viewport 3D, scripting,
no-code e exportação sem transformar Compose, Godot, Lua e armazenamento em uma
única camada.

## Decisão

Separar composição (`app`), UI (`editor`), persistência (`projects`), modelos e
contratos (`core:*`), runtime gráfico (`runtime`) e scripts (`scripting`).

O `app` é a única raiz de composição. A injeção é explícita por `AppContainer`
nesta fase; Hilt não foi adicionado porque ainda há poucas dependências e seu
custo de geração/configuração não é necessário.

`runtime` e `scripting` expõem somente contratos. Eles não contêm mocks
registrados como implementação nem fazem a UI anunciar recursos inexistentes.

## Consequências

- Godot ou outro runtime pode entrar atrás de `RuntimeEditorBridge`.
- Lua, Luau e no-code poderão convergir numa API comum sem depender de Compose.
- Há mais módulos desde o início, mas suas responsabilidades são pequenas.
- Alterar contratos públicos exigirá migração consciente.

