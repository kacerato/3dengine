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

## Fluxos validáveis nesta entrega

1. Abrir uma cena antiga e gerar automaticamente a estrutura de camadas.
2. Criar duas camadas de geometria.
3. Criar dois cubos e atribuir cada um a uma camada.
4. Renomear e reordenar camadas.
5. Ocultar, bloquear ou isolar uma camada.
6. Fechar Mundo, salvar, reabrir e manter a organização.
7. Selecionar terrain, malha ou volume e receber ações diferentes.
8. Criar uma fonte e continuar pelo painel Autor.
9. Converter uma primitiva em malha editável.
10. Converter malha editável em volume com a operação já existente.
11. Receber motivo explícito para conversões ainda não implementadas.

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

Esta entrega é a fundação de arquitetura e interface das Fases 0–3. Ela não declara terrain, modelagem ou voxel equivalentes a editores desktop. As funções futuras continuam visíveis apenas quando ajudam a explicar o fluxo e sempre indicam a dependência que falta.
