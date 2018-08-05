#!/bin/bash

# Learn to use nohup to execute script in order to ignore signal when the terminal conversation is terminated.

# nohup ./trapSiginal.sh &

# It is equal to following conmands in script:

trap "echo no hup" SIGHUP
sleep 10
