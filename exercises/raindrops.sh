#!/bin/bash

main() {
  VAR_STR=""

  if [ "$#" -ne 1 ]; then
    echo "Usage: raindrops.sh <number>"
    exit 1
  fi

  if [ $(($1 % 3)) -eq 0 ]; then
    VAR_STR="Pling"
  fi
  
  if [ $(($1 % 5)) -eq 0 ]; then
    VAR_STR="${VAR_STR}Plang"
  fi

  if [ $(($1 % 7)) -eq 0 ]; then
    VAR_STR="${VAR_STR}Plong"
  fi

  if [ -z "$VAR_STR" ]; then
    echo "$1"
  else
    echo "$VAR_STR"
  fi
}

main "$@"