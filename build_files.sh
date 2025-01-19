#!/bin/bash

# Check if python3 and pip are installed
echo "Checking for python3 and pip..."
which python3 || echo "python3 not found, installing..."
which pip || echo "pip not found, installing..."

# Install the required Python dependencies
echo "Installing Python dependencies..."
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt

# Collect static files (for Django)
echo "Collecting static files..."
python3 manage.py collectstatic --noinput

# Run migrations (if needed)
echo "Running migrations..."
python3 manage.py migrate --noinput

# Create static files directory (if missing)
mkdir -p staticfiles_build
