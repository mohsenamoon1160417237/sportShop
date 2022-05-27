FROM --platform=linux/amd64 python:3.8.13-alpine

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir /sportShop
WORKDIR /sportShop
COPY . /sportShop/
RUN pip install -r requirements.txt
