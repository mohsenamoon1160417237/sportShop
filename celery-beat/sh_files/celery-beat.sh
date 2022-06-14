#!/bin/bash -x

celery -A sportShop beat -l info -s /sportShop/celerybeat-schedule
#chmod +x /sportShop/celerybeat-schedule
