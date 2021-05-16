FROM python

WORKDIR /app

RUN pip install youtube-dl git+https://github.com/nbr23/ydl-podcast.git

EXPOSE 8001

CMD nohup python -m http.server 8001 & while true;do timeout 600 ydl_podcast config.yaml;pip install --upgrade youtube-dl;sleep 87654;done
