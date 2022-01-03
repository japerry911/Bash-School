#!/usr/bin/env bash

# +, -, *, /, %, **

echo $((4+4))

# rounds down
echo $((10/3))

# when declaring integers, use below
declare -i b=3
b=$b+3
echo $b

# bc
declare -i c=1
declare -i d=3
e=$(echo "scale=3; $c/$d" | bc)
echo $e

# random(ish) number between 1 and 10
echo $(( 1 + $RANDOM %10 ))