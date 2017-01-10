
# read the full article

https://another-software-development-blog.blogspot.com/2017/01/lets-encrypt-certbot-auto.html


# usage 

## initial create

source ./setenv.sh

./certbot-auto certonly --standalone -d $DM -d www.$DM -d mail.$DM --email admin@$DM


## postfix /etc/postfix/main.cf

smtpd_tls_cert_file = /etc/postfix/postfix_default.pem


## dovecot /etc/dovecot/dovecot.conf

ssl_cert = </etc/dovecot/private/ssl-cert-and-key.pem
ssl_key =  </etc/dovecot/private/ssl-cert-and-key.pem


## crontab 

crontab -e
50	3	1	*	*	/opt/cert/cronjob.sh > /root/temp/letsencrypt.txt



