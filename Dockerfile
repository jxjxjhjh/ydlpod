FROM python:3

WORKDIR /app

RUN apt update && apt install ffmpeg -y && \
    pip install git+https://github.com//ydl-podcast.git

EXPOSE 8001
USER 1000

CMD while true ;do (nohup python -m http.server 8001 &);timeout 600 ydl_podcast config.yaml;pip install --upgrade youtube-dl;sleep $[80000+$RANDOM];done
