# World Studio — estado da implementação

## Estado atual

A implementação das Fases 0–3 do plano V4 permanece na branch como base de domínio e persistência, mas o avanço para a antiga Fase 4 está **pausado**.

O World Studio V5 foi reprovado na validação de UX. O projeto entrou em **R0 — pesquisa e refoundation V6**.

Documentos ativos:

- `WORLD_STUDIO_V6_REFOUNDATION.md` — plano revisado de arquitetura e fases;
- `WORLD_STUDIO_V5_UX_VALIDATION.md` — registro da validação reprovada;
- `../architecture/ADR-0001_EDITOR_TECH_STACK.md` — decisão sobre Kotlin, C# e Rust.

## Evidência que interrompeu o avanço

No aparelho foi possível obter simultaneamente:

- toolset visual `Volume` ativo;
- seleção `Terreno editável 5`;
- recomendação `Moldar relevo`;
- nenhuma ferramenta de Volume ativa;
- necessidade de abrir outra aba para editar.

Essa combinação demonstra que modo, seleção, recomendação e ferramenta são estados paralelos. A interface pode exibir uma intenção que o domínio não executou.

A correção exigida é uma máquina de estados e um registro de ferramentas, não outro patch visual.

## Fundações preservadas das Fases 0–3

### Modelo persistente de camadas

Permanecem válidos:

- `WorldLayer`;
- `WorldLayerKind`;
- `WorldLayerSetComponent`;
- `WorldLayerMembershipComponent`;
- migração automática de cenas antigas;
- camadas-padrão;
- visibilidade, bloqueio e Solo;
- atribuição e reordenação;
- persistência no `SceneDocument`;
- histórico transacional.

### Contexto e capabilities

Permanecem como material para migração:

- reconhecimento do tipo da seleção;
- capabilities;
- descritores de ação;
- pré-condições;
- motivos de indisponibilidade;
- próxima etapa;
- bloqueio por camada.

O resolver atual não será a autoridade final. Ele será migrado para o novo `editor-domain` e integrado a uma máquina de estados.

### Correções validadas

- crash ARGB corrigido com `Color(Int)`;
- free cam sem botões de preset;
- foco por toque duplo removido;
- edição nativa de escala/rotação da SceneView desativada;
- pinça não escala objetos temporariamente;
- segundo dedo cancela stroke de Terrain;
- Mundo abre sem o crash conhecido.

## Partes consideradas provisórias ou rejeitadas

- `WorldStudioWorkspaceV5.kt` como arquitetura definitiva;
- modos superiores que apenas alteram estado visual;
- `Criar`, `Ações` e `Ferramentas` como abas globais;
- Context Bar independente do toolset;
- regras de compatibilidade dentro da composição Compose;
- painel monolítico;
- toolset incompatível com a seleção;
- tool shelf aberto manualmente após selecionar um modo.

## Novo cronograma

### R0 — pesquisa e refoundation

Estado: **concluído documentalmente nesta rodada**.

Entregue:

- diagnóstico da contradição V5;
- estudo de padrões de Godot, Blender, Unity, Stride e Bevy;
- novo contrato de regiões e toolsets;
- decisão de stack;
- fases R1–R12;
- fluxos dourados;
- V5 marcada como reprovada.

### R1 — domínio e máquina de estados

Próxima implementação.

Objetivos:

- `EditorIntent`;
- `EditorContextState`;
- reducer;
- seleção;
- toolsets;
- ferramentas;
- comandos;
- capabilities;
- operações pendentes;
- testes de transição.

Gate:

- estados contraditórios não podem ser construídos.

### R2 — shell de regiões e design system

Só começa após R1.

### R3 — toolsets conectados à seleção

Só começa após R2.

### R4 — input, free cam e gizmos

Substitui a antiga Fase 4.

### R5–R12

- Terrain end-to-end;
- Mesh end-to-end;
- Volume/Voxel end-to-end;
- materiais/assets/camadas;
- gameplay;
- Lua/NoCode;
- spike Rust condicionado a benchmark;
- migração e consolidação.

## Decisão de linguagem

Não será feita uma migração impulsiva.

- Kotlin permanece no host Android e shell Compose;
- regras do editor sairão da UI para um módulo independente;
- C# não será adotado apenas para copiar uma aparência de editor desktop;
- Rust não será usado para UI;
- Rust poderá ser testado depois em kernels de terrain, mesh e voxel, mediante benchmark e ABI estreita.

## Gate antes de gerar outro APK de UX

Não será considerado progresso produzir outra disposição visual sem:

1. máquina de estados;
2. tool registry;
3. command registry;
4. transições testadas;
5. compatibilidade entre seleção e toolset;
6. ativação automática da ferramenta padrão;
7. cancelamento/restauração coerente.

## Critério de honestidade

Nesta rodada não foi criada uma nova interface nem um novo APK. O trabalho executado foi a refoundation arquitetural R0. A próxima entrega de código deve ser R1, com testes de domínio, antes de qualquer redesign V6.