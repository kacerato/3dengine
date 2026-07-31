# World Studio V6 — validação do shell R2

## Estado

- **R0:** concluída;
- **R1:** concluída e integrada;
- **R2:** implementada, compilada e aguardando validação em aparelho;
- **R3:** não considerada concluída;
- **PR:** permanece draft e não deve ser integrado à `master` antes do gate de aparelho.

O artifact desta etapa é a primeira versão visual V6 baseada no `EditorContextState`. Diferentemente do APK da R1, ele já substitui o workspace V5 quando o usuário abre Mundo.

## Objetivo da R2

Validar o shell e a hierarquia de interação antes de ampliar Terrain, Mesh, Volume e Material.

A R2 não tenta provar que todas as operações geométricas estão completas. Ela precisa provar que a estrutura não volta ao problema da V5:

```text
aba visual ativa
+ seleção incompatível
+ ferramenta diferente
+ recomendação contraditória
```

## Regiões implementadas

### Header

- voltar;
- nome da cena e estado de persistência em telas com espaço;
- Undo;
- Redo;
- Salvar;
- Jogar/Parar.

### Context bar

Toolsets reais derivados do domínio:

- Objeto;
- Terreno;
- Malha;
- Volume;
- Material.

Regiões auxiliares:

- Estrutura;
- Inspector;
- Assets;
- Comandos.

`Criar`, `Ações` e `Ferramentas` não retornaram como abas globais equivalentes.

### Tool Shelf

- aparece automaticamente;
- consulta `EditorToolRegistry.availableFor(context)`;
- mostra somente ferramentas do toolset e capabilities atuais;
- destaca a ferramenta realmente ativa;
- respeita seleção bloqueada;
- apresenta raio e força quando existe brush compatível.

### Main Region

- contém o mesmo `SceneViewport` existente;
- permanece como maior região;
- não recebe presets artificiais de câmera;
- preserva a free cam;
- Terrain authoring é habilitado somente quando seleção, ferramenta e interaction mode coincidem.

### Outliner

- visão de objetos;
- busca;
- seleção;
- visibilidade;
- visão de camadas;
- criação de camada;
- visibilidade, bloqueio e Solo;
- atribuição da seleção à camada ativa.

### Inspector

- nome;
- tipo e identificador;
- duplicar e excluir;
- posição, rotação e escala;
- aviso de camada bloqueada;
- parâmetros de brush de Terrain;
- contexto, ferramenta e interaction mode derivados do domínio.

### Asset Browser

- busca;
- importação;
- aplicação de imagem;
- adição de asset à cena;
- região inferior recolhível.

### Command Palette

- busca de ações;
- comandos do `EditorCommandRegistry`;
- criação de cubo, Terrain, malha, volume, câmera e luz;
- conversões solicitadas pelo toolset correto;
- duplicação e exclusão contextuais.

### Operações pendentes

#### Escolha ou criação de alvo

Quando o usuário tenta entrar em um toolset incompatível:

- o contexto anterior permanece coerente;
- um modal lista alvos compatíveis;
- criação compatível é oferecida quando permitida;
- cancelar restaura a interação sem alterar seleção;
- alvo incompatível não pode substituir silenciosamente a seleção.

#### Conversão

- primitiva para malha editável;
- malha editável para volume voxel;
- resolução voxel explícita;
- aviso de custo;
- confirmação e cancelamento;
- publicação atômica de documento, seleção, toolset e ferramenta.

## Contrato responsivo

### Celular em paisagem

Para larguras inferiores a 900 dp:

- Outliner e Inspector são overlays;
- apenas um painel lateral compacto fica aberto por vez;
- o viewport não perde permanentemente largura;
- Assets abre na parte inferior;
- Command Palette e operações pendentes usam modal;
- fechar painel devolve imediatamente a área ao viewport.

### Tela ampla

A partir do espaço definido pelo resolver:

- Outliner pode permanecer encaixado à esquerda;
- Inspector pode permanecer encaixado à direita;
- ambos possuem largura limitada;
- viewport continua com `weight(1f)` e recebe o restante da tela.

### Persistência durante recomposição

São preservados com `rememberSaveable`:

- região lateral aberta;
- estado do Asset Browser;
- estado da Command Palette;
- aba Objetos/Camadas;
- buscas e campos auxiliares aplicáveis.

Seleção, toolset, ferramenta e operação pendente não vivem nesses estados locais; pertencem ao `WorkspaceViewModel` e ao `EditorContextState`.

## Design system aplicado

- superfícies sólidas escuras;
- hierarquia por contraste e borda, não por neon;
- accent roxo moderado somente para estado ativo e ação principal;
- sem gradientes decorativos;
- cantos de 6, 8 e 10 dp;
- controles com altura mínima de 44 dp;
- textos curtos com `maxLines` e ellipsis;
- danger, warning, positive e disabled possuem estados próprios;
- viewport usa fundo neutro separado das regiões de controle.

## Testes automatizados

### Domínio

```text
:editor-domain:test
```

### Integração Android

```text
testDebugUnitTest
```

Incluem:

- mapeamento `SceneDocument` → seleção;
- transições de toolset;
- conversões e Undo;
- preservação de operações pendentes;
- regras de criação incompatível;
- resolver de layout compacto/amplo;
- projeção de ferramentas para viewport e Terrain brush.

### APK

```text
:app:assembleDebug
```

O pipeline também confirma que `GodotCompactEditorShell` abre `WorldStudioWorkspaceV6`, e não `WorldStudioWorkspaceV5`.

## Checklist obrigatório no aparelho

### Abertura e estabilidade

1. Abrir uma cena e entrar em Mundo.
2. Sair e entrar novamente cinco vezes.
3. Salvar, fechar o projeto e reabrir.
4. Confirmar ausência de crash, tela preta permanente ou viewport duplicado.

### Hierarquia visual

1. Confirmar que o viewport é a maior área.
2. Confirmar que Header, Context Bar e Tool Shelf possuem funções diferentes e identificáveis.
3. Confirmar que não existe a antiga sequência `toolset → Ferramentas`.
4. Confirmar que nenhum texto essencial é cortado sem alternativa compreensível.
5. Confirmar que os alvos de toque são utilizáveis sem precisão excessiva.

### Painéis no celular

1. Abrir Estrutura e fechá-la.
2. Abrir Inspector e fechá-lo.
3. Alternar diretamente entre Estrutura e Inspector.
4. Abrir e fechar Assets.
5. Abrir e fechar Comandos.
6. Confirmar que o viewport recupera a área total após fechar cada painel.
7. Confirmar rolagem independente de Outliner, Inspector, Assets e Comandos.

### Object

1. Selecionar um cubo.
2. Entrar em Objeto.
3. Alternar Selecionar, Mover, Girar e Escalar.
4. Confirmar que a Tool Shelf indica a ferramenta realmente ativa.
5. Editar valores no Inspector.
6. Duplicar, excluir e usar Undo.

### Terrain

1. Selecionar Terrain.
2. Tocar Terreno.
3. Confirmar entrada imediata em Navegar.
4. Confirmar que a shelf de Terrain aparece sem abrir outra aba.
5. Ativar Elevar, Escavar, Suavizar e Nivelar.
6. Ajustar raio e força.
7. Aplicar um stroke e usar Undo.
8. Colocar segundo dedo durante o stroke e confirmar cancelamento.
9. Confirmar que pinça continua sendo câmera, não escala de objeto.

### Contradição original

1. Selecionar Terrain.
2. Tocar Volume.
3. Confirmar que Volume não fica ativo silenciosamente.
4. Confirmar a aparição da escolha de alvo/criação/cancelamento.
5. Cancelar.
6. Confirmar que seleção continua Terrain e toolset continua coerente.

### Mesh

1. Selecionar cubo primitivo.
2. Tocar Malha.
3. Confirmar que aparece `Preparar malha editável`.
4. Cancelar e conferir preservação da seleção.
5. Repetir e confirmar conversão.
6. Confirmar ativação de Malha e ferramenta de vértices.
7. Usar Undo e confirmar retorno para primitiva/Objeto.

### Volume

1. Selecionar malha editável.
2. Tocar Volume.
3. Confirmar modal de conversão.
4. Alterar a resolução voxel.
5. Confirmar conversão.
6. Confirmar que Volume e ferramenta Add estão ativos.
7. Usar Undo e verificar retorno coerente.

### Camadas

1. Criar camada.
2. Selecionar camada.
3. Mover objeto para a camada.
4. Ocultar e mostrar.
5. Bloquear.
6. Confirmar que ferramentas mutáveis ficam indisponíveis.
7. Ativar Solo.
8. Salvar e reabrir.

### Rotação e retorno

1. Abrir Inspector.
2. Selecionar uma ferramenta especializada.
3. Rotacionar o aparelho quando o sistema permitir.
4. Confirmar seleção, toolset, ferramenta e operação pendente.
5. Confirmar que nenhum painel cobre permanentemente o viewport.

## Critérios de aprovação da R2

R2 somente será aprovada depois de confirmar em aparelho:

- abertura repetida sem crash;
- viewport principal e recuperável;
- ausência da contradição V5;
- Tool Shelf automática e coerente;
- Outliner e Inspector utilizáveis;
- modais de escolha e conversão claros;
- criação, seleção, conversão, Undo e persistência coerentes;
- painel compacto sem truncamento crítico;
- free cam e multitoque sem regressão.

## Limites desta entrega

Mesmo com R2 aprovada, ainda não significa:

- modelagem de malha completa;
- pipeline voxel completo;
- Terrain por patches final;
- materiais e pintura finalizados;
- input router R4 concluído;
- performance validada em cenas grandes;
- R3–R12 concluídas.

A aprovação da R2 autoriza aprofundar os toolsets sem reconstruir novamente o shell.
