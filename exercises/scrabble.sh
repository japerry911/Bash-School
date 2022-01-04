#!/usr/bin/env bash

main() {
    declare -i TOTAL_PTS=0
    declare -A LETTER_VALUES

    LETTER_VALUES[a]=1
    LETTER_VALUES[b]=3
    LETTER_VALUES[c]=3
    LETTER_VALUES[d]=2
    LETTER_VALUES[e]=1
    LETTER_VALUES[f]=4
    LETTER_VALUES[g]=2
    LETTER_VALUES[h]=4
    LETTER_VALUES[i]=1
    LETTER_VALUES[j]=8
    LETTER_VALUES[k]=5
    LETTER_VALUES[l]=1
    LETTER_VALUES[m]=3
    LETTER_VALUES[n]=1
    LETTER_VALUES[o]=1
    LETTER_VALUES[p]=3
    LETTER_VALUES[q]=10
    LETTER_VALUES[r]=1
    LETTER_VALUES[s]=1
    LETTER_VALUES[t]=1
    LETTER_VALUES[u]=1
    LETTER_VALUES[v]=4
    LETTER_VALUES[w]=4
    LETTER_VALUES[x]=8
    LETTER_VALUES[y]=4
    LETTER_VALUES[z]=10

    WORD=$1
    WORD_LENGTH=${#WORD}

    for (( i=0; i<WORD_LENGTH; i++ ))
    do
        LETTER=${WORD:$i:1}
        LETTER=${LETTER,,}
        TOTAL_PTS=$((TOTAL_PTS+${LETTER_VALUES[$LETTER]}))
    done

    echo $TOTAL_PTS

    exit 0
}

# main "pinata"
# # 8

# main ""
# # 0

# main "abcdefghijklmnopqrstuvwxyz"
# # 87

main "OxyphenButazone"
# 41