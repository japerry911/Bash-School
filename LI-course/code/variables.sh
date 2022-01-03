#!/usr/bin/env bash

mygreeting=hello
mygreeting2="Good Morning"
number=6

echo $mygreeting
echo $mygreeting2
echo $number

# ---

myvar="Hello!"
echo "The value of the myvar variable is: $myvar"
myvar="Bonjour!"
echo "The value of the myvar variable is: $myvar"

# readonly
declare -r constmyname="Jack"
echo "The value of the constmyname variable is: $constmyname"
constmyname="Skylord"
echo "The value of the constmyname variable is: $constmyname"

# turn everything to lowercase
declare -l lowerstring="This is some TEXT!"
echo "The value of the lowerstring variable is: $lowerstring"
lowerstring="Let's ChANGE the VALUE"
echo "The value of the lowerstring variable is: $lowerstring"

# turn everything to uppercase
declare -u upperstring="This is some TEXT!"
echo "The value of the upperstring variable is: $upperstring"
upperstring="Let's ChANGE the VALUE"
echo "The value of the upperstring variable is: $upperstring"