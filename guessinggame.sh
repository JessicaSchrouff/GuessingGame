#!/usr/bin/env bash

function guessgame {
exitgame=0
filenum=$(ls | wc -l)

while [[ $exitgame -eq 0 ]]
do
	echo "How many files are in the directory?"
	echo "Your guess:"
	read response
	re='^[0-9]+$'
	if ! [[ $response =~ $re ]]
	then
		echo "Please enter a valid number, try again"
	elif [[ $response -gt $filenum ]]
	then
		echo "Your guess is too high, try again!"
	elif [[ $response -lt $filenum ]]
	then
		echo "Your guess is too low, try again!"
	else
		echo "Good guess! Exiting..."
		exitgame=1
	fi
done
}

guessgame
