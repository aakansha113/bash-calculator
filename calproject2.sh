#!/bin/bash

echo "Please give output according to the instruction...."
read -p "Enter 1st value: " a
read -p "Enter 2nd value: " b

addition(){
	sum=$(( a+b ))
	echo "The Addition of $a and $b is $sum."
}
    
subtraction(){
        sub=$(( a-b ))
        echo "The Subtraction of $a and $b is $sub."
        }
      
multiply(){
        mul=$(( a*b ))
        echo "The Multiplication of $a and $b is $mul."
        }
      
division(){
        if [ $b -eq 0 ]
	then
		echo "The value by 0 is not allowed"
	else
	div=$(( a/b ))
        echo "The Division of $a and $b is $div."
	fi
}
echo "choose from the option given:"
echo "'a' for Addition"
echo "'b' for Subtraction"
echo "'c' for Multiplication"
echo "'d' for Division"

read -p "Enter choice: " choice
case $choice in
	a)addition ;;
	b)subtraction ;;
	c)multiply ;;
	d)division ;;
	*) echo "Enter valid choice....!!!" ;;

esac
        
