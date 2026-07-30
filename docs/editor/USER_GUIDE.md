# Guia geral do aplicativo

## Organização da interface

O editor utiliza uma estrutura de trabalho fixa, inspirada em editores 3D profissionais, sem sobrepor painéis importantes ao viewport.

### Barra superior

A barra superior concentra somente ações globais:

- voltar ao projeto;
- identificar o projeto aberto;
- alternar entre os workspaces;
- desfazer;
- refazer;
- salvar.

### Hierarquia à esquerda

A hierarquia mostra os objetos da cena atual agrupados por finalidade:

- **Mundo**: terrenos e volumes usados como ambiente;
- **Geometria**: cubos, planos, modelos importados e malhas editáveis;
- **Jogabilidade**: jogadores, veículos e controladores;
- **Cena**: câmera, luz e ambiente;
- **Interface**: joystick e botões de toque.

Tocar em um item seleciona o objeto. O indicador circular controla sua visibilidade.

### Viewport central

O viewport é a área principal. Ele exibe o resultado 3D e recebe gestos de edição apenas quando o workspace atual exige isso. Instruções permanentes, marcadores de câmera e botões de luz são ocultados no World Studio para não cobrir o conteúdo.

### Inspector à direita

O inspector é contextual. Ele muda conforme o workspace e o objeto selecionado. As propriedades são agrupadas em seções pequenas, evitando uma lista única de controles sem relação.

### Dock inferior

O dock de assets inicia recolhido. Ao expandi-lo, mostra modelos e imagens importados. No modo Textura, tocar em uma imagem a vincula à camada ativa do terreno; em outros modos, o asset é adicionado ou aplicado ao objeto selecionado.

## Workspaces

### Cena

Usado para organizar objetos, selecionar itens, configurar componentes e manipular transformações gerais.

### Mundo

Abre o World Studio com modos separados para terreno, pintura, objetos, malha, volume e navegação.

### Código

Gerencia e edita scripts Lua ligados aos objetos. Os arquivos permanecem dentro de `res://scripts/lua/`.

### NoCode

Gerencia grafos visuais ligados aos objetos. Os arquivos permanecem dentro de `res://visual-graphs/`.

### Assets

Mostra modelos, texturas, materiais, animações e áudio importados.

## Fluxo recomendado para criar um mundo

1. Crie ou selecione uma cena.
2. Abra o workspace Mundo.
3. Crie um terreno plano em **Moldar**.
4. Desenhe o relevo manualmente com Elevar, Escavar, Suavizar e Nivelar.
5. Abra **Textura**, selecione uma camada e pinte o terreno.
6. Importe imagens e associe albedo ou normal map à camada ativa.
7. Abra **Objetos** para adicionar e posicionar modelos.
8. Use **Malha** para editar vértices e faces de formas específicas.
9. Use **Volume** quando precisar de cavernas, túneis, destruição ou saliências.
10. Volte para **Navegar** para inspecionar sem alterar o mundo.
11. Salve a cena.

## Desfazer e salvar

As alterações de cena passam pelo histórico de comandos. Um traço completo de terreno corresponde a uma única entrada no histórico. Operações de malha e volume também atualizam o documento da cena e entram no fluxo de salvamento automático.

## Estado do projeto

A cena persistida é a fonte de verdade. O viewport é uma projeção descartável do documento e não armazena dados por conta própria. Isso evita que o que aparece em tela fique diferente do que será salvo.
