#! /bin/bash

#var=$((12+12))
#opa="scale=2;22/7" | bc
#echo $var
#echo $scale

# math operation: $((12 + 12))
# create variable: var="lol"
# print variable: echo $var
# read input: read a -> save input on a variable

# Numeric comparison logical operators
# equality: num1 -eq num2
# greater than equal to: num1 -ge num2
# greater than: num1 -gt num2
# less than equal to: num1 -le num2
# less than: num1 -lt num2
# not equal to: num1 -ne num2

# if statement: if [ conditions ] then commands fi

echo "Enter a number"
read x
echo "Enter another number"
read y

if [ $x -gt $y ] 
then
    echo X is greater than Y
elif [ $x -lt $y ] 
then
    echo X is less than Y
elif [ $x -eq $y ] 
then 
    echo X and Y is equal
else
    echo None of this
fi

#sum=$((ia + ib))
#echo $sum
