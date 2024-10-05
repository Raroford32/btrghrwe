#!/bin/bash

# Run Windows executable headlessly
export DISPLAY=:99
Xvfb :99 -screen 0 1024x768x16 &
wine path/to/your/windows_executable.exe
killall Xvfb
