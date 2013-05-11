#!/bin/bash

apt-get install redis-server

# listen on all interfaces
sed -i s/^bind/#bind/g /etc/redis/redis.conf

service redis-server restart

echo 'Now tailing the log...'
tail -f /var/log/redis/redis-server.log
