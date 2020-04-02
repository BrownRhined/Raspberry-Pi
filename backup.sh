#!/bin/bash
cd /home/pi
HOST='192.168.0.1'
USER='localadmin'
PASSWD='PASSWORD'

sudo tar -zcvf eoa-ai-image-$(date +%Y%m%d).tar.gz eoa-ai-image

ftp -n -v $HOST << EOT
ascii
user $USER $PASSWD
prompt
put eoa-ai-image-$(date +%Y%m%d).tar.gz
bye
EOT