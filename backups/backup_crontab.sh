#!/bin/bash

BASEDIR=$(dirname "$0")
echo "backup crontab to dir: $BASEDIR"

#touch ${BASEDIR}/crontab.conf
crontab -l > ${BASEDIR}/crontab.conf
