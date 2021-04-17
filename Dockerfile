FROM python:3

WORKDIR /app

RUN python3 -m venv yacronenv
RUN . yacronenv/bin/activate
RUN apt update && apt install ffmpeg
RUN pip install git+https://github.com/nbr23/ydl-podcast.git
ENTRYPOINT ["run.sh"]
