README.md: guessinggame.sh
	echo "# My Unix Workbench Guessing Game Project" > README.md
	echo "\`make\` was run on:" >> README.md
	date >> README.md
	echo "\n**Number of lines** of code contained in *guessinggame.sh*:" >> README.md
	grep -c '' guessinggame.sh >> README.md
