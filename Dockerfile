FROM python:alpine

WORKDIR /app

RUN pip install git+https://github.com/nbr23/ydl-podcast.git

RUN apk --no-cache add ca-certificates python3 py3-pip ffmpeg \
&& pip3 install --disable-pip-version-check youtube-dl

EXPOSE 8001

CMD nohup python -m http.server 8001 & while true;do timeout 600 ydl_podcast config.yaml >> run.log;pip install --upgrade youtube-dl;sleep 87654;done
