#read number
arr=(1 2 3 4 5) 
for i in "${arr[@]}"
do
   echo $i 
done
echo "${arr[@]}"
echo ${arr[0]}
echo ${arr[1]}
echo ${#arr[@]} 
