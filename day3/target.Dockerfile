FROM python:3.7.0-slim-stretch

RUN apt update -y \
    && apt install sudo -y

CMD while true; do sleep 1000; done
