#!/bin/bash -x
echo "Generating ten random value" 
for(( i=0 ; i < 10 ; i++ ))
	do
	array[i]=$((RANDOM%900+100))   #Generationg 1 to 100  number
	done
echo "${array[@]}"

#Using insertion sort
for(( i=1; i<10; i++ ))
do
	temp=${array[i]}
	j=$i-1
		while(( $(( j>=0 )) && ${array[j]} > $temp ))
		do
			array[j+1]=${array[j]}      #swapp compare smaller no first
			j=$(( j-1 ))
		done
	array[j+1]=$temp
done

echo "${array[@]}"
array_length=${#array[@]}  	 #length of array
echo "Second largest number is :  ${array[array_length-2]}"   	#printing second last element of array
echo "Second smallest number is : ${array[1]}"	
