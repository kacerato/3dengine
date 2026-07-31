#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
WORK_DIR="${GODOT_WORK_DIR:-$ROOT_DIR/.work/godot}"
BUILD_TYPE="${GODOT_ANDROID_BUILD_TYPE:-debug}"

if [[ ! -d "$WORK_DIR/.git" ]]; then
  "$ROOT_DIR/tools/godot/bootstrap_upstream.sh"
fi

python3 "$ROOT_DIR/tools/godot/apply_product_patches.py" \
  --godot-dir "$WORK_DIR" \
  --root-dir "$ROOT_DIR"

cd "$WORK_DIR"

for command in python3 java; do
  if ! command -v "$command" >/dev/null 2>&1; then
    echo "Dependência ausente: $command" >&2
    exit 1
  fi
done

if ! command -v scons >/dev/null 2>&1; then
  echo "SCons não encontrado. Instale com: python3 -m pip install scons" >&2
  exit 1
fi

python3 ./misc/scripts/install_swappy_android.py

scons \
  platform=android \
  target=editor \
  arch=arm64 \
  production=yes \
  dev_mode=yes \
  module_text_server_fb_enabled=yes \
  tests=no \
  swappy=yes \
  "${GODOT_SCONS_EXTRA_FLAGS:-}"

cd platform/android/java
case "$BUILD_TYPE" in
  debug)
    ./gradlew generateGodotEditor
    ;;
  release)
    ./gradlew generateGodotEditor
    ;;
  *)
    echo "GODOT_ANDROID_BUILD_TYPE inválido: $BUILD_TYPE" >&2
    exit 1
    ;;
esac

cd "$WORK_DIR"
ARTIFACT_DIR="$ROOT_DIR/artifacts/godot-editor"
mkdir -p "$ARTIFACT_DIR"

find bin/android_editor_builds -maxdepth 1 -type f \
  \( -name '*.apk' -o -name '*.aab' \) \
  -print -exec cp -f {} "$ARTIFACT_DIR/" \;

if ! find "$ARTIFACT_DIR" -maxdepth 1 -type f -name '*.apk' | grep -q .; then
  echo "Nenhum APK foi produzido em $ARTIFACT_DIR" >&2
  exit 1
fi

echo "Artifacts disponíveis em: $ARTIFACT_DIR"
