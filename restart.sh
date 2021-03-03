#/bin/bash

./check_config.sh || exit 1
./stop.sh || echo "nothing to stop"
./start.sh

exit 0

