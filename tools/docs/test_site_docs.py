#!/usr/bin/env python3
"""Contract checks for the static documentation site."""

from pathlib import Path
import json
import re

ROOT = Path(__file__).resolve().parents[2]
SITE = ROOT / "docs-site"

html = (SITE / "index.html").read_text(encoding="utf-8")
app = (SITE / "app.js").read_text(encoding="utf-8")
catalog_source = (SITE / "nocode-catalog.js").read_text(encoding="utf-8")
payload = catalog_source.split("=", 1)[1].rsplit(";", 1)[0]
catalog = json.loads(payload)

assert len(catalog) == 961, len(catalog)
assert len({item["id"] for item in catalog}) == len(catalog)
assert all({"title", "id", "category", "purpose", "inputs", "outputs", "errors"} <= item.keys() for item in catalog)
assert len(set(re.findall(r'\bid="([^"]+)"', html))) == len(re.findall(r'\bid="([^"]+)"', html))
assert 'src="nocode-catalog.js"' in html
assert "#nocodeGrid" in app and "#nocodeSearch" in app
for example in ("Character Move", "Character Look", "Character Jump"):
    assert example in html, example
for stale in ("KOTLIN + FILAMENT", "SceneView + Google Filament", "Viewport Filament"):
    assert stale not in html, stale

print(f"Site válido: {len(catalog)} NoCodes únicos, catálogo e exemplos integrados")
