#!/bin/bash

SCRIPTS_PATH=~/Apps/devops-scripts/
POBRANE_PATH=~/Pobrane/

API=lanstreamer-api
WEB=lanstreamer-web
AUTH=lanstreamer-auth

UPLOAD=upload-file.sh
KEY_PAIR=key-pair.pem
IP_ADDRESS=ip-address.txt

docker save -o $POBRANE_PATH+$API $API
docker save -o $POBRANE_PATH+$WEB $WEB
docker save -o $POBRANE_PATH+$AUTH $AUTH

$SCRIPTS_PATH+$UPLOAD $SCRIPTS_PATH+$KEY_PAIR $SCRIPTS_PATH+$IP_ADDRESS $POBRANE_PATH+$API
$SCRIPTS_PATH+$UPLOAD $SCRIPTS_PATH+$KEY_PAIR $SCRIPTS_PATH+$IP_ADDRESS $POBRANE_PATH+$WEB
$SCRIPTS_PATH+$UPLOAD $SCRIPTS_PATH+$KEY_PAIR $SCRIPTS_PATH+$IP_ADDRESS $POBRANE_PATH+$AUTH