#!/bin/bash

# Aktualisieren Sie Ihre Paketlisten
sudo apt update

# Installieren Sie die notwendigen Pakete
sudo apt install -y i3-wm picom rofi kitty vim chromium pulseaudio lxappearance pavucontrol nautilus python3 lightdm curl nodejs npm thunar ranger polybar fish

# Installiere tldr
sudo npm install -g tldr

# Installieren Sie virt-manager und qemu
sudo apt install -y virt-manager qemu-kvm libvirt-clients libvirt-daemon-system


