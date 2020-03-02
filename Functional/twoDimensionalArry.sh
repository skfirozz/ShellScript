echo "Enter the number of rows: "
read rows
echo "Enter the number of columns: "
read columns
echo "enter array elements"
declare -A array
for ((i = 0; i < rows; i++)); do
  for ((j = 0; j < columns; j++)); do
    read element
    array[$i, $j]=$element
  done
done
echo "array elements are"
for ((i = 0; i < rows; i++)); do
  for ((j = 0; j < columns; j++)); do
    echo ${array[$i, $j]}
  done
done
