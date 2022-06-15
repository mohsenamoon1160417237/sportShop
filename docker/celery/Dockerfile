FROM ubuntu

RUN addgroup --group sport_shop_group

RUN useradd -ms /bin/bash sport_shop_user
RUN adduser sport_shop_user sport_shop_group

ADD sh_files/celery.sh /celery.sh
RUN chmod +x /celery.sh

USER sport_shop_user
