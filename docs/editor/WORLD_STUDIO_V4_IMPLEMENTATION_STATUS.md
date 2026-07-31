# World Studio — estado da implementação

## Estado atual

O World Studio V5 foi reprovado na validação de UX. O avanço para a antiga Fase 4 continua pausado.

A refoundation V6 possui agora:

- **R0 concluída:** pesquisa, plano revisado e ADR de stack;
- **R1 iniciada e com fundação compilada:** máquina de estados, tool registry, command registry e testes de transição;
- **R2 ainda não iniciada:** nenhum novo shell visual V6 foi desenhado.

Documentos ativos:

- `WORLD_STUDIO_V6_REFOUNDATION.md`;
- `WORLD_STUDIO_V5_UX_VALIDATION.md`;
- `../architecture/ADR-0001_EDITOR_TECH_STACK.md`.

## Evidência que interrompeu o avanço anterior

No aparelho foi possível manter simultaneamente:

- toolset visual `Volume` ativo;
- seleção `Terreno editável 5`;
- recomendação `Moldar relevo`;
- nenhuma ferramenta de Volume ativa;
- necessidade de abrir outra aba para editar.

Essa combinação demonstrou que modo, seleção, recomendação e ferramenta eram estados paralelos.

## R0 — pesquisa e refoundation

Estado: **concluída**.

Entregue:

- diagnóstico da contradição V5;
- estudo de padrões Godot, Blender, Unity, Stride e Bevy;
- contrato de regiões e toolsets;
- decisão sobre Kotlin, C# e Rust;
- fases R1–R12;
- fluxos dourados;
- V5 marcada como reprovada.

## R1 — domínio e máquina de estados

Estado: **fundação implementada e testada; integração com UI ainda pendente**.

### Novo módulo

```text
:editor-domain
```

O módulo é Kotlin/JVM e não depende de Compose.

### Tipos implementados

- `EditorSelection`;
- `EditorSelectionKind`;
- `EditorToolset`;
- `EditorToolId`;
- `ViewportInteractionMode`;
- `EditorCapability`;
- `EditorContextState`;
- `EditorIntent`;
- `EditorTransition`;
- `PendingEditorOperation`;
- `EditorDomainEffect`;
- `EditorDiagnostic`.

### Registries implementados

- `EditorToolRegistry`;
- `EditorCommandRegistry`.

### Reducer implementado

`EditorContextReducer` controla:

- alteração de seleção;
- ativação de toolset;
- ativação de ferramenta;
- seleção/criação de alvo compatível;
- confirmação de conversão;
- cancelamento;
- diagnóstico;
- fallback para Object quando a seleção se torna incompatível.

### Invariantes aplicadas

- `Volume` não pode ficar ativo sobre Terrain;
- `Terrain` só fica ativo com Terrain selecionado;
- `Mesh` só fica ativo com malha editável;
- `Volume` só fica ativo com volume voxel;
- `Material` exige alvo renderizável;
- ferramenta sempre pertence ao toolset ativo;
- ferramenta sempre exige capability disponível;
- ferramenta mutável não pode ficar ativa em seleção bloqueada;
- breadcrumb é derivado do mesmo estado, não armazenado separadamente.

### Fluxos implementados

#### Terrain

Terrain selecionado + ativar Terrain:

```text
Terrain toolset + TerrainNavigateTool
```

Não existe segunda ativação de Ferramentas no domínio.

#### Primitiva para malha

```text
Activate Mesh
→ Pending ConfirmConversion
→ ConfirmConversion
→ seleção EDITABLE_MESH
→ Mesh toolset
→ MeshVertexSelect
```

#### Malha para volume

```text
Activate Volume
→ Pending ConfirmConversion
→ ConfirmConversion
→ seleção VOXEL_VOLUME
→ Volume toolset
→ VolumeAdd
```

#### Alvo incompatível

```text
Activate toolset
→ Pending SelectOrCreateTarget
→ estado ativo anterior permanece coerente
→ confirmar alvo ativa toolset e ferramenta atomicamente
```

### Testes adicionados

- Volume sobre Terrain gera decisão pendente, não estado contraditório;
- Terrain selecionado ativa Navigate imediatamente;
- primitiva solicita uma conversão explícita;
- conversão atualiza seleção, toolset e ferramenta atomicamente;
- cancelar mantém o contexto anterior;
- troca para seleção incompatível volta a Object;
- ferramenta de outro toolset é rejeitada;
- tool registry filtra ferramentas por capability;
- command registry deriva conversões pela seleção;
- construção manual de estado contraditório lança exceção.

### CI

O pipeline agora executa separadamente:

```text
:editor-domain:test
testDebugUnitTest
:app:assembleDebug
```

Os testes do domínio, testes Android e compilação do APK passaram nesta etapa.

## O que R1 ainda não faz

- não substitui ainda o estado da V5 na UI;
- não conecta `WorkspaceViewModel` ao reducer;
- não projeta `SceneDocument` em `EditorSelection`;
- não executa os efeitos de criação/conversão no repositório;
- não possui region layout persistente;
- não possui input router;
- não remove a UI V5.

Essas integrações serão feitas antes de considerar R1 totalmente encerrada e antes de desenhar R2.

## Fundações anteriores preservadas

- camadas persistentes;
- migração de cenas;
- visibilidade, bloqueio e Solo;
- `SceneDocument`;
- histórico transacional;
- correção ARGB;
- free cam sem presets;
- pinça sem escala nativa de objetos;
- cancelamento de stroke com segundo dedo.

## Decisão de linguagem

- Kotlin permanece no host Android e shell Compose;
- regras do editor saem da UI para `editor-domain`;
- C# não será adotado somente por aparência visual;
- Rust não será usado para UI;
- Rust poderá ser testado em R11 para kernels medidos de terrain, mesh e voxel.

## Próximo passo técnico

Concluir R1 com adapters entre:

```text
SceneDocument
↔ EditorSelection/Capabilities
↔ EditorContextReducer
↔ WorkspaceViewModel
```

Depois disso começa R2 — shell de regiões e design system.

## Critério de honestidade

O APK compilado nesta rodada ainda contém a interface V5 e não representa um novo resultado visual. Ele serve apenas para confirmar que o novo módulo de domínio convive com o projeto. Não será apresentado como APK de validação de UX.