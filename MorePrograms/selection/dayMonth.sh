function checkDayAndMonth()
{
	if [ $(($day)) -le 32 -o $(($month)) -le 7  ]
}

read -p "Enter date: " date
read -p "Enter month: " month

checkDayMonth

