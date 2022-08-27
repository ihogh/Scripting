#!/bin/bash
#This script automates Team3Group2Etechapp Bank account balance
#Author: Team3Group2Etechapp
echo "Welcome to Team3Group2Etechapp Bank"
initBal=20000
acctpin=2022
echo -n "Please enter your pin:"
read -s custpin
if [[ $acctpin -eq $custpin ]]; 
then
	read -p "Please enter the amount you want to withdraw: " amtwithdrwn
	currentBal=\$$(echo "scale=4; $initBal - $amtwithdrwn" | bc)
	withdrwnby=`whoami`
	transdatime=`date +%m-%d-%y\ %H:%M:%S`
	echo "Receipt:"
	echo "Beginning balance = \$$initBal"
	echo "Current Balance = $currentBal"
	echo "The person that did the transaction = $withdrwnby"
	echo "The date and time the transaction was made = $transdatime"
	echo "This atmcard belongs to Team3Group2Etechapp"
	echo "Thanks for using Team3Group2Etechapp Bank and hope to  see you soon"
else
       	echo " Invalid pin; please enter the right pin"
fi
