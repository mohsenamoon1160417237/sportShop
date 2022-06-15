FROM ubuntu

RUN addgroup --group sport_shop_group

RUN useradd -ms /bin/bash sport_shop_user
RUN adduser sport_shop_user sport_shop_group

ADD sh_files/celery-beat.sh /celery-beat.sh
RUN chmod +x /celery-beat.sh

USER sport_shop_user
