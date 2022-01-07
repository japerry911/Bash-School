#!/usr/bin/env bash

main() {
    if [[ $# -ne 1 || ! $1 =~ ^[[:digit:]]+$ ]]; then
        echo "Usage: leap.sh <year>"
        exit 1
    fi

    declare -i YEAR=$1

    if [[ $((YEAR % 4)) -eq 0 ]]; then
        if [[ $((YEAR % 100 )) -eq 0 ]]; then
            if [[ $((YEAR % 400 )) -eq 0 ]]; then
                echo "true"
                exit 0
            fi
            echo "false"
            exit 0
        fi
        echo "true"
        exit 0
    fi

    echo "false"

    exit 0
}

main 1998