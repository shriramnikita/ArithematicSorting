#!/bin/bash -x

#UC1  read input from the user
	read -p "Enter the first number: " a
	read -p "Enter the second number: " b
	read -p "Enter the third number: " c

#UC2 calculate a+b*c
	calculation=$(($a + $b * $c))
	echo $calculation
