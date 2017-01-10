#!/bin/bash

export MOD=${1:-start}

echo doing $MOD

apachectl $MOD
service postfix $MOD
service dovecot $MOD

echo done

