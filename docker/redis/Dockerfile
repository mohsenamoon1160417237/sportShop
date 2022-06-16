FROM redis

RUN addgroup --group sport_shop_group

RUN useradd -ms /bin/bash sport_shop_user
RUN adduser sport_shop_user sport_shop_group

RUN chown -R sport_shop_user /data
RUN chmod +x /data

RUN chown -R sport_shop_user /root

USER sport_shop_user
