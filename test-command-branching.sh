#!/bin/bash

# test-command-branching.sh: evaluate the status of a file making use of a branching cases

FILE=~/.bashrc

if [ -e "$FILE" ]; then
	if [ -f "$FILE" ]; then
		echo "$FILE is a regular file."
	fi
	if [ -d "$FILE" ]; then
		echo "$FILE is a directory."
	fi
	if [ -r "$FILE" ]; then
		echo "$FILE is readable."
	fi
	if [ -w "$FILE" ]; then
		echo "$FILE is writable."
	fi
else
	echo "$FILE does not exist."
	exit 1
fi

exit
	
