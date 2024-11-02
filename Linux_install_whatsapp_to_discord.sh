#!/bin/bash

# Update package index
echo "Updating package index..."
sudo apt-get update -y

# Pull Node.js setup for Node.js 18
echo "Setting up Node.js repository..."
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -

# Install Node.js
echo "Installing Node.js..."
sudo apt-get install -y nodejs

# Clone the repository
echo "Cloning the WhatsAppToDiscord repository..."
git clone https://github.com/FKLC/WhatsAppToDiscord

# Navigate into the cloned directory
cd WhatsAppToDiscord

# Display the Node.js version
echo "Your Node Version:"
node -v

# Install required packages/dependencies
echo "Installing dependencies..."
npm install

# Run the program
echo "Running the WhatsAppToDiscord program..."
node .


