FROM python3

WORKDIR /app

RUN pip install ffmpeg
RUN pip install git+https://github.com/nbr23/ydl-podcast.git
CMD nohup python -m http.server 8001
