function randomNumber()
{
	randomNumber=$(($(($RANDOM%89))+10))
	return $randomNumber
}

sum=0
for((i=0;i<5;i++));do
randomNumber
temp=$?
((sum=sum+temp))
done
echo "sum is: $sum"
((average=sum/5))
echo "average is : $average"
