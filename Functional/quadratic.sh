read -p "Enter A value: " a
read -p "Enter B value: " b
read -p "Enter C value: " c
((delta = b * b - 4 * a * c))
delta=$(bc <<<"scale=2; sqrt($delta)")
echo 'scale=2; -b+delta/2*a' | bc
echo 'scale=2; -b-delta/2*a' | bc
