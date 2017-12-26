#!/bin/bash

function start_tests() {
    echo -e "\033[0;32m"
    echo "*********************"
    echo "*    START tests    *"
    echo "*********************"
    echo -e "\033[0m"
}

function run_test() {
    TEST_ID=$((TEST_ID + 1))
    echo -ne "\033[1;36m[Test $TEST_ID]\033[0m "
    echo -ne "\033[0;32m=>\033[0m "
}

function tests_passed() {
    echo -e "\033[0;32m"
    echo "*********************"
    echo "*       PASSED      *"
    echo "*********************"
    echo -e "\033[0m"
}
