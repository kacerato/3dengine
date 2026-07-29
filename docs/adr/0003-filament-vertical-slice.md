# ADR 0003 — Filament no viewport da vertical slice

- Status: aceita para a vertical slice
- Data: 2026-07-28

## Contexto

O editor precisa incorporar renderização 3D real em uma árvore Compose
landscape, mantendo hierarquia, inspector e assets como fonte autoral. Godot
como biblioteca Android continua sendo uma opção para um runtime de jogo mais
completo, mas integrá-lo nesta etapa adicionaria outro ciclo de vida de engine e
outro modelo de cena antes de estabilizar o contrato do editor.

## Decisão

Usar SceneView 2.3.0 sobre Google Filament para o viewport inicial. A projeção
recebe um `SceneDocument` e cria nós descartáveis para primitivas e GLB; o JSON
da engine permanece canônico e sem tipos SceneView.

Esta decisão entrega renderização PBR, modelo GLB e gestos dentro de Compose sem
declarar física, áudio ou exportação como resolvidos. `runtime` permanece um
módulo separado e `RuntimeEditorBridge` preserva a possibilidade de um runtime
Godot ou nativo posterior.

## Consequências

- o editor já tem um viewport 3D nativo, não um canvas 2D falso;
- transformações e seleção atravessam um contrato tipado;
- câmera, luz, física e ciclo de jogo precisam de adaptação própria;
- modelos precisam ser validados antes de alcançar o parser nativo;
- a escolha deve ser reavaliada quando física, áudio e exportação de jogos
  formarem uma vertical slice própria.
