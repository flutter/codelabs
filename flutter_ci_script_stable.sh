#!/usr/bin/env bash

set -e -o pipefail

DIR="${BASH_SOURCE%/*}"
source "$DIR/flutter_ci_script_shared.sh"

declare -a CODELABS=(
  "adaptive_app"
  "cookbook"
  "cupertino_store"
  "dartpad_codelabs"
  "firebase-get-to-know-flutter"
  "friendly_chat"
  "github-client"
  "google-maps-in-flutter"
  "in_app_purchases"
  "photos-sharing"
  "star_counter"
  "startup_namer"
  "testing_codelab"
  "webview_flutter"
  )

# Plugin codelab is failing on ubuntu-latest in CI.
if [[ "$OSTYPE" != "linux-gnu"* ]]; then
  CODELABS+=("plugin_codelab")
fi

ci_codelabs "stable" "${CODELABS[@]}"

echo "== END OF TESTS"
