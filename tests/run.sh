#!/bin/bash
set -e

DIR="$(dirname "$0")"
. $DIR/functions.sh

start_tests

### Test 1
# Check SHOUTcast version
###
run_test
./sc_serv -v

tests_passed
