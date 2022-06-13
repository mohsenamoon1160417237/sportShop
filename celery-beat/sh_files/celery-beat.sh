#!/bin/bash -x

celery -A sportShop beat -l info
chown -R sport_shop_user:sport_shop_group celerybeat-schedule
