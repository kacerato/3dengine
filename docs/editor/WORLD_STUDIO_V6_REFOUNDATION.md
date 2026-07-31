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

Jetpack Compose consegue construir regiões, docks, listas, painéis, overlays e superfícies responsivas. O problema atual é o uso de uma composição monolítica que concentra navegação, seleção, modos, painéis, ferramentas, compatibilidade, comandos e input.

Quando esses estados são independentes, a interface permite combinações incoerentes.

### 1.2 Sintomas atuais

- clicar em Terreno, Malha ou Volume muda principalmente uma aba visual;
- a ferramenta real continua em outro painel;
- `Criar`, `Ações` e `Ferramentas` aparecem como destinos permanentes, embora sejam funções contextuais;
- seleção incompatível pode permanecer ativa ao trocar de modo;
- o breadcrumb e a recomendação podem contradizer o modo selecionado;
- o usuário precisa memorizar uma sequência de cliques que a interface deveria resolver;
- o viewport não recebe um contrato único de posse dos gestos;
- decisões de domínio vivem dentro da composição Compose.

### 1.3 Decisão de produto

A V5 não será promovida como fundação visual. Permanecem as correções comprovadas:

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
- ferramentas especializadas sem transformar cada comando em aba principal.

Referências: repositório `godotengine/godot`, `EditorPlugin`, `EditorNode`, `SceneTreeDock`, `InspectorDock`, navegação 3D e plugins de tela principal.

### 2.2 Blender

Padrões adotados:

- workspace como organização de tarefa;
- área principal dedicada a um editor;
- regiões com papéis distintos: main region, header, toolbar e sidebar;
- regiões recolhíveis e redimensionáveis;
- gizmos como manipuladores de dados, não substitutos da câmera;
- modos coerentes com o tipo de dado em edição.

### 2.3 Unity

Padrões adotados:

- `EditorTool` com ativação e desativação explícitas;
- ferramentas de contexto dependentes do tipo de alvo;
- overlays movíveis, recolhíveis e ocultáveis;
- Terrain tools disponíveis quando existe Terrain selecionado;
- ferramentas agrupadas por domínio.

### 2.4 Outras engines open source

Stride demonstra separação forte entre engine, editor e assets em C#, mas é orientada a editor desktop. Bevy demonstra um núcleo Rust orientado a dados e ECS, mas não é substituição imediata para o shell mobile.

### 2.5 Síntese

O padrão comum não é uma linguagem específica. É a separação entre contexto de edição, registro de ferramentas, regiões, seleção, comandos transacionais e roteamento de input.

---

## 3. Novo modelo mental

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

### Estado central

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

### Invariantes

- `TERRAIN` ativo exige Terrain selecionado ou operação pendente para selecionar/criar Terrain;
- `MESH` ativo exige malha editável, primitiva convertível ou operação pendente;
- `VOLUME` ativo exige volume voxel ou conversão explicitamente aceita;
- `MATERIAL` ativo exige alvo renderizável compatível;
- uma ferramenta ativa sempre declara qual input possui;
- troca de toolset sempre resulta em ferramenta utilizável, escolha necessária ou retorno ao modo anterior;
- barra de contexto nunca contradiz o toolset;
- `Criar`, `Ações` e `Ferramentas` não são toolsets principais.

---

## 4. Estrutura visual V6

### Regiões estáveis

**Header:** voltar, cena, salvar, undo/redo, play/stop e estado de persistência.

**Main region:** viewport 3D como maior região.

**Tool shelf:** aparece automaticamente para o toolset ativo, contém somente ferramentas compatíveis e é recolhível.

**Scene/Outliner:** hierarquia, camadas, visibilidade, bloqueio e seleção.

**Inspector:** propriedades do alvo, componentes e parâmetros da ferramenta ativa.

**Asset browser:** região inferior ou drawer com filtros derivados do contexto.

**Command palette:** busca, criação, ações e conversões; substitui abas permanentes `Criar` e `Ações`.

### Toolsets principais

- Object;
- Terrain;
- Mesh;
- Volume;
- Material.

Cada toolset é um contexto real, não aba decorativa.

### Comportamento mobile

- viewport permanece visível;
- shelf usa lateral ou bottom sheet conforme espaço;
- Inspector e Outliner não ocupam simultaneamente telas compactas;
- drawers têm largura máxima e rolagem integral;
- ações críticas usam texto;
- layout não assume resolução fixa.

---

## 5. Contrato de ativação

### Object

Ativa `SelectTool`, mantém seleção, mostra transformação e preserva free cam fora do gizmo.

### Terrain

- Terrain selecionado: ativa `TerrainNavigateTool` e shelf imediatamente;
- outro alvo selecionado: oferece Terrain existente;
- nenhum Terrain: cria, seleciona e entra em Navigate;
- não existe segundo clique em Ferramentas.

### Mesh

- malha editável: entra em seleção de vértice/aresta/face;
- primitiva: oferece `Tornar editável` e entra atomicamente;
- alvo incompatível: oferece selecionar/criar, sem ativar Mesh falsamente.

### Volume

- volume selecionado: ativa voxel tools;
- malha editável: oferece conversão transacional;
- Terrain selecionado: oferece criar, escolher ou cancelar; nunca fica ativo silenciosamente.

### Material

Exige Terrain, malha ou volume renderizável; pintura só ativa após material/camada válida.

---

## 6. Arquitetura de módulos

### Kotlin/Android

Permanece responsável por lifecycle, permissões, armazenamento, shell Compose, acessibilidade, toque, navegação de alto nível e integração da superfície de renderização.

### Núcleo de editor independente de UI

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

Não importa Compose. Contém intents, estado, reducer, resolver, registries, capabilities, operações pendentes, histórico e diagnóstico.

### UI Compose

Observa estado, emite intents, renderiza regiões, mede layout e cuida de acessibilidade. Não decide compatibilidade ou transações.

### Render e input

Render não decide seleção/toolset. Input bruto é normalizado. Câmera, gizmo e ferramenta nunca recebem o mesmo gesto; cada ponteiro possui owner explícito.

---

## 7. Decisão de linguagem

Detalhes em `docs/architecture/ADR-0001_EDITOR_TECH_STACK.md`.

- não reescrever shell Android em Rust;
- não migrar para C# por aparência;
- extrair primeiro domínio sem Compose;
- medir terrain, mesh e voxel;
- considerar Rust somente para kernels comprovadamente limitados;
- nenhuma linguagem nova sem benchmark e custo documentado.

---

## 8. Plano revisado de fases

### R0 — pesquisa e refoundation

Auditoria V5, referências, ADR, contrato de toolsets, fluxos dourados, V5 reprovada e Fase 4 pausada.

### R1 — domínio e máquina de estados

Entregáveis: `EditorIntent`, `EditorContextState`, reducer, resolver, tool registry, command registry, capabilities, operações pendentes e testes.

Testes obrigatórios:

- `Volume` não permanece ativo sobre Terrain sem escolha/conversão pendente;
- `Terrain` ativo exige Terrain selecionado, criado ou escolhido;
- toolset e breadcrumb coincidem;
- toolset compatível abre ferramenta padrão automaticamente;
- conversão altera seleção e ferramenta atomicamente;
- cancelar restaura estado anterior.

Gate: estados contraditórios não são representáveis.

### R2 — shell de regiões e design system

Header, main region, shelf, outliner, inspector, asset browser, command palette, layout compacto/amplo e tokens visuais.

### R3 — toolsets conectados à seleção

Object, Terrain, Mesh, Volume e Material com ativação atômica, escolha/criação/conversão e shelf automático.

### R4 — input, free cam e gizmos

`ViewportInputRouter`, pointer ownership, orbit/pan/zoom, seleção, gizmos, strokes e matriz multitouch.

### R5 — Terrain end-to-end

Criar, navegar, esculpir, suavizar, nivelar, expandir/recortar, resolução, chunks, collider, persistência e Undo/Redo.

### R6 — Mesh end-to-end

Primitiva, conversão, vértice/aresta/face, transform, extrude, inset, subdivide, modifiers, collider e persistência.

### R7 — Volume/Voxel end-to-end

Criar, converter, add/subtract/smooth, cavernas, surface extraction, collider, chunks/LOD e persistência.

### R8 — materiais, assets e camadas

Slots, layers, masks, PBR, filtros, aplicação, visibilidade, bloqueio, Solo e dependências.

### R9 — gameplay validado

Player, collider, movimento, câmera follow/look, pulo, Play/Stop e retorno ao editor.

### R10 — Lua e NoCode

Bindings tipados, arquivos, vínculo, eventos, erros, debugging e templates.

### R11 — spike Rust condicionado a benchmark

Heightmap, topologia, voxel brushes, surface extraction e grandes diffs; exige benchmark, JNI aceitável, crash isolation, build estável e fallback Kotlin.

### R12 — migração e consolidação

Migrar cenas, remover V4/V5 UI, eliminar geradores temporários, consolidar testes, documentação, acessibilidade e desempenho.

---

## 9. Fluxos dourados

### Terrain

```text
Abrir Mundo → Terrain → selecionar/criar → Navigate ativo → Raise → editar → Navegar → salvar
```

### Cubo para malha

```text
Criar cubo → selecionar → Mesh → Tornar editável → Vertex Select → editar → salvar
```

### Malha para volume

```text
Selecionar malha → Volume → confirmar resolução → Voxel tools → editar → superfície/collider
```

### Mundo jogável

```text
Terrain válido → player → collider → camera rig → Play → mover/olhar/pular → Stop
```

---

## 10. Critérios de aceitação

- nenhum estado contraditório;
- cada toolset inicia ferramenta real ou decisão clara;
- shelf automático;
- Outliner e Inspector estáveis;
- Criar/Ações como comandos contextuais;
- viewport e free cam preservados;
- input com owner;
- operações transacionais;
- Undo/Redo cobre conversões e strokes;
- testes de domínio sem Compose;
- testes de aparelho cobrem multitouch;
- linguagem nova somente com benchmark.

## 11. Próxima implementação autorizada

A próxima etapa é **R1 — domínio e máquina de estados do editor**.

Não será criado outro layout antes de representar toolsets, ferramentas e seleção no domínio; impedir estados contraditórios; definir ativação/cancelamento/conversão; e separar comandos da composição visual.