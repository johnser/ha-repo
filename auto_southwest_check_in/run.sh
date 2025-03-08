#!/usr/bin/with-contenv bashio

# Read config from the add-on’s "options" in config.yaml
SOUTHWEST_USERNAME=$(bashio::config 'SOUTHWEST_USERNAME')
SOUTHWEST_PASSWORD=$(bashio::config 'SOUTHWEST_PASSWORD')
CONFIRMATION_NUMBER=$(bashio::config 'CONFIRMATION_NUMBER')
PUSHOVER_USER_KEY=$(bashio::config 'PUSHOVER_USER_KEY')
PUSHOVER_APP_KEY=$(bashio::config 'PUSHOVER_APP_KEY')
TIMEZONE=$(bashio::config 'TIMEZONE')

# Export them for the script
export SOUTHWEST_USERNAME
export SOUTHWEST_PASSWORD
export CONFIRMATION_NUMBER
export PUSHOVER_USER_KEY
export PUSHOVER_APP_KEY
export TIMEZONE

# Run the Python script from the official container
python /app/auto_southwest_check_in.py
