#!/bin/bash

# Function to handle Ctrl+C signal
function ctrl_c() {
    echo "Aborted by user."
    exit 1
}

# Trap the Ctrl+C signal and call the function
trap ctrl_c INT

# Update Nala
sudo nala update || exit 1

# Upgrade Nala
sudo nala upgrade -y || exit 1

# Refresh Snap packages
sudo snap refresh || exit 1

# Perform package cleanup
sudo apt autoremove -y || exit 1
sudo apt autoclean || exit 1
sudo apt clean || exit 1
sudo apt purge $(dpkg -l | grep "^rc" | awk '{print $2}') || exit 1
sudo journalctl --vacuum-size=100M

