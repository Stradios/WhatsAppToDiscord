#!/bin/bash

# Name of the screen session
SESSION_NAME="WhatsApp_To_Discord"

# Check if the session already exists
if screen -list | grep -q "$SESSION_NAME"; then
    # If the session exists, reattach to it
    screen -r "$SESSION_NAME"
else
    # If the session doesn't exist, create a new one
    screen -S "$SESSION_NAME" -d -m bash -c "
        cd ~/Downloads/WhatsAppToDiscord/ &&
        node ."
    echo "Started a new screen session: $SESSION_NAME"
fi
