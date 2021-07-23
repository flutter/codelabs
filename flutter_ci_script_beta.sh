#!/usr/bin/env bash

set -e -o pipefail

DIR="${BASH_SOURCE%/*}"
source "$DIR/flutter_ci_script_shared.sh"

declare -a CODELABS=(
  "add_flutter_to_android_app"
  "cookbook"
  "cupertino_store"
  "firebase-get-to-know-flutter"
  "friendly_chat"
  # `github-graphql-client` is formatting differently on stable vs beta. 
  # "github-graphql-client"
  "google-maps-in-flutter"
  "in_app_purchases"
  "photos-sharing"
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
