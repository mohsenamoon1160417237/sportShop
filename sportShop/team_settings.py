import os
from pathlib import Path

BASE_DIR = Path(__file__).resolve(strict=True).parent.parent


def set_db(is_docker: bool):

    if is_docker is True:

        return {
            'ENGINE': 'django.db.backends.postgresql',
            'NAME': os.environ.get('DB_NAME'),
            'USER': os.environ.get('POSTGRES_USER'),
            'PASSWORD': os.environ.get('POSTGRES_PASSWORD'),
            'HOST': 'db',
            'port': os.environ.get('DB_PORT')
        }

    return {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': BASE_DIR / 'db.sqlite3',
    }
