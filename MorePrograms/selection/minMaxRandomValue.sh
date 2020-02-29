function randomNumber()
{
 randomNumber=$(($(($RANDOM%899))))
 return $randomNumber
}
min=0
max=0
for((i=0;i<5;i++));do
randomNumber
((rand=$?+100))
echo $rand
if [ $(($max)) -le $(($rand)) ];then
((max=rand))
fi
done

echo $max
