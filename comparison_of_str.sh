#! /bin/bash

var1=$1
var2=$2

if [[ $var1 == $var2 ]]
then
echo "Arguments are equal: $var1"
elif [[ $var1 > $var2 ]]
then
echo "$var1 greater then $var2"
else
echo "$var2 greater then $var1"
fi
