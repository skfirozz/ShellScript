echo "Enter the number of rows: "
read rows
echo "Enter the number of columns: "
read columns
for (( i=0; i<rows; i++ ))
do
 for(( j=0; j<columns; j++ ))
  do
 echo "enter $i $j: "
   read array[$i,$j]
  done
done
echo "${array[1,1]}"
echo "${#array[@]}"
