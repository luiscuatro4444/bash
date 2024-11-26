#!/bin/bash

folder="/"
output="folder-size.txt"

#Checks folder size and orders the output from big to small into a file

du -hc $folder | sort -nrk >> $output