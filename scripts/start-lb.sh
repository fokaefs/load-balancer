#!/bin/bash

# start the service
service apache2 restart

# to keep the container alive
exec tail -f /var/log/apache2/error.log
