read -p "Enter how many coupoun numbers you want: " number
declare -a array

function randomNumber() {
	randomValue=$RANDOM
	return $randomValue
}

function storing() {
	for ((i = 0; i < $number; i++)); do
		randomNumber
		value=$?
		array[$i]=$value
	done
	echo ""
}
storing
echo ${array[@]}
