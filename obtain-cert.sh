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

certbot certonly -m $EMAIL --config-dir $PWD$CONFIG_DIR --work-dir $PWD$WORK_DIR --logs-dir $PWD$LOGS_DIR --webroot -w $PWD$DOMAIN_DIR -d $DOMAIN -d www.$DOMAIN -d api.$DOMAIN
