#!/bin/bash

docker-compose up

echo "waiting for kafka and zookeeper to start..."
sleep 20

docker-compose exec splunk /opt/splunk/bin/splunk add monitor /tmp/roachlogs/.../*.log
docker-compose exec splunk /opt/splunk/bin/splunk help datastore