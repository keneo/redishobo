#!/bin/bash

apt-get update
apt-get -y install python-software-properties
add-apt-repository -y ppa:chris-lea/redis-server
# via http://askubuntu.com/questions/68576
apt-get update


apt-get install redis-server -V -y

# listen on all interfaces
sed -i s/^bind/#bind/g /etc/redis/redis.conf

service redis-server restart

echo 'Now tailing the log...'
tail -f /var/log/redis/redis-server.log
