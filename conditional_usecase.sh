#!/bin/sh
var_a=$1
var_b=$2
var_sum=`expr $var_a + $var_b`

clear
printf "User entered values for two arguments : \n"
printf "\t variable 1 :- $var_a \n"
printf "\t variable 2 :- $var_b \n"
echo "--------------------------------------"
echo "equality check using eq operator"
echo "--------------------------------------"

if [ $1 -eq $2 ];then
 echo "$1 and $2 are equal"
elif [ $var_a > $var_b ];then
 echo "$var_a is greater than $var_b"
else
 echo "$var_b is less than $var_a"
fi


echo "-----------------------------------------------------------------------------"
printf "non equality check using != operator for %d and %d \n" "$var_a" "$var_b"
echo "-----------------------------------------------------------------------------"

if [  $1 != $2 ];then
 echo "$1 and $2 are not equal"
else
 echo "$1 and $2 are equal"
fi
