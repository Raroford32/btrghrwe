#!/bin/bash

# Update and install dependencies
sudo apt update && sudo apt upgrade -y
sudo apt install -y xvfb wine winetricks

# Set up Wine environment
WINEPREFIX="$HOME/.wine" WINEARCH=win32 winecfg

# Run zart.EXE using Wine and Xvfb
export DISPLAY=:99
Xvfb :99 -screen 0 1024x768x16 &
wine zart.EXE
killall Xvfb
