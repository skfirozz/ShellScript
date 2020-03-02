echo "enter a power: "
read power
if (($power > 0 && $power < 31)); then

	for ((i = 1; i <= $power; i++)); do
		value=$((2 ** i))
		echo $value
	done
else
	echo "number must be lessthan 31 and greaterthan 0"
fi
