#!/bin/bash

# Install script for WhatsApp to Discord bot

# Navigate to the Downloads directory
cd ~/Downloads/WhatsAppToDiscord/

# Make the installation script executable and run it
if [ -f "Linux_install_whatsapp_to_discord.sh" ]; then
    sudo chmod +x Linux_install_whatsapp_to_discord.sh
    ./Linux_install_whatsapp_to_discord.sh
else
    echo "Linux_install_whatsapp_to_discord.sh not found in ~/Downloads"
    exit 1
fi

# Make the start script executable and run it
if [ -f "start_whatsapp_to_discord.sh" ]; then
    sudo chmod +x start_whatsapp_to_discord.sh
    ./start_whatsapp_to_discord.sh
else
    echo "start_whatsapp_to_discord.sh not found in ~/Downloads"
    exit 1
fi

# Make the autorun setup script executable and run it
if [ -f "setup_autorun.sh" ]; then
    sudo chmod +x setup_autorun.sh
    ./setup_autorun.sh
else
    echo "setup_autorun.sh not found in ~/Downloads"
    exit 1
fi

echo "Installation complete!"
