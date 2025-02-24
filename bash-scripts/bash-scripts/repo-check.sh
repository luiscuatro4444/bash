#!/bin/bash

#Input the term you are looking for here 
search="package-name"

#This is the route for apt on Ubuntu or Debian

grep ^Package /var/lib/apt/lists/* | awk '{print $2}' | sort -u | grep ($search)