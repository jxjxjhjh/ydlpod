FROM alpine

WORKDIR /app

ADD https://github.com/jxjxjhjh/docker-ydlpod/blob/main/app.sh

RUN apk --no-cache add ca-certificates git python3 py3-pip ffmpeg \
&& pip install --disable-pip-version-check youtube-dl \
&& pip install git+https://github.com/nbr23/ydl-podcast.git

EXPOSE 8001

CMD nohup python3 -m http.server 8001 & while true;do timeout 300 ydl_podcast config.yaml;chmod -R 775 data;sleep 87654;done
