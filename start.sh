#/bin/sh

mkdir -p $HOME/domoticz/config

mkdir -p $HOME/mosquitto/config
mkdir -p $HOME/mosquitto/log
mkdir -p $HOME/mosquitto/data

mkdir -p $HOME/zigbee2mqtt/data

CURRENT_UID=1000 CURRENT_GID=1000 docker-compose up -d
