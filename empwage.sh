#!/bin/bash -x

echo "Welcome to employee wage compution"
dailyWagePerHour=20
empHrs=8
isPresent=1
employeeCheck=$(( RANDOM%2 ))

if [ $employeeCheck -eq $isPresent ]
then
	salary=$(( $dailyWagePerHour*$empHrs ))
	echo "salary is" $salary
else
	echo "employee is absent"
fi
