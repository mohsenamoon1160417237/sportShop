FROM python:3.7.13-slim-buster

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN addgroup --group sport_shop_group && adduser sport_shop_user && adduser sport_shop_user sport_shop_group

RUN mkdir /sportShop
ENV APIDIR=/sportShop
RUN mkdir $APIDIR/media

WORKDIR $APIDIR
COPY . $APIDIR/

RUN chown -R sport_shop_user:sport_shop_group $APIDIR

ADD commands/entry_point.sh /docker-entrypoint.sh
RUN chmod 755 /docker-entrypoint.sh

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

USER sport_shop_user

ENTRYPOINT ["/docker-entrypoint.sh"]
