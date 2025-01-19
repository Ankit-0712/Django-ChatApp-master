#!/bin/bash

# Install dependencies
pip install -r requirements.txt

# Run Django collectstatic to gather all static files
python manage.py collectstatic --noinput --settings=PyChat.settings

# Done
