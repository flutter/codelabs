#!/usr/bin/env bash

set -e -o pipefail

: ${FLUTTER:=flutter}
FLUTTER_VERS=`$FLUTTER --version | head -1`

declare -a  PROJECT_PATHS=(
  startup_namer/[1-1]* \
)

echo "== USING $FLUTTER_VERS"
for PROJECT in "${PROJECT_PATHS[@]}"; do
  echo "== TESTING $PROJECT"
  pushd "$PROJECT" > /dev/null

  $FLUTTER analyze
  $FLUTTER format --dry-run --set-exit-if-changed .
  $FLUTTER test

  popd > /dev/null
done

echo "== END OF TESTS"
