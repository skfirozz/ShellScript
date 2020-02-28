function primeFactor()
{
	for ((i=2;i<=$number;i++));do
		count=0
		if [ $(($number % $i)) == 0 ];then
		for ((j=2;j<=$i;j++));do
			if [ $(($i % $j)) == 0 ];then
				((count=count+1))
			fi
		done
		fi
		if [ $count -eq 1 ];then
			echo -n "$i "
		fi
	done
}
read -p "Enter a number for prime factor: " number
primeFactor
echo ""
