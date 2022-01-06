#!/usr/bin/env bash

main() {
    NUMBER_TO_VALIDATE=$1
    if [[ $NUMBER_TO_VALIDATE -le 1 ]]; then
        echo "false"
    fi

    declare -i LENGTH=${#NUMBER_TO_VALIDATE}
    declare -i TOTAL=0

    echo $LENGTH
}

# main "1"
# # false

main "059"
# true