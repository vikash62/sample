#!/bin/bash -x
read -p 'Enter Number : ' number
factor=1
#Logic for factorial
for(( iterator=1 ; iterator<=$number ; iterator++ ))
do
	factor=$(( factor*iterator ))
done
echo "Factor of $number is : $factor"
