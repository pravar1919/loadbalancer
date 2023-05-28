#!/bin/bash

/opt/venv/bin/python manage.py makemigrations --noinput
/opt/venv/bin/python manage.py migrate --noinput

/opt/venv/bin/gunicorn --bind "0.0.0.0:${PORT}" --workers 3 dockerize.wsgi