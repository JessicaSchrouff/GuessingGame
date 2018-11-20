#!/bin/bash

t	:=	$(shell date '+%d/%m/%Y %H:%M:%S')


README.md: guessinggame.sh
	touch README.md
	echo "## Guessing Game" > README.md
	echo "### Date of **make**" >> README.md
	echo "$t" >> README.md
	echo "### Number of lines in **guessinggame.sh**" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
