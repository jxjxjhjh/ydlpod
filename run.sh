 #!/bin/sh

while :
do
    timeout 180 ydl_podcast config/config.yaml
    sleep 86400
done
