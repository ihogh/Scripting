#!/bin/bash
#This script demo the use of switch case
CARS="$1"
#Pass the variable in string
case "$CARS" in 
	#case 1
	"mercedes") echo "Headquarters - Affalterbach, Germany" ;;

	#case 2
	"audi") echo "Headquarters - Ingolstadt, Germany" ;;

	#case 3
	"bmw") echo "Headquarters - Chennai, Tamil Nadu, India" ;;
esac
			

