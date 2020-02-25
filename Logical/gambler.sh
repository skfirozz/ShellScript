read -p "Enter Number of trails: " trails
read -p "Enter STACK: " stack
read -p "Enter Goal : " goal
for (( i=1; i<=$trails; i++ ));do
   if [ $RANDOM % 2 -eq 0 ]; then
        echo "even"
   else echo "odd"
   fi
done
