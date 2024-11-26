#!/bin/bash

# test-command-regex-redirection.sh: evaluate the nature of an intenger using regular expressions

echo -n "Please enter an integer -> "
read int


if [[ "$int" =~ ^-?[0-9]+$ ]]; then
	if (( "$int" == 0 )); then
		echo "$int is zero."
	else
		if  (( "$int" < 0 )) ; then
			echo "$int is negative."
		else
			echo "$int is positive."
		fi
		if (( $((int % 2)) == 0 )) ; then
			echo "$int is even."
		else
			echo "$int is odd."
		fi
	fi
else
	echo "Entered value is not an integer." >&2
	exit 1
fi
