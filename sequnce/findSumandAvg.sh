#!/bin/bash -x
random1=$((RANDOM%99+1))				#Generating two digit random value
random2=$((RANDOM%99+1))
random3=$((RANDOM%99+1))
random4=$((RANDOM%99+1))
random5=$((RANDOM%99+1))
sumOfRandom=$(( $random1 + $random 2+ $random3 + $random4 + $random5))		#Adding five random value
averageOfRandom=`echo "scale=2; $sumOfRandom / 5" `						#Average of five random value
echo "Sum  is      : $sumOfRandom"
echo "Avgerage  is : $averageOfRandom"
