function randomNumber()
{
 randomNumber=$(($(($RANDOM%6))+1))
 return $randomNumber
}

randomNumber
value1=$?
randomNumber
value2=$?
((value=value1+value2))
echo "$value1+$value2-->$value"
