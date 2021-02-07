#/bin/sh

START_FROM_DIR=$(pwd)

CURRENT_UID=1000 CURRENT_GID=1000 docker-compose down
