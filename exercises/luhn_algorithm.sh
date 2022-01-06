#!/usr/bin/env bash

main() {
    NUMBER_TO_VALIDATE=$1

    NUMBER_TO_VALIDATE="$(echo $NUMBER_TO_VALIDATE | sed 's/ //g')"

    if [[ ${#NUMBER_TO_VALIDATE} -le 1 || $NUMBER_TO_VALIDATE =~ [^[:digit:]] ]]; then
        echo "false"
        exit 0
    fi

    declare -i LENGTH=${#NUMBER_TO_VALIDATE}
    declare -i TOTAL=0
    
    if [[ $(($LENGTH%2)) -eq 0 ]]; then
        IS_EVEN_LENGTH="true"
    else
        IS_EVEN_LENGTH="false"
    fi

    for (( i=0; i<$LENGTH; i++ ))
    do
        TMP=${NUMBER_TO_VALIDATE:$i:1}
        if [[ $IS_EVEN_LENGTH == "true" ]]; then
            if [[ $(($i%2)) -eq 0 ]]; then
                TMP=$((TMP*2))
                if [[ $TMP -gt 9 ]]; then
                    TMP=$((TMP-9))
                fi
            fi
        else
            if [[ $(($i%2)) -eq 1 ]]; then
                TMP=$((TMP*2))
                if [[ $TMP -gt 9 ]]; then
                    TMP=$((TMP-9))
                fi
            fi
        fi
        
        TOTAL=$((TOTAL+TMP))
    done

    if [[ $((TOTAL%10)) -eq 0 ]]; then
        echo "true"
    else
        echo "false"
    fi
    
    exit 0
}

# main "1"
# # false

# main "059"
# # true

# main "234 567 891 234"
# # true

main "055a 444 285"
# false