# World Studio V5 — contrato de UX e validação

> **ESTADO: REPROVADA E SUPERADA PELA REFOUNDATION V6**
>
> A V5 corrigiu o crash ARGB, restaurou a free cam e voltou a usar um workspace dedicado. Entretanto, foi reprovada na validação funcional porque permite estados contraditórios entre toolset, seleção, recomendação e ferramenta ativa.
>
> Caso comprovado em aparelho: `Volume` aparece ativo, `Terreno editável 5` continua selecionado, a barra recomenda `Moldar relevo` e nenhuma ferramenta de Volume é iniciada. O usuário precisa clicar separadamente em `Ferramentas`, portanto os botões superiores funcionam como filtros visuais, não como contextos de edição completos.
>
> A Fase 4 original permanece pausada. O novo plano está em `WORLD_STUDIO_V6_REFOUNDATION.md`.

## Motivo da reprovação

A interface V5 mantém estados independentes para:

- modo superior;
- seleção;
- painel lateral;
- ferramenta ativa;
- recomendação contextual;
- interação do viewport.

Por isso, combinações inválidas são representáveis. A correção não será outro rearranjo de botões. A V6 introduzirá uma máquina de estados e um registro de ferramentas antes de redesenhar o shell.

## Partes preservadas

- workspace dedicado como direção de produto;
- viewport como região principal;
- free cam sem presets artificiais;
- painéis roláveis e recolhíveis;
- ARGB das camadas convertido com `Color(Int)`;
- pinça sem escalar objetos;
- segundo dedo cancelando stroke;
- camadas persistentes;
- `SceneDocument` e histórico transacional.

## Partes descartadas

- `Objetos`, `Terreno`, `Materiais`, `Malha` e `Volume` como simples estado visual;
- `Criar`, `Ações` e `Ferramentas` como abas globais equivalentes;
- necessidade de clicar no toolset e depois abrir Ferramentas;
- recomendação contextual independente do toolset;
- painel monolítico como autoridade das regras;
- possibilidade de toolset incompatível permanecer ativo.

---

## Contrato histórico da V5

O conteúdo abaixo permanece somente como registro do que foi testado e rejeitado.

## Princípios originalmente propostos

1. O viewport é sempre a região principal.
2. A free cam não recebe botões de enquadramento, presets ou foco automático.
3. Painéis são secundários, roláveis, recolhíveis e nunca reduzem o viewport a uma faixa estreita em celular.
4. Ferramentas mudam conforme modo e seleção.
5. Navegação e edição de superfície não usam o mesmo gesto ao mesmo tempo.
6. Ações descrevem efeito, dependência e próxima etapa.
7. Camadas organizam autoria sem substituir a hierarquia de objetos.

## Estrutura visual histórica

### Cabeçalho

- Voltar ao editor;
- nome do workspace;
- desfazer/refazer;
- salvar;
- jogar/parar.

### Modos de autoria

- Objetos;
- Terreno;
- Materiais;
- Malha;
- Volume.

### Regiões auxiliares

- Estrutura;
- Criar;
- Ações contextuais;
- Ferramentas;
- Assets.

Em telas amplas, os painéis podiam ficar encaixados. Em celular paisagem, eles abriam sobre o viewport.

## Estrutura e camadas

O painel Estrutura possuía duas visões:

- Camadas: criar, selecionar, renomear, ordenar, ocultar, bloquear, isolar e atribuir a seleção;
- Objetos: objetos agrupados por camada, preservando o tipo e a seleção ativa.

As cores das camadas usam ARGB convencional de 32 bits convertido para `Color(Int)`. É proibido usar `Color(colorArgb.toULong())`.

## Criação histórica

O painel Criar separava fontes de geometria de gameplay e cena. A validação mostrou que Criar deve virar palette/comando contextual na V6, não uma aba global.

## Ações contextuais históricas

O painel consultava `resolveWorldAuthoringContext()`, mas o resultado não era acoplado atomicamente ao modo superior. Essa separação permitiu o estado contraditório observado.

## Ferramentas históricas

### Objetos e malha

- selecionar;
- mover;
- rotacionar;
- escalar.

### Terreno e materiais

- Navegar;
- Esculpir ou Pintar;
- operação;
- raio;
- força;
- altura-alvo;
- falloff.

O problema não foi a existência dessas ferramentas, e sim exigir uma segunda navegação para ativá-las.

## Resultado da validação

A V5 passou em compilação e eliminou o crash conhecido, mas falhou nos critérios essenciais:

- fluxo direto entre toolset e ferramenta;
- coerência entre seleção e modo;
- clareza da próxima ação;
- impossibilidade de estados inválidos;
- sensação de editor integrado.

Ela não deve ser usada como base para a Fase 4 sem a refoundation V6.