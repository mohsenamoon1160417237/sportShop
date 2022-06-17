FROM redis

#WORKDIR /redis

#RUN addgroup --group sport_shop_group

#RUN useradd -ms /bin/bash sport_shop_user
#RUN adduser sport_shop_user sport_shop_group

#RUN chown -R sport_shop_user /data
#RUN chmod +x /data

#USER sport_shop_user

#COPY redis.conf /usr/local/etc/redis/redis.conf

#RUN chmod +x /usr/local/etc/redis/redis.conf

#ADD sh_files/redis.sh /redis.sh
#RUN chmod +x /redis.sh

RUN sysctl vm.overcommit_memory=1
