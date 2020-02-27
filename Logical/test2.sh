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
	 	echo "*** system win1 ***"
         	return 1
	elif [ $count2 -eq 3 ]; then
		echo "*** you win1 ***"
        	return 2
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
         	echo "*** system win2 ***"
         return 1
        elif [ $count2 -eq 3 ]; then
          echo "*** you win2 ***"
	  return 2
        fi
   done

   if [ "${array[0,0]}" == "${array[1,1]}" -a "${array[2,2]}" == "${array[1,1]}" -a "${array[1,1]}" == 1 ] ; then
	echo "*** system win3 ***"
	return 1
   elif [ "${array[0,2]}" == "${array[1,1]}" -a "${array[2,0]}" == "${array[1,1]}" -a "${array[1,1]}" == 1 ] ; then
	echo "*** system win4 ***"
	return 1
   elif [ "${array[0,0]}" == "${array[1,1]}" -a "${array[2,2]}" == "${array[1,1]}" -a "${array[1,1]}" == 2 ] ; then
	echo "*** system win3 ***"
	return 2
   elif [ "${array[0,2]}" == "${array[1,1]}" -a "${array[2,0]}" == "${array[1,1]}" -a "${array[1,1]}" == 2 ] ; then
	echo "*** system win4 ***"
   	return 2
   fi
}
#-----------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------
randomNumber()
{
        DIFF=$((0-4+1))
        R=$(($(($RANDOM%$DIFF))+X))
	return "$R"
}

#-----------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------
systemInput()
{
 randomNumber
 row1=$?
 randomNumber
 col1=$?
 array="${!1}"
 if [  "${array[$row1,$col1]}" == 1 -o  "${array[$row1,$col1]}" == 2 ];then
        systemInput
 else
 r1=$row1 c1=$col1
 return 2
 fi
}

#-------------------------------------------------------------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------------------------------------------------------------
userInputs()
{
 read -p "Enter row number: " row2
 read -p "Enter col number: " col2
 matrix="${!1}"
 if [ $row2 -gt 2  -o $col2 -gt 2 ];then 
 echo "*****Enter proper position*****"
    userInputs
 elif [  "${array[$row2,$col2]}" == 1 -o  "${array[$row2,$col2]}" == 2 ];then
	echo "***Position already occupied**** "
 	userInputs
 else
 r2=$row2 c2=$col2
 return 1
 fi
}

#--------------------------------------------------------------------------------------------------------------------------------------
#---------------------------------------------------------------------------------------------------------------------------------------

printBoard()
{
 array="{!$1}"
 for ((i=0;i<3;i++));do
   for ((j=0;j<3;j++));do
     printf "${array[$i,$j]} "
   done
   echo ""
 done
}

#----------------------------------------------------------------------------------------------------------------------------------------
#----------------------------------------------------------------------------------------------------------------------------------------
declare -A array
for (( i=0; i<3; i++));do
	for (( j=0;j<3;j++));do
	     array[$i,$j]=0
	done
done


for (( i=0;i<4;i++)) ; do
	userInputs array[@]
	if [ $? -eq 1 ] ; then 
		echo "$r2---$c2"
		array[$r2,$c2]=2
	fi

#	check array[@]
#	checkResult1=$?
#	echo "$chwckResult1"
#	if [ "$checkResult1" == 3 ] ; then
	#	break
#	 echo " "

#	fi

	systemInput array[@]
	if [ $? -eq 2 ] ; then
		echo "$r1---$c1"
		array[$r1,$c1]=1
	fi
	echo "-------------------"
#	check array[@]
   #     checkResult2=$?
  #      if [ "$checkResult2" != 3 ];then
 #               break
#	echo " "
 #       fi
#
#printBoard array[@]
done
#printBoard array[@]

