FROM python:3

WORKDIR /app

RUN pip install git+https://github.com/nbr23/ydl-podcast.git
RUN ydl_podcast [configfile.yaml]
CMD ["nohup python -m http.server 8001"]
