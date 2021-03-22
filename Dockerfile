FROM python:3

WORKDIR /app

RUN python3 -m venv yacronenv
RUN . yacronenv/bin/activate
RUN pip install yacron ffmpeg-python git+https://github.com/nbr23/ydl-podcast.git
CMD nohup python -m http.server 8001
