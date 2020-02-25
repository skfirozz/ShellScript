echo "enter a number: "
read number
value=0.0
for (( i=1; i<= $number; i++ ))
do
# value=$((value+1.0 / i ))
echo "hi"
done
echo $value
A=333.33
B=111.11
C="$B / $A" | bc -l
echo $c
