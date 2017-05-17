#!/bin/bash

set -e

sslCreate() {
  certificatesDir="/etc/letsencrypt/live/${DOMAIN_MAIN}"
  domainsList=`echo ${DOMAINS} | sed -e "s/ /,/"`

  if [ ! -d "${certificatesDir}" ]
  then
    echo "Create SSL certificates"
    certbot certonly -n -m ${EMAIL} --agree-tos --standalone -d ${domainsList}
  fi
}

sslRenew() {
  while true
  do
    certbot certonly -q -n -d ${domainsList}
    sleep 1d
  done
}

sslCreate
sslRenew &
