# Cenas, objetos e componentes

## SceneDocument

A cena é persistida como um documento versionado.

Campos principais:

- `sceneId`;
- `schemaVersion`;
- `revision`;
- `objects`;
- `rootObjects`;
- `editorSettings`.

`rootObjects` contém apenas objetos sem pai. Relações pai/filho precisam ser consistentes nos dois sentidos.

## GameObject

Um objeto contém:

- ID;
- nome;
- estado habilitado;
- pai opcional;
- lista de filhos;
- tags;
- componentes.

O objeto não possui comportamento fixo. Sua função é determinada pelos componentes.

## Componentes

### TransformComponent

Obrigatório e único por objeto.

- posição;
- rotação Euler em graus;
- escala.

Escalas iguais a zero são inválidas.

### MeshRendererComponent

Renderiza:

- primitiva `CUBE` ou `PLANE`; ou
- modelo importado por `assetId`.

Exatamente uma das duas fontes precisa estar definida.

### PbrMaterialComponent

Configura aparência PBR, texturas e slot de material. Consulte [Assets, texturas e materiais](ASSET_PIPELINE.md).

### EditableMeshComponent

Armazena:

- vértices;
- faces;
- vértices selecionados;
- face selecionada;
- estado de topologia dinâmica;
- tamanho de detalhe.

Permite extrusão, subdivisão e edição manual.

### VoxelVolumeComponent

Armazena:

- resolução cúbica;
- tamanho físico;
- densidade por célula;
- cor;
- iso level.

Permite cavidades, túneis e destruição volumétrica.

### TerrainComponent

Armazena:

- resolução;
- largura;
- altura máxima;
- heightmap normalizado;
- camadas de material;
- pesos de material;
- regras de auto-tile;
- máscara de authoring;
- seed.

### CameraComponent

Configura campo de visão e planos de clipping.

### DirectionalLightComponent

Configura luz direcional e intensidade em lux.

### ColliderComponent

Define dimensões do collider. Tamanhos negativos ou nulos são inválidos.

### RigidBodyComponent

Configura:

- tipo de corpo;
- massa;
- atrito;
- restituição;
- damping linear e angular;
- camada de colisão.

### CharacterControllerComponent

Configura personagem:

- velocidade;
- força de salto;
- gravidade;
- limite de inclinação;
- modo de câmera;
- distância e sensibilidade.

Modos de câmera:

- primeira pessoa;
- terceira pessoa;
- visão superior.

### VehicleControllerComponent

Configura física de veículo:

- massa;
- potência e torque;
- velocidade máxima;
- relações de marcha e diferencial;
- freios;
- direção;
- aderência;
- controle de tração, ABS e estabilidade;
- entre-eixos e bitola;
- rodas;
- suspensão;
- aerodinâmica;
- marcha à ré;
- RPM de lenta e corte;
- centro de massa.

### VehiclePartComponent

Liga uma peça a um veículo e define transformação local, eixo de dobradiça e distância de interação. É usado em portas e partes móveis.

### LuaScriptComponent

Liga o objeto a um script em `scripts/lua/`.

### VisualGraphComponent

Liga o objeto a um grafo em `visual-graphs/`.

### TouchButtonComponent

Cria botão de interface com:

- label;
- nome do evento;
- posição normalizada.

### VirtualJoystickComponent

Cria joystick com:

- prefixo do evento;
- posição;
- raio;
- dead zone.

### AnimationControllerComponent

Controla clip padrão, clips disponíveis, velocidade, loop e transição.

### AnimationPackComponent

Liga um asset animado e seus mapeamentos ao objeto.

### MeshModifierStackComponent

Armazena modificadores não destrutivos, como escala por eixo. Cada modificador possui ID, tipo, intensidade e eixo.

### VegetationSpawnerComponent

Distribui modelos sobre terreno de acordo com densidade, escala, inclinação, altura e LOD.

## Validação

Antes de salvar, a cena verifica:

- IDs e nomes válidos;
- quantidade máxima de objetos e componentes;
- componentes duplicados;
- exatamente um Transform;
- pai e filhos consistentes;
- ausência de ciclos;
- caminhos seguros;
- valores numéricos finitos;
- limites físicos e gráficos;
- índices válidos em faces de malha;
- tamanho correto da densidade voxel;
- tamanho correto de heightmaps e pesos de material.

## Limites atuais

- até 2.000 objetos por cena;
- até 16 componentes por objeto;
- histórico de edição limitado a 50 comandos;
- cenas são carregadas como documento único; streaming de subcenas ainda é uma evolução futura.
