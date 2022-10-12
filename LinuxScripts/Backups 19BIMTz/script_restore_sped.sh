#!/bin/bash

cd /usr/local/tomcat/webapps

/etc/init.d/slapd stop

/etc/init.d/tomcat stop

cp /home/sped/backup_sped/backup_sped/backup_webapps_$(date +%Y%m%d).tar.gz /usr/local/tomcat/webapps/

rm -rf /usr/local/tomcat/sped

rm -rf /usr/local/tomcat/work/*

tar zxvfp /usr/local/tomcat/webapps/backup_webapps_$(date +%Y%m%d).tar.gz

cd /usr/local/tomcat/

chown tomcat. webapps -R

rm -rf /var/lib/ldap/*

/etc/init.d/slapd start

/etc/init.d/slapd stop

cp /home/sped/backup_sped/backup_sped/backup_ldap_$(date +%Y%m%d).ldif /home/sped

slapadd -l /home/sped/backup_ldap_$(date +%Y%m%d).ldif

cp /home/sped/backup_sped/backup_sped/backup_SPED_$(date +%Y%m%d).sql /var/lib/postgresql/

su - postgres -c -s "dropdb spedDB"

su - postgres -c -s "createdb spedDB -O sped -E UTF8"

su - postgres -c -s "psql -d spedDB < backup_SPED_$(date +%Y%m%d).sql"






