#!/usr/bin/env bash

main() {
    NUMBER_TO_VALIDATE=$1
    if [[ $NUMBER_TO_VALIDATE -le 1 ]]; then
        echo "false"
    fi
}

main "1"
# false