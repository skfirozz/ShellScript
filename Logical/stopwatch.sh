read -p "Enter any key to start time: " begin
start="$(date +"%s%N")"
echo $start
read -p "Enter any key to stop time:  "  end
stop="$(date +"%s%N")"
echo $stop
 ((result=$start-$stop))
echo $result
echo "-----------------------------------------"

