#!/bin/bash -x
min_number=1
max_number=100
magic_number=$((RANDOM%99+1))   #Generating random number 1 to 100
echo "Guess  number between $min_number to $max_number "
while(( 1==1 ))      #using infinite loop
do
read user_number
	if(( $user_number == $magic_number ))
	then
	   echo "this is  magic number "
   	break
 	elif(( $user_number > $magic_number ))
	then
	   max_number=$(( user_number-1  ))
	   echo "Magic Number is  between : $min_number to $max_number"

	else
      min_number=$(( user_number+1 ))
	   echo "Magic Number is  between $min_number to $max_number "
	fi
done
