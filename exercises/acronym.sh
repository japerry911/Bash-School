#!/usr/bin/env bash

main() {
    declare -u ACRONYM

    IFS="-_ *"

    for word in $1 
    do
        ACRONYM="${ACRONYM}${word:0:1}"
    done

    echo $ACRONYM

    exit 0
}

# main "Portable Network Graphics"
# # PNG

# main "Ruby on Rails"
# # ROR

# main "First In, First Out"
# # FIFO

# main "Complementary metal-oxide semiconductor"
# # CMOS"

# main "Something - I made up from thin air"
# # SIMUFTA

# main "The Road __Not__ Taken"
# # TRNT

main "Two * Words"
# TW