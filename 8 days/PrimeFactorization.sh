#!/bin/bash -x
read -p 'Enter number :' number
#prime factorization logic
temp=0
for(( iterator=2 ; $number > 1; iterator++ ))
do 
	if(( $number%$iterator == 0 ))
	then
		while((  $number%$iterator==0 )) #tbtk katte rho
		do
			number=$(( number/iterator ))    
			arr[temp]=$iterator			#Initilize in array
			temp=$(( temp+1 ))
		done
	fi
done
echo "${arr[@]}"
