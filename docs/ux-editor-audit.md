# Auditoria real de UX do editor

Data: 29/07/2026  
Build auditado: `0.2.0`  
Dispositivo inicial: AVD `Medium_Phone`, Android 17 / API 37, x86_64, 2 GB de RAM  
Tela: 1080 × 2400 px, 420 dpi; aplicativo em landscape efetivo de 2400 × 1080 px  
Escala de fonte: `1.0`

Esta auditoria foi feita antes da reconstrução do editor. Ela combina inspeção
visual no emulador, árvore de acessibilidade, métricas do processo e inspeção do
código responsável pelo layout. Compilar o APK não foi considerado evidência de
usabilidade.

## Evidências capturadas

- Home real: [`../build-audit-mgs-home.png`](../build-audit-mgs-home.png)
- Captura após a morte do processo ao abrir o editor:
  [`../build-audit-mgs-editor.png`](../build-audit-mgs-editor.png)
- Árvore da janela da Home:
  [`../build-audit-window-home.xml`](../build-audit-window-home.xml)
- Logcat integral da primeira execução:
  [`../build-audit-mgs-full-logcat.txt`](../build-audit-mgs-full-logcat.txt)
- Editor no mesmo AVD reiniciado com 4 GB:
  [`../build-audit-mgs-editor-4gb.png`](../build-audit-mgs-editor-4gb.png)
- Seleção real do cubo:
  [`../build-audit-mgs-selected-cube.png`](../build-audit-mgs-selected-cube.png)
- Cena depois de adicionar um cubo:
  [`../build-audit-mgs-after-add-cube.png`](../build-audit-mgs-after-add-cube.png)
- Cena salva e reaberta:
  [`../build-audit-mgs-reopen.png`](../build-audit-mgs-reopen.png)
- Home depois da reconstrução:
  [`../build-validation-final-home.png`](../build-validation-final-home.png)
- Shell final com Surface Filament full-width:
  [`../build-validation-final-shell.png`](../build-validation-final-shell.png)

## Problemas encontrados

| Tela/fluxo | Problema | Severidade | Reprodução | Causa encontrada | Solução planejada | Validação exigida |
|---|---|---:|---|---|---|---|
| Abrir Mountain Demo | O processo foi morto antes de o editor aparecer; a captura ficou preta e o UIAutomator não encontrou uma raiz de janela | P0 | Iniciar o AVD de 2 GB, instalar o APK, abrir Mountain Demo | O `lowmemorykiller` matou o processo foreground sob pressão global. O app estava com RSS de aproximadamente 238 MB; outros processos de sistema também estavam sendo mortos. O resultado não prova vazamento isolado, mas prova que esse ambiente não sustenta a abertura atual | Reduzir trabalho e superfícies simultâneas do editor; manter o viewport estável; não carregar painéis/assets pesados ao mesmo tempo; repetir na meta de 4 GB e medir novamente | Editor deve abrir e permanecer utilizável em AVD de 4 GB; registrar PSS/RSS, logcat e screenshot. O limite de 2 GB permanece conhecido até otimização específica |
| Home em landscape | A tela parece um launcher Material genérico, com área vazia excessiva, card muito alto e FAB desproporcional | P1 | Abrir o app no AVD em 2400 × 1080 | Layout usa `Scaffold`, `TopAppBar`, card arredondado e FAB sem uma composição própria de produto/editor | Criar home compacta de estúdio: projetos em cards técnicos, ação de novo projeto integrada, resumo da demo e hierarquia visual consistente com o editor | Screenshot real em landscape e teste de bounds; ação de criar/abrir continua funcional |
| Barras do sistema | Ícones da status bar aparecem escuros sobre fundo escuro na captura | P0 | Abrir a Home com edge-to-edge ativo | `enableEdgeToEdge()` está ativo, mas o contraste das barras não é configurado para o tema escuro | Configurar appearance light/dark corretamente e aplicar `safeDrawing` | Screenshot real com ícones legíveis e nenhum conteúdo sob cutout/status/navigation |
| Editor compacto | Em 640 × 360 dp o viewport estimado fica em apenas cerca de 254 × 154 dp | P0 | Renderizar `SceneWorkspace` em 640 × 360 | Hierarquia fixa de 168 dp + inspector de 218 dp + assets de 106 dp + topbar de 52 dp + navegação de 48 dp permanecem simultâneos | Novo `EditorShell`: viewport dominante e no máximo um painel inferior recolhível em celulares | Teste Compose mede bounds: viewport sem sobreposição, maior que o painel e ocupando ao menos 65% do corpo quando recolhido |
| Editor no AVD de 4 GB | O editor abre, mas hierarquia e inspector ocupam aproximadamente metade da largura; o viewport útil fica estreito e quase quadrado | P0 | Abrir Mountain Demo em 2400 × 1080 px | O layout de três colunas é aplicado a qualquer landscape, inclusive telefone; assets ainda retiram altura do centro | Usar política compacta para telefone mesmo quando a contagem bruta de pixels é alta; painéis viram dock inferior único | Screenshot posterior deve mostrar viewport como maior região da tela e nenhum painel lateral fixo em telefone |
| Hierarquia no AVD de 4 GB | Os seis comandos do cabeçalho aparecem severamente cortados e sobrepostos (`+ Cubo`, `+ Plano`, `+ Câmera`, `+ Luz`, duplicar e excluir) | P0 | Abrir Mountain Demo | Textos longos são forçados em `StudioTextButton` de 38 × 38 dp | Substituir pelo fluxo único `+ Adicionar`; mover duplicar/excluir para ações contextuais de 48 dp | Screenshot real sem texto cortado e criação de cubo em dois toques |
| Inspector no AVD de 4 GB | “Aplicar nome” é cortado em várias linhas e parte dos eixos fica fora da área visível | P0 | Selecionar Ground ou RotatingCube | Botão quadrado de 38 dp e seções verticais extensas em painel fixo sem priorização | Campo de nome com ação IME, inspector rolável/recolhível e campos XYZ compactos | Screenshot com nome e Transform completos; teclado não cobre o campo |
| Viewport no AVD de 4 GB | Um frame Filament é criado, mas a maior parte aparece preta e o conteúdo visível fica limitado à faixa inferior; não há confirmação visual clara do objeto selecionado | P1 | Abrir Mountain Demo e alternar Ground/RotatingCube | Câmera/enquadramento e feedback de seleção são insuficientes, agravados pela área extremamente estreita | Manter superfície estável e ampla, adicionar estado de foco/seleção e comando de enquadrar | Selecionar cubo pela hierarquia e pelo viewport deve produzir destaque inequívoco no frame |
| Transform pelo viewport | Mover foi ativado e um arraste de aproximadamente 140 px não alterou o valor X, que permaneceu em 1,80 | P0 | Selecionar RotatingCube, ativar Mover e arrastar na superfície | O gesto não chegou ao caminho de transformação nessa execução; a superfície/controle de câmera pode estar consumindo o evento | Separar claramente gesto de câmera e manipulação, acrescentar indicação do tool ativo e teste de callback/hit-test | Arraste real altera Transform, atualiza inspector e é reversível por Undo |
| No-code | O terceiro card já é cortado à direita e o grafo é apenas uma sequência horizontal, sem portas ou conexões manipuláveis | P1 | Abrir Lógica e adicionar ações | Canvas ainda é um `LazyRow` de cards | Para esta fase, manter comportamento rápido funcional e tornar o fluxo legível/recolhível; editor de nós completo permanece fase posterior | Fluxo rápido executa no Play e nenhum nó necessário fica inacessível |
| Editor compacto | Não existe um paradigma mobile; o breakpoint apenas altera duas larguras fixas | P0 | Inspecionar a composição abaixo de 900 dp | O `BoxWithConstraints` mantém sempre as três colunas | Política de layout por espaço útil: compact, medium e expanded | Testes em 640 × 360, telefone grande e tablet, além de screenshots reais |
| Navegação | Objetos, Lógica, Assets e Projeto substituem completamente o viewport | P1 | Tocar nas seções inferiores | `activeSection` funciona como navegação de páginas, não como dock contextual | Manter viewport persistente; seções abrem/fecham um dock no compacto | Um único painel aberto, Back fecha painel primeiro e viewport nunca desaparece |
| Topbar | Salvar/Play podem ser cortados em largura estreita ou fonte ampliada | P0 | Reduzir largura ou usar `font_scale` 1.3/1.5 | A barra soma projeto fixo, undo/redo, ferramentas, salvar e Play; só ferramentas rolam | Topbar compacta com ações prioritárias; ferramentas em barra contextual do viewport | Bounds e overflow medidos em 640 × 360 e fontes 1.0/1.3/1.5 |
| Controles de toque | Diversos botões medem 38 dp e rótulos como “+ Câmera” são colocados em caixas 38 × 38 dp | P0 | Abrir hierarquia e tentar usar as ações | `StudioTextButton` força `Modifier.size(38.dp)` | Alvo mínimo de 48 dp, ícones vetoriais e rótulos fora de caixas quadradas | Teste semântico mede touch target e screenshot confirma ausência de corte |
| Criação de objetos | A criação está espalhada em seis botões da hierarquia e não existe fluxo `+ Adicionar` categorizado | P1 | Abrir painel de hierarquia | Ações foram implementadas diretamente no cabeçalho da lista | Ação `+ Adicionar` sempre acessível, painel com categorias e criação imediata | Cubo criado em dois toques, selecionado, enquadrado, inspector aberto, undo e persistência |
| Inspector | Transform só aceita incrementos `+/-`; não há entrada numérica absoluta, reset ou teclado adequado | P1 | Selecionar um objeto e editar Transform | `AxisValue` renderiza texto mais dois botões | Campos XYZ decimais com commit validado, reset e seções recolhíveis | Teste de valores inválidos/finitos, IME real sem cobrir campo e persistência após reabrir |
| IME e insets | Editor não aplica `WindowInsets.safeDrawing` nem `imePadding` | P0 | Abrir renomear/inputs em landscape | O workspace desenha edge-to-edge usando paddings mágicos apenas no Snackbar | Shell único dono dos insets; `imePadding` no painel editável e bring-into-view | Teste instrumentado e screenshot com teclado real |
| Play | Ferramentas e painéis continuam disponíveis durante Play; bloqueio existe apenas parcialmente na UI | P0 | Iniciar Play e tentar editar/navegar | `isPreviewRunning` não impede todas as intents mutáveis no ViewModel | Estado explícito de modo; esconder docks/ferramentas e rejeitar mutações no ViewModel | Teste de Play/Stop prova que a cena editável não muda e Stop restaura seleção/documento |
| Viewport | Não há estado visual persistente de loading/erro, grid, foco ou destaque de seleção | P1 | Abrir uma cena ou causar falha de runtime | Diagnósticos são Snackbar transitório e não há `viewportState` | Overlay técnico de loading/erro, grid/orientação e comando de foco; seleção visível | Emulador real com frame Filament, hit-test e objeto selecionado visível |
| Testes | Só existe um teste instrumentado da Home vazia; nenhum teste do workspace | P0 | Inspecionar `app/src/androidTest` | O editor não expõe tags/semântica nem viewport injetável | Tags estáveis, política de layout pura e viewport substituível em testes | Testes JVM + Compose/instrumentados para layout, seleção, criação, Play/Stop, fonte e IME |

## Métricas iniciais

- Cold start da Home no AVD: aproximadamente `8,9 s`.
- Home: `TOTAL PSS ~77 MB`, `RSS ~150 MB`.
- Processo pouco antes da morte ao abrir o editor no AVD de 2 GB:
  `RSS 238.140 kB`, `anon 123.064 kB`, `swap 43.860 kB`.
- Resultado da primeira tentativa de abrir o editor: **falha por SIGKILL do
  lowmemorykiller**, sem frame do editor validável.
- No perfil reiniciado com 4 GB o editor abriu e permitiu selecionar, adicionar,
  salvar e reabrir um cubo. As capturas confirmaram que a implementação é
  funcional em parte, mas a estrutura visual torna o viewport secundário e
  corta controles essenciais.
- Editor no perfil de 4 GB: `TOTAL PSS 160.182 kB`, `RSS 283.516 kB`.
- Play no perfil de 4 GB: `TOTAL PSS 156.331 kB`, `RSS 283.876 kB`.
- Cold start de reabertura: aproximadamente `3,1 s`.
- Não houve crash nem linha `W/E` específica do aplicativo no trecho de Play
  coletado no perfil de 4 GB.
- O fluxo real comprovado foi: selecionar RotatingCube → adicionar Cube 7 →
  salvar → force-stop → reabrir com 7 objetos → Play/timer/botão GIRAR → Stop →
  abrir Lógica. A presença do botão e do timer foi comprovada, mas a rotação não
  pôde ser confirmada visualmente porque o cubo não apareceu no frame.

## Resultado depois da correção

- A Home ganhou composição própria de estúdio e o contraste das barras do
  sistema e da contagem de projetos foi corrigido.
- O telefone usa o shell compacto: viewport persistente, nenhum painel aberto
  inicialmente e exatamente um dock inferior por vez.
- O defeito da Surface de aproximadamente 414 px foi localizado: o
  `SceneViewport` recebia peso vertical dentro de uma `Column`, mas não
  `fillMaxWidth`. Depois da correção o Filament ocupa toda a largura disponível.
- Ground, cubo e geometria importada foram renderizados no frame final. A
  seleção muda o destaque, badge e Inspector, mas ainda não reenquadra o objeto:
  este continua sendo um item P1 aberto.
- Editor final no AVD de 4 GB: `TOTAL PSS ~147,4 MB`, `RSS ~272,3 MB`.
- A criação por `+ Adicionar` produziu um novo cubo, selecionou o objeto e abriu
  somente o Inspector.
- O IME abriu no Inspector, aceitou `2.50` e o valor reapareceu após
  `force-stop`/reabertura.
- Play iniciou em um toque sobre a cena recém-editada, ocultou os docks e Stop
  restaurou o editor. Play mediu aproximadamente `175 MB PSS / 304 MB RSS`.
- Cold start após reinstalação ficou entre `3,4 s` e `4,7 s`.
- O primeiro teste instrumentado falhou antes da asserção porque Espresso 3.6.1
  usava `InputManager.getInstance` via reflexão no Android 17/API 37. A pilha
  foi atualizada para AndroidX Test 1.3.0, Espresso 3.7.0 e Tracing 1.3.0; o
  resultado da repetição fica registrado no ciclo.

## Critérios mínimos para encerrar a correção

1. O editor abre de forma estável no perfil de 4 GB e apresenta um frame 3D real.
2. O viewport é o elemento dominante no celular e permanece visível ao abrir
   hierarquia, inspector, assets e lógica.
3. A política de layout para 640 × 360, telefone grande e tablet é coberta por
   teste JVM; a matriz visual instrumentada ainda está aberta.
4. As ações primárias usam alvo mínimo de 48 dp; fonte ampliada ainda precisa de
   matriz visual.
5. O fluxo criar objeto → selecionar → transformar → Play → interagir → Stop →
   salvar → reabrir funciona no emulador.
6. O GLB interno do Mountain Demo aparece no viewport; uma coleção externa
   importada pelo seletor SAF ainda precisa de validação.
7. Screenshots, métricas, testes e limitações reais são registrados após a
   implementação.

## Limite desta primeira coleta

O perfil de 2 GB não conseguiu manter o processo vivo até o editor. A repetição
em 4 GB é obrigatória e será anexada a esta auditoria antes de considerar o
diagnóstico fechado. Um emulador não substitui a validação posterior em aparelho
físico, especialmente para memória, GPU, gestos e teclado do fabricante.
