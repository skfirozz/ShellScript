
#!/bin/bash
read -p "enter a number: " max
#max=10
head=0
tail=0
echo $head $tail
for (( i=1; i <= $max; ++i ))
do 
	rem=$(( $RANDOM % 2 ))
	if [ $rem -eq 0 ]
	then
#  		$head = $head+1
	echo "hi"
	else
 # 		$tail = $tail+1
	echo "welcome"
	fi
done
echo $head $tail
