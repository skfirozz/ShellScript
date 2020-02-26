myfunc()
{ input1=$1
  input2=$2
  echo ${#input[@]}
  a="hi this is firoz $input1"
  b="this is akhilesh and $2 is my second input is ${input[1]}"
}
declare -a array

read -p "Enter how many numbers you want: " number
#echo $number
for (( i=1; i<=$number; i++));do
 read array[$i]
done


echo "----------"
echo ${array[1]}
echo "--------"


a=hello
b=banglore
myfunc $a $array
echo "a is $a"
echo "b is $b"
