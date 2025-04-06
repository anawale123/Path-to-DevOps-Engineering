#!/bin/bash 

while true; do
 # while loop to create an menu option for arithmetic operations 	
	echo "1) Addition "
	echo "2) Subtraction "
	echo "3) multiplication "
	echo "4) Divisiion"
	echo "£0) Exit "

read -p "Enter an option " choice 
# input placeholder for the arithmetic operation chosen

if [ "$choice" -eq 5 ]; then # use of conditional statemen for operation menu 
	echo "thanks for your time !" 
	exit 
fi
read -p "Enter Number " first 
read -p "Enter Number " second 
# input variable for the numbers chosen
case $choice in # use of case statement to handle different arithmetic operations 
	1) result=$((first + second)) ;; # Addition
	2) result=$((first - second )) ;;# Subtraction
	3) result=$((first * second )) ;;# Multiplication
	4) # Division 
		if [ $second -eq 0 ]; then # Error handling to prevent division by zero
			echo "Error: Division by zero is not allowed "
			continue 
		fi
		# Perform division with 2 decimal points using 'bc' 
		result=$(echo "scale=2; $first / $second"| bc -1) ;;
	*) # Handle invalid menu choices 
		echo " invalid option, please try again " 
		continue ;;
	esac
 
	# display the result  
echo "result is equal to $result" 
exit 
 done
