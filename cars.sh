#! /bin/bash
# cars.sh
# Mary Shkouratoff
N=0
while [ $N -ne 3 ]
do
	echo "Type 1 to enter a new car"
	echo "Type 2 to display the list of cars"
	echo "Type 3 to quit and exit the program"
	read -r N
	case "$N" in 
		"1")
		echo "Enter the year of the car: "
		read -r YEAR
		echo  "Enter the make of the car: "
		read -r MAKE
		echo "Enter the model of the car: "
		read -r MODEL
		echo "Adding $YEAR $MAKE $MODEL to list"
		CAR="$YEAR:$MAKE:$MODEL"
		echo "$CAR" >> My_old_cars
		echo "$CAR"
		;;
		"2")
		sort -n My_old_cars
		echo My_old_cars
		;;
		*)
		echo "Have a nice day!"
		;;
	esac
done
