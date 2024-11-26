#!/bin/bash

# read-default: supply a default value if user presses the Enter key.

read -e -p "What is your user name? " -i $USER
echo "You answered: '$REPLY'"
