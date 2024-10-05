#!/bin/bash

# Pseudo-containerized script for running zart.EXE headlessly

# Ensure required system dependencies are installed
echo "Checking and installing system dependencies..."
packages=("xvfb" "wine" "winetricks")
for package in "${packages[@]}"; do
    if ! command -v $package &> /dev/null; then
        echo "Installing $package..."
        # Use Replit's system dependency installation tool
        system_dependency_install_tool -d "$package"
    fi
done

# Set up Wine environment if not already set up
if [ ! -d "$HOME/.wine" ]; then
    echo "Setting up Wine environment..."
    WINEPREFIX="$HOME/.wine" WINEARCH=win32 winecfg
fi

# Ensure zart.EXE is in the current directory
if [ ! -f "zart.EXE" ]; then
    echo "Error: zart.EXE not found in the current directory."
    exit 1
fi

# Run zart.EXE using Wine and Xvfb
echo "Running zart.EXE headlessly..."
export DISPLAY=:99
Xvfb :99 -screen 0 1024x768x16 &
xvfb_pid=$!
wine zart.EXE

# Clean up
kill $xvfb_pid

echo "Execution complete."
