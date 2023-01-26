#!/bin/bash

KEY_PAIR=$1
IP_ADDRESS=$(<"$2")

ssh -i $KEY_PAIR ec2-user@$IP_ADDRESS
