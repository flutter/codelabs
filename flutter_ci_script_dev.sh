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

declare -ar PROJECT_PATHS=(
  # Tracking issue: https://github.com/flutter/flutter/issues/74174
  # "add_flutter_to_android_app/add_flutter_to_android" \
  \
  # Tracking issue: https://github.com/flutter/flutter/issues/74203
  # "cupertino_store/step_00" \
  # "cupertino_store/step_01" \
  # "cupertino_store/step_02" \
  # "cupertino_store/step_03" \
  # "cupertino_store/step_04" \
  # "cupertino_store/step_05" \
  # "cupertino_store/step_06" \
  \
  # Tracking issue: https://github.com/flutter/flutter/issues/74204
  # "firebase-get-to-know-flutter/step_02" \
  # "firebase-get-to-know-flutter/step_04" \
  # "firebase-get-to-know-flutter/step_05" \
  # "firebase-get-to-know-flutter/step_06" \
  # "firebase-get-to-know-flutter/step_07" \
  # "firebase-get-to-know-flutter/step_09" \
  \
  "github-graphql-client/step_03" \
  "github-graphql-client/step_04" \
  "github-graphql-client/step_05" \
  "github-graphql-client/step_06" \
  "github-graphql-client/step_07" \
  "github-graphql-client/window_to_front" \
  \
  "google-maps-in-flutter/step_3" \
  "google-maps-in-flutter/step_4" \
  "google-maps-in-flutter/step_5" \
  \
  "plugin_codelab/example" \
  \
  "startup_namer/step1_base" \
  "startup_namer/step2_use_package" \
  "startup_namer/step3_stateful_widget" \
  "startup_namer/step4_infinite_list" \
  "startup_namer/step5_add_icons" \
  "startup_namer/step6_add_interactivity" \
  "startup_namer/step7_navigate_route" \
  "startup_namer/step8_themes" \
  \
  "testing_codelab/step_03" \
  "testing_codelab/step_04" \
  "testing_codelab/step_05" \
  "testing_codelab/step_06" \
  "testing_codelab/step_07" \
)

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
