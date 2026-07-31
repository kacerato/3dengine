# World Studio V6 — refoundation do editor de autoria

## Estado

Este documento substitui o avanço direto da Fase 4 do plano V4.

A experiência V5 foi **reprovada na validação de aparelho**. Ela resolveu o crash de cor e recuperou uma tela dedicada, mas manteve uma falha estrutural: o modo visual ativo, a seleção, a ferramenta efetivamente ativa e o painel aberto podem representar estados contraditórios.

Exemplo observado em aparelho:

- modo visual ativo: `Volume`;
- seleção: `Terreno editável 5`;
- contexto recomendado: `Moldar relevo`;
- nenhuma ferramenta de volume ativada;
- o usuário ainda precisa abrir `Ferramentas` para começar a editar.

Esse estado não deve ser apenas escondido pela interface. Ele deve ser impossível no modelo de domínio.

A V6 começa por uma refoundation do editor, não por outra troca de cores, ícones ou disposição de botões.

---

## 1. Diagnóstico

### 1.1 O problema não é simplesmente Kotlin

Jetpack Compose consegue construir regiões, docks, listas, painéis, overlays e superfícies responsivas. O problema atual é o uso de uma composição monolítica que concentra:

- navegação do workspace;
- seleção;
- modos de autoria;
- visibilidade dos painéis;
- ativação de ferramentas;
- validação de compatibilidade;
- comandos de cena;
- mensagens de próxima ação;
- roteamento de gestos.

Quando esses estados são independentes, a interface permite combinações incoerentes.

### 1.2 Sintomas atuais

- clicar em Terreno, Malha ou Volume muda principalmente uma aba visual;
- a ferramenta real continua em outro painel;
- `Criar`, `Ações` e `Ferramentas` aparecem como destinos permanentes, embora sejam funções contextuais;
- seleção incompatível pode permanecer ativa ao trocar de modo;
- o breadcrumb e a recomendação podem contradizer o modo selecionado;
- o usuário precisa memorizar uma sequência de cliques que a interface deveria resolver;
- a UI apresenta muitas superfícies equivalentes, sem hierarquia operacional;
- o viewport não recebe um contrato único de posse dos gestos;
- o código visual contém decisões de domínio que deveriam viver fora do Compose.

### 1.3 Decisão de produto

A V5 não será promovida como fundação visual. As correções comprovadas permanecem:

- conversão ARGB segura das camadas;
- free cam sem presets artificiais;
- pinça sem escala nativa dos objetos;
- cancelamento de stroke com segundo dedo;
- camadas persistentes;
- histórico transacional;
- `SceneDocument` como fonte de verdade.

O shell, os modos e o fluxo de ativação de ferramentas serão reconstruídos.

---

## 2. Referências estudadas

### 2.1 Godot

Padrões adotados:

- telas principais orientadas por tarefa;
- Scene dock e Inspector como regiões estáveis;
- Inspector derivado do objeto ou recurso selecionado;
- plugins capazes de declarar se manipulam determinado objeto;
- `_handles(object)` para compatibilidade;
- `_edit(object)` para estabelecer o alvo de edição;
- `_make_visible(visible)` para ativação do workspace;
- ferramentas especializadas sem transformar cada comando em uma aba principal.

Referências:

- repositório: `godotengine/godot`;
- `EditorPlugin`;
- `EditorNode`;
- `SceneTreeDock`;
- `InspectorDock`;
- documentação de navegação 3D e plugins de tela principal.

### 2.2 Blender

Padrões adotados:

- workspace como organização de tarefa;
- área principal dedicada a um editor;
- regiões com papéis distintos: main region, header, toolbar e sidebar;
- regiões recolhíveis e redimensionáveis;
- gizmos como manipuladores de dados, não como substitutos da câmera;
- modos coerentes com o tipo de dado em edição.

Referências:

- Window System;
- Workspaces;
- Areas e Editors;
- Regions;
- Gizmos.

### 2.3 Unity

Padrões adotados:

- `EditorTool` com ativação e desativação explícitas;
- ferramentas de contexto dependentes do tipo de alvo;
- overlays que podem ser movidos, recolhidos e ocultados;
- Terrain tools disponíveis quando existe um Terrain selecionado;
- ferramentas agrupadas por domínio, não espalhadas como navegação global.

Referências:

- Scene View Overlays;
- Scene View Tools Overlay;
- `EditorTools.EditorTool`;
- Terrain Tools.

### 2.4 Outras engines open source

#### Stride

Stride demonstra uma arquitetura forte em C# e um editor desktop completo. É referência para separação entre engine, editor e assets, mas não é uma solução direta para a UI Android deste projeto.

#### Bevy

Bevy demonstra um núcleo Rust orientado a dados e ECS. É referência para sistemas desacoplados e kernels de alto desempenho, mas não oferece uma substituição imediata para o shell de editor mobile.

### 2.5 Síntese

O padrão comum não é uma linguagem específica. É a separação entre:

1. contexto de edição;
2. registro de ferramentas;
3. região principal;
4. regiões auxiliares;
5. seleção;
6. comandos transacionais;
7. roteamento de input.

---

## 3. Novo modelo mental

### 3.1 Fluxo autoritativo

```text
EditorIntent
    ↓
EditorContextResolver
    ↓
EditorCommandRegistry
    ↓
EditorTransaction
    ↓
SceneDocument
    ↓
Derived Editor UI
```

A UI não decide diretamente o que é válido. Ela apresenta o estado derivado pelo domínio.

### 3.2 Estado central

```kotlin
data class EditorContextState(
    val selection: EditorSelection,
    val activeToolset: EditorToolset,
    val activeTool: EditorToolId,
    val interactionMode: ViewportInteractionMode,
    val regionLayout: EditorRegionLayout,
    val capabilities: Set<EditorCapability>,
    val pendingOperation: PendingEditorOperation?,
    val diagnostic: EditorDiagnostic?,
)
```

### 3.3 Invariantes

- `TERRAIN` ativo exige Terrain selecionado ou uma operação pendente para selecionar/criar Terrain.
- `MESH` ativo exige malha editável, uma primitiva convertível ou uma operação pendente.
- `VOLUME` ativo exige volume voxel ou conversão explicitamente aceita.
- `MATERIAL` ativo exige alvo renderizável compatível.
- uma ferramenta ativa sempre declara qual input possui;
- uma troca de toolset sempre resulta em ferramenta utilizável, escolha necessária ou retorno ao modo anterior;
- a barra de contexto nunca pode contradizer o toolset;
- `Criar`, `Ações` e `Ferramentas` não são toolsets principais.

---

## 4. Estrutura visual V6

### 4.1 Regiões estáveis

#### Header

- voltar;
- nome da cena;
- salvar;
- undo/redo;
- play/stop;
- estado de persistência.

#### Main region

- viewport 3D;
- sempre maior região;
- sem toolbar duplicada dentro da cena.

#### Tool shelf

- aparece automaticamente para o toolset ativo;
- contém somente ferramentas compatíveis;
- recolhível;
- não exige clicar em `Ferramentas`.

#### Scene/Outliner

- hierarquia;
- camadas;
- visibilidade;
- bloqueio;
- seleção.

#### Inspector

- propriedades do alvo selecionado;
- seções por componente;
- parâmetros da ferramenta em seção separada;
- não replica comandos globais.

#### Asset browser

- região inferior ou drawer;
- filtros derivados do contexto;
- drag/drop ou aplicar ao alvo;
- não é um modo principal.

#### Command palette

- busca de comandos;
- ações contextuais;
- criação;
- conversões;
- substitui as abas permanentes `Criar` e `Ações`.

### 4.2 Toolsets principais

- Object;
- Terrain;
- Mesh;
- Volume;
- Material.

Cada toolset é um contexto de edição real, não uma aba decorativa.

### 4.3 Comportamento mobile

- viewport permanece visível durante edição;
- tool shelf usa lateral ou bottom sheet conforme espaço;
- Inspector e Outliner não permanecem ambos ocupando o viewport em telas compactas;
- drawers possuem largura máxima e rolagem integral;
- alvos de toque respeitam tamanho mínimo;
- texto explica ações críticas; ícone sozinho é reservado a comandos universais;
- regiões retornam à posição anterior ao reabrir;
- teclado virtual não cobre o campo editado;
- orientação paisagem é o primeiro alvo, mas a arquitetura não assume uma resolução fixa.

---

## 5. Contrato de ativação dos toolsets

### 5.1 Object

Ao tocar em Object:

1. ativa `SelectTool`;
2. mantém a seleção atual;
3. mostra transform, duplicate, delete e hierarchy;
4. free cam continua disponível fora do gizmo;
5. tool shelf apresenta seleção e transformação.

### 5.2 Terrain

Ao tocar em Terrain:

#### Terrain já selecionado

1. ativa `TerrainNavigateTool` imediatamente;
2. mostra shelf de terrain;
3. Inspector mostra Terrain e Brush;
4. nenhuma segunda abertura de painel é necessária.

#### Terrain existe, mas outro objeto está selecionado

1. abre seletor curto com terrains existentes;
2. permite selecionar o último terrain usado;
3. não ativa Terrain sobre objeto incompatível.

#### Nenhum Terrain existe

1. apresenta `Criar terreno`;
2. configura tamanho, resolução e camada;
3. cria e seleciona;
4. entra em `TerrainNavigateTool`.

### 5.3 Mesh

#### Malha editável selecionada

- entra diretamente em seleção de vértice/aresta/face;
- tool shelf mostra operações reais.

#### Primitiva selecionada

- apresenta uma única conversão inline: `Tornar editável`;
- após confirmação, converte e entra no toolset.

#### Alvo incompatível

- oferece selecionar/criar malha;
- não deixa Mesh visualmente ativo sobre Terrain.

### 5.4 Volume

#### Volume selecionado

- ativa ferramentas voxel;
- mostra add/subtract/smooth/slice.

#### Malha editável selecionada

- oferece `Converter para volume` com resolução e aviso de perda;
- a conversão é transacional.

#### Terrain selecionado

- Volume não é ativado silenciosamente;
- oferece criar volume, escolher existente ou cancelar.

### 5.5 Material

- identifica Terrain, malha ou volume renderizável;
- abre materiais compatíveis;
- mostra slots e camadas;
- pintura só é ativada após material/camada válida.

---

## 6. Arquitetura de módulos

### 6.1 Kotlin/Android permanece responsável por

- Activity e lifecycle;
- permissões e armazenamento;
- integração com Android;
- shell Compose;
- acessibilidade e toque;
- navegação de alto nível;
- integração da superfície de renderização;
- comunicação com serviços da plataforma.

### 6.2 Núcleo de editor independente de UI

Novo módulo sugerido:

```text
editor-domain/
  context/
  commands/
  selection/
  tools/
  input/
  regions/
  transactions/
  diagnostics/
```

Não deve importar Compose.

Responsabilidades:

- `EditorIntent`;
- `EditorContextState`;
- `EditorContextReducer`;
- `EditorContextResolver`;
- `EditorCommandRegistry`;
- `EditorToolRegistry`;
- capability graph;
- transições válidas;
- mensagens de incompatibilidade;
- operações pendentes;
- Undo/Redo;
- diagnóstico.

### 6.3 UI Compose

Responsável apenas por:

- observar `EditorContextState`;
- emitir `EditorIntent`;
- renderizar regiões;
- medir layout;
- acessibilidade;
- animações leves;
- persistência do arranjo das regiões.

### 6.4 Render e input

- render permanece em módulo próprio;
- input bruto é normalizado antes do domínio;
- câmera, gizmo e ferramenta não recebem o mesmo gesto;
- cada ponteiro possui um owner explícito;
- cancelamento é obrigatório em mudança de owner.

---

## 7. Decisão de linguagem

A decisão completa está em `docs/architecture/ADR-0001_EDITOR_TECH_STACK.md`.

Resumo:

- não reescrever o shell Android em Rust;
- não migrar para C# apenas por aparência visual;
- extrair primeiro o domínio do editor para um módulo sem Compose;
- medir terrain, mesh e voxel;
- considerar Rust apenas para kernels comprovadamente limitados por CPU/memória;
- manter ABI estreita e dados serializáveis caso Rust seja adotado;
- nenhuma nova linguagem entra sem benchmark, custo de build, debugging e manutenção documentados.

---

## 8. Plano revisado de fases

## R0 — pesquisa e refoundation

Entregáveis:

- auditoria da V5;
- matriz de padrões Godot/Blender/Unity;
- ADR de stack;
- novo contrato de toolsets;
- fluxos dourados;
- V5 marcada como reprovada;
- Fase 4 anterior pausada.

Gate:

- nenhuma implementação visual nova antes da aprovação do contrato.

## R1 — domínio e máquina de estados do editor

Entregáveis:

- `EditorIntent`;
- `EditorContextState`;
- `EditorContextReducer`;
- `EditorContextResolver`;
- `EditorToolRegistry`;
- `EditorCommandRegistry`;
- capabilities;
- operações pendentes;
- testes de transição.

Testes obrigatórios:

- Terrain não pode ficar ativo sobre Terrain incompatível? (corrigir wording: Terrain exige Terrain; Volume não pode ficar ativo sobre Terrain);
- toolset e breadcrumb sempre coincidem;
- toolset compatível abre ferramenta padrão automaticamente;
- conversão confirmada altera seleção e ferramenta atomicamente;
- cancelar restaura estado anterior.

Gate:

- estados contraditórios não são representáveis.

## R2 — shell de regiões e design system

Entregáveis:

- header;
- main region;
- tool shelf;
- outliner;
- inspector;
- asset browser;
- command palette;
- comportamento compacto/amplo;
- tokens de espaço, tipografia, raio, elevação, borda e estados.

Gate:

- viewport nunca vira faixa estreita;
- todos os painéis possuem rolagem integral;
- nenhuma ação crítica depende apenas de símbolo obscuro.

## R3 — toolsets conectados à seleção

Entregáveis:

- Object;
- Terrain;
- Mesh;
- Volume;
- Material;
- ativação atômica;
- escolha/criação/conversão contextual;
- shelf automático;
- Inspector contextual.

Gate:

- tocar no toolset inicia um fluxo utilizável sem segunda aba de ferramentas.

## R4 — input, free cam e gizmos

Entregáveis:

- `ViewportInputRouter`;
- pointer ownership;
- orbit/pan/zoom;
- seleção;
- gizmos;
- terrain stroke;
- mesh selection;
- voxel brush;
- matriz multitouch;
- cancelamento seguro.

Gate:

- pinça nunca altera objeto;
- gesto de câmera nunca edita superfície;
- gizmo nunca move câmera;
- transição entre owners não deixa gesto residual.

## R5 — Terrain end-to-end

- criar;
- selecionar;
- navegar;
- esculpir;
- suavizar;
- nivelar;
- expandir/recortar;
- resolução;
- patches/chunks;
- collider;
- salvar/reabrir;
- Undo/Redo.

## R6 — Mesh end-to-end

- primitiva;
- conversão;
- seleção de vértice/aresta/face;
- move/rotate/scale;
- extrude;
- inset;
- subdivide;
- modifier stack;
- collider;
- persistência.

## R7 — Volume/Voxel end-to-end

- criar;
- converter;
- add/subtract/smooth;
- cavernas;
- surface extraction;
- collider;
- chunks/LOD;
- persistência.

## R8 — materiais, assets e camadas

- slots;
- layers;
- masks;
- PBR;
- asset filters;
- drag/apply;
- camadas do mundo;
- visibilidade/bloqueio/solo;
- dependências.

## R9 — gameplay validado

- player;
- collider;
- movimento;
- câmera follow/look;
- pulo;
- terreno/collider;
- Play/Stop;
- retorno ao editor.

## R10 — Lua e NoCode

- bindings tipados;
- criação em pasta;
- vínculo com objeto;
- eventos;
- erros;
- debugging;
- templates do player e câmera;
- equivalência de comportamento Lua/NoCode.

## R11 — spike Rust condicionado a benchmark

Candidatos:

- processamento de heightmap;
- operações de topologia;
- voxel brushes;
- surface extraction;
- diff/serialization em massa.

Gate:

- benchmark reproduzível;
- ganho relevante;
- custo de JNI aceitável;
- crash isolation;
- build Android estável;
- fallback Kotlin definido.

## R12 — migração e consolidação

- migrar cenas;
- remover V4/V5 UI;
- eliminar scripts geradores temporários;
- consolidar testes;
- documentação final;
- acessibilidade;
- desempenho;
- critérios de release.

---

## 9. Fluxos dourados

### 9.1 Terrain

```text
Abrir Mundo
→ tocar Terrain
→ selecionar Terrain existente ou criar
→ TerrainNavigate ativo
→ escolher Raise
→ editar
→ Navegar
→ salvar
→ reabrir
```

Não existe passo separado “abrir Ferramentas”.

### 9.2 Cubo para malha

```text
Criar cubo
→ selecionar cubo
→ tocar Mesh
→ confirmar Tornar editável
→ Vertex Select ativo
→ mover/extrudar
→ salvar
```

### 9.3 Malha para volume

```text
Selecionar malha editável
→ tocar Volume
→ confirmar resolução da conversão
→ Voxel Add/Subtract ativo
→ editar
→ gerar superfície/collider
```

### 9.4 Mundo jogável

```text
Terrain válido
→ criar player
→ gerar collider
→ configurar camera rig
→ Play
→ mover/olhar/pular
→ Stop
→ retornar ao mesmo contexto de edição
```

---

## 10. Critérios de aceitação antes de retomar funcionalidades avançadas

- não existe estado visual contraditório;
- cada toolset entra em ferramenta real ou apresenta uma decisão clara;
- tool shelf aparece automaticamente;
- Outliner e Inspector têm papéis estáveis;
- Criar e Ações são comandos contextuais, não modos globais;
- viewport preserva espaço e free cam;
- input possui owner;
- todas as operações alteram `SceneDocument` por transação;
- Undo/Redo cobre conversões e strokes;
- cenas antigas migram;
- testes de domínio independem de Compose;
- testes de aparelho cobrem multitouch;
- nenhuma nova linguagem é adotada sem benchmark.

---

## 11. Próxima implementação autorizada

A próxima etapa é **R1 — domínio e máquina de estados do editor**.

Não será criado outro layout antes de:

1. representar toolsets, ferramentas e seleção no domínio;
2. impedir estados contraditórios por testes;
3. definir ativação, cancelamento e conversão;
4. separar comandos da composição visual.

Somente depois disso o shell V6 será desenhado sobre um contrato funcional.