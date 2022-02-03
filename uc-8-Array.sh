#!/bin/bash -x

isPartTime=1
isFullTime=2
maxHrInMonth=100
empRatePerHr=20
numOfWorkingDays=20
totalEmpHr=0
totalWorkingDays=0

function getWorkHrs()
{
	case $1 in
		$isPartTime)
			empHrs=4;;
		$isFullTime)
			empHrs=8;;
		*)
			empHrs=0;;
	esac
}

function getWage()
{
	echo $(($1*$empRatePerHr))
}

while [[ $totalEmpHr -lt $maxHrInMonth &&
	$totalWorkingdays -lt $numOfWorkingDays ]]
do
	((totalWorkingDays++))
	randomCheck=$((RANDOM%3))
	getWorkHrs $randomCheck
	totalEmpHr=$(($totalEmpHr+$empHrs))
	dailyWage[$totalWorkingDays]=$(($empHrs*$empRatePerHr))
done

totalSalary="$( getWage $totalEmpHr )"
echo ${dailyWage[@]}
