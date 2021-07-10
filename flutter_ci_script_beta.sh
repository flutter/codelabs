#!/usr/bin/env bash

set -e -o pipefail

if  [[ -n "$(type -t flutter)" ]]; then
  : ${FLUTTER:=flutter}
fi
echo "== FLUTTER: $FLUTTER"

FLUTTER_VERS=`$FLUTTER --version | head -1`
echo "== FLUTTER_VERS: $FLUTTER_VERS"

# plugin_codelab is a special case since it's a plugin.  Analysis doesn't seem to be working.
pushd $PWD
echo "== TESTING plugin_codelab"
cd ./plugin_codelab
$FLUTTER format --dry-run --set-exit-if-changed .;
popd

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
  "github-graphql-client"
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

declare -a PROJECT_PATHS=($(
  for CODELAB in "${CODELABS[@]}"
  do 
    find $CODELAB -not -path './flutter/*' -not -path './plugin_codelab/pubspec.yaml' -name pubspec.yaml -exec dirname {} \; 
  done
  ))

for PROJECT in "${PROJECT_PATHS[@]}"; do
  echo "== TESTING $PROJECT"
  (
    cd "$PROJECT";
    set -x;
    $FLUTTER analyze;
    $FLUTTER format --dry-run --set-exit-if-changed .;
    $FLUTTER test
  )
done

declare -a WORKSHOP_STEP_PATHS=($(
    find dartpad_codelabs -name snippet.dart -exec dirname {} \; 
  ))

for WORKSHOP_STEP_PATH in "${WORKSHOP_STEP_PATHS[@]}"; do
  echo "== TESTING $WORKSHOP_STEP_PATH"
  (
    cd "$WORKSHOP_STEP_PATH";
    if [[ -r solution.dart ]]; then DART_FILE=solution.dart; else DART_FILE=snippet.dart; fi
    set -x;
    $FLUTTER format --dry-run --set-exit-if-changed $DART_FILE;
  )
done

echo "== END OF TESTS"
