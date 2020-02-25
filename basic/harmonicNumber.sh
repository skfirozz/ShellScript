echo "enter a number: "
read number
value=0.0
for (( i=1; i<= $number; i++ ))
do
 val="1.0 / $i" | bc -l
echo $val
#((value=$value + $val))
echo "value"
done
echo "hi"
echo "$((1.2 / 3))"
