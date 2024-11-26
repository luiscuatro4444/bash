#!/bin/bash
search="file.txt"
timeRange="+4"
destination="/home/"
# Finding a criteria an moving the list to another folder, -name is the literal search patter,
# -atime is the time range when the objects of the search were last accesed
# -exec is the action or command that is gonna be executed to search results
# The {} simbolize the results of the search
find . -name "$search" -atime $timeRange  -exec mv  {} $destination \;