#!/bin/bash

KEY_PAIR=$1
IP_ADDRESS=$(<"$2")
FILE_PATH=$3

scp -i "$KEY_PAIR" "$FILE_PATH" "ec2-user@$IP_ADDRESS:/tmp/"
