#!/usr/bin/env bash

main() {
    declare -r SENTENCE=$1

    if [[ $SENTENCE =~ ^[^a-z]*$ && $SENTENCE =~ ^.*[A-Z].*$ ]]; then  
        if [[ $SENTENCE =~ ^.*[?][[:space:]]*$ ]]; then
            echo "Calm down, I know what I'm doing!"
        else 
            echo "Whoa, chill out!"
        fi
    elif [[ $SENTENCE =~ ^.*[?][[:space:]]*$ ]]; then
            echo "Sure."
    elif [[ ! $SENTENCE =~ .*[^\\][A-Za-z0-9].* ]]; then
        echo "Fine. Be that way!"
    else
        echo "Whatever."
    fi

    exit 0
}

# main "Tom-ay-to, tom-aaaah-to?"

# main "HELLO"

# main "Does this cryogenic chamber make me look fat?"

main "WATCH OUT!"

# main ""

# main "\n\r \t"

# main "WATCH OUT!"