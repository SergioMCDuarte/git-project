#!/usr/bin/env bash

README.md: #guessinggame.sh
	touch README.md
	echo "# The Guessing Game" > README.md
	date >> README.md
	eval echo "\nNumber of lines in file: $(cat guessinggame.sh | wc -l)" >> README.md