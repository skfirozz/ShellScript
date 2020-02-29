function checkDayAndMonth()
{
	if [ $(($day)) -le 32 ] ; then 
		if [  $(($month)) -le 7  -a   $(($month)) -gt 2 ];then
			return 1
		fi
	fi
	return 2
}

read -p "Enter date: " date
read -p "Enter month: " month

checkDayAndMonth
result=$?
if [ $(($result)) -eq 1 ];then
 echo "true"
else
 echo "false"
fi
