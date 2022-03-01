#!/bin/bash -x
read -p 'Enter first number to check palindrom  :  ' first_number
read -p 'Enter second number to check palindrom : ' second_number
#function check number is palindrom or not
function isPalindrom() 
{
   number1=$1
   number2=$2
   reverse=0
   while(( $(( number1 > 0 )) ))
   do
      mod=$(( number1%10 ))
      reverse=$(( reverse*10+mod ))
      number1=$(( number1/10 ))
   done
   if(( $number2 == $reverse ))
   then
      echo "Palindrom "
   else
      echo "Not palindrom"
   fi
}
result="$( isPalindrom $first_number $second_number)"
echo "$result"
