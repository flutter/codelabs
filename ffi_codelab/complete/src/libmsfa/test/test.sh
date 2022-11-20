#!/bin/sh

# Expected to be run from build dir
./tester > output1.txt
cmp -s output1.txt ../test/expected-tester-output.txt