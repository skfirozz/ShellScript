function check()
{
	array="$1"
	for (( i=0; i<3; i++));do
	   if [ ${array[0]} == 0 ]; then
		echo "hi"
	   else 
		echo "welcome"
	   fi
	done
}
array=(1 2 3 4 5)
check $array
