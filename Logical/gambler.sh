read -p "Enter Number of trails: " trails
read -p "Enter STACK: " stack
read -p "Enter Goal : " goal
wins=0 loss=0
for ((i = 1; i <= $trails; i++)); do
   rem=$(($RANDOM % 2))
   if [ $rem -eq 0 ]; then
      ((stack = stack + 1))
      ((wins = wins + 1))
   else
      ((stack = stack - 1))
      ((loss = loss - 1))
   fi
   if (($stack == $goal)); then
      break
   elif (($stack == 0)); then
      break
   fi
done
echo $wins " wins"
echo $loss "loss"
echo $stack "current stack"
