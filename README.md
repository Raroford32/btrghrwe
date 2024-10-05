# Comprehensive Guide: Running Windows Executables Headlessly on Ubuntu Servers

This guide provides step-by-step instructions for setting up a Ubuntu server to run Windows executables headlessly, with a focus on running zart.EXE.

## Table of Contents

1. [Prerequisites](#prerequisites)
2. [Installing Wine](#installing-wine)
3. [Setting up a Virtual Framebuffer](#setting-up-a-virtual-framebuffer)
4. [Running zart.EXE](#running-zartexe)
5. [Troubleshooting](#troubleshooting)
6. [Best Practices](#best-practices)
7. [Automated Setup and Execution](#automated-setup-and-execution)

## Prerequisites

- Ubuntu Server (18.04 LTS or later)
- Root or sudo access
- Internet connection

## Installing Wine

Wine is a compatibility layer that allows you to run Windows applications on Unix-like operating systems.

1. Update your system:
   
   ```
   sudo apt update && sudo apt upgrade -y
   ```

2. Install Wine:

   ```
   sudo apt install wine
   ```

3. Verify the installation:

   ```
   wine --version
   ```

## Setting up a Virtual Framebuffer

Xvfb (X Virtual Framebuffer) is an X server that can run on machines with no display hardware and no physical input devices.

1. Install Xvfb:

   ```
   sudo apt install xvfb
   ```

## Running zart.EXE

1. Start Xvfb:

   ```
   Xvfb :99 -ac &
   export DISPLAY=:99
   ```

2. Run zart.EXE using Wine:

   ```
   wine zart.EXE
   ```

## Troubleshooting

If you encounter any issues, please check the following:

- Ensure Wine is installed correctly
- Verify Xvfb is running
- Check system logs for any error messages

## Best Practices

- Always use the latest stable versions of Wine and Xvfb
- Regularly update your Ubuntu system
- Use a dedicated user account for running Windows applications

## Automated Setup and Execution

We've provided a script to automate the setup process and run all components of the headless Windows executable simulation. To use it:

1. Ensure you have the necessary permissions to execute the script:

   ```
   chmod +x run_all.sh
   ```

2. Run the script:

   ```
   ./run_all.sh
   ```

This script will:
- Check if the setup has been run before
- If not, it will run the setup script (setup_headless_replit.sh)
- Run the headless prototype (headless_prototype.py)
- Run the headless simulation (run_headless_simulation.sh)

You can use this script to quickly set up and run all components of the simulation in one go.

