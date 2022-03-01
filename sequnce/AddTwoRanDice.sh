#!/bin/bash -x
#Generating random number 1 to 6  
dice_first=$((RANDOM%6+1))
dice_second=$((RANDOM%6+1))
result=$(( $dice_first + $dice_second ))
echo "Sum Of Two Dice Is : $result"
