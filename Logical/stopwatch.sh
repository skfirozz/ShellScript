read -p "Enter any key to start time: " start
now="$(date +"%s%N")"
echo $now
read -p "Enter any key to stop time:  " stop
 present="$(date +"%s%N")"
echo $present
echo $present-$now
