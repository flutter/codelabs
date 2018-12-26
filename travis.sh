#!/usr/bin/env bash

set -e -o pipefail

if  [[ -n "$(type -t flutter)" ]]; then
  : ${FLUTTER:=flutter}
fi
echo "== FLUTTER: $FLUTTER"

FLUTTER_VERS=`$FLUTTER --version | head -1`
echo "== FLUTTER_VERS: $FLUTTER_VERS"

declare -a PROJECT_PATHS=(
  startup_namer/[1-4]* \
)

for PROJECT in "${PROJECT_PATHS[@]}"; do
  echo "== TESTING $PROJECT"
  pushd "$PROJECT" > /dev/null

  $FLUTTER analyze
  $FLUTTER format --dry-run --set-exit-if-changed .
  $FLUTTER test

  popd > /dev/null
done

echo "== END OF TESTS"
