#!/usr/bin/env bash

set -e -o pipefail

DIR="${BASH_SOURCE%/*}"
source "$DIR/flutter_ci_script_shared.sh"

declare -a CODELABS=(
  "adaptive_app"
  "animated-responsive-layout"
  "animations"
  "audio_soloud"
  "boring_to_beautiful"
  "brick_breaker"
  "dart-patterns-and-records"
  "deeplink_cookbook"
  "ffigen_codelab"
  "firebase-auth-flutterfire-ui"
  "firebase-emulator-suite"
  "firebase-get-to-know-flutter"
  "forge2d_game"
  "generate_crossword"
  "github-client"
  "google-maps-in-flutter"
  "haiku_generator"
  "homescreen_codelab"
  "in_app_purchases"
  "intro_flutter_gpu"
  "namer"
  "next-gen-ui"
  "testing_codelab"
  "tfagents-flutter"
  "tfrs-flutter"
  "tfserving-flutter"
  "tooling"
  "webview_flutter"
  )

ci_codelabs "master" "${CODELABS[@]}"

echo "== END OF TESTS"
