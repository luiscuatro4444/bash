#!/bin/bash
#### ---- Servidores Linux ---- ####

#### bacula ####

rsync -avz respaldo@10.0.10.156:/ibm-ds3400/multimedia-publicidad /data1/respaldos/respaldosUrbina/publicidad

#### dbcinaruco-desarrollo ####

rsync  -avz respaldo@10.0.10.172:/home/respaldo/backups /data1/respaldos/respaldosUrbina/dbcinaruco-desarrollo/

cd /data1/respaldos/respaldosUrbina/dbcinaruco-desarrollo/

find backups -maxdepth 1 -mtime +5 -type f -exec rm -rf {} \;

#### calidad-web ####

rsync  -avz respaldo@10.0.10.18:/home/respaldo/backups /data1/respaldos/respaldosUrbina/calidad-web

cd /data1/respaldos/respaldosUrbina/calidad-web

find backups -maxdepth 1 -mtime +5 -type f -exec rm -rf {} \;

#### calidad-zoom-red-produccion ####

rsync  -avz respaldo@10.0.10.167:/home/respaldo/backups /data1/respaldos/respaldosUrbina/calidad-www-zoom-red

cd /data1/respaldos/respaldosUrbina/calidad-www-zoom-red

find backups -maxdepth 1 -mtime +5 -type f -exec rm -rf {} \;

####  desarrollo 2 ####

rsync  -avz respaldo@172.16.0.244:/var/lib/postgresql/htdocs/internet  /data1/respaldos/respaldosUrbina/desarrollo2

cd /data1/respaldos/respaldosUrbina/desarrollo2

tar -czvf desa2-`date +%Y%m%d`.tar.gz internet

find *.gz -mtime +5 -type f -exec rm -f {} \;

#### desarrollo3 ####

rsync  -avz respaldo@10.0.10.13:/var/www/html /data1/respaldos/respaldosUrbina/desarrollo3
rsync  -avz respaldo@10.0.10.13:/etc/httpd /data1/respaldos/respaldosUrbina/desarrollo3

cd /data1/respaldos/respaldosUrbina/desarrollo4

tar -czvf desa3-`date +%Y%m%d`.tar.gz html httpd

find *.gz -mtime +5 -type f -exec rm -f {} \;

#### desarrollo4 ####

rsync  -avz respaldo@10.0.10.179:/var/www/html /data1/respaldos/respaldosUrbina/desarrollo4
rsync  -avz respaldo@10.0.10.179:/etc/apache2 /data1/respaldos/respaldosUrbina/desarrollo4

cd /data1/respaldos/respaldosUrbina/desarrollo4

tar -czvf desa4-`date +%Y%m%d`.tar.gz html apache2

find *.gz -mtime +5 -type f -exec rm -f {} \;

#### desarrollo5 ####

rsync  -avz respaldo@10.0.10.14:/home/respaldo/backups /data1/respaldos/respaldosUrbina/desarrollo5


cd /data1/respaldos/respaldosUrbina/desarrollo5

find backups -maxdepth 1 -mtime +5 -type f -exec rm -rf {} \;

#### produccion.vertica ####

rsync  -avz respaldo@10.0.10.203:/home/respaldo /data1/respaldos/respaldosUrbina/vertica

cd /data1/respaldos/respaldosUrbina/vertica/respaldo

find *.gz -mtime +5 -type f -exec rm -f {} \;

##### GNAV #####

rsync  -avz respaldo@10.0.10.185:/home/respaldo/backupsbd /data1/respaldos/respaldosUrbina/gnav

cd /data1/respaldos/respaldosUrbina/gnav/

find backupsbd -maxdepth 1 -mtime +5 -type f -exec rm -rf {} \;

#### BD Taquilla Urbina1 ####

rsync  -avz respaldo@10.0.10.21:/home/respaldo/backups/ /data1/respaldos/respaldosUrbina/bd-taquilla-urbina1

cd /data1/respaldos/respaldosUrbina/bd-taquilla-urbina1/

find *.gz -mtime +5 -type f -exec rm -f {} \;

#### PKI ####

rsync -avz respaldo@10.0.10.130:/home/respaldo/backups/ /data1/respaldos/respaldosUrbina/pki/

cd /data1/respaldos/respaldosUrbina/pki/

find *.gz -mtime +5 -type f -exec rm -f {} \;

#### ebl-desarrollo ####

rsync -avz respaldo@10.0.10.166:/var/www/html /data1/respaldos/respaldosUrbina/ebl-desarrollo/

cd /data1/respaldos/respaldosUrbina/ebl-desarrollo/

tar -czvf ebl-`date +%Y%m%d`.tar.gz html

find *.gz -mtime +5 -type f -exec rm -f {} \;

#### ambiente sandbox ####

rsync -avz respaldo@10.0.10.98:/var/www/html /data1/respaldos/respaldosUrbina/sandbox/

cd /data1/respaldos/respaldosUrbina/sandbox/

tar -czvf sandbox-`date +%Y%m%d`.tar.gz html

find *.gz -mtime +5 -type f -exec rm -f {} \;

#### ambiente sandboxapp ####

rsync -avz respaldo@10.0.10.176:/var/www/html /data1/respaldos/respaldosUrbina/sandboxapp/

cd /data1/respaldos/respaldosUrbina/sandboxapp/

tar -czvf sandboxapp-`date +%Y%m%d`.tar.gz html

find *.gz -mtime +5 -type f -exec rm -f {} \;

#### postgres 14 desarrollo  ####

rsync -avz respaldo@10.0.10.163:/home/respaldo/backups /data1/respaldos/respaldosUrbina/postgres14-desarrollo/

cd /data1/respaldos/respaldosUrbina/postgres14-desarrollo/

find backups -maxdepth 1 -mtime +5 -type f -exec rm -rf {} \;

#### redmine ####

rsync -avz respaldo@10.0.10.180:/home/respaldo/backupsbd /data1/respaldos/respaldosUrbina/redmine/

cd /data1/respaldos/respaldosUrbina/redmine/

find backupsbd -maxdepth 1 -mtime +5 -type f -exec rm -rf {} \;

#### tableau ####

rsync -avz respaldo@10.0.10.12:/home/respaldo/backups/ /data1/respaldos/respaldosUrbina/tableau/

cd /data1/respaldos/respaldosUrbina/tableau/

find * -maxdepth 1 -mtime +5 -type f -exec rm -rf {} \;


##### INTERNET #####
rsync  -avz -e 'ssh -p 7822'  respaldo@10.0.10.116:/var/www/ /data1/respaldos/respaldosUrbina/internet/www
rsync  -avz -e ' ssh -p 7822' respaldo@10.0.10.116:/etc/apache2/ /data1/respaldos/respaldosUrbina/internet/apache2
rsync  -avz -e  'ssh -p 7822' respaldo@10.0.10.116:/var/local/conexiones/ /data1/respaldos/respaldosUrbina/internet/conexiones

cd /data1/respaldos/respaldosUrbina/internet/

tar -czvf internet-`date +%d%m%Y`.tar.gz www apache2 conexiones
find ./ -mtime +3 -type f -name '*.tar.gz' -delete

##### INTRANET #####

rsync  -avz -e  "ssh -p 7822" respaldo@10.0.10.218:/var/www/ /data1/respaldos/respaldosUrbina/intranet/www
rsync  -avz -e  "ssh -p 7822" respaldo@10.0.10.218:/etc/apache2/ /data1/respaldos/respaldosUrbina/intranet/apache2
rsync  -avz -e  "ssh -p 7822" respaldo@10.0.10.218:/var/local/conexiones/ /data1/respaldos/respaldosUrbina/intranet/conexiones

cd /data1/respaldos/respaldosUrbina/intranet/

tar -czvf intranet-`date +%d%m%Y`.tar.gz www apache2 conexiones
find ./ -mtime +3 -type f -name '*.tar.gz' -delete












