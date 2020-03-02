function check() {
	array="$1"
	for ((i = 0; i < 3; i++)); do
		value=0
		for ((j = 0; j < 3; j++)); do
			if [ ${array[j]} -eq 0 ]; then
				((value = value + 1))
				echo "hi"
				echo $value
				if [ $value ] >0; then
					return 1
				fi
			fi
		done
	done
}
#declare -A array
array=(0 2 3 4 5)
check $array
data=$?
echo $data
