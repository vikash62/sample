#!/bin/bash -x
read -p 'Enter year : ' year
if(( ${#year}==4 ))      #Take only four digit number
then
	if(( (( "$year" % 400 == 0 )) || (( (( "$year" % 4 == 0 )) && (( "$year" % 100 != 0 )) )) )) 	#Logic for leap year 
    	then
      	echo "$year : is Leap Year "
      else
			echo "$year : Not Leap Year "
	fi
else
	echo "Enter four digit number"
fi
