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

#ADD sh_files/api.sh /api-entrypoint.sh
#RUN chmod 755 /api-entrypoint.sh

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

#RUN chmod +x celery/sh_files/celery.sh
#RUN chmod +x celery-beat/sh_files/celery-beat.sh

USER sport_shop_user

#ENTRYPOINT ["/api-entrypoint.sh"]
