#!/bin/bash -x

echo "Welcome to employee wage compution"

isPresent=1
employeeCheck=$(( RANDOM%2 ))

if [ $employeeCheck -eq $isPresent ]
then
	echo "employee is present"
else
	echo "employee is absent"
fi
