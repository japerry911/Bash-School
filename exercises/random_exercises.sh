#!/usr/bin/env bash

main() {
    if [[ $# -ne 1 || $1 -le 0 || $1 -ge 65 ]]; then
        if [[ $1 != "total" ]]; then
            echo "Error: invalid input"
            exit 1
        fi
    fi

    if [[ $1 == "total" ]]; then
        declare -i SQS_TRAVELED=65
    else  
        declare -i SQS_TRAVELED=$1
    fi

    TOTAL_SUM=1

    for (( i=1; i<$SQS_TRAVELED; i++ ))
    do
        TOTAL_SUM=$(bc <<< "$TOTAL_SUM*2")
    done

    if [[ $SQS_TRAVELED -eq 65 ]]; then
        TOTAL_SUM=$(bc <<< "$TOTAL_SUM-1")
    fi

    echo $TOTAL_SUM
    exit 0
}

main "$@"