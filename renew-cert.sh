#!/bin/bash

CONFIG_DIR=/etc/letsencrypt
WORK_DIR=/var/lib/letsencrypt
LOGS_DIR=/var/log/letsencrypt
DOMAIN_DIR=/var/www/letsencrypt

certbot renew --config-dir $PWD$CONFIG_DIR --work-dir $PWD$WORK_DIR --logs-dir $PWD$LOGS_DIR --agree-tos
