#!/bin/bash -x


	read -p "Enter the first number: " a
	read -p "Enter the second number: " b
	read -p "Enter the third number: " c
		calculation=$(($a + $b * $c))
		echo "Use Case 2:  " $calculation
		calculation1=$(($a * $b + $c))
		echo "Use Case 3:  " $calculation1
		calculation2=$(($c + $a /$b))
		echo "Use Case 4:  " $calculation2
		calculation3=$(($a / $b + $c))
		echo "Use Case 5:  " $calculation3
	declare -A dictionary
	dictionary=([case1]=$calculation [case2]=$calculation1 [case3]=$calculation2 [case4]=$calculation3)
	for key in "${dictionary[@]}"
	do 
	echo "Dictionary: ${key}"
	done

	array=${dictionary[@]}
	for item in ${array[@]}
	do
		echo "Array: ${item}"
	done
	echo "Sorted Array in Descending Order"
	echo ${array[*]}| tr " " "\n" | sort -nr 

	echo "Sorted Array in Ascending Order"
	echo ${array[*]} | tr " " "\n" | sort -n
