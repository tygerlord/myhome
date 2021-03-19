#!/bin/bash

service ssh start

USER_PI_PASSWORD=${USER_PI_PASSWORD:="$RANDOM"}

echo "pi:${USER_PI_PASSWORD}"


echo "pi:${USER_PI_PASSWORD}" | chpasswd


su pi -c "shellinaboxd -c $HOME --disable-ssl -s '/:SSH'"

