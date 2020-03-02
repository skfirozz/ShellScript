echo "Enter a array size: "
read size
declare -a array
for ((i = 0; i < $size; i++)); do
	read val
	array[$i]=$val
done
for ((i = 0; i < ${#array[@]}; i++)); do
	for ((j = i + 1; j < ${#array[@]}; j++)); do
		for ((k = j + 1; k < ${#array[@]}; k++)); do
			((value = ${array[i]+array[j]+array[k]}))
			echo $value
			if [ $value -eq 0 ]; then
				echo "$i  $j  $k  "
			fi
		done
	done
done
