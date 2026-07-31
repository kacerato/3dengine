#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
LOCK_FILE="$ROOT_DIR/godot-upstream/UPSTREAM.lock"
WORK_DIR="${GODOT_WORK_DIR:-$ROOT_DIR/.work/godot}"

if [[ ! -f "$LOCK_FILE" ]]; then
  echo "Arquivo de lock não encontrado: $LOCK_FILE" >&2
  exit 1
fi

while IFS='=' read -r raw_key raw_value; do
  key="${raw_key//[[:space:]]/}"
  value="${raw_value#${raw_value%%[![:space:]]*}}"
  value="${value%${value##*[![:space:]]}}"
  [[ -z "$key" || "$key" == \#* ]] && continue
  if [[ ! "$key" =~ ^[A-Z0-9_]+$ ]]; then
    echo "Chave inválida no lock: $key" >&2
    exit 1
  fi
  printf -v "$key" '%s' "$value"
done < "$LOCK_FILE"

required_keys=(UPSTREAM_REPOSITORY UPSTREAM_TAG UPSTREAM_COMMIT)
for key in "${required_keys[@]}"; do
  if [[ -z "${!key:-}" ]]; then
    echo "Chave obrigatória ausente no lock: $key" >&2
    exit 1
  fi
done

for command in git python3; do
  if ! command -v "$command" >/dev/null 2>&1; then
    echo "Dependência ausente: $command" >&2
    exit 1
  fi
done

mkdir -p "$(dirname "$WORK_DIR")"

if [[ ! -d "$WORK_DIR/.git" ]]; then
  echo "Clonando upstream Godot em $WORK_DIR"
  git clone --filter=blob:none --no-checkout "$UPSTREAM_REPOSITORY" "$WORK_DIR"
fi

cd "$WORK_DIR"
git remote set-url origin "$UPSTREAM_REPOSITORY"
git fetch --force --tags origin "$UPSTREAM_TAG"
git checkout --detach "$UPSTREAM_COMMIT"
git submodule sync --recursive
git submodule update --init --recursive --depth 1

actual_commit="$(git rev-parse HEAD)"
if [[ "$actual_commit" != "$UPSTREAM_COMMIT" ]]; then
  echo "Commit incorreto: esperado $UPSTREAM_COMMIT, atual $actual_commit" >&2
  exit 1
fi

if [[ ! -f LICENSE.txt || ! -f COPYRIGHT.txt ]]; then
  echo "Arquivos de licença do upstream não foram encontrados." >&2
  exit 1
fi

mkdir -p "$ROOT_DIR/godot-upstream/licenses"
cp LICENSE.txt "$ROOT_DIR/godot-upstream/licenses/GODOT_LICENSE.txt"
cp COPYRIGHT.txt "$ROOT_DIR/godot-upstream/licenses/GODOT_COPYRIGHT.txt"

printf '%s\n' \
  "Upstream preparado:" \
  "  repositório: $UPSTREAM_REPOSITORY" \
  "  tag:         $UPSTREAM_TAG" \
  "  commit:      $actual_commit" \
  "  diretório:   $WORK_DIR"
