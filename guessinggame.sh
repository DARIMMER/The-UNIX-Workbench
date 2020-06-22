#!/bin/bash

function check {
	if [ $2 -eq $2 2>/dev/null -o $2 -eq 0 2>/dev/null ] # If Interger
	then
		if [[ $1 -eq $2 ]] #If correct
		then
			echo "Correct Guess ! :) The number of files is $1"
			i=1
		elif [[ $1 -lt $2 ]] # If to High
		then
			echo "Guess is too High. Guess Lower. "
		else #If to Low
			echo "Guess is too Low. Guess Higher. "
		fi
	else # If not an integer 
		echo "Not an integer Please insert a integer" 
	fi
  }

#Main

i=0
answer=$(find . -type f | wc -l) # Counts Files
while [ $i -lt 1 ]; do # While Wrong make Guess Loop
	echo "How many files are in the current directory?"
	echo "Type in a guess and then press Enter:"
	read guess #Guess
	echo "You entered: $guess" 
	check $answer $guess #Answer Guess Checker
done