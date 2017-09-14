#!/bin/sh

if [ ! -f /install/install.lock ]; then
    cp -R /install/* /etc/nginx/
    cp /tmp/nginx.conf /etc/nginx/nginx.conf
    cp /tmp/default.conf /etc/nginx/conf.d/default.conf
    rm -rf /install/*
    touch /install/install.lock
fi

/usr/sbin/nginx -g "daemon off;"

