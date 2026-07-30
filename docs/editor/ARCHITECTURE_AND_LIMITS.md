# Arquitetura, desempenho e limites

## Módulos

### core:model

Contém dados persistidos e operações puras:

- cenas e componentes;
- validação;
- histórico de comandos;
- terreno;
- malha editável;
- volume voxel;
- linguagem NoCode.

As operações deste módulo não dependem da interface Android.

### core:contracts

Define contratos de repositório e resultados de conteúdo.

### projects

Implementa armazenamento de projetos, cenas, scripts, grafos e assets.

### editor

Contém:

- ViewModel;
- workspaces Compose;
- hierarquia;
- inspectors;
- editor Lua;
- editor NoCode;
- World Studio;
- interação com importadores.

### runtime

Projeta `SceneDocument` para Filament/SceneView:

- modelos;
- primitivas;
- terreno;
- malhas editáveis;
- volumes voxel;
- materiais;
- câmera e luz;
- preview do jogo.

### scripting

Executa Lua e grafos visuais sobre uma interface controlada da cena.

## Fonte de verdade

O `SceneDocument` é autoritativo. Nós do renderer são recriados e descartados. Alterações precisam primeiro atualizar o documento; o viewport apenas reflete o novo estado.

## Histórico

`SceneCommandHistory` executa comandos reversíveis. Alterações contínuas, como traços de terreno, podem usar um preview temporário e confirmar somente o resultado final.

## Autosave

Após uma alteração, o editor agenda salvamento com atraso. Uma nova alteração cancela o agendamento anterior, reduzindo gravações repetidas.

## Terrain heightfield

Vantagens:

- memória previsível;
- superfície suave;
- colisão simples;
- adequado a áreas externas.

Limitações estruturais:

- uma altura por coordenada X/Z;
- não representa teto sobre piso;
- não cria caverna, túnel interno ou saliência sobreposta.

## Malha editável

Vantagens:

- controle de vértices e faces;
- extrusão;
- topologia explícita;
- adequada para construções e formas específicas.

Limites atuais:

- seleção visual principal usa projeção superior;
- não há seleção de arestas separada;
- não há bevel, inset, loop cut ou knife;
- Dyntopo é refinamento local por subdivisão, não reconstrução contínua durante pincel;
- conversão de modelo GLB importado para topologia editável ainda usa uma primitiva de fallback quando os dados brutos da malha não estão disponíveis no modelo de projeto.

## Volume voxel

Vantagens:

- interior e exterior;
- cavernas;
- túneis;
- saliências;
- destruição;
- preenchimento e remoção locais.

Implementação atual:

- grade densa entre `8³` e `48³`;
- densidade normalizada de 0 a 1;
- pincel esférico;
- fatias X/Y/Z;
- extração de faces cúbicas nas fronteiras.

Limites atuais:

- superfície blocada;
- sem LOD por chunks;
- sem streaming de volume;
- sem compressão esparsa;
- sem Marching Cubes, Surface Nets ou Transvoxel;
- custo cresce com o cubo da resolução;
- um volume muito grande deve ser dividido em vários objetos.

## Renderização voxel

O renderer percorre células sólidas e cria somente faces vizinhas a células vazias. Existe limite de faces visíveis para impedir uso excessivo de memória.

A próxima arquitetura recomendada para mundos maiores é:

```text
VoxelWorld
├── regiões
├── chunks esparsos
├── cache de densidade
├── geração assíncrona de malha
├── LOD
├── costura de bordas
└── colisão por chunk
```

## Desempenho mobile

Recomendações:

- começar terreno em `65²`;
- usar `129²` somente quando necessário;
- limitar volumes a `24³` ou `28³` durante edição;
- dividir cavernas longas em volumes;
- usar texturas dimensionadas;
- reduzir quantidade de modelos animados simultâneos;
- manter vegetação dentro dos limites de instância;
- testar no aparelho alvo frequentemente.

## Compatibilidade

O alvo atual é Android. O artifact gerado é APK. Um executável Windows exige um módulo desktop e uma camada de viewport compatível com desktop.

## O que está implementado e o que não deve ser confundido

| Recurso | Estado |
|---|---|
| Escultura manual de terreno | Implementado |
| Pintura de camadas | Implementado |
| Importação de heightmap | Implementado |
| Edição de vértices | Implementado para malhas editáveis |
| Seleção e extrusão de face | Implementado |
| Subdivisão local | Implementado |
| Dyntopo completo estilo Blender | Não; existe refinamento adaptativo local |
| Volume voxel 3D | Implementado |
| Cavidade e túnel | Implementado |
| Saliência sobreposta | Representável pelo volume |
| Destruição por subtração | Implementada no editor |
| Superfície voxel lisa | Ainda não |
| LOD/streaming voxel | Ainda não |
| Edição completa de GLB importado | Ainda não |

Esta tabela deve ser atualizada quando uma implementação mudar de estado.
