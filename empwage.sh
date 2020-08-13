#!/bin/bash -x

echo "Welcome to employee wage compution"
dailyWagePerHour=20
is_Full_Time=2
is_Part_Time=1
numOfDays=20
Max_Hrs_InMonth=100

totalWrkDays=0
totalEmpHrs=0

while [[ $totalWrkDays -lt $numOfDays && $totalEmpHrs -lt $Max_Hrs_InMonth ]]
do
	((totalWrkDays++))
	employeeCheck=$(( RANDOM%3 ))
	case $employeeCheck in
			$is_Full_Time)
					empHrs=8 ;;
			$is_Part_Time)
					empHrs=4 ;;
							*)
					empHrs=0 ;;
	esac
	totalEmpHrs=$(( $totalEmpHrs+$empHrs ))
done

totalSalary=$(( $totalEmpHrs*$dailyWagePerHour ))
echo $totalSalary
