function ci_codelabs () {
    local channel="$1"
    shift

    # Disable analytics to avoid https://github.com/dart-lang/tools/issues/249
    dart --disable-analytics

    # intro_flutter_gpu requires the master channel and macOS
    if [ $channel = "master" && $RUNNER_OS = 'macOS' ]; then
        # Enable native assets for intro_flutter_gpu
        flutter config --enable-native-assets

        # intro_flutter_gpu needs to build the shaders before running the tests
        for step in "01" "02" "03" "04" "05" "06" "07" "08" "09" "10" "11" "12" 
        do
            pushd intro_flutter_gpu/step_$step
                flutter build `echo $RUNNER_OS | tr '[:upper:]' '[:lower:]'` --debug
            popd
        done    
    fi


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

                    # intro_flutter_gpu only runs with Impeller on macOS
                    if [ $CODELAB = 'intro_flutter_gpu' ]; then
                        if [ $RUNNER_OS = 'macOS' ]; then
                            flutter test --enable-impeller                    
                        fi
                        # This skips the test if the runner OS is not macOS
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
