FROM python:3.9

WORKDIR /var/www
ADD https://raw.githubusercontent.com/jxjxjhjh/docker-ydlpod/main/run.sh /var/www
RUN apt update && apt install ffmpeg -y && \
    pip install git+https://github.com/nbr23/ydl-podcast.git && \
    chmod +x /var/www/run.sh

EXPOSE 8001
USER 1000

CMD ["/bin/sh", "-c", "/var/www/run.sh"]
