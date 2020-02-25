echo "Enter x: "
 read  x
echo "Enter y: "
read y
a=$(bc <<< "scale=3; sqrt($x*$x + $y*$y)")
echo "$a"
