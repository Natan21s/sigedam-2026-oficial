#!/bin/bash
# Cria backup do banco com data e hora
docker exec -t sigedam_db pg_dumpall -c -U cempa > /home/suporte/sigedam2/backup_$(date +%Y%m%d).sql
# Apaga backups com mais de 7 dias para não encher o disco
find /home/suporte/sigedam2/ -name "backup_*.sql" -mtime +7 -delete
