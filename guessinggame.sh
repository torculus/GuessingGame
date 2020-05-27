# count the number of files in the current directory
n=`ls | wc -l`

function askguess {
	echo "How many files are in the current directory?"
	read g
}

askguess

while [[ g -ne $n ]]
do
	if [[ g -gt $n ]]
	then
		echo "Too high"
		askguess
	else
		echo "Too low"
		askguess
	fi
done

echo "Congrats! You guessed the number!"
