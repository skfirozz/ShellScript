myfunc()
{  input1=$1
  input2=$2
  a="hi this is firoz $input1"
  b="this is akhilesh and $2 is my second input"
}
declare -a array

read -p "Enter how many numbers you want: " number
echo $number
for (( i=1; i<=$number; i++));do
echo $i
done


a=hello
b=banglore
myfunc $a $b
echo "a is $a"
echo "b is $b"
