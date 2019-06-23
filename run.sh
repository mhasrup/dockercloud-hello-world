#!/bin/sh

CONF_FILE=/etc/nginx/nginx.conf

sed -i "s/#LISTEN_PORT#/${LISTEN_PORT}/" ${CONF_FILE}

php-fpm -d variables_order="EGPCS" && exec nginx -g "daemon off;"

for num in {1..50}
do
 echo "Number: $num"
 sleep 1
done
