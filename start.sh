#/bin/bash

mkdir -p ./homeassistant

mkdir -p ./mosquitto/config
mkdir -p ./mosquitto/log
mkdir -p ./mosquitto/data

mkdir -p ./zigbee2mqtt/data

docker-compose up -d --remove-orphans $@

