#!/usr/bin/env bash

main() {
    if [ $# -ne 1 ]; then
        echo "usage: armstrong.sh <integer1>"
        exit 1
    fi

    declare -i NUMBER=$1
    declare -i NUMBER_LENGTH="${#NUMBER}"
    echo $NUMBER_LENGTH
}

main 153
