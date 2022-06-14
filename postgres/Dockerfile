FROM postgres

RUN groupadd sport_shop_group
RUN useradd sport_shop_user --group sport_shop_group

#RUN chown -R sport_shop_user:sport_shop_group /tmp
#RUN chmod 777 /tmp

USER sport_shop_user
