#!bin/bash

#Disregarding repositories security checks for apt packet manager

apt -o Acquire::AllowInsecureRepositories=true -o Acquire::AllowDowngradeToInsecureRepositories=true update