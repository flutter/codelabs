#!/usr/bin/env bash

set -e -o pipefail

DIR="${BASH_SOURCE%/*}"
source "$DIR/flutter_ci_script_shared.sh"

declare -a CODELABS=(
  "adaptive_app"
  # TODO(DomesticMouse): flutter_test from sdk depends on material_color_utilities 0.2.0
  # "boring_to_beautiful"
  # TODO(DomesticMouse): remove no longer required !'s
  # "cookbook"
  "cupertino_store"
  "dartpad_codelabs"
  "ffigen_codelab"
  "firebase-emulator-suite"
  # TODO(ewindmill): ColorScheme class changes required for Flutter beta
  # "flame-building-doodle-dash"
  "firebase-get-to-know-flutter"
  "flame-building-doodle-dash"
  "friendly_chat"
  "github-client"
  "google-maps-in-flutter"
  "in_app_purchases"
  "material-3-codelab"
  "namer"
  "star_counter"
  "startup_namer"
  "testing_codelab"
  "tfagents-flutter"
  "tfrs-flutter"
  # TODO(DomesticMouse): needs `dart format` for Flutter beta
  # "tfserving-flutter"
  "tooling"
  "webview_flutter"
  )

# Plugin codelab is failing on ubuntu-latest in CI.
if [[ "$OSTYPE" != "linux-gnu"* ]]; then
  CODELABS+=("plugin_codelab")
fi

ci_codelabs "beta" "${CODELABS[@]}"

echo "== END OF TESTS"
