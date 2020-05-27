
all: README.md

README.md:
	touch README.md
	echo "#GuessingGame" >> README.md
	date >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
