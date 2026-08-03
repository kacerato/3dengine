#!/usr/bin/env python3
"""Generate the static documentation-site catalog from the audited NoCode docs."""

from __future__ import annotations

import json
import re
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
SOURCE = ROOT / "docs" / "nocode" / "NATIVE_NODE_CATALOG.md"
TARGET = ROOT / "docs-site" / "nocode-catalog.js"

ENTRY = re.compile(
    r"^## (?P<number>\d+)\. (?P<title>.+?)\n\n"
    r"- \*\*ID:\*\* `(?P<id>[^`]+)`\n"
    r"- \*\*Categoria:\*\* (?P<category>.+?)\n"
    r"- \*\*Finalidade:\*\* (?P<purpose>.+?)\n"
    r"- \*\*Entradas/alvo:\*\* (?P<inputs>.+?)\n"
    r"- \*\*Saídas/efeito:\*\* (?P<outputs>.+?)\n"
    r"- \*\*Erros:\*\* (?P<errors>.+?)(?=\n\n## |\Z)",
    re.MULTILINE | re.DOTALL,
)


def build() -> list[dict[str, object]]:
    text = SOURCE.read_text(encoding="utf-8")
    entries = []
    for match in ENTRY.finditer(text):
        item = match.groupdict()
        item["number"] = int(item["number"])
        entries.append(item)
    if len(entries) < 900:
        raise SystemExit(f"Catálogo incompleto: somente {len(entries)} entradas encontradas")
    return entries


def main() -> None:
    entries = build()
    payload = json.dumps(entries, ensure_ascii=False, separators=(",", ":"))
    TARGET.write_text(
        "// Gerado de docs/nocode/NATIVE_NODE_CATALOG.md. Não editar manualmente.\n"
        f"window.MGS_NOCODE_CATALOG={payload};\n",
        encoding="utf-8",
    )
    print(f"{TARGET}: {len(entries)} NoCodes")


if __name__ == "__main__":
    main()
