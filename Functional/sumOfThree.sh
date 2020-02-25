function sumOfThree()
{

}
echo "Enter a array size: "
read size
for (( i=0; i<$size; i++));do
  read array[$i]
done

for (( i=0; i<${#array[@]}; i++ ));do
  for (())
