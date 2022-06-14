FROM postgres

RUN groupadd sport_shop_group
RUN useradd sport_shop_user --group sport_shop_group

RUN chown -R sport_shop_user:sport_shop_group /var
RUN chmod 777 /var

USER sport_shop_user
