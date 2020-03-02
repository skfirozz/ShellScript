#!/bin/bash
read -p "enter your name: " name
echo $name
length=${#name}
echo $length
if [ $length -ge 3 ]; then
	echo "Hello $name, How are you?"
else
	echo "$name has lessthan 3 characters"
fi
