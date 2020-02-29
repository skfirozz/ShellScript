read -p "Enter a value: " a
read -p "Enter b value: " b
read -p "Enter c value: " c
((value=a+b*c))
echo "a+b*c--->$value"
echo ""
((value=c+a/b))
echo "c+a/b-->$value"
echo ""
((value=a%b+c))
echo "a%b+c--->$value"
echo ""
((value=a*b+c))
echo "a*b+c--->$value"
echo ""
