# ADR-0001 — stack técnica do editor mobile

- **Estado:** aceito e validado pela R1
- **Data:** 2026-07-31
- **Escopo:** shell Android, domínio do editor, render, terrain, mesh, voxel, scripting e possíveis módulos nativos

## Contexto

A validação do World Studio V5 mostrou uma interface visualmente mais ampla, porém ainda desconectada do domínio. Era possível ativar `Volume` mantendo um Terrain selecionado e receber uma recomendação de Terrain, porque a UI Compose mantinha estados paralelos para modo, painel, seleção e ferramenta.

Surgiu a hipótese de que Kotlin/Compose estaria limitando a qualidade do editor e que C# ou Rust poderiam resolver o problema.

Esta ADR separa problemas de arquitetura de problemas de desempenho e define onde cada tecnologia faz sentido.

## Decisão

### 1. Manter Kotlin no host Android

Kotlin permanece responsável por:

- Activity e lifecycle;
- integração Android;
- armazenamento e permissões;
- navegação de alto nível;
- acessibilidade;
- normalização de toque;
- shell Compose;
- integração da superfície de renderização;
- comunicação com serviços da plataforma.

A aparência e a coerência do editor não dependem de trocar Kotlin por outra linguagem. Dependem de uma arquitetura de regiões, ferramentas e contexto.

### 2. Manter regras de domínio fora da UI Compose

Foi criado o módulo:

```text
:editor-domain
```

Ele contém:

- `EditorIntent`;
- `EditorContextState`;
- reducer/state machine;
- seleção;
- toolsets;
- ferramentas;
- capabilities;
- comandos;
- operações pendentes;
- diagnósticos e invariantes.

O módulo é Kotlin/JVM e não depende de Android, Compose, Filament ou `SceneDocument`.

A R1 validou essa fronteira com testes e integração real no `WorkspaceViewModel`.

### 3. Usar adapter explícito entre cena e domínio

O módulo Android `editor` contém `EditorDomainAdapter.kt`, responsável por traduzir:

```text
SceneDocument / GameObject / componentes
                 ↕
EditorSelection / SelectionKind / locked
```

Consequências:

- `core:model` não conhece a interface do editor;
- `editor-domain` não conhece componentes serializados;
- Compose não classifica objetos;
- seleção e capabilities podem ser testadas sem renderização;
- uma futura troca do formato de cena não exige reescrever a máquina de estados.

### 4. Usar `WorkspaceViewModel` como coordenador transacional

O `WorkspaceViewModel` integra:

- `SceneDocument`;
- `SceneCommandHistory`;
- `EditorContextReducer`;
- execução dos efeitos de criação e conversão;
- persistência;
- estado publicado para a UI.

Documento, seleção, toolset e ferramenta são publicados juntos nas conversões. Undo/Redo recalculam um contexto compatível.

### 5. Não migrar o shell para C# nesta etapa

C# é viável em engines e editores desktop, como Stride, mas uma migração do shell Android adicionaria:

- outro runtime;
- outra cadeia de build;
- nova ponte com Android;
- maior custo de integração com Compose/Views;
- risco de duplicar o domínio;
- nenhuma garantia automática de UX melhor.

C# poderá ser reavaliado somente se um editor desktop compartilhado se tornar objetivo oficial.

### 6. Não reescrever a UI em Rust

Rust não será usado para:

- telas;
- docks;
- formulários;
- navegação Android;
- acessibilidade;
- gestos de alto nível.

Isso criaria uma ponte complexa sem atacar a causa da incoerência de estado.

### 7. Permitir Rust somente como kernel medido

Rust poderá ser testado em R11 para operações isoladas:

- heightmap e filtros de Terrain;
- topologia de malha;
- voxel brushes;
- extração de superfície;
- simplificação/LOD;
- diffs de grandes buffers.

A adoção exige:

- benchmark reproduzível;
- ganho relevante em aparelho-alvo;
- ABI estreita;
- ownership de memória documentado;
- cancelamento seguro;
- testes de fuzz quando aplicável;
- símbolos de crash utilizáveis;
- fallback Kotlin;
- build Android para ABIs suportadas;
- custo JNI menor que o ganho.

### 8. Manter render separado do domínio

O módulo de renderização não decide seleção, toolset ou comando. Ele recebe uma projeção de cena e eventos normalizados.

O domínio não depende de Filament, Compose ou Android.

### 9. Fronteiras finais

```text
Android Host / Compose UI
        ↓ intents / state
Editor Domain
        ↓ transitions / effects
WorkspaceViewModel + SceneCommandHistory
        ↓ scene transactions
Scene Model
        ↓ render projection
Runtime / Renderer
        ↓ optional buffer API
Native Performance Kernels — future Rust spike
```

## Validação da decisão na R1

Foram comprovados por testes:

- `Volume + Terrain` não pode ser construído como estado ativo;
- Terrain selecionado ativa sua ferramenta padrão sem segunda aba;
- uma primitiva solicita conversão explícita antes de Mesh;
- conversão atualiza documento e contexto atomicamente;
- Undo restaura documento e contexto coerente;
- uma operação pendente sobrevive a alterações irrelevantes;
- criar alvo incompatível não substitui silenciosamente a seleção;
- testes de domínio, testes Android e compilação do APK passam juntos.

Isso confirma que a causa principal era arquitetura de estado, não incapacidade do Kotlin ou Compose.

## Alternativas consideradas

### Continuar acrescentando estados na tela Compose

Rejeitada. Foi o padrão que permitiu a contradição V5 e aumentou a necessidade de botões intermediários.

### Migrar imediatamente tudo para C#

Rejeitada. Alto custo, foco desktop e ausência de benefício direto para a UX mobile atual.

### Migrar imediatamente tudo para Rust

Rejeitada. Rust é adequado a kernels e sistemas, mas não resolve sozinho arquitetura de editor e interação Android.

### Incorporar diretamente o editor do Godot

Rejeitada como caminho imediato. O editor Godot foi construído para sua própria arquitetura e plataforma. Seus padrões serão reutilizados, mas ele não é um componente drop-in para este aplicativo.

### Manter Kotlin, mas modularizar

Aceita e validada. Corrige a fonte real do problema e mantém aberta a possibilidade de kernels nativos posteriormente.

## Consequências positivas

- estados contraditórios são bloqueados por testes;
- UI pode ser refeita sem duplicar regras;
- render pode evoluir independentemente;
- Rust entra apenas onde trouxer ganho mensurável;
- Android continua usando suas APIs nativas;
- ferramentas são registradas por tipo e capability;
- maior testabilidade;
- menor risco de regressões visuais alterarem regras de cena;
- conversões e Undo/Redo permanecem transacionais.

## Consequências negativas

- exige refatoração antes de novas funcionalidades visuais;
- parte da V5 será descartada;
- existem temporariamente shell V5 e domínio V6 na mesma branch;
- mais módulos aumentam o trabalho inicial de build e integração;
- um futuro kernel Rust exigirá manutenção de FFI.

## Critérios para revisar esta ADR

A decisão será revista quando ocorrer pelo menos uma destas condições:

1. editor desktop vira requisito oficial;
2. benchmark mostra gargalo que Kotlin/JVM não atende;
3. renderer atual impede requisitos de produto;
4. JNI/NDK se torna dependência inevitável;
5. a equipe assume capacidade permanente de manter C# ou Rust.

## Resultado

A R2 pode reconstruir o shell Compose sobre um estado único e testado. Nenhuma troca de linguagem será usada como substituto para arquitetura, benchmark ou validação em aparelho.
