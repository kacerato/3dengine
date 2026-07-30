# Studio V3 — arquitetura de edição

Documento de implementação do editor sólido, categorizado e orientado a manipulação direta.

A interface é dividida em workspaces, e cada workspace possui apenas ferramentas relevantes ao contexto atual. O viewport não recebe textos instrutivos permanentes nem botões flutuantes sobrepostos.

- **Cena**: hierarquia, viewport, transformação e componentes.
- **Mundo**: terreno heightfield, pintura, objetos e volume voxel.
- **Malha**: vértices, arestas, faces, extrusão, subdivisão e conversão voxel.
- **Código**: arquivos Lua organizados por pasta e editor.
- **NoCode**: grafos organizados por pasta e editor visual.
- **Assets**: modelos, texturas, materiais, áudio e animações.

A base técnica usa dois tipos de geometria:

1. **Heightfield** para terreno externo eficiente, estradas, montanhas e vales.
2. **Volume voxel/SDF** para cavernas, túneis, destruição, saliências e formas que não podem ser representadas por mapa de altura.

A edição de malha permanece separada do volume para permitir controle individual de vértices, arestas e faces.
