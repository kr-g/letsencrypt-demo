#!/bin/bash

cd `dirname $0`

./getcertbot.sh

./stserv.sh stop

./renew-all.sh
./cpmailcert.sh

./stserv.sh

