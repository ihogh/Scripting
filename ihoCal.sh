#Script to design an automated calculator
#!/bin/bash
read -p "Please Enter the first and second numbers: " num1 num2
sum=$(echo "scale=4; $num1 + $num2" | bc)
dif=$(echo "scale=4; $num1 - $num2" | bc)
mult=$(echo "scale=4; $num1 * $num2" | bc)
divi=$(echo "scale=4; $num1 / $num2" | bc)
float=$(echo "scale=4; $num1 % $num2" | bc)
echo " The sum is: $sum "
echo " The difference is : $dif "
echo " The division is : $divi"
echo " The multiplication is : $mult "
echo " This is awesome We just build our first calculator for Aeskill LLC"
echo " The floating point answer is : $float "
