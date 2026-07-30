# Assets, texturas e materiais

## Estrutura

```text
res://assets/
├── models/
├── textures/
├── materials/
├── animations/
└── audio/
```

Cada asset possui um `AssetRecord` com identificador, nome exibido, caminho relativo, tipo de mídia e metadados específicos.

## Importar modelos

O importador principal aceita modelos GLB. Após a importação, o registro pode incluir:

- identificador do asset;
- slots de material;
- clips de animação;
- caminho do arquivo.

Ao usar um modelo:

- se há um personagem selecionado e o modelo possui animações, o modelo e um `AnimationPackComponent` são associados ao personagem;
- se há um terreno selecionado, o modelo pode entrar no `VegetationSpawnerComponent`;
- nos demais casos, é criado um objeto de malha na cena.

## Importar imagens

Tipos aceitos no fluxo atual:

- PNG;
- JPEG;
- WebP.

O nome do arquivo ajuda a decidir o canal:

| Texto no nome | Uso sugerido |
|---|---|
| `normal` | normal map |
| `rough` | roughness/metallic |
| `metal` | roughness/metallic |
| `occlusion` ou `_ao` | ambient occlusion |
| `emiss` | emissive |
| outros | base color/albedo |

## Material PBR de objetos

O `PbrMaterialComponent` controla:

- cor base;
- metallic;
- roughness;
- normal strength;
- occlusion strength;
- emissive strength;
- escala de textura;
- slot de material alvo;
- IDs das texturas PBR.

Ao aplicar imagem a um objeto comum, o editor cria um material PBR caso ele ainda não exista.

## Materiais do terreno

Cada `TerrainMaterialLayer` possui:

- ID;
- nome;
- cor de fallback;
- textura de cor;
- normal map;
- roughness;
- escala da textura.

No workspace Textura:

1. selecione a camada;
2. expanda o dock de assets;
3. toque na imagem;
4. pinte o peso da camada no viewport.

A textura e o peso são conceitos separados. Vincular a imagem define a aparência da camada; pintar define onde ela aparece.

## Auto-tile

As regras de auto-tile usam:

- altura normalizada mínima e máxima;
- inclinação mínima e máxima;
- prioridade;
- densidade.

O auto-tile pode distribuir terra, grama e rocha automaticamente, mas não substitui a pintura manual.

## Animações

Quando um modelo importado contém clips, o editor cria mapeamentos com:

- clip de origem;
- nome do estado;
- loop;
- velocidade;
- perfil de retarget.

Clips que contêm `death` no nome são configurados sem loop por padrão.

## Vegetação

Em terreno selecionado, modelos podem ser adicionados ao espalhador de vegetação. O componente controla:

- lista de modelos;
- densidade por metro quadrado;
- número máximo de instâncias;
- variação de escala;
- faixa de inclinação;
- faixa de altura;
- distâncias de LOD.

## Fluxo recomendado de material

```text
Importar modelo
→ selecionar objeto
→ aplicar base color
→ aplicar normal
→ aplicar roughness/metallic
→ ajustar escala
→ ajustar metallic e roughness
→ salvar cena
```

## Limites atuais

- o fluxo automático usa convenção de nomes; ainda não há importador completo de pacotes PBR por manifesto;
- o editor não converte formatos proprietários de outros jogos;
- a visualização depende dos recursos suportados pelo renderer Filament/SceneView;
- texturas grandes devem ser dimensionadas antes da importação para reduzir memória no celular.
