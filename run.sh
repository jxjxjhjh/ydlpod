#!/bin/sh

while :
do
    timeout 300 ydl_podcast config.yaml
    sleep 86400
done
