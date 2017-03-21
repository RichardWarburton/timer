#!/bin/bash

set -eu

date

time=$(($1*60))
date1=$((`date -u +%s` + time)); 
while [ "$date1" -ge `date -u +%s` ]; do 
  echo -ne "$(date -u --date @$(($date1 - `date -u +%s`)) +%H:%M:%S)\r";
  sleep 0.1
done
date
mplayer train_door_beep.wav

