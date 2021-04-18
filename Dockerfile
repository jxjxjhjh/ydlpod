FROM python:3

WORKDIR /app

RUN python3 -m venv yacronenv
RUN . yacronenv/bin/activate
RUN apt update && apt install ffmpeg bash -y
RUN pip install git+https://github.com/nbr23/ydl-podcast.git
RUN git clone https://github.com/jxjxjhjh/docker-ydlpod.git
RUN mv docker-ydlpod/* .
RUN rm -rf docker-ydlpod
RUN chmod +x run.sh
ENTRYPOINT ["run.sh"]
