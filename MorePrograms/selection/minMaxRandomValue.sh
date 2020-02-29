function randomNumber()
{
 randomNumber=$(($(($RANDOM%899))))
 return $randomNumber
}
min=1000
max=0
for((i=0;i<5;i++));do
randomNumber
((rand=$?+100))
echo $rand
if [ $(($max)) -le $(($rand)) ];then
((max=rand))
fi
if [ $(($rand)) -le $(($min)) ];then
((min=rand))
fi

done

echo $max
echo $min
