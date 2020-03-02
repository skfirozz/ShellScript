echo "enter a number: "
read number
value=0.0
for ((i = 1; i <= $number; i++)); do
    val="1.0 / $i" | bc -l
    echo $val
    #((value=$value + $val))
    echo "value"
done
echo "hi"
echo "$((1.2 / 3))"
echo 'scale=4;20+5/2'
read inpt
echo - | awk -v input=$inpt '{printf("%04.4f \n", input) }'
