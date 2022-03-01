#!/bin/bash -x
read -p 'Enter Number : ' user_number
loop=0        								  #counting how much time method call
function isPrimeNumber()
{
	number=$1
	temp=0
	for(( iter=2 ; iter <= $((number/2)) ; iter++ ))
	do
  	   if (( $(( number % iter )) == 0 ))
  	   then
         temp=1
         break
      fi
   done
	if (( $temp==0  ))
	then
		loop=$(( loop+1 ))
      echo "Prime Number $number"
		loop=$(( loop+1 ))
         if (( $loop <=2 ))                        #using this condition to call palindrom method only two time 
         then
		      isPalindrom $number							#Calling isPalindrom method
         fi
	else
  	   echo "Not Prime Number $number" 
   fi
}



function isPalindrom()
{
   number1=$1
   reverse=0
   temp=$number
   while(( $(( number1 > 0 )) ))
   do
      mod=$(( number1%10 ))
      reverse=$(( reverse*10+mod ))
      number1=$(( number1/10 ))
   done
   if(( $(( reverse == temp)) ))
   then
      echo "is palindrom $reverse"
		isPrimeNumber $reverse							#Calling isPrimeNumber function
   else
      echo "Not palindrom "
   fi
}
result="$( isPrimeNumber $user_number )"
echo "$result"
