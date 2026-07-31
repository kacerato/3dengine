# Mobile Game Studio — refoundation sobre o editor Android do Godot

## Estado da decisão

- **Aprovada:** 2026-07-31.
- **Base anterior:** preservada apenas como legado e fonte de funcionalidades reaproveitáveis.
- **World Studio V6 R2:** reprovado como direção visual.
- **Nova branch:** `feature/godot-editor-refoundation`.
- **Upstream inicial:** Godot `4.6.3-stable`, commit `35e80b3a8822a9df9be390814b62f44c0a9c69e8`.

## Motivo

O editor atual possui um preview 3D funcional, porém a interface geral ainda se comporta como um aplicativo com botões grandes em volta de uma viewport. Ele não possui a profundidade estrutural de um editor de jogos consolidado.

O objetivo não é mais desenhar uma tela "inspirada no Godot". O objetivo é partir da arquitetura real do editor Godot e transformar essa base em um produto próprio, mobile-first e com identidade própria.

A reconstrução visual em Jetpack Compose foi descartada como base principal porque exigiria reimplementar manualmente sistemas que já existem e são maduros no Godot:

- Project Manager;
- múltiplas cenas abertas;
- Scene Tree;
- FileSystem e importação;
- Inspector e histórico;
- editores 2D, 3D e Script;
- Asset Library;
- Output e Debugger;
- Animation;
- Shader Editor;
- sistema de plugins;
- Undo/Redo integrado;
- layouts, docks e persistência;
- seleção, gizmos e ferramentas contextuais;
- exportação e execução de projetos.

## Decisão de arquitetura

### Produto principal

O aplicativo principal passará a ser um **derivado do editor Android do Godot**.

```text
Godot 4.6.3 Android Editor
        ↓
Mobile Game Studio patch layer
        ↓
Branding próprio + UX mobile + plugins próprios
        ↓
Terrain / veículos / NoCode / Lua / templates mobile
```

### Código Kotlin atual

O aplicativo Kotlin existente não será apagado imediatamente. Ele será congelado como camada de legado para:

- comparar o preview 3D atual;
- extrair recursos que tenham valor real;
- manter exemplos de terreno, voxel, Lua e NoCode;
- servir como conversor temporário de projetos;
- evitar perder conhecimento já produzido.

Ele deixa de ser o shell final do editor.

### Fonte de verdade

A fonte de verdade do editor passa a ser o modelo de cena, recursos, plugins e histórico do Godot.

O `SceneDocument` atual será tratado como formato legado. Será criado um importador para converter projetos antigos em:

- `.godot`;
- `.tscn` / `.scn`;
- recursos `.tres` / `.res`;
- scripts e assets em `res://`.

## Escopo visual obrigatório

A interface deve preservar a estrutura e a densidade do Godot, com adaptações somente onde o toque exige.

### Barra superior

- menus `Cena`, `Projeto`, `Depurar`, `Editor` e `Ajuda`;
- troca entre `2D`, `3D`, `Script`, `AssetLib` e workspaces próprios;
- execução, pausa, parada e execução da cena;
- renderer e estado do projeto;
- atalhos e menus contextuais reais.

### Região esquerda

- dock `Cena` com árvore hierárquica;
- aba `Importar`;
- criação, instanciação, reparent, duplicação e exclusão;
- busca de nós;
- indicadores de script, visibilidade, aviso e estado;
- dock `Sistema de Arquivos` abaixo;
- favoritos, pastas, busca, importação, drag and drop e menu de contexto.

### Região central

- abas de cenas abertas;
- editor principal selecionado;
- toolbar contextual do editor 2D, 3D, Script ou plugin;
- viewport dominante;
- gizmos, snap, câmera, visualização, ambiente e ferramentas;
- suporte a distraction-free mode;
- preview/jogo incorporado quando viável.

### Região direita

- `Inspector`;
- `Nó`;
- `Histórico`;
- busca de propriedades;
- seções recolhíveis;
- editores de propriedades por tipo;
- documentação contextual;
- plugins de inspector.

### Região inferior

- `Saída`;
- `Depurador`;
- resultados de busca;
- áudio;
- animação;
- shader;
- painéis adicionados por plugins;
- recolhimento e expansão sem destruir o viewport.

### Project Manager

Também será reconstruído sobre a base real do Godot:

- criar projeto;
- importar projeto;
- lista de projetos;
- pesquisa e tags;
- renderer;
- caminho;
- abrir, renomear, remover e importar ZIP;
- templates próprios;
- projetos recentes;
- recuperação de projeto inválido.

## Adaptação mobile

"Exata interface" significa preservar estrutura, hierarquia, comportamento e aparência geral. Não significa copiar cegamente dimensões de desktop onde isso tornaria o editor inutilizável no toque.

### Regras

- modo paisagem como alvo principal;
- suporte a tablet, dobrável e telefone grande;
- mouse e teclado mantêm o comportamento desktop;
- toque simples seleciona;
- toque longo abre menu de contexto;
- pinça controla zoom;
- dois dedos deslocam ou orbitam conforme o editor;
- drawers podem substituir docks simultâneos em telas estreitas;
- o layout de desktop é preservado em telas amplas;
- controles pequenos podem receber uma área invisível de toque maior sem aumentar visualmente o botão;
- teclado virtual não pode cobrir o campo ativo;
- docks e cenas abertas sobrevivem à rotação;
- stylus deve ser tratado separadamente de toque quando disponível.

## Funcionalidades próprias

Não serão adicionadas como telas soltas. Entrarão pelo sistema de plugins e editores principais do Godot.

### World / Terrain

Plugin de editor com:

- criação de terreno;
- sculpt;
- pintura;
- vegetação;
- água;
- caminhos;
- camadas;
- streaming e LOD;
- ferramentas registradas na toolbar 3D e Inspector.

### Veículos

- nós e recursos próprios;
- editor de handling;
- rodas, suspensão, transmissão e câmera;
- templates de carro;
- importação GLB;
- preview e teste no editor.

### NoCode

Editor principal adicional, no mesmo nível de 2D/3D/Script:

- graph editor;
- eventos;
- ações;
- variáveis;
- componentes;
- geração ou interpretação runtime;
- debug visual.

### Lua

- integração como linguagem ou módulo de scripting;
- editor com syntax highlighting;
- diagnostics;
- hot reload;
- bindings controlados;
- integração ao debugger.

### Assistente

- dock próprio;
- pesquisa de comandos e documentação;
- criação de nós, scripts e recursos;
- revisão explícita antes de mutações destrutivas.

## Licença e identidade

O código do Godot pode ser usado, modificado e distribuído comercialmente sob MIT, desde que o copyright e a licença sejam incluídos.

O produto terá:

- nome próprio;
- logo próprio;
- application ID próprio;
- splash próprio;
- documentação de terceiros;
- `LICENSE.txt` do Godot;
- `COPYRIGHT.txt` e avisos das dependências;
- tela `Licenças de código aberto`.

O nome e o logo Godot não serão usados como identidade do produto. A descrição poderá informar que o produto deriva de software Godot sob MIT, sem sugerir endosso oficial.

## Estratégia de upstream

Não será feito um copy-paste sem rastreabilidade.

```text
upstream tag fixada
        ↓
branch de integração
        ↓
patches pequenos e documentados
        ↓
plugins/módulos próprios isolados
        ↓
rebase periódico e controlado
```

Cada modificação no núcleo deve explicar:

- por que não pode ser plugin;
- arquivo upstream alterado;
- comportamento original;
- comportamento novo;
- risco de conflito em atualização;
- teste que protege a alteração.

## Fases

### G0 — fundação e upstream

- fixar versão e commit;
- bootstrap reproduzível;
- build do editor Android original;
- arquivo de licenças;
- artifact sem alterações funcionais.

### G1 — branding seguro

- nome e package;
- ícone e splash próprios;
- textos e links;
- tela de licenças;
- remover impressão de produto oficial Godot.

### G2 — interface Godot validada no Android

- Project Manager;
- menus;
- main screens;
- docks;
- scene tabs;
- Inspector;
- bottom panel;
- layouts persistentes;
- teste de toque, mouse e teclado.

### G3 — perfil mobile

- comportamento compacto;
- drawers em telefone;
- stylus;
- teclado virtual;
- escala visual independente da área de toque;
- presets de layout por classe de dispositivo.

### G4 — migração do preview e projetos

- comparar renderer atual com viewport Godot;
- importar formato legado;
- converter materiais, transforms, terrain e scripts;
- preservar projetos de teste.

### G5 — World/Terrain

### G6 — veículos

### G7 — NoCode

### G8 — Lua

### G9 — assets e importadores

### G10 — exportação mobile

### G11 — performance, crashes e recuperação

### G12 — remoção final do shell Kotlin legado

## Gates obrigatórios

Nenhuma etapa será aprovada somente por compilar.

Cada gate exige:

- build reproduzível;
- testes automatizados;
- APK em aparelho;
- capturas em telefone e tablet;
- abertura repetida;
- rotação;
- teclado virtual;
- toque, mouse e teclado;
- projeto salvo e reaberto;
- ausência de perda de cena;
- lista explícita das limitações restantes.

## Primeira entrega válida

A primeira entrega não será uma nova tela Compose.

Ela será:

1. editor Android upstream compilado;
2. nome/package próprios;
3. licença preservada;
4. interface completa do Godot funcionando;
5. artifact instalável;
6. lista de diferenças entre upstream e o produto.
