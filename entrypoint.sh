#!/bin/sh
MONGO_PORT=27017
until nc -z localhost $MONGO_PORT
do
    echo "Waiting for mongo to be available on port: $MONGO_PORT"
    sleep 1
done
/usr/local/bin/helga "$@"
