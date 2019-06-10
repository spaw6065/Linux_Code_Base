#!/bin/sh
clear
var_a=$1
var_b=$2

var_sum=`expr $var_a + $var_b`

printf "User entered values for two arguments : \n"
printf "\t variable 1 :- $var_a \n"
printf "\t variable 2 :- $var_b \n"
echo "--------------------------------------"

if [[ ${var_a}%2 -eq 0  &&  ${var_b}%2 -eq 0 ]];then
   echo "Both the numbers $var_a and $var_b are even and their sum $var_sum is also even."
elif [[ ${var_a}%2 -eq 0 ||  ${var_b}%2 -eq 0 ]];then
   echo "Either of the two numbers $var_a and $var_b is even and their sum $var_sum is odd."
elif [[ ${var_a}%2 -ne 0  &&  ${var_b}%2 -ne 0 ]];then
   echo "Both the numbers $var_a and $var_b are odd and their sum $var_sum can be even or odd."
else
   echo "NaN"
fi
echo "--------------------------------------"
~
