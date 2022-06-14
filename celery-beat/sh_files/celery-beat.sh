#!/bin/bash -x

celery -A sportShop beat -l info
chmod +x /sportShop/celerybeat-schedule
