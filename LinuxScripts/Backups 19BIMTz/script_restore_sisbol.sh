#!/bin/bash

cd /home/secinfor/servidor/

cp backup_sisbol/bkp_$(date +%Y%m%d)/alteracao/* /var/www/band/alteracao/
cp backup_sisbol/bkp_$(date +%Y%m%d)/boletim/* /var/www/band/boletim/
cp backup_sisbol/bkp_$(date +%Y%m%d)/ficha/* /var/www/band/ficha/
