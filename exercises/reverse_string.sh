#!/usr/bin/env bash

main() {
    set -f

    WORD="$1"
    WORD_LENGTH=${#WORD}-1
    REVERSED_WORD=""

    for (( i=WORD_LENGTH; i>=0; i-- ))
    do
        REVERSED_WORD="$REVERSED_WORD${WORD:$i:1}"
    done

    echo "$REVERSED_WORD"

    exit 0
}

# main "cool"
# # looc

# main ""
# # ""

# main "I'm hungry!"
# # "!yrgnuh m'I"

main " a *  b"
# "b  * a "