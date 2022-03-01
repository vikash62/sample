#!/bin/bash -x
#declare variables
key1=1
key2=2
key3=3
key4=4
key5=5
key6=6
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
#Using dictionary to count number of value 
declare -A Dicegame
while(true)
do
	Dicegame=$((RANDOM%6+1))
	case $Dicegame in
	1)
		count1=$((count1+1))
		Dicegame[$key1]="$count1"
		;;
	2)
		count2=$((count2+1))
		Dicegame[$key2]="$count2"
		;;

	3)
		count3=$((count3+1))
		Dicegame[$key3]="$count3"
		;;

	4)
		count4=$((count4+1))
		Dicegame[$key4]="$count4"
		;;

	5)
		count5=$((count5+1))
		Dicegame[$key5]="$count5"
     		;;

	6)
		count6=$((count6+1))
		Dicegame[$key6]="$count6"
		;;
	esac

	if(( $count1==10 || $count2==10 || $count3==10  ||  $count4==10  ||  $count5==10  ||  $count6==10  ))
	then
		break
	fi
done

echo " ${!Dicegame[@]} : ${Dicegame[@]}  "
#Finding maximum value
max=0
for(( i=1 ; i <= 6 ; i++ ))
do
	if((  $max < "${Dicegame[$i]}"  ))
	then
	   max="${Dicegame[$i]}"
	fi
done
echo "Maximum value is : $max"

#Finding minimum value
min=11
for(( i=1 ; i <= 6 ; i++ ))
do
   if((  $min > "${Dicegame[$i]}"  ))
   then
       min="${Dicegame[$i]}"
   fi
done
echo "Minimum value is : $min"
