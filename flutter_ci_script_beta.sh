#!/usr/bin/env bash

set -e -o pipefail

DIR="${BASH_SOURCE%/*}"
source "$DIR/flutter_ci_script_shared.sh"

declare -a CODELABS=(
  # TODO(domesticmouse): re-enable when stable increments 
  # "adaptive_app"
  "boring_to_beautiful"
  # TODO(domesticmouse): re-enable when stable increments 
  # "cookbook"
  "cupertino_store"
  "dartpad_codelabs"
  "firebase-emulator-suite"
  # TODO(domesticmouse): re-enable when stable increments 
  # "firebase-get-to-know-flutter"
  "friendly_chat"
  # TODO(domesticmouse): re-enable when stable increments 
  # "github-client"
  "google-maps-in-flutter"
  "in_app_purchases"
  # TODO(domesticmouse): re-enable when stable increments 
  # "photos-sharing"
  "star_counter"
  "startup_namer"
  # TODO(domesticmouse): re-enable when stable increments 
  # "testing_codelab"
  "tfagents-flutter"
  "tfrs-flutter"
  "tfserving-flutter"
  "tooling"
  # TODO(domesticmouse): re-enable when stable increments 
  # "webview_flutter"
  )

# Plugin codelab is failing on ubuntu-latest in CI.
if [[ "$OSTYPE" != "linux-gnu"* ]]; then
  CODELABS+=("plugin_codelab")
fi

ci_codelabs "beta" "${CODELABS[@]}"

echo "== END OF TESTS"
