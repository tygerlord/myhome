#!/bin/bash

################################################################################
# Help                                                                         #
################################################################################
Help()
{
   # Display Help
   echo
   echo "You must have a file called 'myhome_env.sh' to export env vars"
   echo
   echo

   exit 2
}

source myhome_env.sh || Help

mkdir -p ./homeassistant

mkdir -p ./mosquitto/config
mkdir -p ./mosquitto/log
mkdir -p ./mosquitto/data

mkdir -p ./esphome

mkdir -p ./nodered

mkdir -p ./redis

mkdir -p ./authelia

docker-compose up -d --remove-orphans $@

