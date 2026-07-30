# World Studio

O World Studio combina três representações de geometria. Cada uma resolve um problema diferente:

- **Terrain heightfield** para grandes superfícies externas;
- **Malha editável** para controle explícito de vértices e faces;
- **Volume voxel** para formas tridimensionais fechadas, cavernas, túneis e destruição.

## Modos do World Studio

### Moldar

Cria e edita terreno diretamente no viewport.

#### Criar superfície plana

Parâmetros disponíveis:

- resolução `33²`, `65²`, `129²` ou `257²`;
- largura em metros;
- altura máxima em metros.

O resultado começa neutro. Nenhuma montanha ou ruído é aplicado automaticamente.

#### Pincéis

- **Elevar**: aumenta as alturas sob o pincel;
- **Escavar**: reduz as alturas;
- **Suavizar**: aproxima cada amostra da média local;
- **Nivelar**: aproxima o terreno da altura-alvo.

Controles:

- raio;
- força;
- altura-alvo;
- falloff `Smooth`, `Linear`, `Sharp` ou `Constant`.

Durante o arrasto, os pontos são interpolados para evitar espaços vazios. O traço é visualizado continuamente e confirmado como uma única operação no histórico.

### Textura

Pinta pesos de materiais no terreno.

Fluxo:

1. Selecione a camada ativa.
2. Ajuste raio e opacidade.
3. Arraste sobre o terreno.
4. Abra o dock de assets.
5. Toque em uma imagem para vinculá-la à camada.

Se o nome do arquivo contiver `normal`, a imagem é tratada como normal map. Caso contrário, é tratada como textura de cor da camada.

### Objetos

Manipula objetos completos com:

- mover;
- rotacionar;
- escalar;
- ajuste fino nos eixos X, Y e Z;
- reset individual de eixo.

Este modo não modifica vértices internos da malha.

### Malha

Transforma cubos e planos em `EditableMeshComponent`.

#### Seleção de vértices

O painel de projeção superior mostra pontos e arestas. Tocar em um ponto seleciona o vértice. Arrastar altera X e Z; o eixo Y pode ser ajustado pelo inspector.

#### Seleção de faces

As faces são numeradas no inspector. Selecionar uma face também seleciona seus vértices.

#### Extrusão

A extrusão:

1. duplica os vértices da face ativa;
2. desloca a nova face na direção da normal;
3. cria as faces laterais;
4. mantém a nova tampa selecionada.

Distâncias negativas extrudam no sentido oposto.

#### Subdivisão

A subdivisão cria um vértice central e divide a face ativa em triângulos. Ela aumenta a resolução local sem reconstruir toda a malha.

#### Dyntopo local

A opção Dyntopo desta versão é uma implementação local de refinamento adaptativo:

- verifica o tamanho das arestas da face ativa;
- subdivide a região quando ela excede o detalhe configurado;
- marca a malha como topologia dinâmica.

Ela não é equivalente ao Dyntopo completo do Blender, que altera continuamente a topologia durante cada pincelada. É uma base funcional e persistente para refinamento local.

#### Converter para voxel

A malha editável pode ser convertida em um volume sólido. A conversão atual usa a caixa delimitadora da malha como volume inicial; depois disso, o usuário pode escavar e suavizar o volume.

### Volume

O modo Volume usa uma grade tridimensional de densidades.

#### Criar volume sólido

Cria uma caixa preenchida. É útil para iniciar rochas, paredes destrutíveis ou estruturas subterrâneas.

#### Criar caverna base

Cria um volume sólido e aplica:

- um túnel curvo entre dois pontos;
- uma cavidade esférica central.

O resultado demonstra que a geometria pode conter interior vazio, teto, saliências e passagens atravessando a massa.

#### Planos de corte

A edição usa fatias nos eixos:

- X;
- Y;
- Z.

A fatia é uma seção do volume. Alterar a fatia permite trabalhar em diferentes profundidades.

#### Pincéis volumétricos

- **Add**: adiciona densidade;
- **Subtract**: remove densidade e abre cavidades;
- **Smooth**: aproxima densidades da média local.

O pincel é esférico em 3D, mesmo quando aplicado por uma fatia 2D.

#### Túneis e cavernas

Um túnel é produzido pela aplicação de várias esferas de subtração interpoladas ao longo de um segmento. Como o volume é tridimensional, ele pode atravessar a geometria sem alterar a superfície acima.

#### Renderização

O renderer cria faces somente nas fronteiras entre células sólidas e vazias. Isso mantém o interior oculto e permite visualizar cavidades. A superfície atual é blocada, semelhante a voxel cúbico. Uma etapa futura poderá usar Marching Cubes, Surface Nets ou Transvoxel para uma superfície lisa e LOD contínuo.

### Navegar

Desativa ferramentas de edição e devolve o controle da câmera:

- um dedo para orbitar;
- dois dedos para deslocar;
- pinça para zoom.

## Heightfield versus voxel

| Necessidade | Heightfield | Voxel |
|---|---:|---:|
| Grandes áreas externas | Excelente | Mais caro |
| Montanhas e vales | Sim | Sim |
| Estradas pintadas | Sim | Possível |
| Caverna sob o terreno | Não | Sim |
| Túnel atravessando massa | Não | Sim |
| Saliência sobreposta | Não | Sim |
| Destruição volumétrica | Não | Sim |
| Superfície lisa atual | Sim | Não, blocada |

## Limites de segurança

- terreno: até `257 × 257` amostras;
- voxel: resolução entre `8³` e `48³`;
- malha: validação até 250 mil vértices e 250 mil faces;
- renderer voxel: limita a quantidade de faces visíveis para evitar estouro de memória no celular.
