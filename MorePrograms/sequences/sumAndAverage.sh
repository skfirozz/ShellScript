function randomNumber()
{
	randomNumber=$(($(($RANDOM%89))+10))
	return $randomNumber
}

value=0
for((i=0;i<5;i++));do
randomNumber
temp=$?
echo $temp
((value=value+temp))
done
echo $value
