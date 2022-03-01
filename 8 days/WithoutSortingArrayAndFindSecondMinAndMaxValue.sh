echo "Generating ten random value" 
for(( i=0 ; i < 10 ; i++ ))
	do
	array[i]=$((RANDOM%900+100))
	done
echo "${array[@]}"

#finding second maximum value
max1=0
max2=0
for(( i =0 ; i < 10 ; i++ ))
do
	if(( ${array[i]} > $max1  ))
	then
  		 max2=$max1   
		 max1=${array[i]}
	fi
done
for(( i=0 ; i<10 ; i++))
do
	if((  ${array[i]} > $max2  && $max1 > ${array[i]} ))
   then
		max2=${array[i]}
	fi
done
echo "Second maximum value is : $max2"

#finding second minimum value
min1=1001
min2=1001
for(( i=0 ; i < 10 ; i++ ))
do
   if(( ${array[i]} < $min1  ))
   then
       min2=$min1
       min1=${array[i]}
   fi
done
for(( i=0 ; i<10 ; i++))
do
   if((  ${array[i]} < $min2  && $min1 < ${array[i]} ))
   then
      min2=${array[i]}
   fi
done
echo "Second minimum value is :$min2"
