# !/usr/bin/
# Print "Hi, world! This is my first shell script using Vim."
# Jose Burguera

name_Jose="Jose Luis Burguera"
num_1=1
num_2=2
result=3

echo "Hi world! This is my first shell script using Vim."
echo "My name is" $NAME

echo $name_Jose
echo $num_1 + $num_2 = $result
# Exit 0 --> It works, and terminal is closed.
# Exit 1 --> common errors (e.g.: zero division)
# Exit 2 --> shell errors
