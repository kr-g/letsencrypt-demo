#!/bin/bash

./getcertbot.sh

source setenv.sh

./certbot-auto certonly --standalone -d $DM -d www.$DM -d mail.$DM --email admin@$DM


