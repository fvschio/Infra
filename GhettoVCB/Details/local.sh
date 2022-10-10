#/etc/rc.local.d/local.sh

/bin/kill $(/bin/cat /var/run/crond.pid)
/bin/cat /vmfs/volumes/datastore1/GhettoVCB/ghettoVCB-master/backupsemanal.sh  >> /var/spool/cron/crontabs/root
/bin/crond