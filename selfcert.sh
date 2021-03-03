#!/bin/bash

openssl req -x509 -newkey rsa:4096 -keyout homeassistant/privkey.pem -out homeasssistant/fullchain.pem -days 30 -nodes -subj '/CN=localhost'

