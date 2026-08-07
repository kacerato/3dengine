# Megazord Engine — documentação do dump

Site estático em HTML, CSS e JavaScript puro, mantendo a identidade visual já publicada em `mobile-game-studio-docs.vercel.app`.

A fonte principal desta versão é:

```text
megazord-engine-decompiled/
```

A documentação foi reorganizada para não misturar a engine decompilada com o catálogo Godot usado anteriormente.

## Páginas

- `index.html` — visão explicada da arquitetura decompilada, editor, NoCode, runtime, temas, shaders e módulos da engine;
- `nocodes.html` — referência NoCode dedicada;
- `reference.html` — árvore pesquisável do dump carregada diretamente do GitHub;
- `styles.css` — identidade visual original do site;
- `megazord-docs.css` — estilos complementares específicos da documentação decompilada;
- `engine-docs.js` — busca e navegação da página principal;
- `nocodes.js` — carrega o índice NoCode e os contratos MDX sob demanda;
- `engine-reference.js` — indexa as áreas de `megazord-engine-decompiled` no navegador.

## Fontes do NoCode

O sistema NoCode é documentado em camadas:

1. **Painel visual / canvas / seleção de executor**

```text
megazord-engine-decompiled/smali_classes5/com/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel.smali
```

2. **Runtime de execução**

```text
megazord-engine-decompiled/smali/JAVARuntime/
```

3. **Tema e cores do NodeGraph**

```text
megazord-engine-decompiled/assets/Editor/Themes/Default.json
```

4. **Nomes e contratos dos nós**

A árvore `docs/nocode/**` do repositório público `ITsMagic-Software/Documentation` é usada como catálogo correlacionado. A documentação oficial informa **295 NoCode Nodes**. O navegador carrega o índice e, ao abrir um nó, busca apenas o MDX necessário para mostrar `Purpose`, `Inputs` e `Outputs`.

Isso é deliberado: classes referenciadas pelo Smali podem não estar presentes na árvore versionada do dump, então a documentação não inventa uma implementação 1:1.

## Referência do dump

`reference.html` consulta primeiro a raiz de `megazord-engine-decompiled` e depois cada subtree do GitHub. Todos os caminhos carregados permanecem pesquisáveis em memória; a interface renderiza apenas uma parte de cada grupo por vez para não travar o navegador.

## Abrir localmente

Como as páginas `nocodes.html` e `reference.html` usam `fetch`, prefira um servidor HTTP em vez de abrir por `file://`:

```bash
cd docs-site
python -m http.server 8080
```

Depois visite:

```text
http://localhost:8080/
```

## Arquivo legado

`nocode-catalog.js` pertence ao catálogo estático anterior e não é mais carregado pelas páginas novas. Ele pode ser removido em uma limpeza posterior depois que o deploy atualizado estiver validado.
