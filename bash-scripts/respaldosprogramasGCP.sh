#!/bin/bash

#### aminsa.site ####

rsync  -avz respaldo@10.128.0.114:/root/backupsbd /data1/respaldos/respaldosGCP/aminsa-site-vm/backupsbd/
rsync  -avz respaldo@10.128.0.114:/root/backups /data1/respaldos/respaldosGCP/aminsa-site-vm//backups/

cd /data1/respaldos/respaldosGCP/aminsa-site-vm/
find . -maxdepth 4 -mtime +5 -type f -exec rm -f {}\;


#### app.zoom.red ####

rsync  -avz respaldo@10.128.0.6:/root/backups /data1/respaldos/respaldosGCP/app-zoom-red/backups/

cd /data1/respaldos/respaldosGCP/app-zoom-red/backups/

find *.gz -mtime +5 -type f -exec rm -f {} \;


#### barman ####

rsync  -avz respaldo@10.128.0.61:/root/backups /data1/respaldos/respaldosGCP/barman/backups/

cd /data1/respaldos/respaldosGCP/barman/backups/

find *.gz -mtime +5 -type f -exec rm -f {} \;


#### calidad.zoom.red ####

rsync  -avz respaldo@10.128.0.213:/root/backups/ /data1/respaldos/respaldosGCP/calidad-zoom-red/backups/
rsync  -avz respaldo@10.128.0.213:/root/backupsbd/ /data1/respaldos/respaldosGCP/calidad-zoom-red/backupsbd/

cd /data1/respaldos/respaldosGCP/calidad-zoom-red/backups/

find *.gz -mtime +5 -type f -exec rm -f {} \;


#### frontend.produccion.grupo.zoom ####
rsync  -avz  respaldo@10.128.0.57:/var/www/html/ /data1/respaldos/respaldosGCP/frontend-produccion-grupo-zoom/html/
rsync  -avz  respaldo@10.128.0.57:/etc/httpd/ /data1/respaldos/respaldosGCP/frontend-produccion-grupo-zoom/conf/

cd /data1/respaldos/respaldosGCP/frontend-produccion-grupo-zoom/
tar -zcvf frontend_produccion_grupo_zoom_`date +%Y%m%d`.tar.gz html conf
find *.gz -mtime +5 -type f -exec rm -f {} \;


#### frontend.produccion.serviciosbd ####
rsync  -avz   respaldo@10.128.0.50:/root/backups /data1/respaldos/respaldosGCP/frontend-produccion-serviciosbd/backups/

cd /data1/respaldos/respaldosGCP/frontend-produccion-serviciosbd/backups/
find *.gz -mtime +5 -type f -exec rm -f {} \;

#### ftp.cantv.payco ####
rsync  -avz   root@10.128.0.79:/root/backups /data1/respaldos/respaldosGCP/ftp-cantv-payco/backups/

cd /data1/respaldos/respaldosGCP/ftp-cantv-payco/backups/
find *.gz -mtime +5 -type f -exec rm -f {} \;

#### guia.electronica ####

rsync  -avz respaldo@10.128.0.42:/root/backups/ /data1/respaldos/respaldosGCP/GE/backups/

cd /data1/respaldos/respaldosGCP/GE/backups/
find *.gz -mtime +5 -type f -exec rm -f {} \;

#### orinoco.sede.principal ####

rsync  -avz   respaldo@10.128.0.85:/var/www/localhost/vhost/ /data1/respaldos/respaldosGCP/orinoco-sp/vhost/
rsync  -avz   respaldo@10.128.0.85:/var/local/conexiones/    /data1/respaldos/respaldosGCP/orinoco-sp/conexiones/
rsync  -avz   respaldo@10.128.0.85:/etc/httpd/               /data1/respaldos/respaldosGCP/orinoco-sp/httpd/

cd /data1/respaldos/respaldosGCP/orinoco-sp/
tar -czvf orinoco-sp-`date +%Y%m%d`.tar.gz vhost conexiones httpd
find *.gz -mtime +5 -type f -exec rm -f {} \;

#### remesas.en.venezuela ####

rsync  -avz   respaldo@10.128.0.208:/root/backups/ /data1/respaldos/respaldosGCP/remesas-en-venezuela/backups/
rsync  -avz   respaldo@10.128.0.208:/root/backupsbd/ /data1/respaldos/respaldosGCP/remesas-en-venezuela/backupsbd/

cd /data1/respaldos/respaldosGCP/remesas-en-venezuela/backups/
find *.gz -mtime +5 -type f -exec rm -f {} \;
cd /data1/respaldos/respaldosGCP/remesas-en-venezuela/backupsbd/
find *.gz -mtime +5 -type f -exec rm -f {} \;

#### request.tracker.zoombao ####

rsync  -avz   respaldo@10.128.0.25:/root/backups /data1/respaldos/respaldosGCP/request-tracker-zoombao/backups/
rsync  -avz   respaldo@10.128.0.25:/root/backupsbd /data1/respaldos/respaldosGCP/request-tracker-zoombao/backupsbd/

cd /data1/respaldos/respaldosGCP/request-tracker-zoombao/backups/
find *.gz -mtime +5 -type f -exec rm -f {} \;
cd /data1/respaldos/respaldosGCP/request-tracker-zoombao/backupsbd/
find *.gz -mtime +5 -type f -exec rm -f {} \;

#### web.zoom.red ####
rsync  -avz   respaldo@10.128.0.206:/root/backups /data1/respaldos/respaldosGCP/web.zoom.red/backups/
rsync  -avz   respaldo@10.128.0.206:/root/backupsbd /data1/respaldos/respaldosGCP/web.zoom.red/backupsbd/

cd /data1/respaldos/respaldosGCP/web.zoom.red/backups/
find *.gz -mtime +5 -type f -exec rm -f {} \;
cd /data1/respaldos/respaldosGCP/web.zoom.red/backupsbd/
find *.gz -mtime +5 -type f -exec rm -f {} \;

#### webservices ####

rsync  -avz  respaldo@10.128.0.66:/var/www/ /data1/respaldos/respaldosGCP/webservices/html/
rsync  -avz  respaldo@10.128.0.66:/etc/httpd/ /data1/respaldos/respaldosGCP/webservices/config/
cd /data1/respaldos/respaldosGCP/webservices/

#### zabbix ####
rsync  -avz   respaldo@10.128.0.49:/home/respaldo/backups /data1/respaldos/respaldosGCP/zabbix/

cd /data1/respaldos/respaldosGCP/zabbix/backups/
find *.sql -mtime +5 -type f -exec rm -f {} \;
