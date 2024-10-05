#!/bin/bash

# Run zart.EXE headlessly using Wine and Xvfb

# Start Xvfb
Xvfb :99 -ac &
export DISPLAY=:99

# Wait for Xvfb to start
sleep 2

# Run zart.EXE using Wine
wine zart.EXE

# Clean up
killall Xvfb
