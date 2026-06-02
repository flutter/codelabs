#!/usr/bin/env bash

set -euxo pipefail

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
  "genui-intro"
  "google-maps-in-flutter"
  "homescreen_codelab"
  "in_app_purchases"
  "namer"
  "tooling"
  "webview_flutter"
  )

ci_codelabs "beta" "${CODELABS[@]}"

echo "== END OF TESTS"
