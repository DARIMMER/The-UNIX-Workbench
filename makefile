all: README.md
README.md: guessinggame.sh
	touch README.md
	echo "# The-UNIX-Workbench">README.md
	echo "Project Title :">>README.md
	echo "Peer-graded Assignment: Bash, Make, Git, and GitHub">>README.md
	echo "Current Date:">>README.md
	date >> README.md
	echo "The guessinggame.sh  contains the following number of lines(entries):">>README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md
