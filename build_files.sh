#!/bin/bash

# Install Python dependencies
echo "Installing dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

# Collect static files
python manage.py collectstatic --noinput

# Run migrations (if any)
python manage.py migrate --noinput

# Create the necessary directories for static files
mkdir -p staticfiles_build
