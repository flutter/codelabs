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
  "cookbook"
  "cupertino_store"
  "firebase-get-to-know-flutter"
  "github-graphql-client"
  "google-maps-in-flutter"
  "startup_namer"
  # Tracking issue: https://github.com/flutter/flutter/issues/74209
  # "testing_codelab"
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

echo "== END OF TESTS"
