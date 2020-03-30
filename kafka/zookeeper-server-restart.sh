#!/bin/bash

MY_ZOOKEEPER_HOME="${KAFKA_HOME:-/usr/local/kafka}"
ZOO_PROPERTIES="${1:-zookeeper.properties}"
ZOO_PROP_PATH="$MY_KAFKA_HOME/config/$ZOO_PROPERTIES"

# Stop the zookeeper server
$MY_ZOOKEEPER_HOME/bin/zookeeper-server-stop.sh

# Start the zookeeper server 
$MY_ZOOKEEPER_HOME/bin/zookeeper-server-start.sh -daemon $ZOO_PROP_PATH

