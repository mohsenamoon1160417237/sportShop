FROM postgres

RUN addgroup --group sport_shop_group

RUN useradd -ms /bin/bash sport_shop_user
RUN adduser sport_shop_user sport_shop_group

RUN chown -R sport_shop_user /var/lib/postgresql/data

USER sport_shop_user
