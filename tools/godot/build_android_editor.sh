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

scons_args=(
  platform=android
  target=editor
  arch=arm64
  production=yes
  dev_mode=yes
  module_text_server_fb_enabled=yes
  tests=no
  swappy=yes
)

if [[ -n "${GODOT_SCONS_EXTRA_FLAGS:-}" ]]; then
  # shellcheck disable=SC2206
  extra_args=( ${GODOT_SCONS_EXTRA_FLAGS} )
  scons_args+=("${extra_args[@]}")
fi

scons "${scons_args[@]}"

cd platform/android/java
case "$BUILD_TYPE" in
  debug|release)
    ./gradlew generateGodotEditor
    ;;
  *)
    echo "GODOT_ANDROID_BUILD_TYPE inválido: $BUILD_TYPE" >&2
    exit 1
    ;;
esac

cd "$WORK_DIR"
ARTIFACT_DIR="$ROOT_DIR/artifacts/godot-editor"
rm -rf "$ARTIFACT_DIR"
mkdir -p "$ARTIFACT_DIR"

mapfile -t apk_files < <(
  find bin/android_editor_builds -maxdepth 1 -type f -name '*.apk' -print | sort
)
mapfile -t aab_files < <(
  find bin/android_editor_builds -maxdepth 1 -type f -name '*.aab' -print | sort
)

if [[ ${#apk_files[@]} -ne 1 ]]; then
  echo "Esperado exatamente 1 APK; encontrados ${#apk_files[@]}" >&2
  printf '  %s\n' "${apk_files[@]:-}" >&2
  exit 1
fi
if [[ ${#aab_files[@]} -ne 1 ]]; then
  echo "Esperado exatamente 1 AAB; encontrados ${#aab_files[@]}" >&2
  printf '  %s\n' "${aab_files[@]:-}" >&2
  exit 1
fi

cp -f "${apk_files[0]}" "$ARTIFACT_DIR/MobileGameStudio-Godot-Foundation.apk"
cp -f "${aab_files[0]}" "$ARTIFACT_DIR/MobileGameStudio-Godot-Foundation.aab"
cp -f LICENSE.txt COPYRIGHT.txt MOBILE_GAME_STUDIO_DERIVATIVE.txt "$ARTIFACT_DIR/"

required_artifacts=(
  "MobileGameStudio-Godot-Foundation.apk"
  "MobileGameStudio-Godot-Foundation.aab"
  "LICENSE.txt"
  "COPYRIGHT.txt"
  "MOBILE_GAME_STUDIO_DERIVATIVE.txt"
)
for artifact in "${required_artifacts[@]}"; do
  if [[ ! -s "$ARTIFACT_DIR/$artifact" ]]; then
    echo "Artifact obrigatório ausente ou vazio: $artifact" >&2
    exit 1
  fi
done

echo "Artifacts disponíveis em: $ARTIFACT_DIR"
printf '  %s\n' "${required_artifacts[@]}"
