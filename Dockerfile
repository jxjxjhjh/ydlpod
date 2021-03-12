FROM alpine:latest

WORKDIR /app

RUN apk --no-cache add ca-certificates python3 py3-pip ffmpeg && pip install git+https://github.com/nbr23/ydl-podcast.git
CMD nohup python -m http.server 8001
