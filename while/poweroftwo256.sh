#!/bin/bash -x
number=$1
power=$(( 2**number ))  		#using ** to get power of number
upto=1
#loop run uptu 256
while(( upto <= $power ))
do 
   upto=$(( upto*2 ))
   echo "$upto"
   if(( $upto==256 ))
   then
      break
   fi 
done 
