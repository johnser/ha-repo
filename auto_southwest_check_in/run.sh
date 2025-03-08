#!/usr/bin/with-contenv bashio
# ^ This ensures we can use the bashio library to read add-on configuration.

# Read add-on options from config.yaml
SOUTHWEST_USERNAME=$(bashio::config 'SOUTHWEST_USERNAME')
SOUTHWEST_PASSWORD=$(bashio::config 'SOUTHWEST_PASSWORD')
CONFIRMATION_NUMBER=$(bashio::config 'CONFIRMATION_NUMBER')
PUSHOVER_USER_KEY=$(bashio::config 'PUSHOVER_USER_KEY')
PUSHOVER_APP_KEY=$(bashio::config 'PUSHOVER_APP_KEY')
TIMEZONE=$(bashio::config 'TIMEZONE')

# Export them so the Python script can read them if needed
export SOUTHWEST_USERNAME
export SOUTHWEST_PASSWORD
export CONFIRMATION_NUMBER
export PUSHOVER_USER_KEY
export PUSHOVER_APP_KEY
export TIMEZONE

# Run the Southwest check-in Python script from the jdholtz image
python /app/auto_southwest_check_in.py
