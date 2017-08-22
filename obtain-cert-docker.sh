#!/bin/bash

if [ -z ${EMAIL+x} ]
then
    echo "set EMAIL(admin@example.com) to proceed...";
    exit -1
fi

if [ -z ${DOMAIN+x} ]
then
    echo "set DOMAIN(example.com) to proceed...";
    exit -1
fi

CONFIG_DIR=/etc/letsencrypt
WORK_DIR=/var/lib/letsencrypt
LOGS_DIR=/var/log/letsencrypt
DOMAIN_DIR=/var/www/letsencrypt

docker run -it --rm -v $PWD$CONFIGDIR:$CONFIG_DIR -v $PWD$WORK_DIR:$WORK_DIR -v $PWD$LOGS_DIR:$LOGS_DIR -v $PWD$DOMAIN_DIR:$DOMAIN_DIR certbot/certbot certonly -m $EMAIL --webroot -w $DOMAIN_DIR -d $DOMAIN -d www.$DOMAIN -d api.$DOMAIN
