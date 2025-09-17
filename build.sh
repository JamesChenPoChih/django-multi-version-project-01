#!/usr/bin/env bash
# exit on error
set -o errexit

# Add submodule update
git submodule update --init --recursive

# Add for debugging
echo "--- Listing all files for debugging ---"
ls -R
echo "--- End of file listing ---"

pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate
