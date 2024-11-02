#!/bin/bash

# Define the path to your script
SCRIPT_PATH="$HOME/Downloads/WhatsAppToDiscord/start_whatsapp_to_discord.sh"

# Check if the cron job already exists
if crontab -l | grep -q "@reboot $SCRIPT_PATH"; then
    echo "Cron job already exists."
else
    # Add the cron job for running the script at reboot
    (crontab -l; echo "@reboot $SCRIPT_PATH") | crontab -
    echo "Cron job added to run the script at startup."
fi
