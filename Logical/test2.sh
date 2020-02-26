check()
{
   array="${!1}"
   for ((i=0;i<3;i++)) ; do
	count1=0 count2=0
	for ((j=0; j<3; j++)); do 
	 if [ "${array[$i,$j]}" -eq 1 ]; then
	   	((count1=count1+1)) ;fi
	  if [ "${array[$i,$j]}" -eq 2 ]; then
	  	((count2=count2+1)) ;fi
	done

	if [ $count1 -eq 3 ]; then
	  echo "***win system---------->1***"
	 break
	elif [ $count2 -eq 3 ]; then
	  echo "***you win***--------->1"
	  break 
	fi
   done


   for ((j=0;j<3;j++)) ; do
        count1=0 count2=0
        for ((i=0; i<3; i++)); do 
         if [ "${array[$i,$j]}" -eq 1 ]; then
                ((count1=count1+1)); fi
          if [ "${array[$i,$j]}" -eq 2 ]; then
                ((count2=count2+1)) ; fi
        done

        if [ $count1 -eq 3 ]; then
          echo "***win system***------->2"
         break
        elif [ $count2 -eq 3 ]; then
          echo "***you win***-------->2"
          break 
        fi
   done

     if [ "${array[0,0]}" == "${array[1,1]}" -a "${array[2,2]}" == 1 ] ; then
	echo "h1"
#	return 1
   elif [ "${array[0,2]}" == "${array[1,1]}" -a "${array[2,0]}" == 1 ] ; then
	echo "h2"
#	return 1
   elif [ "${array[0,0]}" == "${array[1,1]}" -a "${array[2,2]}" == 2 ] ; then
	echo "h3"
#	return 2
   elif [ "${array[0,2]}" == "${array[1,1]}" -a "${array[2,0]}" == 2 ] ; then
	echo "h4"
#       return 2
   fi
}

#-------------------------------------------------------------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------------------------------------------------------------
randomNumber()
{
        DIFF=$((0-4+1))
        R=$(($(($RANDOM%$DIFF))+X))
	#echo $R
        return $R
}


systemInputs()
{
 for (( i=0; i<3;i++));do
	for (( j=0;j<3;j++)); do
	 randomNumber
	 val=$?
	echo "$i-------$j----------->$val" 
	done
done
}


declare -A array
read -p "Enter how many numbers you want: " number
for (( i=0; i<$number; i++));do
	for (( j=0;j<$number;j++));do
	     array[$i,$j]=0
	done
done


randomNumber
val=$?
echo $val
#check array[@]

systemInputs
