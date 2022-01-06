FROM python:3.10.1-slim-bullseye

RUN apt-get update

RUN mkdir -p /python/src
COPY requirements.txt /python/src

WORKDIR /python/src

RUN pip install --upgrade pip
RUN pip install --upgrade setuptools
RUN pip install -r requirements.txt
