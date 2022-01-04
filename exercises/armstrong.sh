#!/usr/bin/env bash

main() {
    if [ $# -ne 1 ]; then
        echo "usage: armstrong.sh <integer1>"
        exit 1
    fi

    declare -i NUMBER=$1
    declare -i NUMBER_LENGTH="${#NUMBER}"
    declare -i TOTAL=0
    
    for (( i=0; i<${NUMBER_LENGTH}; i++ ))
    do
        ADD_VALUE=$((${NUMBER:i:1}**NUMBER_LENGTH))
        ((TOTAL=TOTAL+ADD_VALUE))
    done

    if [ $TOTAL -eq $NUMBER ]; then
        echo "true"
    else
        echo "false"
    fi
    
    exit 0
}

main 153
