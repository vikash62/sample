#!/bin/bash -x
echo " Fliping Coin "
random_value=$((RANDOM%2))    #Genetrating two number 0 and 1
if(( $random_value == 0 ))
then
   echo "     Head     "		#For Head 0
else
   echo "     Tail     "		#For tail 1
fi
