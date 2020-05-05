#!/usr/bin/env bash
# File: guessinggame.sh

echo "Welcome to the Guessing Game of my-unix-workbech-project"

function guessinggame {
	local number_of_files=$(ls -p | grep -v / | wc -w)
	local is_correct=1

	while [[ $is_correct -eq 1 ]]
	do
		echo "Can you guess how many files there are in the current directory. Type the number and then press Enter:"
		read response

		if [[ $response =~ ^[0-9]+$ ]]
		then
			let is_correct=0
		else
			echo "You entered: $response. Your guess must be a positive integer number."
		fi

		if [[ $is_correct -eq 0 ]]
		then
			if [[ $response -gt $number_of_files ]]
			then
				let is_correct=1
				echo "Your guess: $response, is too high."
			elif [[ $response -lt $number_of_files ]]
			then
				let is_correct=1
				echo "Your guess: $response, is too low."
			else
				echo "Congratulations!!! Your guess: $response, is correct."
			fi
		fi
	done
}

guessinggame
