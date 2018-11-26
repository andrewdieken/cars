#! /bin/bash
# cars.sh
#Author: Andrew Dieken

input="abc"

while [ $input != "Q" ]
do
	echo ""
	echo "--------------------------"
	echo "1) Add a car"
	echo "2) List cars in inventory"
	echo "Q) Quit the program"

	read input

	if [ $input == 1 ]
	then
		echo "What is the year?"
		read year
		echo "What is the make?"
		read make
		echo "What is the model?"
		read model
		echo $year:$make:$model >> My_old_cars
	elif [ $input == 2 ]
	then
		sort My_old_cars
	elif [ $input == "Q" ]
	then
		echo "Goodbye"
	else
		echo "Please enter a valid option"
	fi
done
