#!/bin/bash

# Create ~/.fonts directory if it doesn't exist
mkdir -p ~/.fonts

# Copy .config directory to the home directory
cp -r .config ~/

# Copy wall.png to ~/Pictures/
cp wall.png ~/Pictures/

# Unzip JetBrainsMono.zip and move it to ~/.fonts/
unzip JetBrainsMono.zip -d ~/.fonts/

# Copy update.sh to /root/
cp update.sh /root/

# Make update.sh executable
chmod +x /root/update.sh
