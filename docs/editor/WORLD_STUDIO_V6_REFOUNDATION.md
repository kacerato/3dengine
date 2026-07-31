# World Studio V6 — refoundation do editor de autoria

## Estado

Este documento substitui o avanço direto da Fase 4 do plano V4.

A experiência V5 foi **reprovada na validação de aparelho**. Ela resolveu o crash de cor e recuperou uma tela dedicada, mas manteve uma falha estrutural: o modo visual ativo, a seleção, a ferramenta efetivamente ativa e o painel aberto podiam representar estados contraditórios.

Exemplo observado em aparelho:

- modo visual ativo: `Volume`;
- seleção: `Terreno editável 5`;
- contexto recomendado: `Moldar relevo`;
- nenhuma ferramenta de volume ativada;
- o usuário ainda precisava abrir `Ferramentas` para começar a editar.

Esse estado não deve ser escondido pela interface. Ele agora é bloqueado pelo modelo de domínio.

## Progresso

- **R0 — concluída:** pesquisa, contrato e decisão de stack;
- **R1 — concluída:** domínio, registries, adapters, `WorkspaceViewModel`, transações e testes;
- **R2 — próxima:** shell de regiões e design system;
- **R3 — pendente:** projeção visual completa dos toolsets e ferramentas.

A interface V5 permanece temporariamente na branch apenas como shell legado. Ela não é a base visual da V6.

---

## 1. Diagnóstico

### 1.1 O problema não era simplesmente Kotlin

Jetpack Compose consegue construir regiões, docks, listas, painéis, overlays e superfícies responsivas. O problema era uma composição monolítica que concentrava navegação, seleção, modos, painéis, ferramentas, compatibilidade, comandos e input.

Quando esses estados eram independentes, a interface permitia combinações incoerentes.

### 1.2 Sintomas da V5

- clicar em Terreno, Malha ou Volume mudava principalmente uma aba visual;
- a ferramenta real continuava em outro painel;
- `Criar`, `Ações` e `Ferramentas` apareciam como destinos permanentes, embora fossem funções contextuais;
- seleção incompatível podia permanecer ativa ao trocar de modo;
- breadcrumb e recomendação podiam contradizer o modo selecionado;
- o usuário precisava memorizar uma sequência de cliques;
- o viewport não possuía um contrato único de posse dos gestos;
- decisões de domínio viviam dentro da composição Compose.

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

## 3. Modelo mental autoritativo

```text
EditorIntent
    ↓
EditorContextReducer / Resolver
    ↓
EditorToolRegistry + EditorCommandRegistry
    ↓
EditorTransaction
    ↓
SceneDocument
    ↓
Derived Editor UI
```

A UI não decide diretamente o que é válido. Ela apresenta o estado derivado pelo domínio.

### 3.1 Estado central

```kotlin
data class EditorContextState(
    val selection: EditorSelection,
    val activeToolset: EditorToolset,
    val activeTool: EditorToolId,
    val interactionMode: ViewportInteractionMode,
    val capabilities: Set<EditorCapability>,
    val pendingOperation: PendingEditorOperation?,
    val diagnostic: EditorDiagnostic?,
)
```

### 3.2 Invariantes

- `TERRAIN` ativo exige Terrain selecionado;
- `MESH` ativo exige malha editável;
- `VOLUME` ativo exige volume voxel;
- `MATERIAL` ativo exige alvo renderizável compatível;
- uma ferramenta ativa sempre declara qual input possui;
- uma troca de toolset resulta em ferramenta utilizável, escolha necessária, conversão ou retorno ao estado anterior;
- breadcrumb nunca contradiz o toolset;
- `Criar`, `Ações` e `Ferramentas` não são toolsets principais;
- uma alteração de cena que não muda a seleção não apaga uma operação pendente;
- criar alvo incompatível durante uma escolha não substitui silenciosamente a seleção;
- conversões publicam documento, seleção, toolset e ferramenta atomicamente.

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

#### Main Region

- viewport 3D;
- sempre a maior região;
- sem toolbar duplicada dentro da cena.

#### Tool Shelf

- aparece automaticamente para o toolset ativo;
- contém somente ferramentas compatíveis;
- recolhível;
- não exige clicar em `Ferramentas`.

#### Scene / Outliner

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

#### Asset Browser

- região inferior ou drawer;
- filtros derivados do contexto;
- aplicação ao alvo;
- não é modo principal.

#### Command Palette

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

Cada toolset é um contexto real, não uma aba decorativa.

### 4.3 Comportamento mobile

- viewport permanece visível durante edição;
- Tool Shelf usa lateral ou bottom sheet conforme espaço;
- Inspector e Outliner não ficam ambos ocupando permanentemente a tela compacta;
- drawers possuem largura máxima e rolagem integral;
- alvos de toque possuem no mínimo 44 dp;
- texto explica ações críticas;
- regiões retornam à posição anterior ao reabrir;
- teclado virtual não cobre o campo editado;
- rotação preserva seleção, toolset, ferramenta, operação pendente e câmera;
- paisagem é o primeiro alvo sem assumir resolução fixa.

---

## 5. Contrato de ativação dos toolsets

### 5.1 Object

Ao tocar em Object:

1. ativa `OBJECT_SELECT`;
2. mantém a seleção atual;
3. mostra transformação, duplicação, exclusão e hierarquia;
4. free cam continua disponível fora do gizmo;
5. Tool Shelf apresenta seleção e transformação.

### 5.2 Terrain

#### Terrain já selecionado

1. ativa `TERRAIN_NAVIGATE` imediatamente;
2. mostra Tool Shelf de Terrain;
3. Inspector mostra Terrain e Brush;
4. nenhuma segunda abertura de painel é necessária.

#### Terrain existe, mas outro objeto está selecionado

1. abre um seletor curto de terrains existentes;
2. permite criar um Terrain;
3. não ativa Terrain sobre objeto incompatível.

### 5.3 Mesh

#### Malha editável selecionada

- entra diretamente em seleção de vértice;
- Tool Shelf apresenta operações registradas.

#### Primitiva selecionada

- apresenta `Tornar editável`;
- a confirmação adiciona `EditableMeshComponent` por transação;
- seleção, toolset e ferramenta mudam juntos.

### 5.4 Volume

#### Volume selecionado

- ativa ferramentas voxel;
- apresenta adicionar, remover, suavizar e corte.

#### Malha editável selecionada

- oferece `Converter para volume` com resolução;
- a conversão é transacional;
- Undo restaura malha e contexto coerente.

#### Terrain selecionado

- Volume não é ativado silenciosamente;
- oferece escolher volume, criar volume ou cancelar.

### 5.5 Material

- identifica Terrain, malha ou volume renderizável;
- abre materiais compatíveis;
- mostra slots e camadas;
- pintura só é ativada após material/camada válida.

---

## 6. Arquitetura de módulos

### 6.1 Kotlin / Android

Responsável por:

- Activity e lifecycle;
- permissões e armazenamento;
- integração Android;
- shell Compose;
- acessibilidade e toque;
- navegação de alto nível;
- integração da superfície de renderização.

### 6.2 `editor-domain`

Independente de Compose e Android:

```text
editor-domain/
  selection/
  context/
  tools/
  commands/
  operations/
  diagnostics/
```

Responsável por:

- intents;
- estado coerente;
- capabilities;
- transições;
- tools e commands;
- operações pendentes;
- diagnósticos;
- invariantes.

### 6.3 Adapter do editor

`EditorDomainAdapter.kt` traduz componentes persistentes para seleção de domínio sem criar dependência inversa.

### 6.4 `WorkspaceViewModel`

Coordena:

- transações no `SceneDocument`;
- histórico;
- reducer;
- execução dos efeitos;
- publicação atômica do estado;
- persistência e autosave.

### 6.5 Compose

Na R2/R3 será responsável somente por:

- observar `EditorContextState`;
- emitir `EditorIntent`;
- renderizar regiões;
- medir layout;
- acessibilidade;
- animações leves;
- persistência do arranjo das regiões.

### 6.6 Render e input

- render permanece em módulo próprio;
- input bruto é normalizado antes do domínio;
- câmera, gizmo e ferramenta não recebem o mesmo gesto;
- cada ponteiro possui owner explícito;
- cancelamento é obrigatório na mudança de owner.

---

## 7. Decisão de linguagem

A decisão completa está em `docs/architecture/ADR-0001_EDITOR_TECH_STACK.md`.

Resumo:

- Kotlin permanece no host Android;
- regras do editor vivem fora do Compose;
- C# não será adotado apenas para copiar aparência desktop;
- Rust não será usado para UI;
- Rust poderá ser avaliado em kernels de Terrain, Mesh e Voxel somente após benchmark;
- nenhuma linguagem entra sem custo de build, debugging e manutenção documentados.

---

## 8. Plano revisado de fases

### R0 — pesquisa e refoundation

Estado: **concluída**.

### R1 — domínio e máquina de estados

Estado: **concluída**.

Entregue:

- `EditorIntent`;
- `EditorContextState`;
- reducer;
- registries;
- capabilities;
- operações pendentes;
- adapter de cena;
- integração com `WorkspaceViewModel`;
- conversões transacionais;
- sincronização em load/save/undo/redo/criação;
- testes de domínio e integração.

Gate aprovado:

- estados contraditórios não são representáveis;
- contexto e documento permanecem sincronizados;
- operações pendentes sobrevivem a alterações irrelevantes;
- conversões são atômicas e reversíveis;
- testes e APK compilam.

### R2 — shell de regiões e design system

Estado: **próxima fase**.

Entregáveis:

- Header;
- Main Region;
- Tool Shelf;
- Outliner;
- Inspector;
- Asset Browser;
- Command Palette;
- overlays de decisão;
- comportamento compacto e amplo;
- tokens de espaço, tipografia, raio, borda e estados;
- persistência do layout.

Gate:

- não existir estado visual fora de `EditorContextState` para toolset/ferramenta/seleção;
- viewport permanecer utilizável em celular paisagem;
- rotação preservar contexto;
- todos os componentes terem estados normal, pressed, disabled, loading e error quando aplicável;
- captura visual em resoluções-alvo sem truncamento ou sobreposição.

### R3 — toolsets conectados ao shell

- Object;
- Terrain;
- Mesh;
- Volume;
- Material;
- Tool Shelf derivada do registry;
- Inspector derivado da seleção;
- Command Palette derivada dos comandos;
- operações pendentes apresentadas como decisões explícitas.

### R4 — input, free cam e gizmos

- `PointerOwner` explícito;
- arbitragem câmera/gizmo/brush;
- cancelamento por segundo dedo;
- gizmos touch-first;
- testes de multitoque.

### R5 — Terrain end-to-end

- criação;
- navegação;
- brushes;
- materiais;
- patches;
- expansão, recorte e resolução;
- undo por stroke;
- diagnóstico de custo.

### R6 — Mesh end-to-end

- vértices, arestas e faces;
- extrusão, subdivisão e transformações;
- modifiers;
- importação e conversão;
- undo transacional.

### R7 — Volume / Voxel end-to-end

- brushes;
- corte;
- extração de superfície;
- LOD;
- conversões;
- orçamento de memória.

### R8 — materiais, assets, água, vegetação e caminhos

### R9 — ambiente, iluminação e gameplay

### R10 — Lua e NoCode

### R11 — spike Rust condicionado a benchmark

### R12 — migração, remoção da V5 e consolidação

---

## 9. Fluxos dourados

### Terrain

```text
Selecionar Terrain
→ tocar Terrain
→ Terrain Navigate ativo
→ Tool Shelf visível
→ escolher brush
→ editar
→ Undo
```

### Primitiva para Mesh

```text
Selecionar cubo
→ tocar Mesh
→ confirmar Tornar editável
→ documento + seleção + toolset + ferramenta mudam juntos
→ editar vértices
→ Undo restaura primitiva e Object
```

### Terrain para Volume

```text
Selecionar Terrain
→ tocar Volume
→ Volume não ativa
→ escolher volume existente, criar ou cancelar
→ somente alvo compatível ativa Volume
```

### Malha para Volume

```text
Selecionar malha editável
→ tocar Volume
→ confirmar voxelização
→ documento + seleção + toolset + ferramenta mudam juntos
→ editar voxel
```

---

## 10. Critério de honestidade

R1 é uma fundação lógica concluída. O APK gerado nessa fase ainda utiliza o shell visual V5 e não representa uma nova UX. A primeira entrega visual V6 somente ocorrerá após R2 e R3 consumirem o domínio e passarem por validação em aparelho.
