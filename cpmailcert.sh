#!/bin/bash

. ./setenv.sh

cd /etc/letsencrypt/live/$DM/

cat privkey.pem fullchain.pem > /etc/postfix/letencrypt-postfix.pem

echo installed /etc/postfix/letencrypt-postfix.pem

openssl x509 -in /etc/postfix/letencrypt-postfix.pem -text -noout


cat /etc/postfix/letencrypt-postfix.pem > /etc/postfix/postfix_default.pem

test -e /etc/dovecot/private/ssl-cert-and-key.pem && cat /etc/postfix/letencrypt-postfix.pem >/etc/dovecot/private/ssl-cert-and-key.pem



