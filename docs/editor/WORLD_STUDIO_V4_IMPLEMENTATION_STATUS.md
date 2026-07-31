# World Studio V4 — estado da implementação

Este documento acompanha a execução do plano `WORLD_STUDIO_V4_ARQUITETURA_COMPLETA.md`.

## Regra de entrega

O plano será implementado por fundações coerentes, não por botões isolados. Cada etapa somente é considerada concluída quando domínio, persistência, interface, Undo/Redo e testes trabalham sobre o mesmo `SceneDocument`.

## Implementado nesta entrega — Fases 0 a 3

### Fase 0 — inventário e contrato

O fluxo atual foi separado em quatro responsabilidades:

1. **estrutura:** camadas e objetos;
2. **fonte:** criação técnica de terrain, malha, volume e objetos de cena;
3. **autoria contextual:** ações válidas para a seleção;
4. **propriedades:** transformação e parâmetros da ferramenta ativa.

Os pontos existentes reutilizados são:

- `WorkspaceViewModel` como coordenador transacional;
- `SceneDocument` como fonte única;
- `SceneCommandHistory` para Undo/Redo;
- `TerrainComponent`, `EditableMeshComponent` e `VoxelVolumeComponent` como fontes geométricas;
- `SceneViewport`/Filament como visualização;
- `LuaScriptComponent` e `VisualGraphComponent` como ligações de lógica.

### Fase 1 — modelo persistente de camadas

Foram adicionados:

- `WorldLayer`;
- `WorldLayerKind`;
- `WorldLayerSetComponent`;
- `WorldLayerMembershipComponent`;
- migração automática de cenas antigas;
- camadas-padrão de Superfície, Geometria, Volume, Gameplay, Luz e ambiente e Interface;
- criação, renomeação e reordenação;
- visibilidade, bloqueio e solo;
- atribuição de objetos;
- preservação das camadas ao fechar o workspace, salvar e reabrir;
- ocultação do objeto técnico de camadas na hierarquia comum;
- restauração da visibilidade local do objeto após ocultar ou isolar uma camada.

A camada não substitui a hierarquia. Ela classifica os mesmos `GameObject`s e controla sua participação no mundo.

### Fase 2 — motor de contexto

Foram adicionados:

- resolução do tipo real da seleção;
- conjunto de capacidades;
- registro central de ações;
- estado disponível/desabilitado;
- motivo de indisponibilidade;
- efeito esperado;
- próxima etapa;
- ação sugerida;
- bloqueio contextual quando a camada está travada.

Os contextos reconhecidos incluem terrain, malha primitiva, malha editável, volume, player, câmera, luz, UI e ausência de seleção.

Funções de fases posteriores aparecem desabilitadas com explicação, em vez de serem botões que não fazem nada.

### Fase 3 — shell visual inicial

O menu Mundo foi reorganizado em:

- **Estrutura:** camadas e objetos;
- **Criar:** somente fontes técnicas;
- **Autor:** operações derivadas da seleção;
- **Assets:** biblioteca contextual.

Também foram adicionados:

- Context Bar permanente;
- camada atual e estado de bloqueio;
- próxima ação sugerida;
- cards de ação com efeito, pré-condição e continuação;
- painel de camadas com nome, tipo, quantidade de objetos, visibilidade, bloqueio, solo e ordem;
- atribuição da seleção à camada ativa;
- separação entre preset jogável e criação geométrica.

## Correção de validação — viewport único e free cam

A primeira tentativa de correção adicionou atalhos de câmera no viewport. Essa decisão foi revertida: os botões Início, Topo, Frente, Direita e Foco foram removidos, assim como o foco por toque duplo. O editor mantém somente a free cam já existente.

O crash ao abrir Mundo não foi tratado novamente como simples estado de enum. O fluxo foi alterado estruturalmente:

- abrir Mundo não desmonta mais o `SceneViewport` principal;
- o menu Mundo agora abre como dock ao lado do mesmo viewport;
- a mesma instância de free cam continua ativa ao abrir, fechar ou trocar abas do Mundo;
- terrain usa um overlay sobre esse mesmo viewport;
- a cena é normalizada com `ensureWorldLayerStructure()` uma única vez durante o carregamento;
- o motor contextual não precisa mais fabricar uma estrutura temporária de camadas em cada composição;
- a edição nativa de transformação da SceneView continua desativada, portanto a pinça não escala objetos fora do `SceneDocument`.

Essa mudança elimina a transição que destruía um viewport Filament e criava outro imediatamente ao tocar em Mundo, principal diferença entre o fluxo que apresentava o crash e o fluxo atual.

## Fluxos validáveis nesta entrega

1. Abrir uma cena antiga e gerar automaticamente a estrutura de camadas.
2. Abrir e fechar Mundo repetidamente sem substituir o viewport.
3. Continuar orbitando, aproximando e movendo a mesma free cam com Mundo aberto.
4. Criar duas camadas de geometria.
5. Criar dois cubos e atribuir cada um a uma camada.
6. Renomear e reordenar camadas.
7. Ocultar, bloquear ou isolar uma camada.
8. Selecionar terrain, malha ou volume e receber ações diferentes.
9. Ativar Navegar ou Esculpir sobre o mesmo viewport.
10. Fechar Mundo, salvar, reabrir e manter a organização.
11. Confirmar que a pinça nunca altera temporariamente a escala de um objeto.

## Gate técnico concluído

- fonte V4 e correções persistidas na branch;
- testes de domínio das camadas aprovados;
- testes do motor contextual aprovados;
- demais testes unitários do projeto aprovados;
- APK debug compilado;
- artifact publicado pelo GitHub Actions.

O gate técnico não substitui o teste de ergonomia e estabilidade no aparelho. O PR permanece em draft até validar abertura repetida de Mundo, free cam, multitoque, terrain e persistência real.

## Fases ainda não concluídas

- **Fase 4:** novo contrato completo de input e gizmos 3D.
- **Fase 5:** terrain por patches, expansão, recorte, resolução e conversões de superfície.
- **Fase 6:** modelagem completa de vértices, arestas, faces e modificadores.
- **Fase 7:** pipeline volumétrico, extração de superfície e LOD.
- **Fase 8:** materiais, máscaras, água, vegetação e caminhos.
- **Fase 9:** ambiente e iluminação avançados.
- **Fase 10:** gameplay, dependências Lua/NoCode e validação de mundo jogável.
- **Fase 11:** diagnóstico completo e testes de interface/aparelho.
- **Fase 12:** remoção das migrações temporárias e consolidação final.

## Critério de honestidade

Esta entrega é a fundação de arquitetura e interface das Fases 0–3, com uma correção estrutural de estabilidade. A compilação confirma coerência de código; somente o aparelho pode confirmar que o crash nativo observado foi eliminado. A Fase 4 permanece pausada até essa confirmação.
