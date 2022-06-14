FROM nginx

RUN addgroup --group sport_shop_group

RUN useradd -ms /bin/bash sport_shop_user
RUN adduser sport_shop_user sport_shop_group

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d

RUN chown -R sport_shop_user:sport_shop_group /app && chmod -R 755 /app && \
    chown -R sport_shop_user:sport_shop_group /var/cache/nginx && \
    chown -R sport_shop_user:sport_shop_group /var/log/nginx && \
    chown -R sport_shop_user:sport_shop_group /etc/nginx/conf.d

RUN touch /var/run/nginx.pid && \
    chown -R nginx:nginx /var/run/nginx.pid

USER sport_shop_user
