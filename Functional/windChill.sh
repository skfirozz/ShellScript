read -p "Enter the speed: " speed
read -p "Enter the temperature: " temp
#((s=echo 'scale=4;speed**0.16' | bc ))
echo 'scale=4; 35.74+0.5215*temp+0.4275*temp-35.75*speed*0.16' | bc
