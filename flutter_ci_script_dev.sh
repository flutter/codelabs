#!/usr/bin/env bash

set -e -o pipefail

DIR="${BASH_SOURCE%/*}"
source "$DIR/flutter_ci_script_shared.sh"

declare -a CODELABS=(
  "add_flutter_to_android_app"
  # TODO(domesticmouse) re-enable once cookbook is updated for deprecated member usage.
  # Tracking bug: https://github.com/flutter/flutter/issues/84665
  # "cookbook"
  "cupertino_store"
  "firebase-get-to-know-flutter"
  # TODO(domesticmouse) re-enable once friendly_chat is updated for deprecated member usage.
  # Tracking bug: https://github.com/flutter/flutter/issues/84668
  # "friendly_chat"
  # `github-graphql-client` is formatting differently on stable vs dev. 
  # "github-graphql-client"
  "google-maps-in-flutter"
  "in_app_purchases"
  # TODO(domesticmouse) re-enable one photos-sharing is updated for deprecated member usage.
  # Tracking bug: https://github.com/flutter/flutter/issues/85824
  # "photos-sharing"
  "star_counter"
  "startup_namer"
  "testing_codelab"
  )

# Plugin codelab is failing on ubuntu-latest in CI.
if [[ "$OSTYPE" != "linux-gnu"* ]]; then
  CODELABS+=("plugin_codelab")
fi

ci_codelabs "${CODELABS[@]}"

echo "== END OF TESTS"
