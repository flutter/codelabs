#!/usr/bin/env bash

set -e -o pipefail

DIR="${BASH_SOURCE%/*}"
source "$DIR/flutter_ci_script_shared.sh"

declare -a CODELABS=(
  "animated-responsive-layout"
  "animations"
  "brick_breaker"
  "colorist"
  "dart-patterns-and-records"
  "deeplink_cookbook"
  "firebase-auth-flutterfire-ui"
  "firebase-get-to-know-flutter"
  "generate_crossword"
  "google-maps-in-flutter"
  "haiku_generator"
  "homescreen_codelab"
  "in_app_purchases"
  "namer"
  "tfagents-flutter"
  "tfrs-flutter"
  "tfserving-flutter"
  "tooling"
  "webview_flutter"
  )

ci_codelabs "beta" "${CODELABS[@]}"

echo "== END OF TESTS"
