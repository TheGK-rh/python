FROM python:3.9-slim-bullseye

ENV PYTHONDONTWRITEBYTECODE=1

RUN apt-get update && apt install -y gcc libgl1-mesa-dev

RUN mkdir -p /python/src
COPY ./src/requirements.txt /python/src

WORKDIR /python/src

RUN pip install --upgrade pip \
  && pip install --upgrade setuptools \
  && pip install -r requirements.txt

EXPOSE 8000

CMD ["uwsgi","--ini","uwsgi.ini"]