#!/bin/bash
read -p "enter a number: " max
head=0 tail=0
for (( i=1; i <= $max; ++i ))
do 
	rem=$(( $RANDOM % 2 ))
	if [ $rem -eq 0 ]
	then
  	((head=head+1))
	else
  		((tail=tail+1))
	fi
done
	echo $head
	z=$((head / max))
	res=$((z*100))
	echo $res
