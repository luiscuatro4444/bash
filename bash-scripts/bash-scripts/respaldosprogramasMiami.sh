#!/bin/bash

#### cinaruco.master.miami ####

rsync --delete -arvztgo respaldo@192.168.50.1:/home/respaldo/backups/  /data1/respaldos/respaldosMiami/cinaruco-master-miami

#### cinaruco.ebl.bd.miami ####

rsync --delete -arvztgo respaldo@192.168.50.160:/home/respaldo/backups/  /data1/respaldos/respaldosMiami/cinaruco-ebl-bd-miami
