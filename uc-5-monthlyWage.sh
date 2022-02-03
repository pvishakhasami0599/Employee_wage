#!/bin/bash -x

isFullTime=1
isPartTime=2
empRatePerHr=20
totalSalary=0
numOfWorkingDays=20

for ((day=1; day<=$numOfWorkingDays; day++))
do
	randomCheck=$((RANDOM%3))
		case $randomCheck in
			$isFullTime)
				empHrs=8;;
			$isPartTime)
				empHrs=4;;
			*)
				empHrs=0;;
		esac
	salary=$(($empHrs*$empRatePerHr))
	totalSalary=$(($totalSalary+$salary))
done
echo "Employee's monthly wage : $totalSalary"
