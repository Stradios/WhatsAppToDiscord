##This is a fork of [FKLC/WhatsAppToDiscord](https://github.com/FKLC/WhatsAppToDiscord)
# WhatsApp To Discord

WhatsAppToDiscord is a Discord bot that uses WhatsApp Web as a bridge between Discord and WhatsApp. It is built on top of [discord.js](https://github.com/discordjs/discord.js) and [Baileys](https://github.com/WhiskeySockets/Baileys) libraries.

### Features

- Supports media (Image, Video, Audio, Document, Stickers) and reactions!
- Allows whitelisting, so you can choose what to see on Discord
- Allows usage of WhatsApp through the Discord overlay
- It uses less memory as it doesn't simulate a browser
- Open Source, you can see, modify, and run your version of the bot!
- Self-hosted, so your data never leaves your computer
- Updated the .sh script to run on an easy [Linux](https://github.com/Stradios/WhatsAppToDiscord/blob/main/Linux_install_whatsapp_to_discord.sh) install
- # WhatsApp to Discord Integration

This repository provides a script to integrate WhatsApp messages into Discord.

## Installation Instructions

Follow these steps to install the necessary components and set up the integration:

1. **Open a Terminal**.

2. **Create and Run the Installation Script**:
   - Copy and paste the following script into your terminal:

   ```bash
   #!/bin/bash

   # Navigate to the Downloads directory
   cd ~/Downloads

   # Check if the directory exists; if not, create it
   DIRECTORY="WhatsAppToDiscord"
   if [ ! -d "$DIRECTORY" ]; then
     echo "Creating directory $DIRECTORY"
     mkdir "$DIRECTORY"
   fi

   # Check if Git is installed; if not, install it
   if ! command -v git &> /dev/null; then
     echo "Git is not installed. Installing Git..."
     sudo apt update
     sudo apt install -y git
   else
     echo "Git is already installed."
   fi

   # Clone the GitHub repository
   echo "Cloning the repository..."
   git clone https://github.com/Stradios/WhatsAppToDiscord.git

   # Navigate to the cloned repository
   cd WhatsAppToDiscord

   # Make the install script executable and run it
   chmod +x install_script.sh
   echo "Running the install script..."
   ./install_script.sh

---

### For setup and commands, check out the [documentation](https://fklc.github.io/WhatsAppToDiscord/)!
