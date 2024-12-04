function ci_codelabs () {
    local channel="$1"
    shift

    # Disable analytics to avoid https://github.com/dart-lang/tools/issues/249
    dart --disable-analytics

    # ffigen_codelab/step_07 needs to build the native library before running the tests
    pushd ffigen_codelab/step_07/example
        # RUNNER_OS from https://stackoverflow.com/a/72926104/2142626
        if [ $RUNNER_OS = 'Linux' ]; then
            sudo sed -i 's/azure\.//' /etc/apt/sources.list
            sudo apt-get update
            sudo apt-get install -y ninja-build libgtk-3-dev
        fi
        flutter build `echo $RUNNER_OS | tr '[:upper:]' '[:lower:]'` --debug
    popd

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

                    # intro_flutter_gpu only runs with Impeller
                    if [ $CODELAB = 'intro_flutter_gpu' ]; then
                        if [ $RUNNER_OS = 'macOS' ] || [ $RUNNER_OS = 'Windows' ]; then
                            flutter config --enable-native-assets
                            flutter build `echo $RUNNER_OS | tr '[:upper:]' '[:lower:]'` --debug
                            flutter test --enable-impeller
                        else
                            echo "Skipping $CODELAB on $RUNNER_OS"
                        fi
                    else
                        flutter test
                    fi
                else
                  # If the project is not a Flutter project, use the Dart CLI.
                  dart test
                fi
            fi

            popd
        done
    done

}
