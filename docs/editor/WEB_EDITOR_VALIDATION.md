# Editor Web — arquitetura e gate de validação

## Decisão

A interface de edição deixa de ser construída em Compose/Kotlin. O editor visual passa a usar **React + TypeScript + Three.js**, empacotado dentro do APK. Kotlin fica restrito a quatro responsabilidades:

1. hospedar o WebView;
2. persistir o `SceneDocument`;
3. executar o bridge tipado entre JavaScript e o modelo nativo;
4. abrir o preview real em Filament quando o usuário pressiona Play.

A tela web e o runtime nativo usam o mesmo `SceneDocument`. Não existe um segundo formato de cena exclusivo da interface.

## Regra desta etapa

Nenhuma nova ferramenta avançada será considerada prioridade enquanto o fluxo básico abaixo não passar em aparelho Android real. Voxel, Dyntopo, terreno avançado, NoCode e materiais continuam no projeto, mas não podem esconder falhas de seleção, câmera, transformação, iluminação, Play ou persistência.

## Fluxo vertical obrigatório

1. criar ou abrir um projeto;
2. visualizar a cena sem painéis sobrepostos;
3. adicionar cubo, plano, câmera e luz direcional;
4. selecionar pelo viewport e pela hierarquia;
5. orbitar e aproximar a câmera sem mover o objeto;
6. mover, rotacionar e escalar com gizmo;
7. editar valores exatos no inspector;
8. desfazer e refazer uma transformação completa;
9. salvar;
10. iniciar Play no renderer nativo;
11. confirmar que posição, rotação, escala, câmera e iluminação correspondem ao editor;
12. parar o Play e voltar ao mesmo estado de edição;
13. fechar e reabrir o projeto sem perda de dados.

## Critérios de interface

- superfícies sólidas, sem gradientes decorativos;
- cantos arredondados consistentes;
- viewport sempre dominante;
- no máximo um painel contextual aberto à esquerda;
- inspector fixo somente quando houver largura suficiente;
- nenhuma instrução longa sobre o viewport;
- ferramentas principais representadas por ícones com rótulo acessível;
- alvos de toque com pelo menos 38 px no layout compacto;
- Play remove completamente o chrome de edição;
- mensagens aparecem no status, não sobre o objeto editado.

## Critérios de câmera e transformação

- OrbitControls permanece ativo durante seleção;
- TransformControls desativa a órbita somente enquanto o gizmo está sendo arrastado;
- ao soltar o gizmo, a órbita volta imediatamente;
- mudar entre Selecionar, Mover, Rotacionar e Escalar não recria a câmera;
- a câmera de edição é persistida em `EditorSettings`;
- o Play usa a única câmera marcada como principal;
- uma transformação enviada pelo editor é aplicada como uma única alteração atômica no modelo.

## Critérios de validação em dispositivo

Testar em orientação paisagem nas larguras de referência:

- 720 × 400;
- 960 × 540;
- 1280 × 720;
- 1920 × 1080.

Registrar para cada cenário:

- tarefa concluída ou bloqueada;
- quantidade de toques;
- erro visual;
- erro de estado;
- diferença entre editor e Play;
- travamento ou queda de FPS;
- captura de tela antes e depois.

## Estado atual

A branch `feature/web-editor-validation-loop` contém a primeira implementação do fluxo. Ela deve permanecer fora da `master` até:

- TypeScript compilar;
- testes Kotlin passarem;
- APK compilar;
- o fluxo vertical ser executado em aparelho real;
- problemas P0 e P1 serem corrigidos.
