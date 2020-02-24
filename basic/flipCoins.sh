#!/bin/bash
read -p "enter a number: " max
#max=10
for (( i=1; i <= $max; ++i ))
do 
	rem=$(( $i % 2 ))
	if [ $rem -eq 0 ]
	then
  		echo "$i is even number"
	else
  		echo "$i is odd number"
	fi
done
