#!/bin/sh
yes | python manage.py makemigrations # This is a development thing so I don't have to run it manually, but will be removed in production

yes | python manage.py migrate
python manage.py runserver 0.0.0.0:8000 --settings=backend.settings.dev