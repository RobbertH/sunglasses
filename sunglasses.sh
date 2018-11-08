#!/bin/bash

fill=5 # percent of space filled with cool smiley
amt_characters=10000 # approx (fill/100)*amt_characters smileys are printed
infinite=false # keep printing these bad boys
slow=false # take it back now yo

main_loop () {
	for (( i = 0; i < $amt_characters; i++ )); do
		if [ $(($RANDOM % 100)) -lt $fill ]; then
			echo -n 😎
		else
			echo -n " "
		fi;
		if $slow; then
			sleep 0.000001;
		fi;
	done
}

while $infinite; do
	main_loop
done;
main_loop

echo "" # newline
