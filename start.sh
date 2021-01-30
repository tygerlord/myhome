#/bin/bash

START_FROM_DIR=$(pwd)

echo $START_FROM_DIR

mkdir -p $START_FROM_DIR/domoticz/config
mkdir -p $START_FROM_DIR/domoticz/plugins
mkdir -p $START_FROM_DIR/domoticz/backups

mkdir -p $START_FROM_DIR/mosquitto/config
mkdir -p $START_FROM_DIR/mosquitto/log
mkdir -p $START_FROM_DIR/mosquitto/data

mkdir -p $START_FROM_DIR/zigbee2mqtt/data

CURRENT_UID=1000 CURRENT_GID=1000 START_FROM_DIR=$START_FROM_DIR docker-compose up -d
