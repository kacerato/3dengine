# Megazord Engine — documentação do editor

Esta documentação descreve o fluxo real do aplicativo, os recursos disponíveis, a organização dos projetos e os limites técnicos atuais.

## Índice

- [Guia geral do aplicativo](editor/USER_GUIDE.md)
- [World Studio: terreno, malha e volume](editor/WORLD_STUDIO.md)
- [Cenas, objetos e componentes](editor/SCENES_AND_COMPONENTS.md)
- [Assets, texturas e materiais](editor/ASSET_PIPELINE.md)
- [Lua e organização de arquivos](editor/LUA_AND_FILES.md)
- [NoCode: linguagem visual e catálogo de nós](editor/NOCODE_REFERENCE.md)
- [Aplicativo Godot atual](editor/APP_REFERENCE.md)
- [NoCode nativo: arquitetura e uso](nocode/README.md)
- [Catálogo individual das 961 operações](nocode/NATIVE_NODE_CATALOG.md)
- [Controle mobile por NoCode](nocode/MOBILE_RUNTIME_GUIDE.md)
- [Gestos, navegação e edição](editor/SHORTCUTS_AND_GESTURES.md)
- [Arquitetura, desempenho e limites](editor/ARCHITECTURE_AND_LIMITS.md)
- [Arquitetura do Studio V3](editor/STUDIO_V3_ARCHITECTURE.md)
- [Princípios de interface](editor/INTERFACE_PRINCIPLES.md)

## Estrutura padrão de projeto

```text
res://
├── scenes/
├── scripts/lua/
├── visual-graphs/
├── assets/
│   ├── models/
│   ├── textures/
│   ├── materials/
│   ├── animations/
│   └── audio/
├── prefabs/
├── ui/
└── plugins/
```

A árvore `res://` é a origem única dos caminhos persistidos. Scripts e grafos são ligados aos objetos por componentes, enquanto assets são referenciados por identificadores estáveis.

