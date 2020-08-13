#!/bin/bash -x

echo "Welcome to employee wage compution"
dailyWagePerHour=20
is_Full_Time=2
is_Part_Time=1
numOfDays=20
for (( days=1; days<=$numOfDays; days++))
do

	employeeCheck=$(( RANDOM%3 ))
	case $employeeCheck in
			$is_Full_Time)
					empHrs=8 ;;
			$is_Part_Time)
					empHrs=4 ;;
							*)
					empHrs=0 ;;
	esac
	salary=$(( $dailyWagePerHour*$empHrs ))
	echo "salary is" $salary
	totalSalary=$(( $totalSalary+$salary ))
	echo "TotalSalary is" $totalSalary
done
