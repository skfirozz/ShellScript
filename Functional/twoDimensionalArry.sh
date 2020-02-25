echo "Enter the size of array: "
read size

arr=(1 2 3 4 5) 
for i in "${arr[@]}"
do
   echo $i 
done
echo "${arr[@]}"
echo ${arr[0]}
echo ${arr[1]}
echo ${#arr[@]} 

 
for (( j=0; j<=size; j++ ))
do 
echo "enter number :"
read arra[$j]
done
echo ${#arra[2]}
