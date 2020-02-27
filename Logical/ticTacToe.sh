function check()
{
 if [[ $((${array[0,0]}))==1 && $((${array[0,1]})) == 1 && $((${array[0,2]})) == 1 || $((${array[1,0]})) == 1 && $((${array[1,1]}))==1 && $((${array[1,2]})) == 1
    || $((${array[2,0]}))==1 && $((${array[2,1]})) == 1 && $((${array[2,2]})) == 1 || $((${array[0,0]})) == 1 && $((${array[1,0]}))==1 && $((${array[2,0]})) == 1
    || $((${array[0,1]}))==1 && $((${array[1,1]})) == 1 && $((${array[2,1]})) == 1 || $((${array[0,2]})) == 1 && $((${array[1,2]}))==1 && $((${array[2,2]})) == 1
    || $((${array[2,0]}))==1 && $((${array[1,1]})) == 1 && $((${array[0,2]})) == 1 || $((${array[0,0]})) == 1 && $((${array[1,1]}))==1 && $((${array[2,2]})) == 1  ]] ; then
        echo "*** system win ***"
	return 11
 elif [[ $((${array[0,0]}))==2 && $((${array[0,1]})) == 2 && $((${array[0,2]})) == 2 || $((${array[1,0]})) == 2 && $((${array[1,1]}))==2 && $((${array[1,2]})) == 2
      || $((${array[2,0]}))==2 && $((${array[2,1]})) == 2 && $((${array[2,2]})) == 2 || $((${array[0,0]})) == 2 && $((${array[1,0]}))==2 && $((${array[2,0]})) == 2
      || $((${array[0,1]}))==2 && $((${array[1,1]})) == 2 && $((${array[2,1]})) == 2 || $((${array[0,2]})) == 2 && $((${array[1,2]}))==2 && $((${array[2,2]})) == 2
      || $((${array[2,0]}))==2 && $((${array[1,1]})) == 2 && $((${array[0,2]})) == 2 || $((${array[0,0]})) == 2 && $((${array[1,1]}))==2 && $((${array[2,2]})) == 2  ]] ; then
        echo "*** you win ***"
        return 22
 fi
}
#-----------------------------------------------------------------------------------------------------------------------------------------
function randomNumber()
{
        DIFF=$((0-4+1))
        R=$(($(($RANDOM%$DIFF))+X))
	return "$R"
}
#-----------------------------------------------------------------------------------------------------------------------------------------
function systemInput()
{
 randomNumber
 row1=$? col1=$?
 array="${!1}"
 if [  "${array[$row1,$col1]}" == 1 -o  "${array[$row1,$col1]}" == 2 ];then
        systemInput
 else
 r1=$row1 c1=$col1
 return 2
 fi
}
#------------------------------------------------------------------------------------------------------------------------------------------
function userInputs()
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
#---------------------------------------------------------------------------------------------------------------------------------------
function printBoard()
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
function check2()
{
 arr="${!$1}"
 check arr[@]
 $val=$?
 if [ $val -eq 11 -o $val -eq 22 ] ; then
    break
  fi
}




declare -A array
for (( i=0; i<3; i++));do
	for (( j=0;j<3;j++));do
	     array[$i,$j]=0
	done
done


for (( a=0;a<4;a++)) ; do
	userInputs array[@]
	if [ $? -eq 1 ] ; then
		array[$r2,$c2]=2
	fi
	check array[@]
	result=$?
	if [ $result -eq 11 -o $result -eq 22 ] ; then
		break
	fi
	systemInput array[@]
	if [ $? -eq 2 ] ; then
		array[$r1,$c1]=1
	fi
	echo "--------"
	printBoard array[@]
	check array[@]
        result2=$?
        if [ $result2 -eq 11 -o $result2 -eq 22 ] ; then
                break
        fi
done
  	userInputs array[@]
        if [ $? -eq 1 ] ; then
                array[$r2,$c2]=2
        fi
        check array[@]
        result3=$?
        if [[ $(($result3)) != 11 || $(($result3)) != 22 ]] ; then
                echo "---------DRAW----------"
        fi
  printBoard array[@]
