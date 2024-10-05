#!/bin/bash

# Setup Wine on Ubuntu Server

# Update system
sudo apt update && sudo apt upgrade -y

# Enable 32-bit architecture
sudo dpkg --add-architecture i386

# Add WineHQ repository
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/$(lsb_release -sc)/winehq-$(lsb_release -sc).sources

# Update package information
sudo apt update

# Install Wine
sudo apt install --install-recommends winehq-stable -y

# Verify installation
wine --version

# Install Xvfb
sudo apt install xvfb -y

echo "Wine and Xvfb have been installed successfully."
echo "You can now use the 'run_zart.sh' script to run zart.EXE headlessly."
