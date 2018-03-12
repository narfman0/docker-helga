#!/bin/sh

service mongodb restart

# wait until mongo is listening
MONGO_PORT=27017
until nc -z localhost $MONGO_PORT
do
    echo "Waiting for mongo to be available on port: $MONGO_PORT"
    sleep 1
done

# post drama-drama-drama, we may now connect ;)
/usr/local/bin/helga "$@"
