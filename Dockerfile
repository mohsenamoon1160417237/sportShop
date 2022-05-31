FROM python:3.7.13-slim-buster

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir /sportShop
WORKDIR /sportShop
COPY . /sportShop/
RUN pip install -r requirements.txt
