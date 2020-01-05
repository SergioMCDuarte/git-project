#!/usr/bin/env bash

README.md: guessinggame.sh
	touch README.md
	echo "# The Guessing Game" > README.md
	date >> README.md
	echo "\n" >> README.md
	cat guessinggame.sh | wc -l >> README.md