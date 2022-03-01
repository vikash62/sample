#!/bin/bash -x
read -p 'Enter Number :' userInput
tempPower=$(( 2**userInput ))		#using ** to get power of number
power=2
#logic to print power of 2
for(( iteraot=1 ; power <= $tempPower ; iterator++ ))
do 
   echo "$power"
   power=$(( power*2 ))
done 
