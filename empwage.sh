#!/bin/bash -x

echo "Welcome to employee wage compution"
dailyWagePerHour=20
is_Full_Time=2
is_Part_Time=1
employeeCheck=$(( RANDOM%3 ))

if [ $employeeCheck -eq $is_Full_Time ]
then
	empHrs=8
elif [ $employeeCheck -eq $is_Part_Time ]
then
	empHrs=4
else
	empHrs=0
fi

salary=$(( $dailyWagePerHour*$empHrs ))
echo "salary is" $salary
