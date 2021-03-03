#!/bin/bash


CURRENT_DIR=$(pwd)

mkdir -p "${CURRENT_DIR}/homeassistant/etc/letsencrypt"
mkdir -p "${CURRENT_DIR}/homeassistant/var/lib/letsencrypt"

docker run -it --rm  \
    -p "9090:80" \
    -v "/etc/timezone:/etc/timezone:ro" \
	-v "${CURRENT_DIR}/homeassistant/etc/letsencrypt:/etc/letsencrypt"  \
	-v "${CURRENT_DIR}/homeassistant/var/lib/letsencrypt:/var/lib/letsencrypt"  \
	tygerlord/certbot $@ 

