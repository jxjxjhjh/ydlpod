#!/bin/sh

sleep 600

while :
do
    timeout 180 ydl_podcast config.yaml
    sleep 86400
done
