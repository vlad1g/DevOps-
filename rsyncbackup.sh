#!/bin/bash -x 

current_date=$(date +%Y-%m-%d_%H:%M:%S)
rsync_speed_limit=1024
rsync_remote_server='139.59.209.94'

echo $current_date >> /path/to/scripts/rsync.log
rsync -avz --progress  139.59.209.94:/path/to/ /mn/ >> /path/to/scripts/rsync.log

rm /backup_psql/gettransfer_last.backup | last=$(find /mn -name "*.dump" -print | grep gettransfer | xargs ls -al --sort=time 2>/dev/null | head -n1 | awk {'print $9'}) | ln -s $last /backup_psql/gettransfer_last.backup
