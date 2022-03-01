#!/bin/bash -x
echo "Enter Range "
read start
read end
for (( iterator1=$start ; iterator1<=$end ; iterator1++ ))
do
   temp=0
   for(( iterator2=2 ; iterator2<$iterator1 ; iterator2++ ))
   do 
      if (( $(( iterator1%iterator2 ))==0 ))
      then
         temp=1
         break 
      fi
   done
if (( $temp==0 ))
then
   echo "Prime Number : $iterator1 "
fi
done
