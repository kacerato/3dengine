# Patch queue do editor derivado

Este diretório conterá somente alterações que realmente precisam tocar o núcleo do Godot.

## Regra principal

Antes de criar um patch, verificar nesta ordem:

1. pode ser um plugin de editor?
2. pode ser uma GDExtension?
3. pode ser um módulo isolado?
4. pode ser configuração ou tema?
5. somente então alterar o núcleo.

## Formato

```text
0001-product-branding.patch
0002-mobile-dock-profile.patch
0003-touch-hit-regions.patch
...
```

Cada patch deve possuir um arquivo Markdown com o mesmo prefixo:

```text
0001-product-branding.md
```

O documento deve registrar:

- upstream em que o patch foi criado;
- arquivos alterados;
- motivo;
- comportamento original;
- comportamento novo;
- alternativa por plugin avaliada;
- teste automatizado;
- teste em aparelho;
- risco de conflito ao atualizar o upstream.

## Restrições

- não remover avisos de licença;
- não usar nome ou logo Godot como marca do produto;
- não colocar funcionalidades próprias diretamente em `editor_node.cpp` sem uma justificativa forte;
- não criar estado paralelo ao sistema de seleção, Undo/Redo ou plugins do Godot;
- não copiar o shell Compose antigo para dentro do editor derivado;
- não manter patches binários ou assets sem licença documentada.

## Aplicação

A aplicação automática da fila será adicionada após o primeiro build upstream limpo. Até lá, `tools/godot/apply_product_patches.py` aplica apenas o nome e o application ID Android de forma idempotente.
