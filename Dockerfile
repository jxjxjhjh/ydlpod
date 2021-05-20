FROM python:3.9

WORKDIR /app

RUN python3.9 -m pip install FFmpeg ffmpeg-python git+https://github.com/nbr23/ydl-podcast.git

EXPOSE 8001

CMD nohup python -m http.server 8001 & while true;do timeout 600 ydl_podcast config.yaml >> run.log;python3.9 -m pip install --upgrade youtube-dl;sleep 87654;done
