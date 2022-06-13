FROM python:3.8

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1



RUN useradd -ms /bin/bash sport_shop_user
USER sport_shop_user

RUN mkdir /sportShop
ENV APIDIR=/sportShop
RUN mkdir $APIDIR/media

WORKDIR $APIDIR
COPY . $APIDIR/

RUN chown -R sport_shop_user:root celerybeat-schedule
RUN chown -R sport_shop_user:root $APIDIR

ADD sh_files/api.sh /api.sh
RUN chmod 755 /api.sh

ADD celery/sh_files/celery.sh /celery.sh
RUN chmod 755 /celery.sh

ADD celery-beat/sh_files/celery-beat.sh /celery-beat.sh
RUN chmod 755 /celery-beat.sh

#RUN sysctl vm.overcommit_memory=1

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

#ENTRYPOINT ["/api-entrypoint.sh"]
