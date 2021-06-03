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

mkdir -p ./homeassistant/myhome/esphome

mkdir -p ./homeassistant/myhome/nodered

mkdir -p ./homeassistant/myhome/rhasspy

mkdir -p ./homeassistant/myhome/rasa

mkdir -p ./traefik

truncate -s 0 ./homeassistant/home-assistant.log

docker-compose up -d --remove-orphans $@

