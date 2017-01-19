#!/bin/bash

#export WORKER_IP=`getent hosts $1 | awk '{ print $1 }'`

sed "/$1/d" /etc/apache2/mods-available/proxy_balancer.conf > proxy_balancer_temp.conf;
mv ./proxy_balancer_temp.conf /etc/apache2/mods-available/proxy_balancer.conf;
apache2ctl graceful;
exit 0;
