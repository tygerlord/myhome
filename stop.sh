#/bin/sh

source myhome_env.sh || exit 2

docker-compose down $@

