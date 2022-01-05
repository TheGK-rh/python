FROM python:3.10.1-slim-bullseye

RUN apt-get update

RUN mkdir -p /python/src
COPY requirements.txt /python/src

WORKDIR /python/src

RUN pip3 install --upgrade pip3
RUN pip3 install --upgrade setuptools
RUN pip3 install -r requirements.txt
