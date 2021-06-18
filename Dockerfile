FROM alpine

WORKDIR /app

ADD https://github.com/jxjxjhjh/docker-ydlpod/blob/main/app.sh

RUN apk --no-cache add ca-certificates git python3 py3-pip ffmpeg \
&& pip install --disable-pip-version-check youtube-dl \
&& pip install git+https://github.com/nbr23/ydl-podcast.git

EXPOSE 8001
USER 1000
CMD nohup python3 -m http.server 8001 & while true;do timeout 1200 ydl_podcast config/config.yaml;chmod -R 777 data;sleep 87654;done
