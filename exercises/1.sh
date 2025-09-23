# !/bin/bash


read -p "Please enter your name: " user_name

if [[ "${user_name,,}" != "jose" ]]; then # ',,' is used to convert the string to lowercase
    echo "Wrong name"
    exit 1
else
    # Line 12: Complex string formatting to capitalize the name (e.g., "jose" -> "Jose")
    # $(tr '[:lower:]' '[:upper:]' <<< ${user_name:0:1}) - Takes first character, converts to uppercase
    # $(tr '[:upper:]' '[:lower:]' <<< ${user_name:1}) - Takes remaining characters, converts to lowercase
    # Result: Any input like "jose", "JOSE", "JoSe" becomes properly formatted "Jose"
    echo "Welcome, $(tr '[:lower:]' '[:upper:]' <<< ${user_name:0:1})$(tr '[:upper:]' '[:lower:]' <<< ${user_name:1})! Type two numbers to add them."
    read -p "Enter first number: " num_1 # '-p' is used to print the prompt before reading the input
    read -p "Enter second number: " num_2
    addition=$((num_1+num_2))
    subtraction=$((num_1-num_2))
    echo "The result of the addition is $addition"
    echo "The result of the subtraction is $subtraction"
    exit 0
fi

# Exit 0 --> It works, and terminal is closed.
# Exit 1 --> common errors (e.g.: zero division)
# Exit 2 --> shell errors

