#!/bin/sh

python -m http.server 8001

while :
do
    timeout 300 ydl_podcast config.yaml
    sleep 86400
done
