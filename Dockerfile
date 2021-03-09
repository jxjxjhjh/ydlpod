FROM python:3

WORKDIR /app

RUN pip install git+https://github.com/nbr23/ydl-podcast.git
CMD ["ydl_podcast","configfile.yaml"]
