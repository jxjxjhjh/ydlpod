FROM alpine

WORKDIR /app

RUN apk --no-cache add ca-certificates git python3 py3-pip ffmpeg \
&& pip install --disable-pip-version-check youtube-dl \
&& pip install git+https://github.com/nbr23/ydl-podcast.git

EXPOSE 8001

CMD nohup python -m http.server 8001 & while true;do timeout 600 ydl_podcast config.yaml >> run.log;pip install --upgrade youtube-dl;sleep 87654;done
