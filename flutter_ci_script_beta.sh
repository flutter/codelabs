#!/usr/bin/env bash

set -e -o pipefail

DIR="${BASH_SOURCE%/*}"
source "$DIR/flutter_ci_script_shared.sh"

declare -a CODELABS=(
  # TODO(DomesticMouse): The argument type 'BottomAppBarTheme' can't be assigned to the parameter type 'BottomAppBarThemeData?'.
  # "adaptive_app"
  "animated-responsive-layout"
  "animations"
  "audio_soloud"
  # TODO(DomesticMouse): The argument type 'BottomAppBarTheme' can't be assigned to the parameter type 'BottomAppBarThemeData?'.
  # "boring_to_beautiful"
  "brick_breaker"
  "colorist"
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
  # TODO(domesticmouse): Add once this is green on beta
  # "intro_flutter_gpu"
  "namer"
  "next-gen-ui"
  "testing_codelab"
  "tfagents-flutter"
  "tfrs-flutter"
  # TODO(DomesticMouse): 'groupValue' is deprecated and shouldn't be used.
  # "tfserving-flutter"
  "tooling"
  "webview_flutter"
  )

ci_codelabs "beta" "${CODELABS[@]}"

echo "== END OF TESTS"
