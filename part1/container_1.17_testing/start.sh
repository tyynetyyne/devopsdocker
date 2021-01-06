#!/bin/bash
cd /var/lib/mongodb
/usr/bin/mongod --config /etc/mongodb.conf >& mongo.log &

