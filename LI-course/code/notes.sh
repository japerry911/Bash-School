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

animal="puppy"
case $animal in
    cat) echo "Feline";;
    dog|puppy) echo "Doggy";;
    *) echo "No Match!"
esac

# reading file line-by-line while loop
# while read line; do echo $line done < <file-name.extension>