# NoCode nativo do Megazord Engine

O NoCode é um módulo C++ da engine derivada de Godot. Ele usa `GraphEdit`/`GraphNode`, opera sobre nós Godot reais e persiste grafos compatíveis em `*.graph.json`. Não existe cena, renderer ou runtime paralelo.

## Documentação

- [Catálogo individual das 961 operações](NATIVE_NODE_CATALOG.md): ID, categoria, finalidade, entradas, alvo, saída e erros de cada bloco.
- [Runtime mobile e projeto de validação](MOBILE_RUNTIME_GUIDE.md): joystick, câmera, pulo, grafo de prova e roteiro de teste.
- [Referência da linguagem visual](../editor/NOCODE_REFERENCE.md): formato JSON, portas, conexões e categorias.
- [Guia do aplicativo/editor](../editor/APP_REFERENCE.md): abrir, importar, organizar, editar e salvar grafos.

## Componentes

- `MGSNoCodeGraph`: importa, valida e salva schema 1/2.
- `MGSNoCodeRunner`: executa eventos e ações no `SceneTree` real.
- `MGSNoCodeCatalog`: catálogo nativo com contador verificado de 961 IDs únicos.
- `MGSNoCodeEditorPlugin`: painel visual, biblioteca categorizada, busca e organização automática.

## Importação e alinhamento

Ao importar um `.graph.json`, o painel reconstrói os nós e chama o organizador nativo do `GraphEdit`. Use **Organizar** novamente depois de alterações grandes. A posição organizada é persistida no próximo **Salvar**.

1. abra o projeto e o painel **NoCode**;
2. toque em **Importar** e escolha o `.graph.json`;
3. use **Organizar** se desejar recalcular o layout;
4. execute **Validar**;
5. salve para persistir posições e valores.

## Segurança e diagnóstico

- máximo de 512 nós e 1.024 conexões;
- IDs duplicados, auto-conexões e conexões duplicadas são rejeitados;
- limite configurável de nós executados e proteção de 16 visitas por nó;
- alvo ausente ou incompatível emite `graph_error`;
- operações desconhecidas falham explicitamente.

## Evidência automatizada

```powershell
python tools/godot/test_nocode_contract.py
python tools/godot/generate_native_nocode_docs.py
```

O gerador falha se quantidade ou IDs divergirem do contrato documentado.

