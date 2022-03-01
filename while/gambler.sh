#!/bin/bash -x
echo "Starting bet from 100 Rs "
number_of_time_won=0
number_of_time_lose=0
number_of_time_bet_made=0
stack=100
goal=200
while(( 0==0 ))
do 
   random_number=$((RANDOM%2))
	if(( $random_number > 0 ))
	then    
 	number_of_time_won=$(( number_of_time_won+1 )) 
     	number_of_time_bet_made=$(( number_of_time_bet_made+1 ))
    	stack=$(( stack+1 ))
   else
	number_of_time_lose=$(( $number_of_time_lose+1 ))
	number_of_time_bet_made=$(( number_of_time_bet_made+1 ))
        stack=$(( stack-1 )) 
	fi
		if(( $goal <= $stack || $stack <= 0 ))
		then
		break
	fi
done
echo "Number Of time win $number_of_time_won"
echo "Number Of time lose $number_of_time_lose"
echo "Number of time bet made $number_of_time_bet_made"
