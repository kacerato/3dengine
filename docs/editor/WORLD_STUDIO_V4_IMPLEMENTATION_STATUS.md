# World Studio V6 — estado da implementação

## Estado atual

O World Studio V5 foi reprovado na validação de UX e permanece apenas como shell histórico da branch. A antiga Fase 4 continua substituída pelo cronograma V6.

A refoundation possui agora:

- **R0 concluída:** pesquisa, plano revisado e ADR de stack;
- **R1 concluída:** domínio, adapters de cena, integração com `WorkspaceViewModel`, transações e testes;
- **R2 ainda não iniciada:** o novo shell visual de regiões ainda não foi implementado.

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

Essa combinação demonstrou que modo, seleção, recomendação e ferramenta eram estados paralelos. A V6 passa a derivar todos esses elementos do mesmo `EditorContextState`.

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

## R1 — domínio, adapters e integração

Estado: **concluída e aprovada no gate automatizado**.

### Módulo independente

```text
:editor-domain
```

O módulo é Kotlin/JVM e não depende de Compose, Android, Filament ou do formato persistente da cena.

Contém:

- `EditorSelection` e `EditorSelectionKind`;
- `EditorToolset` e `EditorToolId`;
- `ViewportInteractionMode`;
- `EditorCapability`;
- `EditorContextState`;
- `EditorIntent` e `EditorTransition`;
- `EditorContextReducer`;
- `EditorToolRegistry`;
- `EditorCommandRegistry`;
- `PendingEditorOperation`;
- `EditorDomainEffect`;
- diagnósticos e invariantes.

### Adapter `SceneDocument` → domínio

Foi adicionado `EditorDomainAdapter.kt` para manter as fronteiras:

```text
SceneDocument / GameObject / componentes
                 ↓
EditorSelection / kind / locked
                 ↓
EditorContextReducer
```

O adapter:

- ignora o objeto técnico das camadas;
- identifica Terrain, voxel, malha editável, primitiva, renderizável, player, câmera, luz e UI;
- respeita a precedência do dado editável sobre a malha usada somente para visualização;
- deriva bloqueio pela camada real;
- atualiza capabilities após transações;
- preserva uma escolha/conversão pendente quando uma alteração não muda logicamente a seleção.

### Integração com `WorkspaceViewModel`

`WorkspaceUiState` agora contém um único `editorContext` derivado pelo domínio.

O `WorkspaceViewModel` passou a controlar:

- seleção por hierarquia ou viewport;
- ativação de toolset;
- ativação de ferramenta;
- cancelamento de operação pendente;
- escolha de alvo compatível;
- confirmação de conversão;
- sincronização após carregamento, edição, salvamento, undo e redo;
- sincronização após criar Terrain, malha, volume, primitiva, asset ou objeto técnico.

A UI V5 ainda não consome esse estado como shell definitivo. Essa projeção pertence às fases R2 e R3.

### Conversões transacionais

As conversões abaixo usam `SceneCommandHistory`:

```text
Primitiva
→ confirmar conversão
→ adicionar EditableMeshComponent
→ atualizar seleção, toolset e ferramenta
```

```text
Malha editável
→ confirmar voxelização
→ substituir EditableMeshComponent por VoxelVolumeComponent
→ atualizar seleção, toolset e ferramenta
```

Documento, seleção e ferramenta são publicados juntos. Undo restaura o documento e força novamente um contexto compatível.

### Invariantes aplicadas

- `Volume` não pode ficar ativo sobre Terrain;
- `Terrain` só fica ativo com Terrain selecionado;
- `Mesh` só fica ativo com malha editável;
- `Volume` só fica ativo com volume voxel;
- `Material` exige alvo renderizável;
- ferramenta sempre pertence ao toolset ativo;
- ferramenta sempre exige capability disponível;
- ferramenta mutável não permanece ativa em seleção bloqueada;
- breadcrumb é derivado do mesmo estado;
- uma escolha pendente não é apagada por uma alteração irrelevante da cena;
- criar um alvo incompatível durante uma escolha não troca silenciosamente a seleção;
- criação ou conversão compatível ativa alvo, toolset e ferramenta atomicamente.

### Testes de domínio

- estado `Volume + Terrain` não pode ser construído;
- Terrain selecionado ativa `TerrainNavigateTool` imediatamente;
- primitiva solicita conversão explícita;
- malha editável solicita conversão explícita para volume;
- cancelar mantém o contexto anterior;
- ferramenta de outro toolset é rejeitada;
- registries filtram por capability e bloqueio.

### Testes de integração Android

- componentes de cena são classificados corretamente pelo adapter;
- player não é confundido com sua malha primitiva visual;
- voxel e malha editável têm precedência sobre o renderer;
- seleção real de Terrain alimenta o toolset Terrain;
- pedir Volume sobre Terrain mantém Object/Terrain coerente e abre escolha;
- criar um alvo incompatível não substitui a seleção durante a escolha;
- conversão de primitiva atualiza documento, seleção e ferramenta atomicamente;
- Undo restaura a primitiva e retorna para Object.

### Gate automatizado

Passaram:

```text
:editor-domain:test
testDebugUnitTest
:app:assembleDebug
```

O artifact compilado ainda contém a interface V5. Ele comprova integração e regressão de build, mas não é uma entrega de UX V6.

## R2 — shell de regiões e design system

Estado: **próxima fase**.

A implementação deverá criar somente regiões derivadas de `EditorContextState`:

- Header;
- Main Region / viewport;
- Tool Shelf automática;
- Outliner;
- Inspector;
- Asset Browser;
- Command Palette;
- overlays de escolha, conversão e diagnóstico.

Regras obrigatórias:

- o viewport permanece a maior região;
- `Criar`, `Ações` e `Ferramentas` não voltam como abas globais equivalentes;
- trocar de toolset envia um `EditorIntent`, não altera estado local da composição;
- Tool Shelf mostra apenas ferramentas do registry;
- Inspector deriva da seleção e dos componentes;
- operação pendente aparece como decisão clara, com ação principal e cancelar;
- layout compacto usa drawers/bottom sheets sem manter painéis estreitando o viewport;
- rotação preserva seleção, toolset, ferramenta, operação pendente e câmera;
- alvos de toque respeitam no mínimo 44 dp;
- sem neon, gradientes decorativos ou cards sem função.

## R3 — conexão completa dos toolsets

R3 somente começa após o shell R2 passar por validação visual e estrutural.

Ela conectará:

- Object;
- Terrain;
- Mesh;
- Volume;
- Material;

às ferramentas e operações reais já registradas no domínio.

## Fundações anteriores preservadas

- camadas persistentes;
- migração de cenas;
- visibilidade, bloqueio e Solo;
- `SceneDocument` como fonte única;
- histórico transacional;
- correção ARGB;
- free cam sem presets;
- pinça sem escala nativa de objetos;
- cancelamento de stroke com segundo dedo.

## Decisão de linguagem

- Kotlin permanece no host Android e shell Compose;
- regras do editor vivem em `editor-domain`;
- C# não será adotado somente por aparência visual;
- Rust não será usado para UI;
- Rust poderá ser testado em R11 apenas para kernels medidos de Terrain, Mesh e Voxel.

## Critério de honestidade

R1 encerra a fundação lógica, não o redesign. Nenhum APK será apresentado como nova UX até o shell R2 existir, consumir o domínio e passar por teste em aparelho.
