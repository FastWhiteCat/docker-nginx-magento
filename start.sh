#!/bin/bash

if [ -z "$SERVER_APP" ]; then
    SERVER_APP="app"
fi

if [ -z "$SERVER_PORT" ]; then
    SERVER_PORT="9000"
fi

if [ -z "$MAGE_ROOT" ]; then
    MAGE_ROOT="/opt/magento"
fi

if [ -z "$SERVER_HTTPS" ]; then
    SERVER_HTTPS="off"
fi

sed -i 's=__server_app__='"$SERVER_APP"'=g' /etc/nginx/conf.d/magento.conf
sed -i 's=__server_port__='"$SERVER_PORT"'=g' /etc/nginx/conf.d/magento.conf
sed -i 's=__mage_root__='"$MAGE_ROOT"'=g' /etc/nginx/conf.d/magento.conf
sed -i 's=__is_http_on__='"$SERVER_HTTPS"'=g' /etc/nginx/conf.d/magento.conf

nginx -g 'daemon off;'
