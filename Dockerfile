FROM alpine

WORKDIR /app

ADD https://raw.githubusercontent.com/jxjxjhjh/docker-ydlpod/main/app.sh /app/config

RUN apk --no-cache add ca-certificates git python3 py3-pip ffmpeg \
&& pip install --disable-pip-version-check youtube-dl \
&& pip install git+https://github.com/nbr23/ydl-podcast.git

EXPOSE 8001
USER 1000:1000

CMD /app/config/app.sh
