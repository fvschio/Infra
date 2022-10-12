#!/bin/bash

cd /usr/local/tomcat/webapps

/etc/init.d/slapd stop

/etc/init.d/tomcat stop

tar zcvfp backup_webapps_$(date +%Y%m%d).tar.gz sped

slapcat -l backup_ldap_$(date +%Y%m%d).ldif

su - postgres -c -s "pg_dump -E UTF8 -v spedDB > backup_SPED_$(date +%Y%m%d).sql"

cd /var/lib/postgresql

cp backup_SPED_$(date +%Y%m%d).sql /home/sped/secinfor/backup_sped

cp /usr/local/tomcat/webapps/backup_webapps_$(date +%Y%m%d).tar.gz /home/sped/secinfor/backup_sped

cp /usr/local/tomcat/webapps/backup_ldap_$(date +%Y%m%d).ldif /home/sped/secinfor/backup_sped


/etc/init.d/slapd start

/etc/init.d/tomcat start
