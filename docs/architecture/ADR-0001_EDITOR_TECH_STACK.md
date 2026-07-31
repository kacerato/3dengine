# ADR-0001 — stack técnica do editor mobile

- **Estado:** aceito para a refoundation V6
- **Data:** 2026-07-31
- **Escopo:** shell Android, domínio do editor, render, terrain, mesh, voxel, scripting e possíveis módulos nativos

## Contexto

A validação do World Studio V5 mostrou uma interface visualmente mais ampla, porém ainda desconectada do domínio. O usuário pode ativar `Volume` mantendo um Terrain selecionado e receber uma recomendação de Terrain. Isso acontece porque a UI Compose mantém estados paralelos para modo, painel, seleção e ferramenta.

Surgiu a hipótese de que Kotlin/Compose estaria limitando a qualidade do editor e que C# ou Rust poderiam resolver o problema.

Esta ADR separa problemas de arquitetura de problemas de desempenho e define onde cada tecnologia pode fazer sentido.

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

### 2. Retirar regras de domínio da UI Compose

Será criado um módulo de domínio sem dependência de Compose:

```text
editor-domain
```

Ele conterá:

- `EditorIntent`;
- `EditorContextState`;
- reducer/state machine;
- seleção;
- toolsets;
- ferramentas;
- capabilities;
- comandos;
- operações pendentes;
- transações;
- diagnóstico;
- regras de migração.

Compose passará a ser uma projeção do estado, não a autoridade das regras.

### 3. Não migrar o shell para C# nesta etapa

C# é viável em engines e editores desktop, como Stride, mas uma migração do shell Android adicionaria:

- outro runtime;
- outra cadeia de build;
- nova ponte com Android;
- maior custo de integração com Compose/Views;
- risco de duplicar o domínio;
- nenhuma garantia automática de uma UX melhor.

C# poderá ser reavaliado apenas se o produto adotar um editor desktop compartilhado como objetivo estratégico.

### 4. Não reescrever a UI em Rust

Rust não será usado para:

- telas;
- docks;
- formulários;
- navegação Android;
- acessibilidade;
- gestos de alto nível.

Isso criaria uma ponte complexa sem atacar a causa da incoerência de estado.

### 5. Permitir Rust somente como kernel medido

Rust poderá ser testado em R11 para operações isoladas:

- heightmap e filtros de terrain;
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

### 6. Manter render separado do domínio

O módulo de renderização não decide seleção, toolset ou comando. Ele recebe uma projeção de cena e eventos normalizados.

O domínio não depende de Filament, Compose ou Android.

### 7. Definir fronteiras

```text
Android Host / Compose UI
        ↓ intents / state
Editor Domain
        ↓ commands / scene operations
Scene Model + Transactions
        ↓ render projection
Runtime / Renderer
        ↓ optional buffer API
Native Performance Kernels (future Rust spike)
```

## Alternativas consideradas

### Continuar acrescentando estados na tela Compose

Rejeitada. Foi o padrão que permitiu a contradição V5 e aumentou a necessidade de botões intermediários.

### Migrar imediatamente tudo para C#

Rejeitada. Alto custo, foco desktop e ausência de benefício direto para a UX mobile atual.

### Migrar imediatamente tudo para Rust

Rejeitada. Rust é adequado a kernels e sistemas, não resolve sozinho arquitetura de editor e interação Android.

### Incorporar diretamente o editor do Godot

Rejeitada como caminho imediato. O editor Godot foi construído para sua própria arquitetura e plataforma. Seus padrões serão reutilizados, mas não será tratado como componente drop-in para este aplicativo.

### Manter Kotlin, mas modularizar

Aceita. É o caminho de menor risco para corrigir a fonte real do problema e mantém aberta a possibilidade de kernels nativos posteriormente.

## Consequências positivas

- estados contraditórios podem ser bloqueados por testes de domínio;
- UI pode ser refeita sem duplicar regras;
- render pode evoluir independentemente;
- Rust entra apenas onde trouxer ganho mensurável;
- Android continua usando suas APIs nativas;
- ferramentas podem ser registradas por tipo e capability;
- maior testabilidade;
- menor risco de regressões visuais alterarem regras de cena.

## Consequências negativas

- exige refatoração antes de novas funcionalidades;
- parte da V5 será descartada;
- teremos temporariamente duas arquiteturas na branch;
- será necessário migrar comandos existentes;
- mais módulos aumentam o trabalho inicial de build e DI;
- um futuro kernel Rust exigirá manutenção de FFI.

## Critérios para revisar esta ADR

A decisão será revista quando ocorrer pelo menos uma destas condições:

1. editor desktop vira requisito oficial;
2. benchmark mostra gargalo que Kotlin/JVM não atende;
3. renderer atual impede requisitos de produto;
4. JNI/NDK já se torna dependência inevitável;
5. a equipe assume capacidade permanente de manter C# ou Rust.

## Resultado

A refoundation V6 começa com domínio e máquina de estados em Kotlin multiplataforma/JVM-compatible, sem Compose. O shell Android continua em Kotlin/Compose. Rust é uma opção futura condicionada a benchmark, não uma resposta estética.