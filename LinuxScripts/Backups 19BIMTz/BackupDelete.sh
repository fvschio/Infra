#!/bin/bash 
# exemplo de uso dos parâmetros de entrada 
caminhos=( /mnt/Backup_Sistemas/INTRANET_Arquivos/ /mnt/Backup_Sistemas/INTRANET_DB/ /mnt/Backup_Sistemas/SISBOL_DB/ /mnt/Backup_Sistemas/SISBOL_Arquivos/ /mnt/Backup_Sistemas/ZABBIX_DB/ /mnt/Backup_Sistemas/ZABBIX_Arquivos/ /mnt/Backup_Sistemas/SPED_Arquivos/ /mnt/Backup_Sistemas/SPED_DB/ )
for c in "${caminhos[@]}"
do
    TotalArq=$(ls $c | wc -l) >> /dev/null
    lista=$(ls -lSr $c | awk {'print $9'}) >> /dev/null
    excluir=$[$TotalArq-2]
    contador=0
    data=$(date "+%d/%m/%Y %H:%M:%S")
    if [ $TotalArq -gt 2 ]
    then
        for i in $lista  
        do
          if [ $contador -lt $excluir ]
          then
            contador=$((contador+1))
            rm -f $c$i
            echo "Arquivo $c$i excluído em $data" >> /mnt/LOGSBKP/BackupDelete.log 
          fi
        done
    else
       echo "Nenhuma exclusão realizada no diretório $c em $data" >> /mnt/LOGSBKP/BackupDelete.log 
    fi
done

