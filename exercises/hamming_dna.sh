#!/usr/bin/env bash

main() {
    if [[ $# -ne 2 ]]; then
        echo "Usage: hamming.sh <string1> <string2>"
        exit 1
    fi

    DNA1=$1
    DNA2=$2

    DNA1_LENGTH=${#DNA1}
    DNA2_LENGTH=${#DNA2}

    if [[ DNA1_LENGTH -ne DNA2_LENGTH ]]; then
        echo "strands must be of equal length"
        exit 1
    fi

    declare -i HAMMING_COUNT=0

    for (( c=0; c<${DNA1_LENGTH}; c++ )); do
         if [[ "${DNA1:$c:1}" != "${DNA2:$c:1}" ]]; then
            (( HAMMING_COUNT++ ))
         fi
    done

    echo $HAMMING_COUNT
    
    exit 0
}

# main "GGACGGATTCTG" "AGGACGGATTCT"
# # should result in: 9

# main "GGACGGATTCTGA" "ABC"
# # should exit with code 1

# main "G" "T"
# # should result in: 1

main "AAA" "A?A"
# should result in: 1