FROM python:3

WORKDIR /app

RUN python3 -m venv yacronenv
RUN . yacronenv/bin/activate
RUN apt update && apt install ffmpeg -y
RUN pip install git+https://github.com/nbr23/ydl-podcast.git
RUN mkdir run.sh
RUN echo "#!/bin/sh
;while :
;do
;timeout 180 ydl_podcast config.yaml;sleep 86400
;done" >> run.sh
RUN chmod +x run.sh
CMD ["/bin/sh", "-c", "run.sh"]
