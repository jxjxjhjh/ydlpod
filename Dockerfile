FROM python:3.9

WORKDIR /app

RUN apt update && apt install ffmpeg -y && \
    pip install git+https://github.com/nbr23/ydl-podcast.git

EXPOSE 8001
USER 1000

CMD ["/bin/sh", "-c", "python -m http.server 8001
;while : do timeout 600 ydl_podcast config.yaml
;echo $(date "+%Y-%m-%d %H:%M:%S") >> log.log
;pip install --upgrade youtube-dl
;sleep 86400
;done"]
