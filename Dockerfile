FROM python:3

WORKDIR /app

RUN pip install git+https://github.com/nbr23/ydl-podcast.git
RUN git clone https://github.com/jxjxjhjh/docker-ydlpod.git
CMD nohup python -m http.server 8001
