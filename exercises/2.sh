# !/bin/bash


read -p "Enter the first parameter: " parameter_1
read -p "Enter the second parameter: " parameter_2


echo "================= ARITHMETIC OPERATIONS =================="
echo "Addition: $((parameter_1 + parameter_2))"
echo "Subtraction: $((parameter_1 - parameter_2))"
echo "Multiplication: $((parameter_1 * parameter_2))"
echo "Division: $((parameter_1 / parameter_2))"
echo "================= ARITHMETIC OPERATIONS =================="
