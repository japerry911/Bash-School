#!/usr/bin/env bash

main() {
    shopt -s nocasematch

    declare -r SENTENCE=$1

    for x in {A..Z}
    do
        if [[ ! $SENTENCE =~ .*${x}.* ]]; then
            echo "false"
            exit 0
        fi
    done

    echo "true"

    exit 0
}

main "the quick brown fox jumps over the lazy dog"