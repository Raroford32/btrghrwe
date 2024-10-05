#!/bin/bash

export DISPLAY=:99
Xvfb :99 -screen 0 1024x768x16 &
python3 simulate_windows_exe.py
killall Xvfb
