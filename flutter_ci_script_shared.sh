function ci_codelabs () {
    local channel="$1"
    shift

    # Disable analytics to avoid https://github.com/dart-lang/tools/issues/249
    dart --disable-analytics

    local arr=("$@")
    for CODELAB in "${arr[@]}"
    do
        echo "== Testing '${CODELAB}' on $channel"
        declare -a PROJECT_PATHS=($(
        find $CODELAB -not -path './flutter/*' -not -path '*/.symlinks/*' -name pubspec.yaml -exec dirname {} \; | sort
        ))
        for PROJECT in "${PROJECT_PATHS[@]}"
        do
            pushd "${PROJECT}"

            echo "== Getting dependencies for ${PROJECT}"
            for dir in `find . -name pubspec.yaml  -not -path '*/*symlinks/*' -exec dirname {} \;`; do
                pushd $dir
                flutter pub get
                popd
            done


            echo "== Testing"

            # Run the analyzer to find any static analysis issues.
            dart analyze --fatal-infos --fatal-warnings

            # Run the formatter on all the dart files to make sure everything's linted.
            dart format --output none --set-exit-if-changed .

            # Run the actual tests.
            if [ -d "test" ]
            then
                if grep -q "flutter:" "pubspec.yaml"; then
                    flutter test
                else
                    # If the project is not a Flutter project, use the Dart CLI.
                    dart test
                fi
            fi

            popd
        done
    done

}
