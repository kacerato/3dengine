# Contrato de paridade — interface completa baseada no Godot

## Propósito

Este documento impede que a expressão “interface no sentido do Godot” seja reduzida a uma paleta escura, botões parecidos ou uma viewport cercada por painéis.

A paridade é estrutural, funcional e visual. Cada elemento deve ser classificado como:

- `UPSTREAM`: herdado do editor Godot sem alteração funcional;
- `ADAPTADO`: preserva a função, com comportamento mobile adicional;
- `PRÓPRIO`: funcionalidade específica do Mobile Game Studio, integrada à arquitetura do editor;
- `PENDENTE`: ainda não validado;
- `REMOVIDO`: retirado com justificativa documentada.

Nenhum item pode desaparecer apenas para simplificar a primeira versão.

## 1. Project Manager

| Área | Estado inicial | Critério |
|---|---|---|
| Lista de projetos | UPSTREAM | Projetos recentes, favoritos, busca e ordenação funcionam |
| Criar projeto | UPSTREAM | Caminho, renderer, version control e pasta são configuráveis |
| Importar projeto | UPSTREAM | Pasta e ZIP suportados |
| Renomear/remover | UPSTREAM | Confirmação e recuperação de erro |
| Templates próprios | PRÓPRIO | Projetos mobile, veículo, mundo aberto e NoCode |
| Layout de telefone | ADAPTADO | Lista e ações não exigem precisão de mouse |

## 2. Barra global

| Elemento | Estado inicial | Critério |
|---|---|---|
| Cena | UPSTREAM | Novo, abrir, salvar, salvar como, fechar e sair |
| Projeto | UPSTREAM | Configurações, exportação, ferramentas e recarregamento |
| Depurar | UPSTREAM | Execução, profiler, breakpoints e opções de debug |
| Editor | UPSTREAM | Configurações, layouts, atalhos e plugins |
| Ajuda | UPSTREAM | Busca de classe, documentação e licenças |
| 2D | UPSTREAM | Editor principal real |
| 3D | UPSTREAM | Editor principal real |
| Script | UPSTREAM | Editor, navegação, diagnostics e debugger |
| AssetLib | UPSTREAM | Navegação e instalação quando disponível |
| NoCode | PRÓPRIO | Editor principal, não uma janela solta |
| World | PRÓPRIO | Plugin/editor contextual integrado ao 3D |
| Run/Pause/Stop | UPSTREAM | Projeto, cena atual e jogo incorporado |

## 3. Dock esquerdo superior — Cena e Importar

### Cena

- múltiplas raízes e nós;
- expansão e recolhimento;
- seleção sincronizada com viewport e Inspector;
- busca;
- criação e instanciação;
- reparent;
- drag and drop;
- duplicação e exclusão;
- edição de nome;
- indicadores de script, visibilidade, warning e owner;
- menu de contexto;
- Undo/Redo;
- suporte a toque longo;
- área visual compacta e área de toque ampliada invisivelmente.

### Importar

- opções derivadas do tipo de recurso;
- reimportação;
- presets;
- mensagens de erro;
- progressos longos sem congelar a interface.

## 4. Dock esquerdo inferior — Sistema de Arquivos

- `res://` como raiz do projeto;
- favoritos;
- árvore e lista;
- busca;
- breadcrumb;
- criação de pasta e recurso;
- renomear, mover, duplicar e excluir;
- drag and drop para a cena e Inspector;
- thumbnails;
- detecção de alterações externas;
- importação assíncrona;
- menu de contexto por toque longo;
- compartilhamento/importação pelo seletor de arquivos Android.

## 5. Região central

### Abas de cena

- várias cenas abertas;
- indicador de alteração não salva;
- fechar individualmente;
- reordenar;
- menu contextual;
- persistir após restauração de processo quando seguro.

### Toolbar contextual

A toolbar muda conforme:

- editor 2D/3D/Script;
- tipo do nó selecionado;
- plugin ativo;
- ferramenta atual;
- estado do jogo incorporado.

Ela não pode ser uma lista fixa de botões globais.

### Viewport 2D

- seleção;
- pan e zoom;
- rulers e guides;
- grid e snap;
- anchors e containers;
- gizmos;
- edição de Control;
- canvas items;
- plugins contextuais.

### Viewport 3D

- câmera livre;
- perspectiva/ortográfica;
- seleção;
- gizmos de mover, girar e escalar;
- local/global;
- snap;
- grid;
- view menu;
- iluminação e ambiente de preview;
- isolamento e visibilidade;
- plugins de Terrain, veículo e voxel;
- mouse, teclado, toque e stylus.

### Script

- várias abas;
- árvore de métodos;
- minimap quando viável;
- syntax highlighting;
- autocomplete;
- diagnostics;
- busca e substituição;
- breakpoints;
- call stack;
- documentação contextual;
- integração de Lua futura sem criar editor separado superficial.

## 6. Dock direito

### Inspector

- propriedade por tipo;
- seções recolhíveis;
- busca;
- revert;
- reset;
- edição de recurso inline;
- resource picker;
- arrays e dicionários;
- sinais visuais de override;
- documentação;
- histórico de seleção;
- plugins de Inspector;
- edição contínua com Undo/Redo.

### Nó

- sinais;
- grupos;
- conexões;
- metadata quando aplicável.

### Histórico

- navegação por objetos e recursos inspecionados;
- retorno sem perder o contexto da cena.

## 7. Painel inferior

- Saída;
- Depurador;
- Erros e warnings;
- resultados de busca;
- profiler;
- áudio;
- animação;
- shader editor;
- painéis de plugins;
- expandir, recolher e redimensionar;
- manter o viewport utilizável;
- teclado virtual não cobrir linha ativa.

## 8. Sistema de docks e layout

### Tela ampla

- comportamento próximo ao desktop;
- docks simultâneos;
- redimensionamento;
- reordenação quando suportada;
- layouts salvos;
- modo sem distrações.

### Telefone em paisagem

- região central permanece dominante;
- dock tocado pode ocupar lateral ou bottom sheet;
- uma ação fecha ou troca o dock sem navegar para outra tela;
- Scene Tree e FileSystem mantêm relação visual;
- Inspector não vira formulário isolado desconectado da cena;
- painel inferior continua parte do mesmo editor;
- estado dos docks é persistido.

### Entrada

| Entrada | Comportamento |
|---|---|
| Mouse | Semântica desktop upstream |
| Teclado | Atalhos upstream e remapeamento |
| Toque | Seleção, drag, pinch, pan e toque longo |
| Stylus | Precisão, pressão quando a ferramenta suportar e rejeição de palma |
| Gamepad | Navegação opcional e preview, não substitui toque |

## 9. Identidade visual

A identidade será própria, mas não destruirá a hierarquia reconhecível do editor.

- nome: Mobile Game Studio;
- logo: próprio;
- ícones de produto: próprios quando forem marca;
- ícones funcionais do upstream: mantidos inicialmente com licenças preservadas;
- tema escuro profissional;
- densidade próxima ao Godot;
- tamanho visual compacto;
- hit targets mobile ampliados sem transformar tudo em cards gigantes;
- sem neon;
- sem gradientes decorativos;
- sem barra tripla de botões grandes;
- sem duplicar a mesma ação em várias regiões.

## 10. Funcionalidades próprias e local correto

| Funcionalidade | Integração correta |
|---|---|
| Terrain/World | Plugin 3D + Inspector + recursos/nós |
| Veículos | Nós, recursos, gizmos e Inspector plugins |
| NoCode | Main screen plugin + graph editor + debugger |
| Lua | Script language/module + Script editor + debugger |
| Assistente | Dock/plugin e command palette |
| Conversor legado | Import plugin e ferramenta de projeto |
| Templates mobile | Project Manager e Asset Library própria |

## 11. Critério de rejeição

Uma build é rejeitada quando qualquer uma destas condições ocorre:

- interface vira novamente uma tela Compose ao redor de uma viewport;
- botões grandes consomem mais área que o conteúdo editado;
- Scene Tree, FileSystem ou Inspector são substituídos por telas independentes;
- toolbars não mudam de acordo com contexto;
- seleção do viewport contradiz Scene Tree ou Inspector;
- uma função existente no Godot é removida apenas para acelerar a entrega;
- tocar em uma seção navega para longe do editor sem necessidade;
- docks perdem o estado ao rotacionar;
- branding próprio remove atribuições obrigatórias;
- o APK é chamado de paridade antes de passar pelo checklist completo.

## 12. Primeira meta visual

A primeira captura aceita deve mostrar simultaneamente:

1. barra global e main screens;
2. Scene Tree;
3. FileSystem;
4. uma cena aberta na região central;
5. toolbar contextual 3D;
6. Inspector;
7. painel inferior recolhido ou aberto;
8. identidade Mobile Game Studio sem aparência de shell Compose;
9. proporções e densidade comparáveis ao editor Godot da referência.
