#!/bin/bash

# Setup script for running Windows executables headlessly on Ubuntu servers

echo "Starting setup process..."

# Install system dependencies
echo "Installing system dependencies..."
sudo apt update && sudo apt upgrade -y
sudo apt install -y xvfb wine winetricks

# Set up Wine environment
echo "Setting up Wine environment..."
WINEPREFIX="$HOME/.wine" WINEARCH=win32 winecfg

# Install any additional Windows dependencies (if needed)
# winetricks dxvk

# Create a simple test script to run a Windows executable
echo "Creating test script..."
cat << EOF > run_headless_windows.sh
#!/bin/bash

# Run Windows executable headlessly
export DISPLAY=:99
Xvfb :99 -screen 0 1024x768x16 &
wine path/to/your/windows_executable.exe
killall Xvfb
EOF

chmod +x run_headless_windows.sh

echo "Setup complete. You can now use ./run_headless_windows.sh to run Windows executables headlessly."
