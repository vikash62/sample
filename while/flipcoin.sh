#!/bin/bash -x
while(( 0==0 ))
do
   head=$((RANDOM%2+1))			#generating 1 and 2 
   tail=$((RANDOM%2+1))
   count_head=$(( count_head + head ))
   count_tail=$(( count_tail + tail ))


   if(( $count_head == 11 ))	
	then
           echo "HEAD"
           break
   fi


   if(( $count_tail == 11 ))
   then
      echo "TAIL"
      break
   fi

done
