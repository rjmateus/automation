#!/bin/bash

BASEDIR=$(dirname "$0")
TODAY=`date +"%m-%d-%y-%T"`

echo "[$TODAY]backup crontab to dir: $BASEDIR"

#touch ${BASEDIR}/crontab.conf
crontab -l > ${BASEDIR}/crontab.conf
