FROM python:3

WORKDIR /app

RUN apt update && apt install ffmpeg -y
RUN pip install git+https://github.com/nbr23/ydl-podcast.git

RUN wget --no-cookies --no-check-certificate --header https://github.com/jxjxjhjh/docker-ydlpod/raw/main/run.sh && \
    mv run.sh /app/shell && \
    chmod +x /app/shell/run.sh

CMD ["/bin/sh", "-c", "/app/shell/run.sh"]
