#!/bin/bash -x

#UC1  read input from the user
	read -p "Enter the first number: " a
	read -p "Enter the second number: " b
	read -p "Enter the third number: " c

#UC2 calculate a+b*c
	calculation=$(($a + $b * $c))
	echo $calculation

#UC3 calculate a*b+c
	calculation1=$(($a * $b + $c))
	echo "Use Case 2: " $calculation1

#UC4 calculate c+a/b
	calculation2=$(($c + $a /$b))
	echo "Use Case 4: " $calculation2

#UC5 calculate a/b+c
	uc5=$(($a / $b + $c))
	echo "Use Case 5: " $uc5


#UC6 store computation in  dictionary 
	
	declare -A dictionary
	dictionary=([case1]=$calculation [case2]=$calculation1 [case3]=$calculation2 [case4]=$calculation3)
	for key in ${dictionary[@]}
	do
		echo ${key}
	done

#UC7 store values from dictionary into array

	array=${dictionary[@]}
	for item in ${array[@]}
	do
		echo $item
	done
