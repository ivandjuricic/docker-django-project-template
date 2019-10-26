FROM python:3
ENV PYTHONUNBUFFERED 1

RUN apt-get update
RUN apt-get install gettext swig libssl-dev dpkg-dev netcat -y

RUN mkdir /app
WORKDIR /app
COPY . /app

RUN pip install -U pip
RUN pip install -r requirements.txt
