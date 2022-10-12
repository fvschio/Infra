#!/bin/bash

cd /home/secinfor/servidor/

mkdir backup_sisbol/bkp_$(date +%Y%m%d)
mkdir backup_sisbol/bkp_$(date +%Y%m%d)/alteracao
mkdir backup_sisbol/bkp_$(date +%Y%m%d)/boletim
mkdir backup_sisbol/bkp_$(date +%Y%m%d)/ficha

cp /var/www/band/alteracao/* backup_sisbol/bkp_$(date +%Y%m%d)/alteracao
cp /var/www/band/boletim/* backup_sisbol/bkp_$(date +%Y%m%d)/boletim
cp /var/www/band/ficha/* backup_sisbol/bkp_$(date +%Y%m%d)/ficha
