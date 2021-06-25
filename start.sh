#!/bin/bash

################################################################################
# Help                                                                         #
################################################################################
Help()
{
   # Display Help
   echo
   echo "You must have a file called 'myhome.env' to export env vars"
   echo
   echo

   exit 2
}

if [ ! -e myhome.env ]; then
      	Help
fi

mkdir -p ./homeassistant

mkdir -p ./esphome

mkdir -p ./nodered

mkdir -p ./rhasspy

mkdir -p ./rasa

mkdir -p ./traefik

mkdir -p ./duplicati/config
mkdir -p ./duplicati/backups

truncate -s 0 ./homeassistant/home-assistant.log

docker-compose --env-file myhome.env up -d --remove-orphans $@

