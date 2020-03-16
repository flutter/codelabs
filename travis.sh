#!/usr/bin/env bash

set -e -o pipefail

if  [[ -n "$(type -t flutter)" ]]; then
  : ${FLUTTER:=flutter}
fi
echo "== FLUTTER: $FLUTTER"

FLUTTER_VERS=`$FLUTTER --version | head -1`
echo "== FLUTTER_VERS: $FLUTTER_VERS"

declare -a PROJECT_PATHS=($(find . -not -path './flutter/*' -name pubspec.yaml -exec dirname {} \;))

for PROJECT in "${PROJECT_PATHS[@]}"; do
  echo "== TESTING $PROJECT"
  $FLUTTER create --no-overwrite "$PROJECT"
  (
    cd "$PROJECT";
    set -x;
    $FLUTTER analyze;
    $FLUTTER format --dry-run --set-exit-if-changed .;
    $FLUTTER test
  )
done

echo "== END OF TESTS"
