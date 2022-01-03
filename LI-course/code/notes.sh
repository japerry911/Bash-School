#!/usr/bin/env bash

# declare array
declare -a array=("sky" "lord" "jack")
echo ${array[2]}
array[5]="dog"
# add end of array
array+=("mango")
echo ${array[@]}

# associative array
declare -A offices