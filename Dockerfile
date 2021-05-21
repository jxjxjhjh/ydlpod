FROM python:3.9

WORKDIR /app

RUN pip install git+https://github.com/nbr23/ydl-podcast.git \
    apt update && apt install FFmpeg

EXPOSE 8001

CMD nohup python -m http.server 8001 & while true;do timeout 600 ydl_podcast config.yaml >> run.log;pip install --upgrade youtube-dl;sleep 87654;done
