FROM python:3.8

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN addgroup --group sport_shop_group && adduser sport_shop_user && adduser sport_shop_user sport_shop_group

RUN mkdir /sportShop
ENV APIDIR=/sportShop
RUN mkdir $APIDIR/media

WORKDIR $APIDIR
COPY . $APIDIR/

RUN chown -R sport_shop_user:sport_shop_group $APIDIR

ADD sh_files/api.sh /api.sh
RUN chmod 755 /api.sh

ADD celery/sh_files/celery.sh /celery.sh
RUN chmod 755 /celery.sh

ADD celery-beat/sh_files/celery-beat.sh /celery-beat.sh
RUN chmod 755 /celery-beat.sh

#RUN sysctl vm.overcommit_memory=1

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

USER sport_shop_user

#ENTRYPOINT ["/api-entrypoint.sh"]
