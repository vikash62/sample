#!/bin/bash -x
read -p 'Enter Number :' number
temp=0
#Logic for prime number
for(( iterator=2 ; iterator<=$number/2 ; iterator++ ))
do 
   if (( $(( number%iterator ))==0 ))
   then
       temp=1
       break 
   fi
done
if (( $temp==0 ))
then
   echo "Prime Number : $number"
else
   echo "Not Prime Number :$number "
fi
