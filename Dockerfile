FROM python:3.9

WORKDIR /app
ADD https://raw.githubusercontent.com/jxjxjhjh/docker-ydlpod/main/run.sh /app
RUN apt update && apt install ffmpeg -y && \
    pip install git+https://github.com/nbr23/ydl-podcast.git

EXPOSE 8001
USER 1000

CMD ["/bin/sh", "-c", "run.sh"]
