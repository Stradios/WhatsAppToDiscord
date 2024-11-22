#!/bin/bash

# Define URLs for scripts
INSTALL_SCRIPT="https://raw.githubusercontent.com/Stradios/WhatsAppToDiscord/refs/heads/main/Linux_install_whatsapp_to_discord.sh"
START_SCRIPT="https://raw.githubusercontent.com/Stradios/WhatsAppToDiscord/refs/heads/main/start_whatsapp_to_discord.sh"
SETUP_AUTORUN_SCRIPT="https://raw.githubusercontent.com/Stradios/WhatsAppToDiscord/refs/heads/main/setup_autorun.sh"

# Download and execute the installation script
echo "Downloading and running the installation script..."
curl -sSL $INSTALL_SCRIPT -o /tmp/Linux_install_whatsapp_to_discord.sh
chmod +x /tmp/Linux_install_whatsapp_to_discord.sh
sudo /tmp/Linux_install_whatsapp_to_discord.sh

# Download and execute the start script
echo "Downloading and running the start script..."
curl -sSL $START_SCRIPT -o /tmp/start_whatsapp_to_discord.sh
chmod +x /tmp/start_whatsapp_to_discord.sh
/tmp/start_whatsapp_to_discord.sh

# Download and execute the autorun setup script
echo "Downloading and running the autorun setup script..."
curl -sSL $SETUP_AUTORUN_SCRIPT -o /tmp/setup_autorun.sh
chmod +x /tmp/setup_autorun.sh
/tmp/setup_autorun.sh

# Clean up
echo "Cleaning up temporary files..."
rm -f /tmp/Linux_install_whatsapp_to_discord.sh /tmp/start_whatsapp_to_discord.sh /tmp/setup_autorun.sh

echo "All scripts executed successfully!"

