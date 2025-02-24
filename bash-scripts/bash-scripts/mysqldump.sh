#!/bin/bash

user="user"
password="password"
log="/var/log/mysql/dump.log"
database="database"
table="table"
output="dump.sql"

# Mysql dump for a specific table of a specific database

mysqldump -u $user –p $password --log-error=$log $database $table > $output