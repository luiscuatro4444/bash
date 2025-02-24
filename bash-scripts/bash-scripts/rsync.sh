#!/bin/bash
read origin=""
read destination=""
#Transfering files

rsync -avz $origin $destination
