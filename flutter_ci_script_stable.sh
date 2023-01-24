#!/usr/bin/env bash

set -e -o pipefail

DIR="${BASH_SOURCE%/*}"
source "$DIR/flutter_ci_script_shared.sh"

declare -a CODELABS=(
  "adaptive_app"
  "animated-responsive-layout"
  "boring_to_beautiful"
  "cookbook"
  "cupertino_store"
  "dartpad_codelabs"
  "ffigen_codelab"
  "firebase-auth-flutterfire-ui"
  "firebase-emulator-suite"
  "firebase-get-to-know-flutter"
  "flame-building-doodle-dash"
  "github-client"
  "google-maps-in-flutter"
  "in_app_purchases"
  "namer"
  "plugin_codelab"
  "star_counter"
  "testing_codelab"
  "tfagents-flutter"
  "tfrs-flutter"
  "tfserving-flutter"
  "tooling"
  "webview_flutter"
  )

# Plugin codelab is failing on ubuntu-latest in CI.
if [[ "$OSTYPE" != "linux-gnu"* ]]; then
  CODELABS+=("plugin_codelab")
fi

ci_codelabs "stable" "${CODELABS[@]}"

echo "== END OF TESTS"
