#!/usr/bin/env python3
"""Contract checks for the static documentation site."""

from pathlib import Path
import json
import re

ROOT = Path(__file__).resolve().parents[2]
SITE = ROOT / "docs-site"

html = (SITE / "index.html").read_text(encoding="utf-8")
nocodes_html = (SITE / "nocodes.html").read_text(encoding="utf-8")
app = (SITE / "app.js").read_text(encoding="utf-8")
catalog_source = (SITE / "nocode-catalog.js").read_text(encoding="utf-8")
payload = catalog_source.split("=", 1)[1].rsplit(";", 1)[0]
catalog = json.loads(payload)

assert len(catalog) == 961, len(catalog)
assert len({item["id"] for item in catalog}) == len(catalog)
assert all({"title", "id", "category", "status", "purpose", "inputs", "outputs", "example", "errors"} <= item.keys() for item in catalog)
assert all(item["status"] in ("Implementado e executável no runner nativo", "Catalogado; execução nativa ainda não implementada") for item in catalog)
assert all(len(item["example"]) >= 40 for item in catalog)
for forbidden in (
    "Executa a operação registrada", "Use os pinos mostrados", "envie a saída para `Debug Info`",
    "Executa a ação", "alvo compatível", "ajuste os parâmetros", "conforme a operação",
    "operações de consulta", "parâmetros exibidos", "no próprio bloco", "valores exibidos",
    "demais pinos", "ação relacionada", "→ Debug Info",
    "resposta de gameplay", "→ Sequence 2",
    "Aplica `reverse` a texto", "configure os parâmetros do bloco para transformar",
    "com o tipo indicado no conector", "Use este bloco quando a mecânica precisa aplicar",
    "use `flow` para atualizar a interface ou encadear o próximo comportamento",
):
    assert not any(forbidden in field for item in catalog for field in item.values() if isinstance(field, str)), forbidden
assert len(set(re.findall(r'\bid="([^"]+)"', html))) == len(re.findall(r'\bid="([^"]+)"', html))
assert 'src="nocode-catalog.js"' in html
assert 'src="nocode-catalog.js"' in nocodes_html
assert 'href="nocodes.html"' in html
assert "#nocodeGrid" in app and "#nocodeSearch" in app
for example in ("Character Move", "Character Look", "Character Jump"):
    assert example in html, example
for stale in ("KOTLIN + FILAMENT", "SceneView + Google Filament", "Viewport Filament"):
    assert stale not in html, stale

print(f"Site válido: {len(catalog)} NoCodes únicos, catálogo e exemplos integrados")
