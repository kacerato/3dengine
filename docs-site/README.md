# Mobile Game Studio — documentação visual

Site estático criado em HTML, CSS e JavaScript puro.

O catálogo NoCode é gerado da referência auditada da engine. Não edite
`nocode-catalog.js` manualmente. Depois de adicionar ou alterar um NoCode, rode:

```bash
python tools/godot/generate_native_nocode_docs.py
python tools/docs/build_site_catalog.py
python tools/godot/test_nocode_contract.py
```

Assim, runtime, documentação Markdown e site continuam sincronizados.

## Abrir localmente

Abra `index.html` diretamente no navegador, ou execute um servidor simples:

```bash
python -m http.server 8080
```

Depois visite `http://localhost:8080`.

## Estrutura

- `index.html`: conteúdo e componentes visuais;
- `styles.css`: identidade visual, responsividade e animações;
- `app.js`: busca, navegação, demos interativas e canvas pseudo-3D;
- `assets/logo.png`: identidade visual usada no site.

O código dos exemplos permanece recolhido por padrão e pode ser aberto individualmente ou pelo botão “Mostrar código”.
