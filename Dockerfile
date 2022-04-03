FROM python:3
ENV PYTHONUNBUFFERED = 1
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN set -xe \
    && apt-get update \
    && apt-get install python-pip
RUN pip install -r requirements.txt