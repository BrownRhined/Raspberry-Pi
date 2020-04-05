#!/bin/bash
cd /home/pi
HOST='192.168.0.1'
USER='localadmin'
PASSWD='PASSWORD'
FolderName=$(date +%Y%m%d)
DATE=$(date +%Y%m%d%H%M)

sudo tar -zcvf eoa-ai-image-$FolderName.tar.gz $FolderName

ftp -n -v $HOST << EOT
ascii
user $USER $PASSWD
prompt
put eoa-ai-image-$FolderName.tar.gz
bye
EOT
rm  eoa-ai-image-$FolderName.tar.gz